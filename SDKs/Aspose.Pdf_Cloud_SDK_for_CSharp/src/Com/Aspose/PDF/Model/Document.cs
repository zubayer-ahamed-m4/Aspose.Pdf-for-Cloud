using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Document {
    public DocumentProperties DocumentProperties { get; set; }

    public Pages Pages { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Document {\n");
      sb.Append("  DocumentProperties: ").Append(DocumentProperties).Append("\n");
      sb.Append("  Pages: ").Append(Pages).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
