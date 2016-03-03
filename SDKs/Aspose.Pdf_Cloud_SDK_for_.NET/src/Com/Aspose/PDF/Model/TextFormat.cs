using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TextFormat {
    public Color Color { get; set; }

    public float? FontSize { get; set; }

    public string FontName { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextFormat {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  FontSize: ").Append(FontSize).Append("\n");
      sb.Append("  FontName: ").Append(FontName).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
