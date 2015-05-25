package com.aspose.pdf.model;

import java.util.*;
public class Images {
  private List<Image> List = new ArrayList<Image>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<Image>
	 * @return List
	 */
  public List<Image> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<Image>
	 * @param List List<Image>
	 */
  public void setList(List<Image> List) {
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
    sb.append("class Images {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

