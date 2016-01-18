using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.PDF.Model {
  public class Signature {
    public string SignaturePath { get; set; }

    public string SignatureType { get; set; }

    public string Password { get; set; }

    public string Contact { get; set; }

    public string Location { get; set; }

    public bool? Visible { get; set; }

    public Rectangle Rectangle { get; set; }

    public string FormFieldName { get; set; }

    public string Authority { get; set; }

    public string Date { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Signature {\n");
      sb.Append("  SignaturePath: ").Append(SignaturePath).Append("\n");
      sb.Append("  SignatureType: ").Append(SignatureType).Append("\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("  Contact: ").Append(Contact).Append("\n");
      sb.Append("  Location: ").Append(Location).Append("\n");
      sb.Append("  Visible: ").Append(Visible).Append("\n");
      sb.Append("  Rectangle: ").Append(Rectangle).Append("\n");
      sb.Append("  FormFieldName: ").Append(FormFieldName).Append("\n");
      sb.Append("  Authority: ").Append(Authority).Append("\n");
      sb.Append("  Date: ").Append(Date).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
