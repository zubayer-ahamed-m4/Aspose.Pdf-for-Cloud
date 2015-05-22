package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.TextFormat;
public class TextItem {
  private String Text = null;
  private TextFormat Format = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getText
	 * Gets String
	 * @return Text
	 */
  public String getText() {
    return Text;
  }

	/**
	 * setText
	 * Sets String
	 * @param Text String
	 */
  public void setText(String Text) {
    this.Text = Text;
  }

  /**
	 * getFormat
	 * Gets TextFormat
	 * @return Format
	 */
  public TextFormat getFormat() {
    return Format;
  }

	/**
	 * setFormat
	 * Sets TextFormat
	 * @param Format TextFormat
	 */
  public void setFormat(TextFormat Format) {
    this.Format = Format;
  }

  /**
	 * getLinks
	 * Gets List<Link>
	 * @return Links
	 */
  public List<Link> getLinks() {
    return Links;
  }

	/**
	 * setLinks
	 * Sets List<Link>
	 * @param Links List<Link>
	 */
  public void setLinks(List<Link> Links) {
    this.Links = Links;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TextItem {\n");
    sb.append("  Text: ").append(Text).append("\n");
    sb.append("  Format: ").append(Format).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

