package com.aspose.pdf.model;

import java.util.*;
public class MergeDocuments {
  private List<String> List = new ArrayList<String>();
  /**
	 * getList
	 * Gets List<String>
	 * @return List
	 */
  public List<String> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<String>
	 * @param List List<String>
	 */
  public void setList(List<String> List) {
    this.List = List;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class MergeDocuments {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

