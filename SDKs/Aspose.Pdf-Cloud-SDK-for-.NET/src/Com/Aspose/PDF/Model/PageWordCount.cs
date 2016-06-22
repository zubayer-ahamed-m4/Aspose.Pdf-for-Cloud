using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class PageWordCount {
    public int? PageNumber { get; set; }

    public int? Count { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PageWordCount {\n");
      sb.Append("  PageNumber: ").Append(PageNumber).Append("\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
