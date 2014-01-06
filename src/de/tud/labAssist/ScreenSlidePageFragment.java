package de.tud.labAssist;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class ScreenSlidePageFragment extends Fragment {

  private String text;

  @Override
  public View onCreateView(LayoutInflater inflater, ViewGroup container,
      Bundle savedInstanceState) {
    ViewGroup root = (ViewGroup) inflater.inflate(R.layout.scrollable_card, container, false);
    TextView tv = (TextView) root.findViewById(R.id.textView1);
    tv.setText(text);
    return root;
  }

  public void setNum(int num) {
    text = String.format("Hello World! %d",num);
  }

}
