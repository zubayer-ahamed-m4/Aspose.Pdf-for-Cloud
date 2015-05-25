package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.Color;
public class Annotation {
  private Color Color = null;
  private String Contents = null;
  private String CreationDate = null;
  private String Subject = null;
  private String Title = null;
  private String Modified = null;
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
	 * getContents
	 * Gets String
	 * @return Contents
	 */
  public String getContents() {
    return Contents;
  }

	/**
	 * setContents
	 * Sets String
	 * @param Contents String
	 */
  public void setContents(String Contents) {
    this.Contents = Contents;
  }

  /**
	 * getCreationDate
	 * Gets String
	 * @return CreationDate
	 */
  public String getCreationDate() {
    return CreationDate;
  }

	/**
	 * setCreationDate
	 * Sets String
	 * @param CreationDate String
	 */
  public void setCreationDate(String CreationDate) {
    this.CreationDate = CreationDate;
  }

  /**
	 * getSubject
	 * Gets String
	 * @return Subject
	 */
  public String getSubject() {
    return Subject;
  }

	/**
	 * setSubject
	 * Sets String
	 * @param Subject String
	 */
  public void setSubject(String Subject) {
    this.Subject = Subject;
  }

  /**
	 * getTitle
	 * Gets String
	 * @return Title
	 */
  public String getTitle() {
    return Title;
  }

	/**
	 * setTitle
	 * Sets String
	 * @param Title String
	 */
  public void setTitle(String Title) {
    this.Title = Title;
  }

  /**
	 * getModified
	 * Gets String
	 * @return Modified
	 */
  public String getModified() {
    return Modified;
  }

	/**
	 * setModified
	 * Sets String
	 * @param Modified String
	 */
  public void setModified(String Modified) {
    this.Modified = Modified;
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
    sb.append("class Annotation {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  Contents: ").append(Contents).append("\n");
    sb.append("  CreationDate: ").append(CreationDate).append("\n");
    sb.append("  Subject: ").append(Subject).append("\n");
    sb.append("  Title: ").append(Title).append("\n");
    sb.append("  Modified: ").append(Modified).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

