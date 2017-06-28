package com.aspose.pdf.model;

import com.aspose.pdf.model.Attachments;
public class AttachmentsResponse {
  private Attachments Attachments = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAttachments
	 * Gets Attachments
	 * @return Attachments
	 */
  public Attachments getAttachments() {
    return Attachments;
  }

	/**
	 * setAttachments
	 * Sets Attachments
	 * @param Attachments Attachments
	 */
  public void setAttachments(Attachments Attachments) {
    this.Attachments = Attachments;
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
    sb.append("class AttachmentsResponse {\n");
    sb.append("  Attachments: ").append(Attachments).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

