package com.aspose.pdf.model;

public class Rectangle {
  private Integer X = null;
  private Integer Y = null;
  private Integer Width = null;
  private Integer Height = null;
  /**
	 * getX
	 * Gets Integer
	 * @return X
	 */
  public Integer getX() {
    return X;
  }

	/**
	 * setX
	 * Sets Integer
	 * @param X Integer
	 */
  public void setX(Integer X) {
    this.X = X;
  }

  /**
	 * getY
	 * Gets Integer
	 * @return Y
	 */
  public Integer getY() {
    return Y;
  }

	/**
	 * setY
	 * Sets Integer
	 * @param Y Integer
	 */
  public void setY(Integer Y) {
    this.Y = Y;
  }

  /**
	 * getWidth
	 * Gets Integer
	 * @return Width
	 */
  public Integer getWidth() {
    return Width;
  }

	/**
	 * setWidth
	 * Sets Integer
	 * @param Width Integer
	 */
  public void setWidth(Integer Width) {
    this.Width = Width;
  }

  /**
	 * getHeight
	 * Gets Integer
	 * @return Height
	 */
  public Integer getHeight() {
    return Height;
  }

	/**
	 * setHeight
	 * Sets Integer
	 * @param Height Integer
	 */
  public void setHeight(Integer Height) {
    this.Height = Height;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Rectangle {\n");
    sb.append("  X: ").append(X).append("\n");
    sb.append("  Y: ").append(Y).append("\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

