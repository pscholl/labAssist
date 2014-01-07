package de.tud.labAssist;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class ScreenSlidePageFragment extends Fragment {

  private String text;
  private int mNum;

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container,
      Bundle savedInstanceState) {
    ViewGroup root = (ViewGroup) inflater.inflate(R.layout.scrollable_typophile, container, false);
    TextView tv = (TextView) root.findViewById(R.id.typophile_card);
    tv.setText(text);
    
    root.setTag(String.format("card_view_%d", mNum)); // so we can find it later
    tv.setTag(String.format("fu_%d",mNum));
    return root;
  }

  public void setNum(int num) {
    text = "";
    mNum = num;
    
    for (int i=0; i<num+1; i++) {
      text += String.format("Hello World! %d",num);
    } 
  }

}
