package com.aspose.pdf.model;

import com.aspose.pdf.model.Image;
public class ImageResponse {
  private Image Image = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getImage
	 * Gets Image
	 * @return Image
	 */
  public Image getImage() {
    return Image;
  }

	/**
	 * setImage
	 * Sets Image
	 * @param Image Image
	 */
  public void setImage(Image Image) {
    this.Image = Image;
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
    sb.append("class ImageResponse {\n");
    sb.append("  Image: ").append(Image).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

