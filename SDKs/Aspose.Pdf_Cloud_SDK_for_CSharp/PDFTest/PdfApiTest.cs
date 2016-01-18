using Com.Aspose.PDF.Api;
using Com.Aspose.Storage.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace PDFTest
{
    
    
    /// <summary>
    ///This is a test class for TestPdfApi and is intended
    ///to contain all TestPdfApi Unit Tests
    ///</summary>
    [TestClass()]
    public class TestPdfApi
    {

        protected string APIKEY = "xxxxx";
        protected string APPSID = "xxxxx";
        protected string BASEPATH = "http://api.aspose.com/v1.1";

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for DeletePage
        ///</summary>
        [TestMethod()]
        public void TestDeletePage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH); 
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "sample-input.pdf";
            int? pageNumber = 1;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));

            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.DeletePage(name, pageNumber, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteProperties
        ///</summary>
        [TestMethod()]
        public void TestDeleteProperties()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Annotation.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.DeleteProperties(name, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteProperty
        ///</summary>
        [TestMethod()]
        public void TestDeleteProperty()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Annotation-Property.pdf";
            string propertyName = "AsposeDev"; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.DeleteProperty(name, propertyName, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocument
        ///</summary>
        [TestMethod()]
        public void TestGetDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetDocument(name, storage, folder);
            
            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentAttachmentByIndex
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentAttachmentByIndex()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "attachments.pdf";
            int? attachmentIndex = 1; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.AttachmentResponse actual;
            actual = target.GetDocumentAttachmentByIndex(name, attachmentIndex, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.AttachmentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentAttachments
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentAttachments()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.AttachmentsResponse actual;
            actual = target.GetDocumentAttachments(name, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.AttachmentsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentBookmarks
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentBookmarks()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "pst-barcode-doc.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.BookmarksResponse actual;
            actual = target.GetDocumentBookmarks(name, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.BookmarksResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentBookmarksChildren
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentBookmarksChildren()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Bookmark.pdf";
            string bookmarkPath = null; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetDocumentBookmarksChildren(name, bookmarkPath, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentProperties
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperties()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "pst-barcode-doc.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.DocumentPropertiesResponse actual;
            actual = target.GetDocumentProperties(name, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentPropertiesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperty()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "pst-barcode-doc.pdf";
            string propertyName = "Creator"; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.DocumentPropertyResponse actual;
            actual = target.GetDocumentProperty(name, propertyName, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentPropertyResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentWithFormat()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string format = "pdf"; 
            string storage = null; 
            string folder = null; 
            string outPath = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetDocumentWithFormat(name, format, storage, folder, outPath);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDownloadDocumentAttachmentByIndex
        ///</summary>
        [TestMethod()]
        public void TestGetDownloadDocumentAttachmentByIndex()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "attachments.pdf";
            int? attachmentIndex = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetDownloadDocumentAttachmentByIndex(name, attachmentIndex, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetExtractBarcodes
        ///</summary>
        [TestMethod()]
        public void TestGetExtractBarcodes()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "Barcode.pdf";
            int? pageNumber = 1; 
            int? imageNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.BarcodeResponseList actual;
            actual = target.GetExtractBarcodes(name, pageNumber, imageNumber, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.BarcodeResponseList(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetField
        ///</summary>
        [TestMethod()]
        public void TestGetField()
        {
            
            
            
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            String name = "ABFillablewfields.pdf";
            String fieldName = "dvDate_2";
            String storage = "";
            String folder = "";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.FieldResponse actual;
            actual = target.GetField(name, fieldName, storage, folder);
            Console.WriteLine("fields:"+actual);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.FieldResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetFields
        ///</summary>
        [TestMethod()]
        public void TestGetFields()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "ABFillablewfields.pdf";
            string storage = null; 
            string folder = null; 

            Com.Aspose.PDF.Model.FieldsResponse actual;
            actual = target.GetFields(name, storage, folder);
            System.Diagnostics.Debug.WriteLine("====================================");
            foreach (Com.Aspose.PDF.Model.Link link in actual.Fields.Links)
            {
                System.Diagnostics.Debug.WriteLine("href: " + link.Href);
                System.Diagnostics.Debug.WriteLine("rel: " + link.Rel);
                System.Diagnostics.Debug.WriteLine("title: " + link.Title);
                System.Diagnostics.Debug.WriteLine("type: " + link.Type);
            }
            //System.Diagnostics.Debug.WriteLine("Actual: ");
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.FieldsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetFragment
        ///</summary>
        [TestMethod()]
        public void TestGetFragment()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? fragmentNumber = 1; 
            string withEmpty = null; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.TextItemsResponse actual;
            actual = target.GetFragment(name, pageNumber, fragmentNumber, withEmpty, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetFragmentTextFormat
        ///</summary>
        [TestMethod()]
        public void TestGetFragmentTextFormat()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? fragmentNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.TextFormatResponse actual;
            actual = target.GetFragmentTextFormat(name, pageNumber, fragmentNumber, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextFormatResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetFragments
        ///</summary>
        [TestMethod()]
        public void TestGetFragments()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            string withEmpty = null; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.TextItemsResponse actual;
            actual = target.GetFragments(name, pageNumber, withEmpty, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImage
        ///</summary>
        [TestMethod()]
        public void TestGetImage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? imageNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetImage(name, pageNumber, imageNumber, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImageWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetImageWithFormat()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? imageNumber = 1; 
            string format = "jpeg"; 
            int? width = 0; 
            int? height = 0; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetImageWithFormat(name, pageNumber, imageNumber, format, width, height, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetImages
        ///</summary>
        [TestMethod()]
        public void TestGetImages()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ImagesResponse actual;
            actual = target.GetImages(name, pageNumber, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ImagesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPage
        ///</summary>
        [TestMethod()]
        public void TestGetPage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetPage(name, pageNumber, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageAnnotation
        ///</summary>
        [TestMethod()]
        public void TestGetPageAnnotation()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "annotation.pdf";
            int? pageNumber = 1; 
            int? annotationNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.AnnotationResponse actual;
            actual = target.GetPageAnnotation(name, pageNumber, annotationNumber, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.AnnotationResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageAnnotations
        ///</summary>
        [TestMethod()]
        public void TestGetPageAnnotations()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "annotation.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));

            Com.Aspose.PDF.Model.AnnotationsResponse actual;
            actual = target.GetPageAnnotations(name, pageNumber, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.AnnotationsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageLinkAnnotationByIndex
        ///</summary>
        [TestMethod()]
        public void TestGetPageLinkAnnotationByIndex()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Bookmark.pdf";
            int? pageNumber = 1; 
            int? linkIndex = 1; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.LinkAnnotationResponse actual;
            actual = target.GetPageLinkAnnotationByIndex(name, pageNumber, linkIndex, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.LinkAnnotationResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageLinkAnnotations
        ///</summary>
        [TestMethod()]
        public void TestGetPageLinkAnnotations()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "annotation.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.LinkAnnotationsResponse actual;
            actual = target.GetPageLinkAnnotations(name, pageNumber, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.LinkAnnotationsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageTextItems
        ///</summary>
        [TestMethod()]
        public void TestGetPageTextItems()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            int? pageNumber = 1; 
            string withEmpty = null; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.TextItemsResponse actual;
            actual = target.GetPageTextItems(name, pageNumber, withEmpty, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPageWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetPageWithFormat()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            int? pageNumber = 1; 
            string format = "tiff"; 
            int? width = 100; 
            int? height = 100; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.GetPageWithFormat(name, pageNumber, format, width, height, storage, folder);

            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPages
        ///</summary>
        [TestMethod()]
        public void TestGetPages()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.DocumentPagesResponse actual;
            actual = target.GetPages(name, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentPagesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetSegment
        ///</summary>
        [TestMethod()]
        public void TestGetSegment()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? fragmentNumber = 1; 
            int? segmentNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.TextItemResponse actual;
            actual = target.GetSegment(name, pageNumber, fragmentNumber, segmentNumber, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetSegmentTextFormat
        ///</summary>
        [TestMethod()]
        public void TestGetSegmentTextFormat()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Annotation.pdf";
            int? pageNumber = 1; 
            int? fragmentNumber = 1; 
            int? segmentNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.TextFormatResponse actual;
            actual = target.GetSegmentTextFormat(name, pageNumber, fragmentNumber, segmentNumber, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextFormatResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetSegments
        ///</summary>
        [TestMethod()]
        public void TestGetSegments()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample-Annotation.pdf";
            int? pageNumber = 1; 
            int? fragmentNumber = 1; 
            string withEmpty = null; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.TextItemsResponse actual;
            actual = target.GetSegments(name, pageNumber, fragmentNumber, withEmpty, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetTextItems
        ///</summary>
        [TestMethod()]
        public void TestGetTextItems()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            string withEmpty = null; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.TextItemsResponse actual;
            actual = target.GetTextItems(name, withEmpty, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWordsPerPage
        ///</summary>
        [TestMethod()]
        public void TestGetWordsPerPage()
        {   
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.WordCountResponse actual;
            actual = target.GetWordsPerPage(name, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.WordCountResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostAppendDocument
        ///</summary>
        [TestMethod()]
        public void TestPostAppendDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string appendFile = null; 
            int? startPage = 1; 
            int? endPage = 2; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.PDF.Model.AppendDocument body = new Com.Aspose.PDF.Model.AppendDocument();
            body.Document = "Barcode.pdf";
            body.StartPage = 1;
            body.EndPage = 2;
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));
            storageApi.PutCreate(body.Document, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + body.Document)); 
            
            Com.Aspose.PDF.Model.DocumentResponse actual;
            actual = target.PostAppendDocument(name, appendFile, startPage, endPage, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCreateField
        ///</summary>
        [TestMethod()]
        public void TestPostCreateField()
        {   
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            int? page = 1; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.PDF.Model.Field body = new Com.Aspose.PDF.Model.Field();

            Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
            link.Href = "http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField";
            link.Rel = "self";
            link.Title = "NewField";
            link.Type = "link";

            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 0;
            rect.Y = 0;

            body.Name = "dvDate_1";
            body.Values = new System.Collections.Generic.List<string> { "NewFieldValue" };
            body.Rect = rect;
            body.SelectedItems = new System.Collections.Generic.List<int?> { 1 };
            body.Type = 0;
            body.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };

            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.SaaSposeResponse actual;            
            actual = target.PostCreateField(name, page, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostDocumentReplaceText
        ///</summary>
        [TestMethod()]
        public void TestPostDocumentReplaceText()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);            
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string storage = null; 
            string folder = null; 

            Com.Aspose.PDF.Model.TextReplace body = new Com.Aspose.PDF.Model.TextReplace();
            body.NewValue = "This is the new test added by IA";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.DocumentTextReplaceResponse actual;
            actual = target.PostDocumentReplaceText(name, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentTextReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostDocumentReplaceTextList
        ///</summary>
        [TestMethod()]
        public void TestPostDocumentReplaceTextList()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            string storage = null; 
            string folder = null;             

            Com.Aspose.PDF.Model.TextReplaceListRequest body = new Com.Aspose.PDF.Model.TextReplaceListRequest();
            Com.Aspose.PDF.Model.TextReplace tr = new Com.Aspose.PDF.Model.TextReplace();
            tr.NewValue = "This will be the new text";
            body.TextReplaces = new System.Collections.Generic.List<Com.Aspose.PDF.Model.TextReplace> { tr };

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.DocumentTextReplaceResponse actual;
            actual = target.PostDocumentReplaceTextList(name, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentTextReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostMovePage
        ///</summary>
        [TestMethod()]
        public void TestPostMovePage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "ACORD90.pdf";
            int? pageNumber = 1; 
            int? newIndex = 2; 
            string storage = null; 
            string folder = null; 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.PostMovePage(name, pageNumber, newIndex, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostPageReplaceText
        ///</summary>
        [TestMethod()]
        public void TestPostPageReplaceText()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.PDF.Model.TextReplace body = new Com.Aspose.PDF.Model.TextReplace();
            body.NewValue = "This is the latest text added by IA";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.PageTextReplaceResponse actual;
            actual = target.PostPageReplaceText(name, pageNumber, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.PageTextReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostPageReplaceTextList
        ///</summary>
        [TestMethod()]
        public void TestPostPageReplaceTextList()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.PDF.Model.TextReplaceListRequest body = new Com.Aspose.PDF.Model.TextReplaceListRequest();
            Com.Aspose.PDF.Model.TextReplace tr = new Com.Aspose.PDF.Model.TextReplace();
            tr.NewValue = "This will be the new text";
            body.TextReplaces = new System.Collections.Generic.List<Com.Aspose.PDF.Model.TextReplace> { tr };

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.PageTextReplaceResponse actual;            
            actual = target.PostPageReplaceTextList(name, pageNumber, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.PageTextReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostReplaceImage
        ///</summary>
        [TestMethod()]
        public void TestPostReplaceImage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Lenovo_Tablet_2_Datasheet.pdf";
            int? pageNumber = 1; 
            int? imageNumber = 1;
            string imageFile = "digi.gif";
            string storage = null; 
            string folder = null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + "digi.gif"); 

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.ImageResponse actual;
            actual = target.PostReplaceImage(name, pageNumber, imageNumber, imageFile, storage, folder, file);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ImageResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSignDocument
        ///</summary>
        [TestMethod()]
        public void TestPostSignDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "signature.pdf";
            string storage = null; 
            string folder = null;

            Com.Aspose.PDF.Model.Field field = new Com.Aspose.PDF.Model.Field();

            Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
            link.Href = "http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField";
            link.Rel = "self";
            link.Title = "NewField";
            link.Type = "0";

            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 100;
            rect.Y = 100;
            rect.Height = 100;
            rect.Width = 200;

            field.Name = "signature";
            field.Values = new System.Collections.Generic.List<string> { "NewFieldValue" };
            field.Rect = rect;
            field.SelectedItems = new System.Collections.Generic.List<int?> { 1 };
            field.Type = 0;
            field.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };

            target.PutUpdateField(name, storage, folder, field.Name, field);

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

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));


            Com.Aspose.PDF.Model.FieldResponse fieldResponse = target.PutUpdateField(name, storage, folder, field.Name, field);
            if (fieldResponse != null)
            {
                Console.WriteLine("Field added, Done!");
            }
            storageApi.PutCreate(body.SignaturePath, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + body.SignaturePath));


            target.PutUpdateField(name, storage, folder, "signature", field);

            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.PostSignDocument(name, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSignPage
        ///</summary>
        [TestMethod()]
        public void TestPostSignPage()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "sample-input.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.PDF.Model.Signature body = new Com.Aspose.PDF.Model.Signature();
            body.Authority = "Authority";
            body.Contact = "imran.anwar@aspose.com";
            body.Date = "1-1-2016";
            body.FormFieldName = "Signature1";
            body.Location = "Faisalabad";
            body.Password = "aspose";
            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 100;
            rect.Y = 100;
            rect.Height = 100;
            rect.Width = 200;
            body.Rectangle = rect;
            body.SignaturePath = "pkc7-sample.pfx";
            body.SignatureType = "PKCS7";
            body.Visible = true;


            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));
            storageApi.PutCreate(body.SignaturePath, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + body.SignaturePath)); 
            
            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.PostSignPage(name, pageNumber, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSplitDocument
        ///</summary>
        [TestMethod()]
        public void TestPostSplitDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "ACORD90.pdf";
            string format = "pdf"; 
            int? from = 1; 
            int? to = 2; 
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.SplitResultResponse actual;
            actual = target.PostSplitDocument(name, format, from, to, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SplitResultResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutAddNewPage
        ///</summary>
        [TestMethod()]
        public void TestPutAddNewPage()
        {   
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            string storage = null; 
            string folder = null; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.DocumentPagesResponse actual;
            actual = target.PutAddNewPage(name, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentPagesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutConvertDocument
        ///</summary>
        [TestMethod()]
        public void TestPutConvertDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string format = "tiff"; 
            string url = null; 
            string outPath = null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + "test.pdf"); 

            Com.Aspose.PDF.Model.ResponseMessage actual;
            actual = target.PutConvertDocument(format, url, outPath, file);
            Assert.AreNotEqual(null, actual);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutCreateDocument
        ///</summary>
        [TestMethod()]
        public void TestPutCreateDocument()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string templateFile = null; 
            string dataFile = null; 
            string templateType = null; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.PDF.Model.DocumentResponse actual;
            actual = target.PutCreateDocument(name, templateFile, dataFile, templateType, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutDocumentSaveAsTiff
        ///</summary>
        [TestMethod()]
        public void TestPutDocumentSaveAsTiff()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 

            string name = "test.pdf";
            string resultFile = "test.tiff"; 
            float? brightness = null; 
            string compression = null; 
            string colorDepth = null; 
            int? leftMargin = null; 
            int? rightMargin = null; 
            int? topMargin = null; 
            int? bottomMargin = null; 
            string orientation = null; 
            bool? skipBlankPages = false; 
            int? width = null; 
            int? height = null; 
            int? xResolution = null; 
            int? yResolution = null; 
            int? pageIndex = null; 
            int? pageCount = null; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.PDF.Model.TiffExportOptions body = new Com.Aspose.PDF.Model.TiffExportOptions(); 
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.PutDocumentSaveAsTiff(name, resultFile, brightness, compression, colorDepth, leftMargin, rightMargin, topMargin, bottomMargin, orientation, skipBlankPages, width, height, xResolution, yResolution, pageIndex, pageCount, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutMergeDocuments
        ///</summary>
        [TestMethod()]
        public void TestPutMergeDocuments()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            string doc = "Barcode.pdf";
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.PDF.Model.MergeDocuments body = new Com.Aspose.PDF.Model.MergeDocuments();
            body.List = new System.Collections.Generic.List<string> { doc };
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name));
            storageApi.PutCreate(doc, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + doc)); 
            
            Com.Aspose.PDF.Model.DocumentResponse actual;            
            actual = target.PutMergeDocuments(name, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutPageAddStamp
        ///</summary>
        [TestMethod()]
        public void TestPutPageAddStamp()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "test.pdf";
            int? pageNumber = 1; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.PDF.Model.Stamp body = new Com.Aspose.PDF.Model.Stamp();
            body.FileName = "test.pdf";
            body.Value = "new value";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            
            Com.Aspose.PDF.Model.SaaSposeResponse actual;
            actual = target.PutPageAddStamp(name, pageNumber, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutSetProperty
        ///</summary>
        [TestMethod()]
        public void TestPutSetProperty()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            String name = "test.pdf";
            String propertyName = "NewProperty";
            String storage = "";
            String folder = "";

            Com.Aspose.PDF.Model.DocumentProperty body = new Com.Aspose.PDF.Model.DocumentProperty();
            body.Name = "NewProperty";
            body.Value = "NewValue";
            body.BuiltIn = false;

            Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
            link.Href = "http://api.aspose.com/v1.1/pdf/test.pdf/fields/NewProperty";
            link.Title = "NewProperty";
            link.Type = "link";
            link.Rel = "self";

            body.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 

            Com.Aspose.PDF.Model.DocumentPropertyResponse actual;
            actual = target.PutSetProperty(name, propertyName, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.DocumentPropertyResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutUpdateField
        ///</summary>
        [TestMethod()]
        public void TestPutUpdateField()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "ABFillablewfields.pdf";
            string storage = null; 
            string folder = null;
            string fieldName = "dvDate_1";

            Com.Aspose.PDF.Model.Field body = new Com.Aspose.PDF.Model.Field();

            Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
            link.Href = "http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField";
            link.Rel = "self";
            link.Title = "NewField";
            link.Type = "link";

            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 0;
            rect.Y = 0;

            body.Name = "dvDate_1";
            body.Values = new System.Collections.Generic.List<string> { "NewFieldValue" };
            body.Rect = rect;
            body.SelectedItems = new System.Collections.Generic.List<int?> { 1 };
            body.Type = 0;
            body.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\pdf\\resources\\" + name)); 
            Com.Aspose.PDF.Model.FieldResponse actual;
            actual = target.PutUpdateField(name, storage, folder, fieldName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.FieldResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutUpdateFields
        ///</summary>
        [TestMethod()]
        public void TestPutUpdateFields()
        {
            PdfApi target = new PdfApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "sample-field.pdf";
            string storage = null; 
            string folder = null;

            Com.Aspose.PDF.Model.Fields body = new Com.Aspose.PDF.Model.Fields();

            Com.Aspose.PDF.Model.Link link = new Com.Aspose.PDF.Model.Link();
            link.Href = "http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField";
            link.Rel = "self";
            link.Title = "textbox1";
            link.Type = "link";

            Com.Aspose.PDF.Model.Rectangle rect = new Com.Aspose.PDF.Model.Rectangle();
            rect.X = 0;
            rect.Y = 0;
            rect.Width = 0;
            rect.Height = 0;

            Com.Aspose.PDF.Model.Field field = new Com.Aspose.PDF.Model.Field();
            field.Name = "textbox1";
            field.Values = new System.Collections.Generic.List<string> { "NewFieldValue" };
            field.Rect = rect;
            field.SelectedItems = new System.Collections.Generic.List<int?> { 1 };
            field.Type = 0;
            field.Links = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Link> { link };
            
            body.List = new System.Collections.Generic.List<Com.Aspose.PDF.Model.Field> { field };

            Com.Aspose.PDF.Model.FieldsResponse actual;
            actual = target.PutUpdateFields(name, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.PDF.Model.FieldsResponse(), actual.GetType()); 
        }
    }
}
