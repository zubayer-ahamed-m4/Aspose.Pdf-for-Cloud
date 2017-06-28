package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.FieldType;
import com.aspose.pdf.model.Rectangle;
public class Field {
  private String Name = null;
  private Integer Type = null;
  private List<String> Values = new ArrayList<String>();
  private List<Integer> SelectedItems = new ArrayList<Integer>();
  private Rectangle Rect = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getName
	 * Gets String
	 * @return Name
	 */
  public String getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets String
	 * @param Name String
	 */
  public void setName(String Name) {
    this.Name = Name;
  }

  /**
	 * getType
	 * Gets FieldType
	 * @return Type
	 */
  public Integer getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets FieldType
	 * @param Type FieldType
	 */
  public void setType(Integer Type) {
    this.Type = Type;
  }

  /**
	 * getValues
	 * Gets List<String>
	 * @return Values
	 */
  public List<String> getValues() {
    return Values;
  }

	/**
	 * setValues
	 * Sets List<String>
	 * @param Values List<String>
	 */
  public void setValues(List<String> Values) {
    this.Values = Values;
  }

  /**
	 * getSelectedItems
	 * Gets List<Integer>
	 * @return SelectedItems
	 */
  public List<Integer> getSelectedItems() {
    return SelectedItems;
  }

	/**
	 * setSelectedItems
	 * Sets List<Integer>
	 * @param SelectedItems List<Integer>
	 */
  public void setSelectedItems(List<Integer> SelectedItems) {
    this.SelectedItems = SelectedItems;
  }

  /**
	 * getRect
	 * Gets Rectangle
	 * @return Rect
	 */
  public Rectangle getRect() {
    return Rect;
  }

	/**
	 * setRect
	 * Sets Rectangle
	 * @param Rect Rectangle
	 */
  public void setRect(Rectangle Rect) {
    this.Rect = Rect;
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
    sb.append("class Field {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Values: ").append(Values).append("\n");
    sb.append("  SelectedItems: ").append(SelectedItems).append("\n");
    sb.append("  Rect: ").append(Rect).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

