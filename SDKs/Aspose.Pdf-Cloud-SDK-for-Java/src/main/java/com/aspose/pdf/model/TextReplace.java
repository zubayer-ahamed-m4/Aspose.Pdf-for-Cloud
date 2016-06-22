package com.aspose.pdf.model;

public class TextReplace {
  private String OldValue = null;
  private String NewValue = null;
  private Boolean Regex = null;
  /**
	 * getOldValue
	 * Gets String
	 * @return OldValue
	 */
  public String getOldValue() {
    return OldValue;
  }

	/**
	 * setOldValue
	 * Sets String
	 * @param OldValue String
	 */
  public void setOldValue(String OldValue) {
    this.OldValue = OldValue;
  }

  /**
	 * getNewValue
	 * Gets String
	 * @return NewValue
	 */
  public String getNewValue() {
    return NewValue;
  }

	/**
	 * setNewValue
	 * Sets String
	 * @param NewValue String
	 */
  public void setNewValue(String NewValue) {
    this.NewValue = NewValue;
  }

  /**
	 * getRegex
	 * Gets Boolean
	 * @return Regex
	 */
  public Boolean getRegex() {
    return Regex;
  }

	/**
	 * setRegex
	 * Sets Boolean
	 * @param Regex Boolean
	 */
  public void setRegex(Boolean Regex) {
    this.Regex = Regex;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TextReplace {\n");
    sb.append("  OldValue: ").append(OldValue).append("\n");
    sb.append("  NewValue: ").append(NewValue).append("\n");
    sb.append("  Regex: ").append(Regex).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

