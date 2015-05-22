package com.aspose.pdf.model;

import com.aspose.pdf.model.Rectangle;
public class Signature {
  private String SignaturePath = null;
  private String SignatureType = null;
  private String Password = null;
  private String Contact = null;
  private String Location = null;
  private Boolean Visible = null;
  private Rectangle Rectangle = null;
  private String FormFieldName = null;
  private String Authority = null;
  private String Date = null;
  /**
	 * getSignaturePath
	 * Gets String
	 * @return SignaturePath
	 */
  public String getSignaturePath() {
    return SignaturePath;
  }

	/**
	 * setSignaturePath
	 * Sets String
	 * @param SignaturePath String
	 */
  public void setSignaturePath(String SignaturePath) {
    this.SignaturePath = SignaturePath;
  }

  /**
	 * getSignatureType
	 * Gets String
	 * @return SignatureType
	 */
  public String getSignatureType() {
    return SignatureType;
  }

	/**
	 * setSignatureType
	 * Sets String
	 * @param SignatureType String
	 */
  public void setSignatureType(String SignatureType) {
    this.SignatureType = SignatureType;
  }

  /**
	 * getPassword
	 * Gets String
	 * @return Password
	 */
  public String getPassword() {
    return Password;
  }

	/**
	 * setPassword
	 * Sets String
	 * @param Password String
	 */
  public void setPassword(String Password) {
    this.Password = Password;
  }

  /**
	 * getContact
	 * Gets String
	 * @return Contact
	 */
  public String getContact() {
    return Contact;
  }

	/**
	 * setContact
	 * Sets String
	 * @param Contact String
	 */
  public void setContact(String Contact) {
    this.Contact = Contact;
  }

  /**
	 * getLocation
	 * Gets String
	 * @return Location
	 */
  public String getLocation() {
    return Location;
  }

	/**
	 * setLocation
	 * Sets String
	 * @param Location String
	 */
  public void setLocation(String Location) {
    this.Location = Location;
  }

  /**
	 * getVisible
	 * Gets Boolean
	 * @return Visible
	 */
  public Boolean getVisible() {
    return Visible;
  }

	/**
	 * setVisible
	 * Sets Boolean
	 * @param Visible Boolean
	 */
  public void setVisible(Boolean Visible) {
    this.Visible = Visible;
  }

  /**
	 * getRectangle
	 * Gets Rectangle
	 * @return Rectangle
	 */
  public Rectangle getRectangle() {
    return Rectangle;
  }

	/**
	 * setRectangle
	 * Sets Rectangle
	 * @param Rectangle Rectangle
	 */
  public void setRectangle(Rectangle Rectangle) {
    this.Rectangle = Rectangle;
  }

  /**
	 * getFormFieldName
	 * Gets String
	 * @return FormFieldName
	 */
  public String getFormFieldName() {
    return FormFieldName;
  }

	/**
	 * setFormFieldName
	 * Sets String
	 * @param FormFieldName String
	 */
  public void setFormFieldName(String FormFieldName) {
    this.FormFieldName = FormFieldName;
  }

  /**
	 * getAuthority
	 * Gets String
	 * @return Authority
	 */
  public String getAuthority() {
    return Authority;
  }

	/**
	 * setAuthority
	 * Sets String
	 * @param Authority String
	 */
  public void setAuthority(String Authority) {
    this.Authority = Authority;
  }

  /**
	 * getDate
	 * Gets String
	 * @return Date
	 */
  public String getDate() {
    return Date;
  }

	/**
	 * setDate
	 * Sets String
	 * @param Date String
	 */
  public void setDate(String Date) {
    this.Date = Date;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Signature {\n");
    sb.append("  SignaturePath: ").append(SignaturePath).append("\n");
    sb.append("  SignatureType: ").append(SignatureType).append("\n");
    sb.append("  Password: ").append(Password).append("\n");
    sb.append("  Contact: ").append(Contact).append("\n");
    sb.append("  Location: ").append(Location).append("\n");
    sb.append("  Visible: ").append(Visible).append("\n");
    sb.append("  Rectangle: ").append(Rectangle).append("\n");
    sb.append("  FormFieldName: ").append(FormFieldName).append("\n");
    sb.append("  Authority: ").append(Authority).append("\n");
    sb.append("  Date: ").append(Date).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

