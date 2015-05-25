package com.aspose.pdf.model;

import com.aspose.pdf.model.Annotations;
public class AnnotationsResponse {
  private Annotations Annotations = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAnnotations
	 * Gets Annotations
	 * @return Annotations
	 */
  public Annotations getAnnotations() {
    return Annotations;
  }

	/**
	 * setAnnotations
	 * Sets Annotations
	 * @param Annotations Annotations
	 */
  public void setAnnotations(Annotations Annotations) {
    this.Annotations = Annotations;
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
    sb.append("class AnnotationsResponse {\n");
    sb.append("  Annotations: ").append(Annotations).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

