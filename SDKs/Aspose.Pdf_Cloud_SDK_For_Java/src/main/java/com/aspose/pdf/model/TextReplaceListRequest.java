package com.aspose.pdf.model;

import java.util.*;
public class TextReplaceListRequest {
  private List<TextReplace> TextReplaces = new ArrayList<TextReplace>();
  /**
	 * getTextReplaces
	 * Gets List<TextReplace>
	 * @return TextReplaces
	 */
  public List<TextReplace> getTextReplaces() {
    return TextReplaces;
  }

	/**
	 * setTextReplaces
	 * Sets List<TextReplace>
	 * @param TextReplaces List<TextReplace>
	 */
  public void setTextReplaces(List<TextReplace> TextReplaces) {
    this.TextReplaces = TextReplaces;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TextReplaceListRequest {\n");
    sb.append("  TextReplaces: ").append(TextReplaces).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

