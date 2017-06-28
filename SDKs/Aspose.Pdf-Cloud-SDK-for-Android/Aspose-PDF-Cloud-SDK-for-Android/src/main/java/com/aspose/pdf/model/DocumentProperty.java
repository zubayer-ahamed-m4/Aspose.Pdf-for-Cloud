package com.aspose.pdf.model;

import java.util.*;
public class DocumentProperty {
  private String Name = null;
  private String Value = null;
  private Boolean BuiltIn = null;
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
	 * getValue
	 * Gets String
	 * @return Value
	 */
  public String getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets String
	 * @param Value String
	 */
  public void setValue(String Value) {
    this.Value = Value;
  }

  /**
	 * getBuiltIn
	 * Gets Boolean
	 * @return BuiltIn
	 */
  public Boolean getBuiltIn() {
    return BuiltIn;
  }

	/**
	 * setBuiltIn
	 * Sets Boolean
	 * @param BuiltIn Boolean
	 */
  public void setBuiltIn(Boolean BuiltIn) {
    this.BuiltIn = BuiltIn;
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
    sb.append("class DocumentProperty {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  BuiltIn: ").append(BuiltIn).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

