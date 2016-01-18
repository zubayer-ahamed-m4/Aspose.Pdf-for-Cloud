using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Annotation {
    public Color Color { get; set; }

    public string Contents { get; set; }

    public string CreationDate { get; set; }

    public string Subject { get; set; }

    public string Title { get; set; }

    public string Modified { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Annotation {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  Contents: ").Append(Contents).Append("\n");
      sb.Append("  CreationDate: ").Append(CreationDate).Append("\n");
      sb.Append("  Subject: ").Append(Subject).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Modified: ").Append(Modified).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
