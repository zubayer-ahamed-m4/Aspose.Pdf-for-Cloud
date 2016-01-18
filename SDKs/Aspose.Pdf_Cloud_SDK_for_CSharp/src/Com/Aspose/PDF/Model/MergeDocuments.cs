using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class MergeDocuments {
    public List<string> List { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MergeDocuments {\n");
      sb.Append("  List: ").Append(List).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
