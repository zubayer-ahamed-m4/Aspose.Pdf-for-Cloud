using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Stamp {
    public string Type { get; set; }

    public bool? Background { get; set; }

    public double? BottomMargin { get; set; }

    public HorizontalAlignment HorizontalAlignment { get; set; }

    public double? LeftMargin { get; set; }

    public double? Opacity { get; set; }

    public double? RightMargin { get; set; }

    public Rotation Rotate { get; set; }

    public double? RotateAngle { get; set; }

    public double? TopMargin { get; set; }

    public VerticalAlignment VerticalAlignment { get; set; }

    public double? XIndent { get; set; }

    public double? YIndent { get; set; }

    public double? Zoom { get; set; }

    public HorizontalAlignment TextAlignment { get; set; }

    public string Value { get; set; }

    public TextState TextState { get; set; }

    public string FileName { get; set; }

    public double? Width { get; set; }

    public double? Height { get; set; }

    public int? PageIndex { get; set; }

    public int? StartingNumber { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Stamp {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Background: ").Append(Background).Append("\n");
      sb.Append("  BottomMargin: ").Append(BottomMargin).Append("\n");
      sb.Append("  HorizontalAlignment: ").Append(HorizontalAlignment).Append("\n");
      sb.Append("  LeftMargin: ").Append(LeftMargin).Append("\n");
      sb.Append("  Opacity: ").Append(Opacity).Append("\n");
      sb.Append("  RightMargin: ").Append(RightMargin).Append("\n");
      sb.Append("  Rotate: ").Append(Rotate).Append("\n");
      sb.Append("  RotateAngle: ").Append(RotateAngle).Append("\n");
      sb.Append("  TopMargin: ").Append(TopMargin).Append("\n");
      sb.Append("  VerticalAlignment: ").Append(VerticalAlignment).Append("\n");
      sb.Append("  XIndent: ").Append(XIndent).Append("\n");
      sb.Append("  YIndent: ").Append(YIndent).Append("\n");
      sb.Append("  Zoom: ").Append(Zoom).Append("\n");
      sb.Append("  TextAlignment: ").Append(TextAlignment).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  TextState: ").Append(TextState).Append("\n");
      sb.Append("  FileName: ").Append(FileName).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  PageIndex: ").Append(PageIndex).Append("\n");
      sb.Append("  StartingNumber: ").Append(StartingNumber).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
