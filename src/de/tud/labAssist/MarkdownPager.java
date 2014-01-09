package de.tud.labAssist;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import in.uncod.android.bypass.Bypass;
import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;
import in.uncod.android.bypass.Element.Type;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.google.glass.widget.RobotoTypefaces;

import de.tud.labAssist.MarkdownPager.MarkdownFragment;

public class MarkdownPager extends FragmentPagerAdapter {



  protected static final String HEADER = "header";
  protected Document doc;
  protected ArrayList<MarkdownFragment> mFragments;

  public MarkdownPager(FragmentManager fm, String mdown) {
    super(fm);
    
    Bypass bypass = new Bypass();
    doc  = bypass.processMarkdown(mdown);
    
    String curheader = null;
    mFragments = new ArrayList<MarkdownFragment>();
    
    for (int i=0; i<doc.getElementCount(); i++) {
      Element el = doc.getElement(i);
      MarkdownFragment mf;
      String attr = "";
    
      switch (el.getType()) {
      case PARAGRAPH:
        mf = new MarkdownParagraphFragment();
        mf.setMarkdownElement(doc.getElement(i));
        mf.setNum(mFragments.size());
        mFragments.add(mf);
        
        /* add some additional attrs to the tree */
        el.addAttribute(HEADER, curheader);
        
        /* this add the lower-left pictograms */
        attr = "";
        for (int j=0; j<el.size(); j++) {
          Element c = el.getChild(j);
          attr = collectPics(c, attr);            
        }
        if (attr.length() != 0)
          el.addAttribute("pics", attr);
        break;
      case HEADER:
        curheader = el.getChild(0).getText();
        break;
      case LIST:
        mf = new MarkdownListFragment();
        mf.setMarkdownElement(el);
        mf.setNum(mFragments.size());
        mFragments.add(mf);
        
        el.addAttribute(HEADER, curheader);
        
        attr = "";
        for (int j=0; j<el.size(); j++) {
          Element c = el.getChild(j);
          
          /* must be list item so get down one further */
          for (int k=0; k<c.size(); k++ ) {
            Element cc = c.getChild(k);
            attr = collectPics(cc, attr);  
          }          
        }
        if (attr.length() != 0)
          el.addAttribute("pics", attr);
        break;
        
      default:
        break;
      }
    }
   
    printParseTree();
  }
  
  private String collectPics(Element c, String attr) {
    String s = c.getText();
    
    if (s==null)
      return attr;
    
    /* list all drawables resources and attach as pic if it matches
     * [x] */
    Field[] drawables = R.drawable.class.getFields();
    
    for (Field f : drawables) {
      String fname = "[" + f.getName() + "]";
      Log.e("fname",fname);
      
      if (fname.equalsIgnoreCase(s)) {
        attr += f.getName()+",";
        c.addAttribute("ispic", "");
      }
    }
    
    return attr;
  }

  private void printParseTree() {    
    for (int i=0; i<doc.getElementCount(); i++) {
      recurseElements(doc.getElement(i));
    }
  }
  private int nest = 0;
  private void recurseElements(Element e) {
    String tab = "";
    for (int i = 0; i < nest; i++) {
      tab += "  ";
    }
    
    String attrs = "";
    for (Iterator iterator = e.getAttributes().entrySet().iterator(); iterator.hasNext();) {
      Map.Entry<String, String> pairs = (Map.Entry<String, String>) iterator.next();
      attrs += pairs.getKey() + "=" + pairs.getValue() + " ";
    }
    
    Log.e("Markdown", tab + " " + e.getType().toString() + " " + e.getText() + " " + attrs);
    
    nest++;
    for (int i = 0; i < e.size(); i++) {
      recurseElements(e.getChild(i));
    }
    nest--;
  }

  @Override
  public Fragment getItem(int i) {
    if ( i >= mFragments.size() ) {
      Log.e(getClass().toString(), String.format("item %d > %d", i, getCount()));
      return null;
    }
    
    return mFragments.get(i);
  }

  @Override
  public int getCount() {
    return mFragments.size();
  }
  

  public static class MarkdownFragment extends Fragment {

    protected Element mMarkdownElement;
    private int mNum;

    public void setMarkdownElement(Element element) {
      mMarkdownElement = element;
    }
    
    public TextView setHint(ViewGroup root) {
      TextView hv = (TextView) root.findViewById(R.id.hint);
      if (mMarkdownElement.getAttribute(HEADER) != null) {
        hv.setText(mMarkdownElement.getAttribute(HEADER));
      }
      return hv;
    }
    
    public void setTypeface(TextView v) {
      Typeface tf = RobotoTypefaces.getTypeface(getActivity(), RobotoTypefaces.WEIGHT_THIN);
      v.setTypeface(tf);
    }
    

    protected String getStringFromElement(Element e) {
      StringBuilder sb = new StringBuilder();
      
      sb = sb.append(e.getText());
      
      for (int i=0; i<e.size(); i++) {
        String s = e.getChild(i).getText();
        if (s.length() == 0 || s.equals("\n") )
          continue;
        sb = sb.append(e.getChild(i).getText().trim());
      }
      
      return sb.toString();
    }

    public static String getScrollViewTag(int num) {
      return String.format("scroll_%d", num);
    }
    
    protected void setNum(int num) {
      mNum = num;
    }
    
    protected void setViewTag(ScrollView scroll) {
      scroll.setTag(getScrollViewTag(mNum));
    }
    
    public void setPics(RelativeLayout bottom_bar) {
      String[] pics = mMarkdownElement.getAttribute("pics") != null ? 
                      mMarkdownElement.getAttribute("pics").split(",") :
                      new String[] {};
                      
      RelativeLayout.LayoutParams p = new RelativeLayout.LayoutParams(
            android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT,
            android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT);
      p.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
      p.addRule(RelativeLayout.CENTER_VERTICAL);
      
      int id=10;
      for (String s : pics) {
        if (s.length()==0)
          continue;
        
        ImageView im = new ImageView(getActivity());
        im.setAdjustViewBounds(true);
        im.setPadding(0, 0, 10, 0);
        
        try {
          im.setImageResource(R.drawable.class.getField(s).getInt(null));
        } catch (Exception e) {
          Log.e("Markdown", String.format("exception while trying to display %s", s), e);
        }
        
        Log.e("Markdown", "adding pic " + s);
        
        im.setId(id++);
        bottom_bar.addView(im, p);
        
        p = new RelativeLayout.LayoutParams(
            android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT,
            android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT);
        
        p.addRule(RelativeLayout.CENTER_VERTICAL);
        p.addRule(RelativeLayout.RIGHT_OF, im.getId());
        
        Log.e("Markdown", String.format("added view id %d", im.getId()));
      }
    }
  }
  
  public static class MarkdownParagraphFragment extends MarkdownFragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
        Bundle savedInstanceState) {
      ViewGroup root = (ViewGroup) inflater.inflate(R.layout.scrollable, container, false);
      
      TextView tv = (TextView) root.findViewById(R.id.typophile_card);      
      tv.setText(getStringFromElement(mMarkdownElement));

      ScrollView scroll   = (ScrollView) root.findViewById(R.id.scrollView); 
      
      setTypeface(setHint(root));
      setTypeface(tv);
      
      setViewTag(scroll);
      
      setPics((RelativeLayout) root.findViewById(R.id.bottom_bar));
      
      return root;
    }
  }
  
  public static class MarkdownListFragment extends MarkdownFragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
        Bundle savedInstanceState) {
      ViewGroup root = (ViewGroup) inflater.inflate(R.layout.scrollable, container, false);      
      
      ScrollView scroll = (ScrollView) root.findViewById(R.id.scrollView);
      scroll.removeAllViews();
      scroll.setBackgroundResource(0);
      setViewTag(scroll);
      
      LinearLayout list = new LinearLayout(getActivity());
      list.setLayoutParams(new FrameLayout.LayoutParams(android.widget.FrameLayout.LayoutParams.MATCH_PARENT,android.widget.FrameLayout.LayoutParams.MATCH_PARENT));
      list.setOrientation(LinearLayout.VERTICAL);
      scroll.addView(list);
     
      setTypeface(setHint(root));
      setPics((RelativeLayout) root.findViewById(R.id.bottom_bar));
      
      for (int i=0; i<mMarkdownElement.size(); i++) {
        Element e = mMarkdownElement.getChild(i);
        
        if (e.getType() != Type.LIST_ITEM)
          continue;
        
        TextView item = new TextView(getActivity());
        
        item.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        item.setTextColor(getResources().getColor(R.color.white));
        item.setTextSize(getResources().getDimension(R.dimen.list_text_size));
        item.setText(getStringFromElement(e));
        item.setVisibility(View.VISIBLE);
        
        list.addView(item);
        setTypeface(item);

        View sep = new View(getActivity());
        sep.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, 1));
        sep.setBackgroundColor(getResources().getColor(android.R.color.darker_gray));
        
        list.addView(sep);
      }
            
      return root;
    }   
  }

}
