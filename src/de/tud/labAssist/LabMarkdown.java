package de.tud.labAssist;

import in.uncod.android.bypass.Bypass;
import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;
import in.uncod.android.bypass.Element.Type;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import android.content.Context;
import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.google.android.glass.widget.CardScrollAdapter;
import com.google.glass.widget.RobotoTypefaces;

public class LabMarkdown extends CardScrollAdapter {

  protected File mFile;
  protected Document mDoc;
  protected List<ProtocolStep> mElements;
  protected Typeface mRoboto;
  protected LayoutInflater mInflater;

  public class Visitor {
    protected int indent = 1;

    public void visit(ProtocolStep s) {
      for (Element e : s)
        visit(e);
    }

    public void visit(Element e) {
      boolean decend = true;
      String msg = "";
      indent++;

      switch (e.getType()) {
      case TEXT:
        decend = visitText(e);
        break;
      case HEADER:
        decend = visitHeader(e);
        break;
      case PARAGRAPH:
        decend = visitParagraph(e);
        break;
      case LIST_ITEM:
        decend = visitListItem(e);
        break;
      case EMPHASIS:
        decend = visitEmphasised(e);
        break;
      case DOUBLE_EMPHASIS:
        decend = visitDoubleEmphasised(e);
        break;
      default:
        msg = "ignored";
        break;
      }
      //msg = String.format("%" + indent + "s %s: %s [%s]", " ", e
      //    .getType().name(), e.getText(), e.getAttributes().toString());
      //Log.d("markdown", msg);

      if (decend)
        for (int i = 0; i < e.size(); i++)
          visit(e.getChild(i));

      indent--;
    }

    protected boolean visitText(Element e) { return true; };
    protected boolean visitHeader(Element e) { return true; };
    protected boolean visitParagraph(Element e) { return true; };
    protected boolean visitListItem(Element e) { return true; };
    protected boolean visitEmphasised(Element e) { return true; };
    protected boolean visitDoubleEmphasised(Element e) { return true; };
  }

  public class ProtocolStep extends LinkedList<Element> {
    public View toView(View v) {
      return new ToViewVisitor(this, v).getView();
    }

    public boolean markAsDone() {
      return new MarkAsDoneVisitor(this).getResult();
    }
  }

  public class MarkAsDoneVisitor extends Visitor {
    protected boolean mProtocolStepDone = true;
    protected boolean mMarkedOneAsDone = false;

    public MarkAsDoneVisitor(ProtocolStep ps) {
      this.visit(ps);
    }
    
    @Override
    protected boolean visitHeader(Element e) {
      return false; // ignore everything below header
    }
    
    @Override
    protected boolean visitText(Element e) {
      String s = e.getText().trim();
      
      if ( s.length() == 0 || 
          (s.startsWith("[") && s.endsWith("]")) )
        return true;
      
      if (!mMarkedOneAsDone) {
        e.setType(Type.DOUBLE_EMPHASIS);
        mMarkedOneAsDone = true;
      } else {
        /* if we visit another TEXT in this run, then 
         * there is another step that needs to be 
         * marked as done.  */
        mProtocolStepDone = false;
      }
      return true;
    }
    
    public boolean getResult() {
      return mProtocolStepDone;
    }
  }

  public class ToViewVisitor extends Visitor {
    protected View mView;
    protected TextView mText;
    protected ViewGroup mList;
    protected RelativeLayout mFooter;
    protected int mNumImages = 0;

    public ToViewVisitor(ProtocolStep p, View v) {
      if ( v != null )
        mView = v;
      else
        mView = mInflater.inflate(R.layout.card, null);
        
      mList = (ViewGroup) mView.findViewById(R.id.list);
      mFooter = (RelativeLayout) mView.findViewById(R.id.footer);
      
      if ( mList==null || mFooter==null )
      {
        Log.e("markdown", "supply a view generated from R.layour.card!");
        return;
      }
      
      mFooter.removeAllViews();
      mList.removeAllViews();

      this.visit(p);
    }

    public View getView() {
      return mView;
    }

    protected boolean visitDoubleEmphasised(Element e) {
      SpannableStringBuilder builder = new SpannableStringBuilder();
      builder.append(mText.getText());
      builder.append(e.getText());
      builder.setSpan(new StrikethroughSpan(), mText.getText().length(),
          builder.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
      mText.setText(builder);
      return true;
    }

    protected boolean visitEmphasised(Element e) {
      SpannableStringBuilder builder = new SpannableStringBuilder();
      builder.append(mText.getText());
      builder.append(e.getText().trim());
      builder.setSpan(new StyleSpan(Typeface.BOLD), mText.getText().length(),
          builder.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
      mText.setText(builder);
      return true;
    }

    protected boolean visitHeader(Element e) {
      TextView hint = (TextView) mInflater.inflate(R.layout.hint, null);
      hint.setTypeface(mRoboto);
      
      String header = e.getChild(0).getText();
      hint.setText(header);
     

      /* special case for the pictograms */
      header = header.toLowerCase(Locale.GERMAN);

      if (header.contains("chemical"))
        addImage("chemical");
      if (header.contains("culture"))
        addImage("bio");
      if (header.contains("tools") || header.contains("utensils"))
        addImage("tools");
      
      RelativeLayout.LayoutParams p = new RelativeLayout.LayoutParams(
          android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT,
          android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT);
      p.addRule(RelativeLayout.ALIGN_PARENT_TOP);
      p.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
      mFooter.addView(hint, p);

      return false;
    }

    protected boolean visitParagraph(Element e) {
      mText = (TextView) mInflater.inflate(R.layout.textview, null);
      mText.setTypeface(mRoboto);
      mList.addView(mText);

      return true;
    }

    protected boolean visitListItem(Element e) {
      if (mList.getChildCount() != 0) {
        View bar = new View(mInflater.getContext());
        bar.setBackgroundColor(0xFF333333);
        mList.addView(bar, // just adding a bar
            new ViewGroup.LayoutParams(LayoutParams.MATCH_PARENT, 1));
      }

      visitParagraph(e); // same action
      return true;
    }

    protected boolean visitText(Element e) {
      String txt = e.getText().trim();

      // a special case for classification of steps
      if (txt.startsWith("[") && txt.endsWith("]"))
        addImage(txt.substring(1, txt.length() - 1));
      else if (txt.length() == 0)
        ;
      else { // pass thorugh Spannable to keep styles from previously added text
        SpannableStringBuilder builder = new SpannableStringBuilder();
        builder.append(mText.getText());
        builder.append(" ");
        builder.append(txt);
        mText.setText(builder);
      }

      return true;
    }

    /** adds an image to the view on the lower left side */
    protected void addImage(String name) {
      ImageView im = (ImageView) mInflater.inflate(R.layout.image, null);
      try {
        im.setImageResource(R.drawable.class.getField(name).getInt(null));
      } catch (Exception e) {
        Log.e("markdown", "unable to load image: " + name);
        return;
      }

      RelativeLayout.LayoutParams p = new RelativeLayout.LayoutParams(
          LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
      p.addRule(RelativeLayout.ALIGN_PARENT_TOP);
      p.setMargins(0, 0, 10, 0);

      if (mNumImages == 0)
        p.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
      else
        p.addRule(RelativeLayout.RIGHT_OF, mNumImages);

      mNumImages++;
      im.setId(mNumImages);
      mFooter.addView(im, p);
    }

  }

  public LabMarkdown(Context c, File mDownFile) throws IOException {
    mFile = mDownFile;
    String md = readFileAsString(mDownFile.getAbsolutePath());
    init(c, md);
  }

  public LabMarkdown(Context c, String md) {
    init(c, md);
  }

  private void init(Context c, String md) {
    Bypass bp = new Bypass();
    mDoc = bp.processMarkdown(md);

    mElements = new LinkedList<ProtocolStep>();

    /* intialize the mMap by inserting all top-level elements */
    ProtocolStep s = new ProtocolStep();
    mElements.add(s);
    for (int i = 0; i < mDoc.getElementCount(); i++) {
      Element e = mDoc.getElement(i);

      if (e.getType().equals(Type.HEADER)) {
        int level = Integer.valueOf(e.getAttribute("level"));
        if (level == 1) {
          s = new ProtocolStep();
          mElements.add(s);
        }
      }

      s.add(e);

      mInflater = (LayoutInflater) c
          .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
      mRoboto = RobotoTypefaces.getTypeface(c, RobotoTypefaces.WEIGHT_THIN);
    }
  }

  protected static String readFileAsString(String string) throws IOException {
    StringBuffer fileData = new StringBuffer();
    BufferedReader reader = new BufferedReader(new FileReader(string));
    char[] buf = new char[1024];
    int numRead = 0;
    while ((numRead = reader.read(buf)) != -1) {
      String readData = String.valueOf(buf, 0, numRead);
      fileData.append(readData);
    }
    reader.close();
    return fileData.toString();
  }

  @Override
  public int findIdPosition(Object key) {
    return findItemPosition(key);
  }

  @Override
  public int findItemPosition(Object item) {
    return -1;
  }

  @Override
  public int getCount() {
    return mElements.size();
  }

  @Override
  public Object getItem(int idx) {
    return mElements.get(idx);
  }

  @Override
  public View getView(int idx, View v, ViewGroup vg) {
    ProtocolStep ps = mElements.get(idx);
    return ps.toView(v);
  }
}
