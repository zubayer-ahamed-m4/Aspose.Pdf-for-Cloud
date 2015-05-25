package com.aspose.pdf.model;

import com.aspose.pdf.model.SplitResult;
public class SplitResultResponse {
  private SplitResult Result = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getResult
	 * Gets SplitResult
	 * @return Result
	 */
  public SplitResult getResult() {
    return Result;
  }

	/**
	 * setResult
	 * Sets SplitResult
	 * @param Result SplitResult
	 */
  public void setResult(SplitResult Result) {
    this.Result = Result;
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
    sb.append("class SplitResultResponse {\n");
    sb.append("  Result: ").append(Result).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

