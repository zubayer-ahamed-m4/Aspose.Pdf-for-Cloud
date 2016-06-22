package com.aspose.pdf.model;

import com.aspose.pdf.model.Pages;
public class DocumentPagesResponse {
  private Pages Pages = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getPages
	 * Gets Pages
	 * @return Pages
	 */
  public Pages getPages() {
    return Pages;
  }

	/**
	 * setPages
	 * Sets Pages
	 * @param Pages Pages
	 */
  public void setPages(Pages Pages) {
    this.Pages = Pages;
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
    sb.append("class DocumentPagesResponse {\n");
    sb.append("  Pages: ").append(Pages).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

