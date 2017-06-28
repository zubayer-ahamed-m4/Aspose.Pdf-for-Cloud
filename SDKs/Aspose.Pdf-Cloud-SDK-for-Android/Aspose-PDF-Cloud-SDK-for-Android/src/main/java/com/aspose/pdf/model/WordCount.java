package com.aspose.pdf.model;

import java.util.*;
public class WordCount {
  private List<PageWordCount> List = new ArrayList<PageWordCount>();
  /**
	 * getList
	 * Gets List<PageWordCount>
	 * @return List
	 */
  public List<PageWordCount> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<PageWordCount>
	 * @param List List<PageWordCount>
	 */
  public void setList(List<PageWordCount> List) {
    this.List = List;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WordCount {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

