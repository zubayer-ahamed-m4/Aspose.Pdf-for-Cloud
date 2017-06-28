package com.aspose.pdf.model;

import com.aspose.pdf.model.LinkAnnotations;
public class LinkAnnotationsResponse {
  private LinkAnnotations Links = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getLinks
	 * Gets LinkAnnotations
	 * @return Links
	 */
  public LinkAnnotations getLinks() {
    return Links;
  }

	/**
	 * setLinks
	 * Sets LinkAnnotations
	 * @param Links LinkAnnotations
	 */
  public void setLinks(LinkAnnotations Links) {
    this.Links = Links;
  }

  /**
	 * getCode
	 * Gets String
	 * @return Code
	 */
  public String getCode() {
    return Code;
  }

	/**
	 * setCode
	 * Sets String
	 * @param Code String
	 */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
	 * getStatus
	 * Gets String
	 * @return Status
	 */
  public String getStatus() {
    return Status;
  }

	/**
	 * setStatus
	 * Sets String
	 * @param Status String
	 */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class LinkAnnotationsResponse {\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

