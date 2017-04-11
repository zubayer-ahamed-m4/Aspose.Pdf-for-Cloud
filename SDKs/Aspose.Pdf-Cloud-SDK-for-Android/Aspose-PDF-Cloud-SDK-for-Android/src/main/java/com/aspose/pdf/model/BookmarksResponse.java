package com.aspose.pdf.model;

import com.aspose.pdf.model.Bookmarks;
public class BookmarksResponse {
  private Bookmarks Bookmarks = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getBookmarks
	 * Gets Bookmarks
	 * @return Bookmarks
	 */
  public Bookmarks getBookmarks() {
    return Bookmarks;
  }

	/**
	 * setBookmarks
	 * Sets Bookmarks
	 * @param Bookmarks Bookmarks
	 */
  public void setBookmarks(Bookmarks Bookmarks) {
    this.Bookmarks = Bookmarks;
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
    sb.append("class BookmarksResponse {\n");
    sb.append("  Bookmarks: ").append(Bookmarks).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

