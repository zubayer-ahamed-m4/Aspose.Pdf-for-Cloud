package com.aspose.pdf.model;

import com.aspose.pdf.model.TextItem;
public class TextItemResponse {
  private TextItem TextItem = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTextItem
	 * Gets TextItem
	 * @return TextItem
	 */
  public TextItem getTextItem() {
    return TextItem;
  }

	/**
	 * setTextItem
	 * Sets TextItem
	 * @param TextItem TextItem
	 */
  public void setTextItem(TextItem TextItem) {
    this.TextItem = TextItem;
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
    sb.append("class TextItemResponse {\n");
    sb.append("  TextItem: ").append(TextItem).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

