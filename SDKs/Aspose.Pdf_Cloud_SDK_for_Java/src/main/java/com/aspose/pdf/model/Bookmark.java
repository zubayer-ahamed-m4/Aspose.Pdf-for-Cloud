package com.aspose.pdf.model;

import java.util.*;
public class Bookmark {
  
   private String Title;
   private boolean Italic;
   private boolean Bold;
   private Color Color;
   private Bookmarks Bookmarks = new Bookmarks();
   private List<Link> Links = new ArrayList<Link>();
   
   public String getTitle() {
      return Title;
   }
   public void setTitle(String title) {
      Title = title;
   }
   public boolean isItalic() {
      return Italic;
   }
   public void setItalic(boolean italic) {
      Italic = italic;
   }
   public boolean isBold() {
      return Bold;
   }
   public void setBold(boolean bold) {
      Bold = bold;
   }
   public Color getColor() {
      return Color;
   }
   public void setColor(Color color) {
      Color = color;
   }
   public Bookmarks getBookmarks() {
      return Bookmarks;
   }
   public void setBookmarks(Bookmarks bookmarks) {
      Bookmarks = bookmarks;
   }
   public List<Link> getLinks() {
      return Links;
   }
   public void setLinks(List<Link> links) {
      Links = links;
   }
   
}

