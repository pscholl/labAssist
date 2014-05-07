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
//		String msg = "";
		level++;

		switch (e.getType()) {
			case TEXT:
				visitText(e);
				break;
			case HEADER:
				visitHeader(e);
				break;
			case PARAGRAPH:
				visitParagraph(e);
				break;
			case LIST_ITEM:
				visitListItem(e);
				break;
			case EMPHASIS:
				visitEmphasised(e);
				break;
			case DOUBLE_EMPHASIS:
				visitDoubleEmphasised(e);
				break;
			case STRIKETHROUGH:
				visitStrikeThrough(e);
				break;
			case IMAGE:
				visitImage(e);
				break;
			default:
				visitChildren(e);
//				msg = "ignored";
				break;
		}
//		msg = String.format("%" + level + "s %s: %s [%s]", " ", e.getType()
//				.name(), e.getText(), e.getAttributes().toString());
//		Log.d("markdown", msg);

		level--;
//		return null;
	}

	protected void visitChildren(Element element) {
		for (int i = 0; i < element.size(); i++)
			visit(element.getChild(i));
	}

	protected int getLevel() {
		return level;
	}

	protected void visitImage(Element e) {
		visitChildren(e);
	}

	protected void visitStrikeThrough(Element e) {
		visitChildren(e);
	}

	protected void visitText(Element e) {
		visitChildren(e);
	}

	protected void visitHeader(Element e) {
		visitChildren(e);
	}

	protected void visitParagraph(Element e) {
		visitChildren(e);
	}

	protected void visitListItem(Element e) {
		visitChildren(e);
	}

	protected void visitEmphasised(Element e) {
		visitChildren(e);
	}

	protected void visitDoubleEmphasised(Element e) {
		visitChildren(e);
	}
}
