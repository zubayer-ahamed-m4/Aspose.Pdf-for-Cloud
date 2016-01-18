using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TextItem {
    public string Text { get; set; }

    public TextFormat Format { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextItem {\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  Format: ").Append(Format).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
