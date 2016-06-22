using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class AppendDocument {
    public string Document { get; set; }

    public int? StartPage { get; set; }

    public int? EndPage { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AppendDocument {\n");
      sb.Append("  Document: ").Append(Document).Append("\n");
      sb.Append("  StartPage: ").Append(StartPage).Append("\n");
      sb.Append("  EndPage: ").Append(EndPage).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
