using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TiffExportOptions {
    public float? Brightness { get; set; }

    public string Compression { get; set; }

    public string ColorDepth { get; set; }

    public int? LeftMargin { get; set; }

    public int? RightMargin { get; set; }

    public int? TopMargin { get; set; }

    public int? BottomMargin { get; set; }

    public string Orientation { get; set; }

    public bool? SkipBlankPages { get; set; }

    public int? Width { get; set; }

    public int? Height { get; set; }

    public int? XResolution { get; set; }

    public int? YResolution { get; set; }

    public int? PageIndex { get; set; }

    public int? PageCount { get; set; }

    public string ResultFile { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TiffExportOptions {\n");
      sb.Append("  Brightness: ").Append(Brightness).Append("\n");
      sb.Append("  Compression: ").Append(Compression).Append("\n");
      sb.Append("  ColorDepth: ").Append(ColorDepth).Append("\n");
      sb.Append("  LeftMargin: ").Append(LeftMargin).Append("\n");
      sb.Append("  RightMargin: ").Append(RightMargin).Append("\n");
      sb.Append("  TopMargin: ").Append(TopMargin).Append("\n");
      sb.Append("  BottomMargin: ").Append(BottomMargin).Append("\n");
      sb.Append("  Orientation: ").Append(Orientation).Append("\n");
      sb.Append("  SkipBlankPages: ").Append(SkipBlankPages).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  XResolution: ").Append(XResolution).Append("\n");
      sb.Append("  YResolution: ").Append(YResolution).Append("\n");
      sb.Append("  PageIndex: ").Append(PageIndex).Append("\n");
      sb.Append("  PageCount: ").Append(PageCount).Append("\n");
      sb.Append("  ResultFile: ").Append(ResultFile).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
