using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Page {
    public int? Id { get; set; }

    public Images Images { get; set; }

    public Rectangle Rectangle { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Page {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Images: ").Append(Images).Append("\n");
      sb.Append("  Rectangle: ").Append(Rectangle).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
