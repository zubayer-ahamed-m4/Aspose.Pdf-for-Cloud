package com.aspose.pdf.model;

import com.aspose.pdf.model.LinkAnnotation;
public class LinkAnnotationResponse {
  private LinkAnnotation Link = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getLink
	 * Gets LinkAnnotation
	 * @return Link
	 */
  public LinkAnnotation getLink() {
    return Link;
  }

	/**
	 * setLink
	 * Sets LinkAnnotation
	 * @param Link LinkAnnotation
	 */
  public void setLink(LinkAnnotation Link) {
    this.Link = Link;
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
    sb.append("class LinkAnnotationResponse {\n");
    sb.append("  Link: ").append(Link).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

