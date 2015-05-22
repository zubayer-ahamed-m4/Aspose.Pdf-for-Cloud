package com.aspose.pdf.model;

public class AppendDocument {
  private String Document = null;
  private Integer StartPage = null;
  private Integer EndPage = null;
  /**
	 * getDocument
	 * Gets String
	 * @return Document
	 */
  public String getDocument() {
    return Document;
  }

	/**
	 * setDocument
	 * Sets String
	 * @param Document String
	 */
  public void setDocument(String Document) {
    this.Document = Document;
  }

  /**
	 * getStartPage
	 * Gets Integer
	 * @return StartPage
	 */
  public Integer getStartPage() {
    return StartPage;
  }

	/**
	 * setStartPage
	 * Sets Integer
	 * @param StartPage Integer
	 */
  public void setStartPage(Integer StartPage) {
    this.StartPage = StartPage;
  }

  /**
	 * getEndPage
	 * Gets Integer
	 * @return EndPage
	 */
  public Integer getEndPage() {
    return EndPage;
  }

	/**
	 * setEndPage
	 * Sets Integer
	 * @param EndPage Integer
	 */
  public void setEndPage(Integer EndPage) {
    this.EndPage = EndPage;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AppendDocument {\n");
    sb.append("  Document: ").append(Document).append("\n");
    sb.append("  StartPage: ").append(StartPage).append("\n");
    sb.append("  EndPage: ").append(EndPage).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

