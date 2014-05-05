package de.tud.labAssist.model.visitor;

import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;

/**
 * Created by Ramon on 02.05.2014.
 */
public abstract class MarkdownVisitor {
	private int level = -1;

//	public Object visit(ProtocolStep s) {
//		Object o = null;
//		for (Element e : s)
//			o = visit(e);
//		return o;
//	}

	public void visit(Document d) {
		for (int i = 0; i < d.getElementCount(); i++) {
			Element e = d.getElement(i);
			visit(e);
		}
	}

	public void visit(Element e) {
		boolean descend = true;
//		String msg = "";
		level++;

		switch (e.getType()) {
			case TEXT:
				descend = visitText(e);
				break;
			case HEADER:
				descend = visitHeader(e);
				break;
			case PARAGRAPH:
				descend = visitParagraph(e);
				break;
			case LIST_ITEM:
				descend = visitListItem(e);
				break;
			case EMPHASIS:
				descend = visitEmphasised(e);
				break;
			case DOUBLE_EMPHASIS:
				descend = visitDoubleEmphasised(e);
				break;
			case STRIKETHROUGH:
				descend = visitStrikeThrough(e);
				break;
			case IMAGE:
				descend = visitImage(e);
				break;
			default:
//				msg = "ignored";
				break;
		}
//		msg = String.format("%" + level + "s %s: %s [%s]", " ", e.getType()
//				.name(), e.getText(), e.getAttributes().toString());
//		Log.d("markdown", msg);

		if (descend)
			for (int i = 0; i < e.size(); i++)
				visit(e.getChild(i));

		level--;
//		return null;
	}

	protected int getLevel() {
		return level;
	}

	protected boolean visitImage(Element e) {
		return true;
	}

	protected boolean visitStrikeThrough(Element e) {
		return true;
	}

	protected boolean visitText(Element e) {
		return true;
	}

	protected boolean visitHeader(Element e) {
		return true;
	}

	protected boolean visitParagraph(Element e) {
		return true;
	}

	protected boolean visitListItem(Element e) {
		return true;
	}

	protected boolean visitEmphasised(Element e) {
		return true;
	}

	protected boolean visitDoubleEmphasised(Element e) {
		return true;
	}
}
