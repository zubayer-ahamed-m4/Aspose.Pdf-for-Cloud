package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.Pages;
import com.aspose.pdf.model.DocumentProperties;
public class Document {
  private DocumentProperties DocumentProperties = null;
  private Pages Pages = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getDocumentProperties
	 * Gets DocumentProperties
	 * @return DocumentProperties
	 */
  public DocumentProperties getDocumentProperties() {
    return DocumentProperties;
  }

	/**
	 * setDocumentProperties
	 * Sets DocumentProperties
	 * @param DocumentProperties DocumentProperties
	 */
  public void setDocumentProperties(DocumentProperties DocumentProperties) {
    this.DocumentProperties = DocumentProperties;
  }

  /**
	 * getPages
	 * Gets Pages
	 * @return Pages
	 */
  public Pages getPages() {
    return Pages;
  }

	/**
	 * setPages
	 * Sets Pages
	 * @param Pages Pages
	 */
  public void setPages(Pages Pages) {
    this.Pages = Pages;
  }

  /**
	 * getLinks
	 * Gets List<Link>
	 * @return Links
	 */
  public List<Link> getLinks() {
    return Links;
  }

	/**
	 * setLinks
	 * Sets List<Link>
	 * @param Links List<Link>
	 */
  public void setLinks(List<Link> Links) {
    this.Links = Links;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Document {\n");
    sb.append("  DocumentProperties: ").append(DocumentProperties).append("\n");
    sb.append("  Pages: ").append(Pages).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

