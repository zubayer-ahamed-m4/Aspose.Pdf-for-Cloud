using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TextReplaceListRequest {
    public List<TextReplace> TextReplaces { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextReplaceListRequest {\n");
      sb.Append("  TextReplaces: ").Append(TextReplaces).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
