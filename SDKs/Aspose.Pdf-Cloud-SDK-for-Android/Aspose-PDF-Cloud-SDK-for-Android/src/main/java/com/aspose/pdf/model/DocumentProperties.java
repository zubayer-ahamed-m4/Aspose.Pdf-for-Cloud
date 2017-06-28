package com.aspose.pdf.model;

import java.util.*;
public class DocumentProperties {
  private List<DocumentProperty> List = new ArrayList<DocumentProperty>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<DocumentProperty>
	 * @return List
	 */
  public List<DocumentProperty> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<DocumentProperty>
	 * @param List List<DocumentProperty>
	 */
  public void setList(List<DocumentProperty> List) {
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
    sb.append("class DocumentProperties {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

