using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class DocumentProperty {
    public string Name { get; set; }

    public string Value { get; set; }

    public bool? BuiltIn { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DocumentProperty {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  BuiltIn: ").Append(BuiltIn).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
