using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Attachment {
    public string Description { get; set; }

    public string MimeType { get; set; }

    public string Name { get; set; }

    public string CreationDate { get; set; }

    public string ModificationDate { get; set; }

    public int? Size { get; set; }

    public string CheckSum { get; set; }

    public List<Link> Links { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Attachment {\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  MimeType: ").Append(MimeType).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  CreationDate: ").Append(CreationDate).Append("\n");
      sb.Append("  ModificationDate: ").Append(ModificationDate).Append("\n");
      sb.Append("  Size: ").Append(Size).Append("\n");
      sb.Append("  CheckSum: ").Append(CheckSum).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
