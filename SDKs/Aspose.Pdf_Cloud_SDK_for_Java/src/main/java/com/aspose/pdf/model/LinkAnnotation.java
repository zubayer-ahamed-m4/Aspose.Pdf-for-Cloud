package com.aspose.pdf.model;

import java.util.*;
import com.aspose.pdf.model.Color;
import com.aspose.pdf.model.LinkActionType;
import com.aspose.pdf.model.LinkHighlightingMode;
public class LinkAnnotation {
  private LinkActionType ActionType = null;
  private String Action = null;
  private LinkHighlightingMode Highlighting = null;
  private Color Color = null;
  private List<Link> Links = new ArrayList<Link>();
  /**
	 * getActionType
	 * Gets LinkActionType
	 * @return ActionType
	 */
  public LinkActionType getActionType() {
    return ActionType;
  }

	/**
	 * setActionType
	 * Sets LinkActionType
	 * @param ActionType LinkActionType
	 */
  public void setActionType(LinkActionType ActionType) {
    this.ActionType = ActionType;
  }

  /**
	 * getAction
	 * Gets String
	 * @return Action
	 */
  public String getAction() {
    return Action;
  }

	/**
	 * setAction
	 * Sets String
	 * @param Action String
	 */
  public void setAction(String Action) {
    this.Action = Action;
  }

  /**
	 * getHighlighting
	 * Gets LinkHighlightingMode
	 * @return Highlighting
	 */
  public LinkHighlightingMode getHighlighting() {
    return Highlighting;
  }

	/**
	 * setHighlighting
	 * Sets LinkHighlightingMode
	 * @param Highlighting LinkHighlightingMode
	 */
  public void setHighlighting(LinkHighlightingMode Highlighting) {
    this.Highlighting = Highlighting;
  }

  /**
	 * getColor
	 * Gets Color
	 * @return Color
	 */
  public Color getColor() {
    return Color;
  }

	/**
	 * setColor
	 * Sets Color
	 * @param Color Color
	 */
  public void setColor(Color Color) {
    this.Color = Color;
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
    sb.append("class LinkAnnotation {\n");
    sb.append("  ActionType: ").append(ActionType).append("\n");
    sb.append("  Action: ").append(Action).append("\n");
    sb.append("  Highlighting: ").append(Highlighting).append("\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  Links: ").append(Links).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

