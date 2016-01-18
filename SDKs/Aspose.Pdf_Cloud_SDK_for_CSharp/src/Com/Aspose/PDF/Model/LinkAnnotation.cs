using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class LinkAnnotation {
    public string ActionType { get; set; }

    public string Action { get; set; }

    public string Highlighting { get; set; }

    public Color Color { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class LinkAnnotation {\n");
      sb.Append("  ActionType: ").Append(ActionType).Append("\n");
      sb.Append("  Action: ").Append(Action).Append("\n");
      sb.Append("  Highlighting: ").Append(Highlighting).Append("\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
