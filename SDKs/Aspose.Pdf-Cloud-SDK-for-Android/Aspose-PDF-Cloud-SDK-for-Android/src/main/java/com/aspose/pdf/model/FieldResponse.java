package com.aspose.pdf.model;

import com.aspose.pdf.model.Field;
public class FieldResponse {
  private Field Field = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getField
	 * Gets Field
	 * @return Field
	 */
  public Field getField() {
    return Field;
  }

	/**
	 * setField
	 * Sets Field
	 * @param Field Field
	 */
  public void setField(Field Field) {
    this.Field = Field;
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
    sb.append("class FieldResponse {\n");
    sb.append("  Field: ").append(Field).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

