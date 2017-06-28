package com.aspose.pdf.model;

import java.util.*;
public class LinkAnnotations {
  private List<LinkElement> List = new ArrayList<LinkElement>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<LinkElement>
	 * @return List
	 */
  public List<LinkElement> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<LinkElement>
	 * @param List List<LinkElement>
	 */
  public void setList(List<LinkElement> List) {
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
    sb.append("class LinkAnnotations {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

