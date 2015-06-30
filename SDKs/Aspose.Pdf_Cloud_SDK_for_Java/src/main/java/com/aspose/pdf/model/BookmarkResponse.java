package com.aspose.pdf.model;

public class BookmarkResponse {
  private Bookmark Bookmark = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getBookmark
	 * Gets Bookmark
	 * @return Bookmark
	 */
  public Bookmark getBookmark() {
    return Bookmark;
  }

	/**
	 * setBookmark
	 * Sets Bookmark
	 * @param Bookmark Bookmark
	 */
  public void setBookmark(Bookmark Bookmark) {
    this.Bookmark = Bookmark;
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
    sb.append("class BookmarkResponse {\n");
    sb.append("  Bookmark: ").append(Bookmark).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

