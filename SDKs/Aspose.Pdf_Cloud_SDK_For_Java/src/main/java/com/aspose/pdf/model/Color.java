package com.aspose.pdf.model;

public class Color {
  private Integer A = null;
  private Integer R = null;
  private Integer G = null;
  private Integer B = null;
  /**
	 * getA
	 * Gets Integer
	 * @return A
	 */
  public Integer getA() {
    return A;
  }

	/**
	 * setA
	 * Sets Integer
	 * @param A Integer
	 */
  public void setA(Integer A) {
    this.A = A;
  }

  /**
	 * getR
	 * Gets Integer
	 * @return R
	 */
  public Integer getR() {
    return R;
  }

	/**
	 * setR
	 * Sets Integer
	 * @param R Integer
	 */
  public void setR(Integer R) {
    this.R = R;
  }

  /**
	 * getG
	 * Gets Integer
	 * @return G
	 */
  public Integer getG() {
    return G;
  }

	/**
	 * setG
	 * Sets Integer
	 * @param G Integer
	 */
  public void setG(Integer G) {
    this.G = G;
  }

  /**
	 * getB
	 * Gets Integer
	 * @return B
	 */
  public Integer getB() {
    return B;
  }

	/**
	 * setB
	 * Sets Integer
	 * @param B Integer
	 */
  public void setB(Integer B) {
    this.B = B;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Color {\n");
    sb.append("  A: ").append(A).append("\n");
    sb.append("  R: ").append(R).append("\n");
    sb.append("  G: ").append(G).append("\n");
    sb.append("  B: ").append(B).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

