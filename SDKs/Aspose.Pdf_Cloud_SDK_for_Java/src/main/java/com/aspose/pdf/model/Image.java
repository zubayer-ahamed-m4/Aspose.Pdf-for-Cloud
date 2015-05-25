package com.aspose.pdf.model;

import java.util.*;
public class Image {
  private Integer Width = null;
  private Integer Height = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getWidth
	 * Gets Integer
	 * @return Width
	 */
  public Integer getWidth() {
    return Width;
  }

	/**
	 * setWidth
	 * Sets Integer
	 * @param Width Integer
	 */
  public void setWidth(Integer Width) {
    this.Width = Width;
  }

  /**
	 * getHeight
	 * Gets Integer
	 * @return Height
	 */
  public Integer getHeight() {
    return Height;
  }

	/**
	 * setHeight
	 * Sets Integer
	 * @param Height Integer
	 */
  public void setHeight(Integer Height) {
    this.Height = Height;
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
    sb.append("class Image {\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

