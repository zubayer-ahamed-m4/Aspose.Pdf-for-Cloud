package com.aspose.pdf.model;

import java.util.*;
public class TextItems {
  private List<TextItem> List = new ArrayList<TextItem>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<TextItem>
	 * @return List
	 */
  public List<TextItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<TextItem>
	 * @param List List<TextItem>
	 */
  public void setList(List<TextItem> List) {
    this.List = List;
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
    sb.append("class TextItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

