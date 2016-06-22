package com.aspose.pdf.model;

import com.aspose.pdf.model.Annotation;
public class AnnotationResponse {
  private Annotation Annotation = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAnnotation
	 * Gets Annotation
	 * @return Annotation
	 */
  public Annotation getAnnotation() {
    return Annotation;
  }

	/**
	 * setAnnotation
	 * Sets Annotation
	 * @param Annotation Annotation
	 */
  public void setAnnotation(Annotation Annotation) {
    this.Annotation = Annotation;
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
    sb.append("class AnnotationResponse {\n");
    sb.append("  Annotation: ").append(Annotation).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

