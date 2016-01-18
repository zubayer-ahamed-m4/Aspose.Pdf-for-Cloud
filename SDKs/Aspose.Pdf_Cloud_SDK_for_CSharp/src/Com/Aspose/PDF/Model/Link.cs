using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Link {
    public string Href { get; set; }

    public string Rel { get; set; }

    public string Type { get; set; }

    public string Title { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Link {\n");
      sb.Append("  Href: ").Append(Href).Append("\n");
      sb.Append("  Rel: ").Append(Rel).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
