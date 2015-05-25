package com.aspose.pdf.model;

public class SplitResultDocument {
  private Integer Id = null;
  private String Href = null;
  private String Rel = null;
  private String Type = null;
  private String Title = null;
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
	 * getHref
	 * Gets String
	 * @return Href
	 */
  public String getHref() {
    return Href;
  }

	/**
	 * setHref
	 * Sets String
	 * @param Href String
	 */
  public void setHref(String Href) {
    this.Href = Href;
  }

  /**
	 * getRel
	 * Gets String
	 * @return Rel
	 */
  public String getRel() {
    return Rel;
  }

	/**
	 * setRel
	 * Sets String
	 * @param Rel String
	 */
  public void setRel(String Rel) {
    this.Rel = Rel;
  }

  /**
	 * getType
	 * Gets String
	 * @return Type
	 */
  public String getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets String
	 * @param Type String
	 */
  public void setType(String Type) {
    this.Type = Type;
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

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SplitResultDocument {\n");
    sb.append("  Id: ").append(Id).append("\n");
    sb.append("  Href: ").append(Href).append("\n");
    sb.append("  Rel: ").append(Rel).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("  Title: ").append(Title).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

