using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Field {
    public string Name { get; set; }

    public int Type { get; set; }

    public List<string> Values { get; set; }

    public List<int?> SelectedItems { get; set; }

    public Rectangle Rect { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Field {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Values: ").Append(Values).Append("\n");
      sb.Append("  SelectedItems: ").Append(SelectedItems).Append("\n");
      sb.Append("  Rect: ").Append(Rect).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
