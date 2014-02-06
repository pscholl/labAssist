package de.tud.labAssist;

import in.uncod.android.bypass.Bypass;
import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;
import in.uncod.android.bypass.Element.Type;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
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

import de.tud.ess.HeadImageView;

public class LabMarkdown extends CardScrollAdapter {
  protected File mFile;
  protected Document mDoc;
  protected List<ProtocolStep> mElements;
  protected Typeface mRoboto;
  protected LayoutInflater mInflater;
  protected AssetManager mAssets;
  protected File mFileDir; 

  public class ProtocolStep extends LinkedList<Element> {
    protected CheckableZoomableVisitor mChecker;

    public View toView(View v) {
      return new ToViewVisitor(this, v).getView();
    }

    public boolean markAsDone() {
      return new MarkAsDoneVisitor(this).getResult();
    }

    public boolean hasCheckableItems() {
      return getZoomableCheckableVisitor().isCheckable;
    }
    
    public boolean hasZoomAbleImage() {
      return getZoomableCheckableVisitor().isZoomable;
    }

    protected CheckableZoomableVisitor getZoomableCheckableVisitor() {
      if (mChecker == null)
        mChecker = new CheckableZoomableVisitor(this);
      return mChecker;
    }
  }

  public class CheckableZoomableVisitor extends Visitor {
    public boolean isCheckable = false;
    public boolean isZoomable  = false; 
    
    public CheckableZoomableVisitor(ProtocolStep protocolStep) {
      this.visit(protocolStep);
    }
    
    @Override
    protected boolean visitHeader(Element e) {
      /* skip all header texts!! */
      return false; 
    }

    @Override
    protected boolean visitText(Element e) {
      return isCheckable = true;
    }
    
    @Override
    protected boolean visitListItem(Element e) {
      return isCheckable = true;
    }
    
    @Override
    protected boolean visitImage(Element e) {
      return isZoomable = true;
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
    protected boolean visitEmphasised(Element e) {
      return visitText(e);
    }
    
    @Override
    protected boolean visitDoubleEmphasised(Element e) {
      return visitText(e);
    }

    @Override
    protected boolean visitText(Element e) {
      String s = e.getText().trim();

      if (s.length() == 0 || (s.startsWith("[") && s.endsWith("]")))
        return true;

      if (!mMarkedOneAsDone) {
        e.setType(Type.STRIKETHROUGH);
        mMarkedOneAsDone = true;
      } else {
        /*
         * if we visit another TEXT in this run, then there is another step that
         * needs to be marked as done.
         */
        mProtocolStepDone = false;
      }
      return true;
    }

    public boolean getResult() {
      return mProtocolStepDone;
    }
  }

  
  public class Visitor {
    protected int indent = 1;

    public Object visit(ProtocolStep s) {
      Object o = null;
      for (Element e : s)
        o = visit(e);
      return o;
    }
    
    public Object visit(Document d) {
      Object o = null;
      for (int i=0; i<d.getElementCount(); i++) {
        Element e = d.getElement(i);
        o = visit(e);
      }
      return o;
    }

    public Object visit(Element e) {
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
      case STRIKETHROUGH:
        decend = visitStrikeThrough(e);
        break;
      case IMAGE:
        decend = visitImage(e);
        break;
      default:
        msg = "ignored";
        break;
      }
      msg = String.format("%" + indent + "s %s: %s [%s]", " ", e.getType()
          .name(), e.getText(), e.getAttributes().toString());
      Log.d("markdown", msg);

      if (decend)
        for (int i = 0; i < e.size(); i++)
          visit(e.getChild(i));

      indent--;
      return null;
    }

    protected boolean visitImage(Element e) {
      return true;
    }

    protected boolean visitStrikeThrough(Element e) {
      return true;
    }

    protected boolean visitText(Element e) {
      return true;
    };

    protected boolean visitHeader(Element e) {
      return true;
    };

    protected boolean visitParagraph(Element e) {
      return true;
    };

    protected boolean visitListItem(Element e) {
      return true;
    };

    protected boolean visitEmphasised(Element e) {
      return true;
    };

    protected boolean visitDoubleEmphasised(Element e) {
      return true;
    };
  }

  public class ToViewVisitor extends Visitor {
    protected int mNumPictograms = 0;
    protected ViewGroup mView;
    protected ViewGroup mList;
    protected TextView mText;
    protected ViewGroup mFooter;

    public ToViewVisitor(ProtocolStep p, View v) {
      if (v != null) mView = (ViewGroup) v;
      else  mView = (ViewGroup) mInflater.inflate(R.layout.card, null);
      
      mList = (ViewGroup) mView.findViewById(R.id.list);
      mList.removeAllViews();
      
      mView.removeView(mView.findViewById(R.id.footer));
      this.visit(p);
    }

    public View getView() {
      return mView;
    }

    protected boolean visitParagraph(Element e) {
      mText = (TextView) mInflater.inflate(R.layout.textview, mList, false);
      mText.setTypeface(mRoboto);
      
      /* do not add to list here, since this might be a paragraph not
       * containing text! Instead add it in appendText. */

      return true;
    }
    
    protected void appendText(String text, CharacterStyle styleSpan) {
      if (text.trim().length() == 0)
        return;
      
      SpannableStringBuilder builder = new SpannableStringBuilder();
      builder.append(mText.getText());
      builder.append(text);
      builder.setSpan(styleSpan, mText.getText().length(),
          builder.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
      mText.setText(builder);
      
      if (mText.getParent() == null)
        mList.addView(mText);
    }
    
    protected boolean visitDoubleEmphasised(Element e) {
      appendText(e.getText(), new StyleSpan(Typeface.BOLD));
      return true;
    }

    protected boolean visitEmphasised(Element e) {
      appendText(e.getText(), new StyleSpan(Typeface.ITALIC));
      return true;
    }
    
    @Override
    protected boolean visitStrikeThrough(Element e) {
      appendText(e.getText(), new StrikethroughSpan());
      return true;
    }

    protected boolean visitHeader(Element e) {
      String header = e.getChild(0).getText();
      if (header.trim().equals("-donotshow"))
        return false;
      
      TextView hint = (TextView) mInflater.inflate(R.layout.hint, getFooter(), false);
      hint.setTypeface(mRoboto);
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
      getFooter().addView(hint, p);

      return false;
    }
    
    protected ViewGroup getFooter() {
      if (mFooter == null) {
        mFooter = (ViewGroup) mInflater.inflate(R.layout.footer, mView, false);
        mView.addView(mFooter);
      }
      
      return mFooter;
    }

    @Override
    protected boolean visitImage(Element e) {
      Bitmap bm = loadImage(e.getText());
      
      if (bm == null)
        return true;

      HeadImageView im = (HeadImageView) mInflater.inflate(R.layout.imview, mList, false);
      im.setImageBitmap(bm);
      mList.addView(im);
      
      return false;
    }

    protected Bitmap loadImage(String text) {
      InputStream is = null;
      try {
        is = mAssets.open(text);
      } catch (IOException e) {
        if (mFileDir == null) return null;
          try {
            is = new FileInputStream(new File(mFileDir,text));
          } catch (FileNotFoundException e1) {
            e1.printStackTrace();
          }

      }
      
      Options o = new Options();
      o.inSampleSize = 4; // downsample
      Bitmap b  = BitmapFactory.decodeStream(is, null, o);
      return b;
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
      else
        appendText(txt, new StyleSpan(Typeface.NORMAL));

      return true;
    }

    /** adds an image to the view on the lower left side */
    protected void addImage(String name) {
      ImageView im = (ImageView) mInflater.inflate(R.layout.image, getFooter(), false);
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

      if (mNumPictograms == 0)
        p.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
      else
        p.addRule(RelativeLayout.RIGHT_OF, mNumPictograms);

      mNumPictograms++;
      im.setId(mNumPictograms);
      getFooter().addView(im, p);
    }

  }
  
  public class SegmentationVisitor extends Visitor {

    protected LinkedList<ProtocolStep> mList;
    protected ProtocolStep mCur;

    public List<ProtocolStep> visit(Document d) {
      mList = new LinkedList<ProtocolStep>();
      mCur  = new ProtocolStep();
      mList.add(mCur);
      return (List<ProtocolStep>) super.visit(d);
    }
    
    public List<ProtocolStep> visit(Element e) {
      super.visit(e);
      
      if (e.getParent() == null)
        mCur.add(e); /* only add top-level elements */
      
      return (List<ProtocolStep>) mList;
    }
    
    @Override
    protected boolean visitHeader(Element e) {
      if (mCur.size() != 0) {
        mCur = new ProtocolStep();
        mList.add(mCur);
      }
      return true;
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
    mDoc      = bp.processMarkdown(md);
    mElements = (new SegmentationVisitor()).visit(mDoc);

    mInflater = (LayoutInflater) c.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    mAssets = c.getAssets();
    mFileDir = c.getExternalFilesDir(null);
    mRoboto = RobotoTypefaces.getTypeface(c, RobotoTypefaces.WEIGHT_THIN);
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
