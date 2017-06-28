package com.aspose.pdf.model;

import com.aspose.pdf.model.TextFormat;
public class TextFormatResponse {
  private TextFormat TextFormat = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTextFormat
	 * Gets TextFormat
	 * @return TextFormat
	 */
  public TextFormat getTextFormat() {
    return TextFormat;
  }

	/**
	 * setTextFormat
	 * Sets TextFormat
	 * @param TextFormat TextFormat
	 */
  public void setTextFormat(TextFormat TextFormat) {
    this.TextFormat = TextFormat;
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
    sb.append("class TextFormatResponse {\n");
    sb.append("  TextFormat: ").append(TextFormat).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

