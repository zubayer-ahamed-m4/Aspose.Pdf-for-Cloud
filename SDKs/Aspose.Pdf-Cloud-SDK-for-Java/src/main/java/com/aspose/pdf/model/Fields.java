package com.aspose.pdf.model;

import java.util.*;
public class Fields {
  private List<Field> List = new ArrayList<Field>();
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getList
	 * Gets List<Field>
	 * @return List
	 */
  public List<Field> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<Field>
	 * @param List List<Field>
	 */
  public void setList(List<Field> List) {
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
    sb.append("class Fields {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

