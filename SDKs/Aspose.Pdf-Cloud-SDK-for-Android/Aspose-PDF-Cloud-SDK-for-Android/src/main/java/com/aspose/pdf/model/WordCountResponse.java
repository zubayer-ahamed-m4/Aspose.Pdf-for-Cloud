package com.aspose.pdf.model;

import com.aspose.pdf.model.WordCount;
public class WordCountResponse {
  private WordCount WordsPerPage = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getWordsPerPage
	 * Gets WordCount
	 * @return WordsPerPage
	 */
  public WordCount getWordsPerPage() {
    return WordsPerPage;
  }

	/**
	 * setWordsPerPage
	 * Sets WordCount
	 * @param WordsPerPage WordCount
	 */
  public void setWordsPerPage(WordCount WordsPerPage) {
    this.WordsPerPage = WordsPerPage;
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
    sb.append("class WordCountResponse {\n");
    sb.append("  WordsPerPage: ").append(WordsPerPage).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

