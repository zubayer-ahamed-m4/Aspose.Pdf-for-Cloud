package com.aspose.pdf.model;

import java.util.*;
public class Pages {
  private List<Page> List = new ArrayList<Page>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<Page>
	 * @return List
	 */
  public List<Page> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<Page>
	 * @param List List<Page>
	 */
  public void setList(List<Page> List) {
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
    sb.append("class Pages {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

