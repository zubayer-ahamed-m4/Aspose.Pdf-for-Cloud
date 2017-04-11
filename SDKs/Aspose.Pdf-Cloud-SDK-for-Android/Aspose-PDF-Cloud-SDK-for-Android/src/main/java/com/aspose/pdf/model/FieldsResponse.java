package com.aspose.pdf.model;

import com.aspose.pdf.model.Fields;
public class FieldsResponse {
  private Fields Fields = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getFields
	 * Gets Fields
	 * @return Fields
	 */
  public Fields getFields() {
    return Fields;
  }

	/**
	 * setFields
	 * Sets Fields
	 * @param Fields Fields
	 */
  public void setFields(Fields Fields) {
    this.Fields = Fields;
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
    sb.append("class FieldsResponse {\n");
    sb.append("  Fields: ").append(Fields).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

