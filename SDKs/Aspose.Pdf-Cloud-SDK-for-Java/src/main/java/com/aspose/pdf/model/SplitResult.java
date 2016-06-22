package com.aspose.pdf.model;

import java.util.*;
public class SplitResult {
  private List<SplitResultDocument> Documents = new ArrayList<SplitResultDocument>();
  /**
	 * getDocuments
	 * Gets List<SplitResultDocument>
	 * @return Documents
	 */
  public List<SplitResultDocument> getDocuments() {
    return Documents;
  }

	/**
	 * setDocuments
	 * Sets List<SplitResultDocument>
	 * @param Documents List<SplitResultDocument>
	 */
  public void setDocuments(List<SplitResultDocument> Documents) {
    this.Documents = Documents;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SplitResult {\n");
    sb.append("  Documents: ").append(Documents).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

