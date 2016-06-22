using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class TextReplace {
    public string OldValue { get; set; }

    public string NewValue { get; set; }

    public bool? Regex { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextReplace {\n");
      sb.Append("  OldValue: ").Append(OldValue).Append("\n");
      sb.Append("  NewValue: ").Append(NewValue).Append("\n");
      sb.Append("  Regex: ").Append(Regex).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
