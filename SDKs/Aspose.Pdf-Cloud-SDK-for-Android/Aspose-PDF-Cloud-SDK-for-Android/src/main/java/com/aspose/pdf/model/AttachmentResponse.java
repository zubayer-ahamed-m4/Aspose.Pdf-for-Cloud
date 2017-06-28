package com.aspose.pdf.model;

import com.aspose.pdf.model.Attachment;
public class AttachmentResponse {
  private Attachment Attachment = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAttachment
	 * Gets Attachment
	 * @return Attachment
	 */
  public Attachment getAttachment() {
    return Attachment;
  }

	/**
	 * setAttachment
	 * Sets Attachment
	 * @param Attachment Attachment
	 */
  public void setAttachment(Attachment Attachment) {
    this.Attachment = Attachment;
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
    sb.append("class AttachmentResponse {\n");
    sb.append("  Attachment: ").append(Attachment).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

