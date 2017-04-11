package com.aspose.pdf.model;

import java.util.*;
public class Attachment {
  private String Description = null;
  private String MimeType = null;
  private String Name = null;
  private String CreationDate = null;
  private String ModificationDate = null;
  private Integer Size = null;
  private String CheckSum = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getDescription
	 * Gets String
	 * @return Description
	 */
  public String getDescription() {
    return Description;
  }

	/**
	 * setDescription
	 * Sets String
	 * @param Description String
	 */
  public void setDescription(String Description) {
    this.Description = Description;
  }

  /**
	 * getMimeType
	 * Gets String
	 * @return MimeType
	 */
  public String getMimeType() {
    return MimeType;
  }

	/**
	 * setMimeType
	 * Sets String
	 * @param MimeType String
	 */
  public void setMimeType(String MimeType) {
    this.MimeType = MimeType;
  }

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
	 * getModificationDate
	 * Gets String
	 * @return ModificationDate
	 */
  public String getModificationDate() {
    return ModificationDate;
  }

	/**
	 * setModificationDate
	 * Sets String
	 * @param ModificationDate String
	 */
  public void setModificationDate(String ModificationDate) {
    this.ModificationDate = ModificationDate;
  }

  /**
	 * getSize
	 * Gets Integer
	 * @return Size
	 */
  public Integer getSize() {
    return Size;
  }

	/**
	 * setSize
	 * Sets Integer
	 * @param Size Integer
	 */
  public void setSize(Integer Size) {
    this.Size = Size;
  }

  /**
	 * getCheckSum
	 * Gets String
	 * @return CheckSum
	 */
  public String getCheckSum() {
    return CheckSum;
  }

	/**
	 * setCheckSum
	 * Sets String
	 * @param CheckSum String
	 */
  public void setCheckSum(String CheckSum) {
    this.CheckSum = CheckSum;
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
    sb.append("class Attachment {\n");
    sb.append("  Description: ").append(Description).append("\n");
    sb.append("  MimeType: ").append(MimeType).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  CreationDate: ").append(CreationDate).append("\n");
    sb.append("  ModificationDate: ").append(ModificationDate).append("\n");
    sb.append("  Size: ").append(Size).append("\n");
    sb.append("  CheckSum: ").append(CheckSum).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

