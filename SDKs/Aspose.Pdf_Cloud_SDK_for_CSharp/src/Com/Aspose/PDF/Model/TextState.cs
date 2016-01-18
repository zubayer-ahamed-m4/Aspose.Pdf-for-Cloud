using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TextState {
    public float? FontSize { get; set; }

    public string Font { get; set; }

    public Color ForegroundColor { get; set; }

    public Color BackgroundColor { get; set; }

    public FontStyles FontStyle { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextState {\n");
      sb.Append("  FontSize: ").Append(FontSize).Append("\n");
      sb.Append("  Font: ").Append(Font).Append("\n");
      sb.Append("  ForegroundColor: ").Append(ForegroundColor).Append("\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  FontStyle: ").Append(FontStyle).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
