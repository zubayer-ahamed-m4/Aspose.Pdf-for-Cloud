package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.Color;
public class TextFormat {
  private Color Color = null;
  private Float FontSize = null;
  private String FontName = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getColor
	 * Gets Color
	 * @return Color
	 */
  public Color getColor() {
    return Color;
  }

	/**
	 * setColor
	 * Sets Color
	 * @param Color Color
	 */
  public void setColor(Color Color) {
    this.Color = Color;
  }

  /**
	 * getFontSize
	 * Gets Float
	 * @return FontSize
	 */
  public Float getFontSize() {
    return FontSize;
  }

	/**
	 * setFontSize
	 * Sets Float
	 * @param FontSize Float
	 */
  public void setFontSize(Float FontSize) {
    this.FontSize = FontSize;
  }

  /**
	 * getFontName
	 * Gets String
	 * @return FontName
	 */
  public String getFontName() {
    return FontName;
  }

	/**
	 * setFontName
	 * Sets String
	 * @param FontName String
	 */
  public void setFontName(String FontName) {
    this.FontName = FontName;
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
    sb.append("class TextFormat {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  FontSize: ").append(FontSize).append("\n");
    sb.append("  FontName: ").append(FontName).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

