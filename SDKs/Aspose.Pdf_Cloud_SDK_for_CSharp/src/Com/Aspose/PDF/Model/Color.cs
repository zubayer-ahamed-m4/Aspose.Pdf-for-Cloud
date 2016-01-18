using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Color {
    public string A { get; set; }

    public string R { get; set; }

    public string G { get; set; }

    public string B { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Color {\n");
      sb.Append("  A: ").Append(A).Append("\n");
      sb.Append("  R: ").Append(R).Append("\n");
      sb.Append("  G: ").Append(G).Append("\n");
      sb.Append("  B: ").Append(B).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
