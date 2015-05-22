package com.aspose.pdf.model;

import com.aspose.pdf.model.Color;
import com.aspose.pdf.model.FontStyles;
public class TextState {
  private Float FontSize = null;
  private String Font = null;
  private Color ForegroundColor = null;
  private Color BackgroundColor = null;
  private FontStyles FontStyle = null;
  /**
	 * getFontSize
	 * Gets Float
	 * @return FontSize
	 */
  public Float getFontSize() {
    return FontSize;
  }

	/**
	 * setFontSize
	 * Sets Float
	 * @param FontSize Float
	 */
  public void setFontSize(Float FontSize) {
    this.FontSize = FontSize;
  }

  /**
	 * getFont
	 * Gets String
	 * @return Font
	 */
  public String getFont() {
    return Font;
  }

	/**
	 * setFont
	 * Sets String
	 * @param Font String
	 */
  public void setFont(String Font) {
    this.Font = Font;
  }

  /**
	 * getForegroundColor
	 * Gets Color
	 * @return ForegroundColor
	 */
  public Color getForegroundColor() {
    return ForegroundColor;
  }

	/**
	 * setForegroundColor
	 * Sets Color
	 * @param ForegroundColor Color
	 */
  public void setForegroundColor(Color ForegroundColor) {
    this.ForegroundColor = ForegroundColor;
  }

  /**
	 * getBackgroundColor
	 * Gets Color
	 * @return BackgroundColor
	 */
  public Color getBackgroundColor() {
    return BackgroundColor;
  }

	/**
	 * setBackgroundColor
	 * Sets Color
	 * @param BackgroundColor Color
	 */
  public void setBackgroundColor(Color BackgroundColor) {
    this.BackgroundColor = BackgroundColor;
  }

  /**
	 * getFontStyle
	 * Gets FontStyles
	 * @return FontStyle
	 */
  public FontStyles getFontStyle() {
    return FontStyle;
  }

	/**
	 * setFontStyle
	 * Sets FontStyles
	 * @param FontStyle FontStyles
	 */
  public void setFontStyle(FontStyles FontStyle) {
    this.FontStyle = FontStyle;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TextState {\n");
    sb.append("  FontSize: ").append(FontSize).append("\n");
    sb.append("  Font: ").append(Font).append("\n");
    sb.append("  ForegroundColor: ").append(ForegroundColor).append("\n");
    sb.append("  BackgroundColor: ").append(BackgroundColor).append("\n");
    sb.append("  FontStyle: ").append(FontStyle).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

