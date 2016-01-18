using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Com.Aspose.Storage.Api;
using Com.Aspose.PDF.Api;
using Com.Aspose.PDF.Model;

namespace AsposePDF
{
    class pdf
    {
public static void Main(String[] args)
{

string APIKEY = "xxxxx";
string APPSID = "xxxxx";
string BASEPATH = "http://api.aspose.com/v1.1";

            ////try
            ////{
            ////    PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
            ////    StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

                ////set input file name
                //String fileName = "new-test.pdf";
                //String templateFile = "";
                //String dataFile = "";
                //String templateType = "";
                //String storage = "";
                //String folder = "";

                //DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

                //if (apiResponse != null && apiResponse.Status.Equals("OK"))
                //{
                //    Console.WriteLine("File name:");
                //    Console.ReadKey();
                //}

                //string name = "ABFillablewfields.pdf";
                //string storage = null;
                //string folder = null;

                //Com.Aspose.PDF.Model.FieldsResponse actual;
                //actual = pdfApi.GetFields(name, storage, folder);
                //System.Diagnostics.Debug.WriteLine("====================================");
                //foreach (Com.Aspose.PDF.Model.Field field in actual.Fields.List)
                //{
                //    System.Diagnostics.Debug.WriteLine("Name: " + field.Name);
                //    for (int i = 0; i<field.Values.Count; i++)
                //    {
                //        System.Diagnostics.Debug.WriteLine("Values " +i+":"+ field.Values[i]);
                //    }
                    
                //    //System.Diagnostics.Debug.WriteLine("title: " + link.Title);
                //    //System.Diagnostics.Debug.WriteLine("type: " + link.Type);
                //}

                //foreach (Com.Aspose.PDF.Model.Link link in actual.Fields.Links)
                //{
                //    System.Diagnostics.Debug.WriteLine("href: " + link.Href);
                //    System.Diagnostics.Debug.WriteLine("rel: " + link.Rel);
                //    System.Diagnostics.Debug.WriteLine("title: " + link.Title);
                //    System.Diagnostics.Debug.WriteLine("type: " + link.Type);
                //}

            //}
            //catch (Exception ex)
            //{
            //}



///*
//*  Working with Document 
//*  Create Empty PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "test.pdf";
//String templateFile = "";
//String dataFile = "";
//String templateType = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create Empty PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Document 
//*  Create Empty HTML 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "test.pdf";
//String templateFile = "sample.html";
//String dataFile = "";
//String templateType = "html";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + templateFile));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create Empty HTML, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Create Empty XML  
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-xml.pdf";
//String templateFile = "sample.xsl";
//String dataFile = "sample.xml";
//String templateType = "xml";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + templateFile));
//    storageApi.PutCreate(dataFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + dataFile));


//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create Empty XML , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Convert PDF to Images, TIFF, DOC, HTML and other Formats 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "Sample";
//String fileName = name + ".pdf";
//String format = "TIFF";
//String storage = "";
//String folder = "";
//String outPath = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to TIFF, Done!");
//    }

//    format = "DOC";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to DOC, Done!");
//    }


//    format = "html";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to HTML, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Convert PDF to other Formats without using Storage 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

////set input file name
//String name = "Sample";
//String fileName = name + ".pdf";
//String format = "TIFF";
//String url = "";
//String outPath = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName); 

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to TIFF, Done!");
//    }

//    format = "DOC";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to DOC, Done!");
//    }


//    format = "html";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF to HTML, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Merge Multiple PDF Files 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-merged.pdf";
//String storage = "";
//String folder = "";
//MergeDocuments body = new MergeDocuments();
//body.List = new System.Collections.Generic.List<string> { "Sample.pdf", "sample-input.pdf" };

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate("Sample.pdf", "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + "Sample.pdf"));
//    storageApi.PutCreate("sample-input.pdf", "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + "sample-input.pdf"));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutMergeDocuments(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Merge Multiple PDF Files, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Split PDF Files 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String format = "pdf";
//int from = 1;
//int to = 2;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SplitResultResponse apiResponse = pdfApi.PostSplitDocument(fileName, format, from, to, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Split PDF Files, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Sign PDF Documents 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String signatureFileName = "pkc7-sample.pfx";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//Signature body = new Signature();
//body.Authority = "Imran Anwar";
//body.Location = "Faisalabad";
//body.Contact = "imran.anwar@aspose.com";
//body.Date = "06/24/2015 2:00:00.000 AM";
//body.FormFieldName = "Signature1";
//body.Password = "aspose";
//Rectangle rect = new Rectangle();
//rect.X = 100;
//rect.Y = 100;
//rect.Height = 100;
//rect.Width = 200;
//body.Rectangle = rect;
//body.SignaturePath = signatureFileName;
//body.SignatureType = "PKCS7";
//body.Visible = true;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));
//    storageApi.PutCreate(signatureFileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + signatureFileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PostSignPage(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Sign PDF Documents, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Append PDF Files 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample.pdf";
//String appendFile = null;
//int startPage = 2;
//int endPage = 3;
//String storage = "";
//String folder = "";

//String appendFileName = "sample-input.pdf";
//AppendDocument body = new AppendDocument();
//body.Document = appendFileName;
//body.StartPage = 2;
//body.EndPage = 3;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));
//    storageApi.PutCreate(appendFileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + appendFileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PostAppendDocument(fileName, appendFile, startPage, endPage, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Append PDF Files, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Convert PDF from Remote Server to other Formats 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "123";
//String fileName = name + ".pdf";
//String format = "TIFF";
//String url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + fileName;
//String outPath = "";
//byte[] file = null; //System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName); 

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF from Remote Server to TIFF, Done!");
//    }

//    format = "DOC";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF from Remote Server to DOC, Done!");
//    }

//    format = "HTML";
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, file);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert PDF from Remote Server to HTML, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("ERROR:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Create PDF from JPEG 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-jpeg.pdf";
//String templateFile = "Einstein_JPEG.jpg";
//String dataFile = "";
//String templateType = "jpeg";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + templateFile));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create PDF from JPEG, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Document 
//*  Create PDF from SVG
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-svg.pdf";
//String templateFile = "Example.svg";
//String dataFile = "";
//String templateType = "svg";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + templateFile));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create PDF from SVG, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Document 
//*  Create PDF from TIFF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-tiff.pdf";
//String templateFile = "Sample.tiff";
//String dataFile = "";
//String templateType = "tiff";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + templateFile));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Create PDF from TIFF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Pages  
//*  Add a New Page in PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentPagesResponse apiResponse = pdfApi.PutAddNewPage(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Add a New Page in PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Pages  
//*  Delete Page from PDF  
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.DeletePage(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Page from PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Pages  
//*  Move PDF Pages to New Locations in a PDF File 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-merged.pdf";
//int pageNumber = 1;
//int newIndex = 2;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PostMovePage(fileName, pageNumber, newIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Move PDF Pages to New Locations in a PDF File, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Pages  
//*  Get PDF Document Page Count
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentPagesResponse apiResponse = pdfApi.GetPages(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        int count = apiResponse.Pages.List.Count;
//        Console.WriteLine("Total Page Count :: " + count);
//        Console.WriteLine("Get PDF Document Page Count, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Pages  
//*  Convert a PDF Page to Image with Default Size
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-input";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//String format = "jpeg";
//int? width = null;
//int? height = null;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetPageWithFormat(fileName, pageNumber, format, width, height, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert a PDF Page to Image with Default Size, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Pages  
//*  Convert a PDF Page to Image with Specified Size 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-input";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//String format = "jpeg";
//int width = 300;
//int height = 300;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetPageWithFormat(fileName, pageNumber, format, width, height, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert a PDF Page to Image with Specified Size, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Document Properties 
//*  Set a Single Document Property in a PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//String propertyName = "author";
//String storage = "";
//String folder = "";
//DocumentProperty body = new DocumentProperty();
//body.Name = "author";
//body.Value = "Imran Anwar";
//body.BuiltIn = true;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentPropertyResponse apiResponse = pdfApi.PutSetProperty(fileName, propertyName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        DocumentProperty docProp = apiResponse.DocumentProperty;
//        Console.WriteLine(docProp.Name + " :: " + docProp.Value);
//        Console.WriteLine("Set a Single Document Property in a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Document Properties 
//*  Get All Document Properties from a PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentPropertiesResponse apiResponse = pdfApi.GetDocumentProperties(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach( DocumentProperty docProp in apiResponse.DocumentProperties.List){
//            Console.WriteLine(docProp.Name + " :: " + docProp.Value);
//        }
//        Console.WriteLine("Get All Document Properties from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Document Properties 
//*  Remove All Document Properties from a PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.DeleteProperties(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Remove All Document Properties from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Document Properties 
//*  Get All Document Properties from a PDF 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//String propertyName = "Creator";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentPropertyResponse apiResponse = pdfApi.GetDocumentProperty(fileName, propertyName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        DocumentProperty docProp = apiResponse.DocumentProperty;
//        Console.WriteLine(docProp.Name + " :: " + docProp.Value);
//        Console.WriteLine("Get All Document Properties from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Form Fields 
//*  Get all Form Fields from the PDF Document 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-field.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    FieldsResponse apiResponse = pdfApi.GetFields(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//         foreach(Field field in apiResponse.Fields.List){
//             Console.WriteLine("Name:" + field.Name);
//            Console.WriteLine("Value:" + field.Values[0]);
//         }
//        Console.WriteLine("Get all Form Fields from the PDF Document, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Form Fields 
//*  Get a Particular Form Field from the PDF Document
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-field.pdf";
//String fieldName = "textbox1";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    FieldResponse apiResponse = pdfApi.GetField(fileName, fieldName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Field field = apiResponse.Field;
//        Console.WriteLine("Name" + field.Name);
//        Console.WriteLine("Value" + field.Values[0]);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Form Fields 
//*  Get Form Field Count from a PDF Document
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-field.pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    FieldsResponse apiResponse = pdfApi.GetFields(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        int count = apiResponse.Fields.List.Count;
//        Console.WriteLine("Count" + count);
//        Console.WriteLine("Get Form Field Count from a PDF Document, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Form Fields 
//*  Update a Form Field in a PDF Document
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-field.pdf";
//String fieldName = "textbox1";
//String storage = "";
//String folder = "";

//Field body = new Field();
//body.Name = "textbox1";
//body.Values = new List<string> { "Aspose" };

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    FieldResponse apiResponse = pdfApi.PutUpdateField(fileName, storage, folder, fieldName, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Field field = apiResponse.Field;
//        Console.WriteLine("Name" + field.Name);
//        Console.WriteLine("Value" + field.Values[0]);
//        Console.WriteLine("Update a Form Field in a PDF Document, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Images 
//*  Extract a Particular Image from a PDF Page with Default Size 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleImage";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//int imageNumber = 1;
//String format = "jpeg";
//int? width = null;
//int? height = null;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetImageWithFormat(fileName, pageNumber, imageNumber, format, width, height, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Extract a Particular Image from a PDF Page with Default Size, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Images 
//*  Extract a Particular Image from a PDF Page with Specified Size
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleImage";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//int imageNumber = 1;
//String format = "jpeg";
//int? width = 200;
//int? height = 200;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetImageWithFormat(fileName, pageNumber, imageNumber, format, width, height, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Extract a Particular Image from a PDF Page with Specified Size, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Images 
//*  Get Image Count from a PDF Page 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "SampleImage.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ImagesResponse apiResponse = pdfApi.GetImages(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        int count = apiResponse.Images.List.Count;
//        Console.WriteLine("Image Count " + count);
//        Console.WriteLine("Get Image Count from a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Images 
//*  Replace Image in a PDF File using Image File
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleImage";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//int imageNumber = 1;
//String imageFile = "aspose-cloud.png";
//String storage = "";
//String folder = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + imageFile);

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ImageResponse apiResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage, folder, file);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Image in a PDF File using Image File, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Images 
//*  Replace Image in a PDF file using Local Image Stream
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleImage";
//String fileName = name + ".pdf";
//int pageNumber = 1;
//int imageNumber = 1;
//String imageFile = "aspose-cloud.png";
//String storage = "";
//String folder = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + imageFile);

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ImageResponse apiResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage, folder, file);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Image in a PDF file using Local Image Stream, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Get all Text Items from a PDF Document 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String withEmpty = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextItemsResponse apiResponse = pdfApi.GetTextItems(fileName, withEmpty, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem textItem in apiResponse.TextItems.List)
//        {
//            Console.WriteLine("Text:" + textItem.Text);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Text 
//*  Get all Text Items from a PDF page 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String withEmpty = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextItemsResponse apiResponse = pdfApi.GetPageTextItems(fileName, pageNumber, withEmpty, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem textItem in apiResponse.TextItems.List)
//        {
//            Console.WriteLine("Text:" + textItem.Text);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Text 
//*  Get all Text Items from a Particular Fragment of a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//int fragmentNumber = 1;
//String withEmpty = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextItemsResponse apiResponse = pdfApi.GetFragment(fileName, pageNumber, fragmentNumber, withEmpty, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem textItem in apiResponse.TextItems.List)
//        {
//            Console.WriteLine("Text:" + textItem.Text);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}





///*
//*  Working with Text 
//*  Get Fragment Count from a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String withEmpty = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextItemsResponse apiResponse = pdfApi.GetFragments(fileName, pageNumber, withEmpty, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Fragment Count :" + apiResponse.TextItems.List.Count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Get Segment Count from a PDF Fragment
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//int fragmentNumber = 1;
//String withEmpty = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextItemsResponse apiResponse = pdfApi.GetSegments(fileName, pageNumber, fragmentNumber, withEmpty, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Fragment Count :" + apiResponse.TextItems.List.Count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Get Text Format of a PDF Fragment
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//int fragmentNumber = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextFormatResponse apiResponse = pdfApi.GetFragmentTextFormat(fileName, pageNumber, fragmentNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        TextFormat segTextFormat = apiResponse.TextFormat;
//        Console.WriteLine("Segment Font Name - " + segTextFormat.FontName);
//        Console.WriteLine("Segment Font Size - " + segTextFormat.FontSize.Value);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Get Text Format of a Particular Segment
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "segments.pdf";
//int pageNumber = 1;
//int fragmentNumber = 1;
//int segmentNumber = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TextFormatResponse apiResponse = pdfApi.GetSegmentTextFormat(fileName, pageNumber, fragmentNumber, segmentNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        TextFormat segTextFormat = apiResponse.TextFormat;
//        Console.WriteLine("Segment Font Name - " + segTextFormat.FontName);
//        Console.WriteLine("Segment Font Size - " + segTextFormat.FontSize.Value);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Replace Text in a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";
//TextReplace body = new TextReplace();

//body.OldValue = "Sample PDF";
//body.NewValue = "Sample Aspose PDF";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceText(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Text in a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Replace Text in a PDF File 
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName =  "sample-input.pdf";
//String storage = "";
//String folder = "";
//TextReplace body = new TextReplace();

//body.OldValue = "Sample PDF";
//body.NewValue = "Sample Aspose PDF";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentTextReplaceResponse apiResponse = pdfApi.PostDocumentReplaceText(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Text in a PDF File, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Replace Multiple Texts in a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//TextReplaceListRequest body = new TextReplaceListRequest();

//TextReplace tr1 = new TextReplace();
//tr1.OldValue = "Sample";
//tr1.NewValue = "Aspose Sample";

//TextReplace tr2 = new TextReplace();
//tr2.OldValue = "PDF";
//tr2.NewValue = "PDF Document";

//body.TextReplaces = new List<TextReplace> {tr1, tr2 };

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceTextList(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Multiple Texts in a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}






///*
//*  Working with Text 
//*  Replace Multiple Texts in a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String storage = "";
//String folder = "";

//TextReplaceListRequest body = new TextReplaceListRequest();

//TextReplace tr1 = new TextReplace();
//tr1.OldValue = "Sample";
//tr1.NewValue = "Aspose Sample";

//TextReplace tr2 = new TextReplace();
//tr2.OldValue = "PDF";
//tr2.NewValue = "PDF Document";

//body.TextReplaces = new List<TextReplace> { tr1, tr2 };

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    DocumentTextReplaceResponse apiResponse = pdfApi.PostDocumentReplaceTextList(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Replace Multiple Texts in a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Annotations  
//*  Get all Annotations from a PDF Page  
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName =  "Sample-Annotation.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (Link annotatonLink  in apiResponse.Annotations.Links)
//        {
//            Console.WriteLine("Annotation Link :: " + annotatonLink.Href);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}





///*
//*  Working with Annotations  
//*  Get Annotations Count from a PDF page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        int count = apiResponse.Annotations.Links.Count;
//        Console.WriteLine("Annotation Count :: " + count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}





///*
//*  Working with Annotations  
//*  Get a Specific Annotation from a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Annotation.pdf";
//int pageNumber = 1;
//int annotationNumber = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AnnotationResponse apiResponse = pdfApi.GetPageAnnotation(fileName, pageNumber, annotationNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Annotation annotation = apiResponse.Annotation;
//        Console.WriteLine("Annotation Content" + annotation.Contents);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Bookmarks  
//*  Get all Bookmarks from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    BookmarksResponse apiResponse = pdfApi.GetDocumentBookmarks(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Bookmarks bookmarks = apiResponse.Bookmarks;
//        Console.WriteLine("Get all Bookmarks from a PDF,Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Bookmarks  
//*  Get a Specific Bookmark from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//String bookmarkPath = "1";
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetDocumentBookmarksChildren(fileName, bookmarkPath, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Get all Bookmarks from a PDF,Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Bookmarks  
//*  Get Bookmark Count from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    BookmarksResponse apiResponse = pdfApi.GetDocumentBookmarks(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Bookmarks bookmarks = apiResponse.Bookmarks;
//        int count = bookmarks.List.Count;
//        Console.WriteLine("Bookmark Count :: " + count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Links   
//*  Get all Links from a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    LinkAnnotationsResponse apiResponse = pdfApi.GetPageLinkAnnotations(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Get all Links from a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Links  
//*  Get a Specific Link from a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//int pageNumber = 1;
//int linkIndex = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    LinkAnnotationResponse apiResponse = pdfApi.GetPageLinkAnnotationByIndex(fileName, pageNumber, linkIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        LinkAnnotation linkAnnotation = apiResponse.Link;
//        Console.WriteLine("Action Type :: " +  linkAnnotation.ActionType);
//        Console.WriteLine("Action :: " +  linkAnnotation.Action);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Links  
//*  Get Link Count from a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample-Bookmark.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    LinkAnnotationsResponse apiResponse = pdfApi.GetPageLinkAnnotations(fileName, pageNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        LinkAnnotations linkAnnotations = apiResponse.Links;
//        int count = linkAnnotations.List.Count;
//        Console.WriteLine("Count :: " + count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Attachments   
//*  Get all Attachments from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "SampleAttachment.pdf";
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AttachmentsResponse apiResponse = pdfApi.GetDocumentAttachments(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Get all Attachments from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Attachments   
//*  Get a Specific Attachment from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleAttachment";
//String fileName = name + ".pdf";
//int attachmentIndex = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AttachmentResponse apiResponse = pdfApi.GetDocumentAttachmentByIndex(fileName, attachmentIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Attachment attach = apiResponse.Attachment;
//        Console.WriteLine("Name :: " + attach.Name);
//        Console.WriteLine("MimeType :: " + attach.MimeType);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Attachments   
//*  Get Attachment Count from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "SampleAttachment.pdf";
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AttachmentsResponse apiResponse = pdfApi.GetDocumentAttachments(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Attachments attachments = apiResponse.Attachments;
//        int count = attachments.List.Count;
//        Console.WriteLine("Count :: " + count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Attachments   
//*  Download a specific Attachment from a PDF
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "SampleAttachment";
//String fileName = name + ".pdf";
//int attachmentIndex = 1;
//String storage = "";
//String folder = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = pdfApi.GetDownloadDocumentAttachmentByIndex(fileName, attachmentIndex, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Download a specific Attachment from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}





///*
//*  Working with Watermarks or Stamps    
//*  Add Text Stamp (Watermark) to a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";
//Stamp body = new Stamp();
//body.Value = "Aspose.com";
//body.Background = true;
//body.Type = "Text";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add Text Stamp (Watermark) to a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Watermarks or Stamps    
//*  Add Text Stamp (Watermark) to a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String imageFile = "aspose-cloud.png";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//Stamp body = new Stamp();
//body.FileName = imageFile;
//body.Background = true;
//body.Type = "Image";
//body.PageIndex = 0;
//body.LeftMargin = 0.0;
//body.Opacity = 0.5;
//body.RightMargin = 0.0;
//body.TopMargin = 0.0;
//body.YIndent = 100.0;
//body.XIndent = 100.0;
//body.Zoom = 1.0;
//body.TextState = null;
//body.Width = 300.0;
//body.Height = 300.0;


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));
//    storageApi.PutCreate(imageFile, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + imageFile));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);


//    if (apiResponse != null)
//    {
//        Console.WriteLine("Download a specific Attachment from a PDF, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Watermarks or Stamps    
//*  Add PDF Page as Stamp (Watermark) to a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//String pdfName = "Sample.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";


//Stamp body = new Stamp();
//body.FileName = pdfName;
//body.Background = true;
//body.Type = "Image";
//body.PageIndex = 0;
//body.LeftMargin = 0.0;
//body.Opacity = 0.5;
//body.RightMargin = 0.0;
//body.TopMargin = 0.0;
//body.YIndent = 100.0;
//body.XIndent = 100.0;
//body.Zoom = 1.0;
//body.TextState = null;
//body.Width = 300.0;
//body.Height = 300.0;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));
//    storageApi.PutCreate(pdfName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + pdfName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add PDF Page as Stamp (Watermark) to a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Watermarks or Stamps    
//*  Add Page Number Stamp to a PDF Page
//*/

//PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "sample-input.pdf";
//int pageNumber = 1;
//String storage = "";
//String folder = "";

//Stamp body = new Stamp();
//body.Background = true;
//body.Value = "Page # of 2";
//body.Type = "PageNumber";
//body.PageIndex = 0;
//body.LeftMargin = 0.0;
//body.Opacity = 0.5;
//body.RightMargin = 0.0;
//body.TopMargin = 0.0;
//body.YIndent = 100.0;
//body.XIndent = 100.0;
//body.Zoom = 1.0;
//body.TextState = null;
//body.Width = 300.0;
//body.Height = 300.0;
//body.StartingNumber = 1;


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add Page Number Stamp to a PDF Page, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}






    /*
     * TESTING the APIs 
     */

/*
*  Working with Document 
*  Sign PDF Documents 
*/

PdfApi pdfApi = new PdfApi(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

String fileName = "signature.pdf";
String signatureFileName = "pkc7-sample.pfx";
//int pageNumber = 1;
String storage = "";
String folder = "";

try
{
    Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
    link.Href = "http://api.aspose.com/v1.1/pdf/sample-field.pdf/fields/signature";
    link.Rel = "self";
    link.Title = "NewField";
    link.Type = "0";

    Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
    rect.X = 100;
    rect.Y = 100;
    rect.Height = 100;
    rect.Width = 200;

    Field field = new Field();

    Fields fields = new Fields();

    field.Name = "signature";
    field.Values = new List<string> { "NewFieldValue" };
    field.Rect = rect;
    field.SelectedItems = new System.Collections.Generic.List<int?> { 1 };
    field.Type = 0;
    field.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };

    Com.Aspose.PDF.Model.Signature body = new Com.Aspose.PDF.Model.Signature();
    body.Authority = "Imran Anwar";
    body.Contact = "imran.anwar@aspose.com";
    body.Date = "1-1-2016";
    body.FormFieldName = field.Name;
    body.Location = "Faisalabad";
    body.Password = "aspose";
    body.Rectangle = rect;
    body.SignaturePath = "pkc7-sample.pfx";
    body.SignatureType = "PKCS7";
    body.Visible = true;



    //upload source file to aspose cloud storage
    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + fileName));



    FieldsResponse fieldResponse = pdfApi.PutUpdateFields(fileName, storage, folder, fields);
    if (fieldResponse != null)
    {
        Console.WriteLine("Field added, Done!");
        Console.ReadKey();
    }

    //storageApi.PutCreate(signatureFileName, "", "", System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + signatureFileName));

    //invoke Aspose.PDF Cloud SDK API to append word document
    //SaaSposeResponse apiResponse = pdfApi.PostSignPage(fileName, pageNumber, storage, folder, body);
    //SaaSposeResponse apiResponse = pdfApi.PostSignDocument(fileName, storage, folder, body);

    //if (apiResponse != null && apiResponse.Status.Equals("OK"))
    //{
    //    Console.WriteLine("Sign PDF Documents, Done!");
    //    Console.ReadKey();
    //}
}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
}





/*
* End
*/
}}}
