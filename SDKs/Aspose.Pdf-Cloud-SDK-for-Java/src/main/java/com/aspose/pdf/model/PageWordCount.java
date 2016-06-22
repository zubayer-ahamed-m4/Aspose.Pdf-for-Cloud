package com.aspose.pdf.model;

public class PageWordCount {
  private Integer PageNumber = null;
  private Integer Count = null;
  /**
	 * getPageNumber
	 * Gets Integer
	 * @return PageNumber
	 */
  public Integer getPageNumber() {
    return PageNumber;
  }

	/**
	 * setPageNumber
	 * Sets Integer
	 * @param PageNumber Integer
	 */
  public void setPageNumber(Integer PageNumber) {
    this.PageNumber = PageNumber;
  }

  /**
	 * getCount
	 * Gets Integer
	 * @return Count
	 */
  public Integer getCount() {
    return Count;
  }

	/**
	 * setCount
	 * Sets Integer
	 * @param Count Integer
	 */
  public void setCount(Integer Count) {
    this.Count = Count;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PageWordCount {\n");
    sb.append("  PageNumber: ").append(PageNumber).append("\n");
    sb.append("  Count: ").append(Count).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

