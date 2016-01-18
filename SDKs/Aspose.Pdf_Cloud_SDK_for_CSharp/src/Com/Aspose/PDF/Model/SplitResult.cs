using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class SplitResult {
    public List<SplitResultDocument> Documents { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SplitResult {\n");
      sb.Append("  Documents: ").Append(Documents).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
