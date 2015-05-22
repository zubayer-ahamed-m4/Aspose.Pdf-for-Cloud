package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.Images;
import com.aspose.pdf.model.Rectangle;
public class Page {
  private Integer Id = null;
  private Images Images = null;
  private Rectangle Rectangle = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getId
	 * Gets Integer
	 * @return Id
	 */
  public Integer getId() {
    return Id;
  }

	/**
	 * setId
	 * Sets Integer
	 * @param Id Integer
	 */
  public void setId(Integer Id) {
    this.Id = Id;
  }

  /**
	 * getImages
	 * Gets Images
	 * @return Images
	 */
  public Images getImages() {
    return Images;
  }

	/**
	 * setImages
	 * Sets Images
	 * @param Images Images
	 */
  public void setImages(Images Images) {
    this.Images = Images;
  }

  /**
	 * getRectangle
	 * Gets Rectangle
	 * @return Rectangle
	 */
  public Rectangle getRectangle() {
    return Rectangle;
  }

	/**
	 * setRectangle
	 * Sets Rectangle
	 * @param Rectangle Rectangle
	 */
  public void setRectangle(Rectangle Rectangle) {
    this.Rectangle = Rectangle;
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
    sb.append("class Page {\n");
    sb.append("  Id: ").append(Id).append("\n");
    sb.append("  Images: ").append(Images).append("\n");
    sb.append("  Rectangle: ").append(Rectangle).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

