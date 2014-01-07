package de.tud.labAssist;

import com.google.glass.widget.RobotoTypefaces;

import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;

public class ScreenSlidePageFragment extends Fragment {

  private String text;
  private int mNum;
  public static final String VIEW_TAG = "card_view_%d";

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container,
      Bundle savedInstanceState) {
    ViewGroup root = (ViewGroup) inflater.inflate(R.layout.scrollable_list, container, false);
    //TextView tv = (TextView) root.findViewById(R.id.typophile_card);
    //tv.setText(text);
    
    Typeface t = RobotoTypefaces.getTypeface(getActivity(),RobotoTypefaces.WEIGHT_THIN);
    //tv.setTypeface(t);
    
    ScrollView sv = (ScrollView) root.findViewById(R.id.scrollView);
    sv.setTag(String.format(VIEW_TAG, mNum)); // so we can find it later
    return root;
  }

  public void setNum(int num) {
    text = "";
    mNum = num;
    
    for (int i=0; i<num+1; i++) {
      text += String.format("DNA Extraction from Onions! %d",num);
    } 
  }

}
