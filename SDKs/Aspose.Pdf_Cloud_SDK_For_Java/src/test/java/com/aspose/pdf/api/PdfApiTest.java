/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aspose.pdf.api;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.RandomStringUtils;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.aspose.pdf.client.ApiException;
import com.aspose.pdf.model.AnnotationResponse;
import com.aspose.pdf.model.AnnotationsResponse;
import com.aspose.pdf.model.AppendDocument;
import com.aspose.pdf.model.AttachmentResponse;
import com.aspose.pdf.model.AttachmentsResponse;
import com.aspose.pdf.model.BookmarksResponse;
import com.aspose.pdf.model.DocumentPagesResponse;
import com.aspose.pdf.model.DocumentPropertiesResponse;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.pdf.model.DocumentTextReplaceResponse;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.FieldResponse;
import com.aspose.pdf.model.Fields;
import com.aspose.pdf.model.FieldsResponse;
import com.aspose.pdf.model.ImageResponse;
import com.aspose.pdf.model.ImagesResponse;
import com.aspose.pdf.model.Link;
import com.aspose.pdf.model.LinkAnnotationsResponse;
import com.aspose.pdf.model.MergeDocuments;
import com.aspose.pdf.model.PageTextReplaceResponse;
import com.aspose.pdf.model.Rectangle;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Signature;
import com.aspose.pdf.model.SplitResultResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.pdf.model.TextFormatResponse;
import com.aspose.pdf.model.TextItemResponse;
import com.aspose.pdf.model.TextItemsResponse;
import com.aspose.pdf.model.TextReplace;
import com.aspose.pdf.model.TextReplaceListRequest;
import com.aspose.pdf.model.TiffExportOptions;
import com.aspose.pdf.model.WordCountResponse;

/**
 *
 * @author Imran Anware
 * @author Farooq Sheikh
 */
public class PdfApiTest {

	PdfApi pdfApi;
	String appSID = "xxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
	String apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

	


	public PdfApiTest() {
	}

	@BeforeClass
	public static void setUpClass() {
	}

	@AfterClass
	public static void tearDownClass() {
	}

	@Before
	public void setUp() {
		pdfApi = new PdfApi("http://api.aspose.com/v1.1",apiKey,appSID);
		
	}

	@After
	public void tearDown() {
	}

	/**
	 * Test of GetPageAnnotation method, of class PdfApi.
	 */
	@Test
	public void testGetPageAnnotation() {
		System.out.println("GetPageAnnotation");
		String name = "annotation.pdf";
		Integer pageNumber = 1;
		Integer annotationNumber = 1;
		String storage = "";
		String folder = "";

		AnnotationResponse expResult = new AnnotationResponse();
		expResult.setStatus("OK");
		try {
			AnnotationResponse result = pdfApi.GetPageAnnotation(name, pageNumber, annotationNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetPageAnnotations method, of class PdfApi.
	 */
	@Test
	public void testGetPageAnnotations() {
		System.out.println("GetPageAnnotations");
		String name = "annotation.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";

		AnnotationsResponse expResult = new AnnotationsResponse();
		expResult.setStatus("OK");
		try {
			AnnotationsResponse result = pdfApi.GetPageAnnotations(name, pageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentAttachmentByIndex method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentAttachmentByIndex() {
		System.out.println("GetDocumentAttachmentByIndex");
		String name = "attachments.pdf";
		Integer attachmentIndex = 1;
		String storage = "";
		String folder = "";

		AttachmentResponse expResult = new AttachmentResponse();
		expResult.setStatus("OK");
		try {
			AttachmentResponse result = pdfApi.GetDocumentAttachmentByIndex(name, attachmentIndex, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentAttachments method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentAttachments() {
		System.out.println("GetDocumentAttachments");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		AttachmentsResponse expResult = new AttachmentsResponse();
		expResult.setStatus("OK");
		try {
			AttachmentsResponse result = pdfApi.GetDocumentAttachments(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDownloadDocumentAttachmentByIndex method, of class PdfApi.
	 */
	@Test
	public void testGetDownloadDocumentAttachmentByIndex() {
		System.out.println("GetDownloadDocumentAttachmentByIndex");
		String name = "attachments.pdf";
		Integer attachmentIndex = 1;
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetDownloadDocumentAttachmentByIndex(name, attachmentIndex, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetExtractBarcodes method, of class PdfApi.
	 */
//	@Test
//	public void testGetExtractBarcodes() {
//		System.out.println("GetExtractBarcodes");
//		String name = "pst-barcode-doc.pdf";
//		Integer pageNumber = 5;
//		Integer imageNumber = 1;
//		String storage = "";
//		String folder = "";
//
//		BarcodeResponseList expResult = new BarcodeResponseList();
//		expResult.setStatus("OK");
//		try {
//			BarcodeResponseList result = pdfApi.GetExtractBarcodes(name, pageNumber, imageNumber, storage, folder);
//
//			assertEquals(expResult.getStatus(), result.getStatus());
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//		
//	}
//
	/**
	 * Test of GetDocumentBookmarks method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentBookmarks() {
		System.out.println("GetDocumentBookmarks");
		String name = "pst-barcode-doc.pdf";
		String storage = "";
		String folder = "";

		BookmarksResponse expResult = new BookmarksResponse();
		expResult.setStatus("OK");
		try {
			BookmarksResponse result = pdfApi.GetDocumentBookmarks(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentBookmarksChildren method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentBookmarksChildren() {
		System.out.println("GetDocumentBookmarksChildren");
		String name = "pst-barcode-doc.pdf";
		String bookmarkPath = "2";
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetDocumentBookmarksChildren(name, bookmarkPath, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocument method, of class PdfApi.
	 */
	@Test
	public void testGetDocument() {
		System.out.println("GetDocument");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetDocument(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentWithFormat method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentWithFormat() {
		System.out.println("GetDocumentWithFormat");
		String name = "test.pdf";
		String format = "pdf";
		String storage = "";
		String folder = "";
		String outPath = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetDocumentWithFormat(name, format, storage, folder, outPath);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostSignDocument method, of class PdfApi.
	 */
	@Test
	public void testPostSignDocument() {
		System.out.println("PostSignDocument");
		String name = "signature.pdf";
		String storage = "";
		String folder = "";
		Field field = new Field();
	
		List<Link> links = new ArrayList();		
		List<String> values = new ArrayList();
		List<Integer> selectedItems = new ArrayList();		
		
		Rectangle rect = new Rectangle();
		rect.setX(100);
		rect.setY(100);
		rect.setHeight(100);
		rect.setWidth(200);

		selectedItems.add(1);
		values.add("NewFieldValue");
		
		Link link = new Link();
		link.setHref("http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField");
		link.setRel("self");
		link.setTitle("NewField");
		link.setType("link");
		links.add(link);

		field.setName("signature");
		field.setValues(values);
		field.setRect(rect);
		field.setSelectedItems(selectedItems);
		field.setType(3);		
		field.setLinks(links);
		
		Signature sig = new Signature();
		sig.setAuthority("Authority");
		sig.setContact("Imran");
		sig.setDate("1-1-2015");
		sig.setFormFieldName("signature");
		sig.setLocation("");
		sig.setPassword("password");
		sig.setRectangle(rect);
		sig.setSignaturePath("temp.pfx");
		sig.setSignatureType("PKCS7");
		sig.setVisible(false);		

		pdfApi.PutUpdateField(name, storage, folder,"signature", field);
		

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PostSignDocument(name, storage, folder, sig);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostSplitDocument method, of class PdfApi.
	 */
	@Test
	public void testPostSplitDocument() {
		System.out.println("PostSplitDocument");
		String name = "ACORD90.pdf";
		String format = "pdf";
		Integer from = 1;
		Integer to = 2;
		String storage = "";
		String folder = "";

		SplitResultResponse expResult = new SplitResultResponse();
		expResult.setStatus("OK");
		try {
			SplitResultResponse result = pdfApi.PostSplitDocument(name, format, from, to, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutConvertDocument method, of class PdfApi.
	 */
	@Test
	public void testPutConvertDocument() {
		System.out.println("PutConvertDocument");
		String format = "tiff";
		String url = "";
		String outPath = "";
		File file;

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			file = new File(getClass().getResource("/123.pdf").toURI());
			ResponseMessage result = pdfApi.PutConvertDocument(format, url, outPath, file);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		} catch(java.net.URISyntaxException uriExp){
			System.out.println("uri exp:" + uriExp.getMessage());
		}

		
	}

	/**
	 * Test of PutCreateDocument method, of class PdfApi.
	 */
	@Test
	public void testPutCreateDocument() {
		System.out.println("PutCreateDocument");
		String name = "newtest.pdf";
		String templateFile = "";
		String dataFile = "";
		String templateType = "";
		String storage = "";
		String folder = "";

		DocumentResponse expResult = new DocumentResponse();
		expResult.setStatus("OK");
		try {
			DocumentResponse result = pdfApi.PutCreateDocument(name, templateFile, dataFile, templateType, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostAppendDocument method, of class PdfApi.
	 */
	@Test
	public void testPostAppendDocument() {
		System.out.println("PostAppendDocument");
		String name = "test.pdf";
		String appendFile = null;
		Integer startPage = 2;
		Integer endPage = 3;
		String storage = "";
		String folder = "";
		AppendDocument body = new AppendDocument();
		body.setDocument("Kidz.pdf");
		body.setStartPage(2);
		body.setEndPage(3);

		DocumentResponse expResult = new DocumentResponse();
		expResult.setStatus("OK");
		try {
			DocumentResponse result = pdfApi.PostAppendDocument(name, appendFile, startPage, endPage, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutMergeDocuments method, of class PdfApi.
	 */
	@Test
	public void testPutMergeDocuments() {
		System.out.println("PutMergeDocuments");
		String name = "test.pdf";
		String storage = "";
		String folder = "";
		MergeDocuments body = new MergeDocuments();
		List<String> docs = new ArrayList();
		docs.add("Kidz.pdf");
		body.setList(docs);

		DocumentResponse expResult = new DocumentResponse();
		expResult.setStatus("OK");
		try {
			DocumentResponse result = pdfApi.PutMergeDocuments(name, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutDocumentSaveAsTiff method, of class PdfApi.
	 */
	@Test
	public void testPutDocumentSaveAsTiff() {
		System.out.println("PutDocumentSaveAsTiff");
		String name = "test.pdf";
		String resultFile = "test.tiff";
		Float brightness = 0.0f;
		String compression = "";
		String colorDepth = "";
		Integer leftMargin = 0;
		Integer rightMargin = 0;
		Integer topMargin = 0;
		Integer bottomMargin = 0;
		String orientation = "";
		Boolean skipBlankPages = false;
		Integer width = 0;
		Integer height = 0;
		Integer xResolution = 0;
		Integer yResolution = 0;
		Integer pageIndex = 0;
		Integer pageCount = 0;
		String storage = "";
		String folder = "";
		TiffExportOptions body = new TiffExportOptions();

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PutDocumentSaveAsTiff(name, resultFile, brightness, compression, colorDepth, leftMargin, rightMargin, topMargin, bottomMargin, orientation, skipBlankPages, width, height, xResolution, yResolution, pageIndex, pageCount, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetField method, of class PdfApi.
	 */
	@Test
	public void testGetField() {
		System.out.println("GetField");
		String name = "ABFillablewfields.pdf";
		String fieldName = "dvDate_2";
		String storage = "";
		String folder = "";

		FieldResponse expResult = new FieldResponse();
		expResult.setStatus("OK");
		try {
			FieldResponse result = pdfApi.GetField(name, fieldName, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetFields method, of class PdfApi.
	 */
	@Test
	public void testGetFields() {
		System.out.println("GetFields");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		FieldsResponse expResult = new FieldsResponse();
		expResult.setStatus("OK");
		try {
			FieldsResponse result = pdfApi.GetFields(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostCreateField method, of class PdfApi.
	 */
	@Test
	public void testPostCreateField() {
		System.out.println("PostCreateField");
		String name = "ABFillablewfields.pdf";
		Integer page = 1;
		String storage = "";
		String folder = "";
		Field body = new Field();
	
		List<Link> links = new ArrayList();
		
		List<String> values = new ArrayList();
		List<Integer> selectedItems = new ArrayList();
		Link link = new Link();
		Rectangle rect = new Rectangle();
		rect.setX(0);
		rect.setY(0);

		selectedItems.add(1);
		values.add("NewFieldValue");

		link.setHref("http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField");
		link.setRel("self");
		link.setTitle("NewField");
		link.setType("link");

		body.setName("NewField");

		body.setValues(values);
		body.setRect(rect);
		body.setSelectedItems(selectedItems);

		body.setName("NewField");
		body.setType(0);
		links.add(link);
		body.setLinks(links);

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PostCreateField(name, page, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutUpdateField method, of class PdfApi.
	 */
	@Test
	public void testPutUpdateField() {
		System.out.println("PutUpdateField");
		String name = "ABFillablewfields.pdf";
		String storage = "";
		String folder = "";
		String fieldName = "dvDate_1";
		Field body = new Field();
	
		List<Link> links = new ArrayList();
		
			List<String> values = new ArrayList();
			List<Integer> selectedItems = new ArrayList();
			Link link = new Link();
			Rectangle rect = new Rectangle();
			rect.setX(0);
			rect.setY(0);
			
			selectedItems.add(1);
			values.add("NewFieldValue");
			
			link.setHref("http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField");
			link.setRel("self");
			link.setTitle("NewField");
			link.setType("link");
			
			body.setName("NewField");
			
			body.setValues(values);
			body.setRect(rect);
			body.setSelectedItems(selectedItems);

		body.setName("NewField");
		body.setType(0);
		links.add(link);
		body.setLinks(links);

		FieldResponse expResult = new FieldResponse();
		expResult.setStatus("OK");
		try {
			FieldResponse result = pdfApi.PutUpdateField(name, storage, folder, fieldName, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutUpdateFields method, of class PdfApi.
	 */
	@Test
	public void testPutUpdateFields() {
		System.out.println("PutUpdateFields");
		String name = "ABFillablewfields.pdf";
		String storage = "";
		String folder = "";
			Fields body = new Fields();
			List<Field> fields = new ArrayList();
			Field field = new Field();			
			List<Link> links = new ArrayList();
			Link link = new Link();
			List<String> values = new ArrayList();
			List<Integer> selectedItems = new ArrayList();
			Rectangle rect = new Rectangle();
			rect.setX(0);
			rect.setY(0);
			
			selectedItems.add(1);
			values.add("NewFieldValue");
			
			link.setHref("http://api.aspose.com/v1.1/pdf/ABFillablewfields.pdf/fields/NewField");
			link.setRel("self");
			link.setTitle("NewField");
			link.setType("link");
			
			field.setName("NewField");
			
			field.setValues(values);
			field.setRect(rect);
			field.setSelectedItems(selectedItems);
			field.setType(0);
			links.add(link);
			field.setLinks(links);
			fields.add(field);
			body.setList(fields);


		FieldsResponse expResult = new FieldsResponse();
		expResult.setStatus("OK");
		try {
			FieldsResponse result = pdfApi.PutUpdateFields(name, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetFragment method, of class PdfApi.
	 */
	@Test
	public void testGetFragment() {
		System.out.println("GetFragment");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer fragmentNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";

		TextItemsResponse expResult = new TextItemsResponse();
		expResult.setStatus("OK");
		try {
			TextItemsResponse result = pdfApi.GetFragment(name, pageNumber, fragmentNumber, withEmpty, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetFragments method, of class PdfApi.
	 */
	@Test
	public void testGetFragments() {
		System.out.println("GetFragments");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";

		TextItemsResponse expResult = new TextItemsResponse();
		expResult.setStatus("OK");
		try {
			TextItemsResponse result = pdfApi.GetFragments(name, pageNumber, withEmpty, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetFragmentTextFormat method, of class PdfApi.
	 */
	@Test
	public void testGetFragmentTextFormat() {
		System.out.println("GetFragmentTextFormat");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer fragmentNumber = 1;
		String storage = "";
		String folder = "";

		TextFormatResponse expResult = new TextFormatResponse();
		expResult.setStatus("OK");
		try {
			TextFormatResponse result = pdfApi.GetFragmentTextFormat(name, pageNumber, fragmentNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetSegment method, of class PdfApi.
	 */
	@Test
	public void testGetSegment() {
		System.out.println("GetSegment");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer fragmentNumber = 1;
		Integer segmentNumber = 1;
		String storage = "";
		String folder = "";

		TextItemResponse expResult = new TextItemResponse();
		expResult.setStatus("OK");
		try {
			TextItemResponse result = pdfApi.GetSegment(name, pageNumber, fragmentNumber, segmentNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetSegments method, of class PdfApi.
	 */
	@Test
	public void testGetSegments() {
		System.out.println("GetSegments");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer fragmentNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";

		TextItemsResponse expResult = new TextItemsResponse();
		expResult.setStatus("OK");
		try {
			TextItemsResponse result = pdfApi.GetSegments(name, pageNumber, fragmentNumber, withEmpty, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetSegmentTextFormat method, of class PdfApi.
	 */
//	@Test
//	public void testGetSegmentTextFormat() {
//		System.out.println("GetSegmentTextFormat");
//		String name = "Lenovo_Tablet_2_Datasheet.pdf";
//		Integer pageNumber = 1;
//		Integer fragmentNumber = 1;
//		Integer segmentNumber = 1;
//		String storage = "";
//		String folder = "";
//
//		TextFormatResponse expResult = new TextFormatResponse();
//		expResult.setStatus("OK");
//		try {
//			TextFormatResponse result = pdfApi.GetSegmentTextFormat(name, pageNumber, fragmentNumber, segmentNumber, storage, folder);
//
//			assertEquals(expResult.getStatus(), result.getStatus());
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//		
//	}
//
	/**
	 * Test of GetImage method, of class PdfApi.
	 */
	@Test
	public void testGetImage() {
		System.out.println("GetImage");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer imageNumber = 1;
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetImage(name, pageNumber, imageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetImages method, of class PdfApi.
	 */
	@Test
	public void testGetImages() {
		System.out.println("GetImages");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";

		ImagesResponse expResult = new ImagesResponse();
		expResult.setStatus("OK");
		try {
			ImagesResponse result = pdfApi.GetImages(name, pageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetImageWithFormat method, of class PdfApi.
	 */
	@Test
	public void testGetImageWithFormat() {
		System.out.println("GetImageWithFormat");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer imageNumber = 1;
		String format = "jpg";
		Integer width = 0;
		Integer height = 0;
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetImageWithFormat(name, pageNumber, imageNumber, format, width, height, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostReplaceImage method, of class PdfApi.
	 */
	@Test
	public void testPostReplaceImage() {
		System.out.println("PostReplaceImage");
		String name = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer imageNumber = 1;
		String imageFile = "digi.gif";
		String storage = "";
		String folder = "";
		File file;

		ImageResponse expResult = new ImageResponse();
		expResult.setStatus("OK");
		try {
			file = new File(getClass().getResource("/digi.gif").toURI());
			ImageResponse result = pdfApi.PostReplaceImage(name, pageNumber, imageNumber, imageFile, storage, folder, file);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}catch(java.net.URISyntaxException uriExp){
			System.out.println("uriExp:"+uriExp.getMessage());
		}
		
	}

	/**
	 * Test of GetPageLinkAnnotationByIndex method, of class PdfApi.
	 */
//	@Test
//	public void testGetPageLinkAnnotationByIndex() {
//		System.out.println("GetPageLinkAnnotationByIndex");
//		String name = "annotation.pdf";
//		Integer pageNumber = 1;
//		Integer linkIndex = 1;
//		String storage = "";
//		String folder = "";
//
//		LinkAnnotationResponse expResult = new LinkAnnotationResponse();
//		expResult.setStatus("OK");
//		try {
//			LinkAnnotationResponse result = pdfApi.GetPageLinkAnnotationByIndex(name, pageNumber, linkIndex, storage, folder);
//
//			assertEquals(expResult.getStatus(), result.getStatus());
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		}
//		
//	}
//
	/**
	 * Test of GetPageLinkAnnotations method, of class PdfApi.
	 */
	@Test
	public void testGetPageLinkAnnotations() {
		System.out.println("GetPageLinkAnnotations");
		String name = "annotation.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";

		LinkAnnotationsResponse expResult = new LinkAnnotationsResponse();
		expResult.setStatus("OK");
		try {
			LinkAnnotationsResponse result = pdfApi.GetPageLinkAnnotations(name, pageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of DeletePage method, of class PdfApi.
	 */
	@Test
	public void testDeletePage() {
		System.out.println("DeletePage");
		String name = RandomStringUtils.random(8, true, true)+ ".pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";


		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
		         pdfApi.PutCreateDocument(name, null, null, null, storage, folder);
		         pdfApi.PutAddNewPage(name, storage, folder);
			SaaSposeResponse result = pdfApi.DeletePage(name, pageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetPage method, of class PdfApi.
	 */
	@Test
	public void testGetPage() {
		System.out.println("GetPage");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetPage(name, pageNumber, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetPages method, of class PdfApi.
	 */
	@Test
	public void testGetPages() {
		System.out.println("GetPages");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		DocumentPagesResponse expResult = new DocumentPagesResponse();
		expResult.setStatus("OK");
		try {
			DocumentPagesResponse result = pdfApi.GetPages(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetPageWithFormat method, of class PdfApi.
	 */
	@Test
	public void testGetPageWithFormat() {
		System.out.println("GetPageWithFormat");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String format = "tiff";
		Integer width = 100;
		Integer height = 100;
		String storage = "";
		String folder = "";

		ResponseMessage expResult = new ResponseMessage();
		expResult.setStatus("OK");
		try {
			ResponseMessage result = pdfApi.GetPageWithFormat(name, pageNumber, format, width, height, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetWordsPerPage method, of class PdfApi.
	 */
	@Test
	public void testGetWordsPerPage() {
		System.out.println("GetWordsPerPage");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		WordCountResponse expResult = new WordCountResponse();
		expResult.setStatus("OK");
		try {
			WordCountResponse result = pdfApi.GetWordsPerPage(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostMovePage method, of class PdfApi.
	 */
	@Test
	public void testPostMovePage() {
		System.out.println("PostMovePage");
		String name = "test.pdf";
		Integer pageNumber = 1;
		Integer newIndex = 3;
		String storage = "";
		String folder = "";

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PostMovePage(name, pageNumber, newIndex, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostSignPage method, of class PdfApi.
	 */
	@Test
	public void testPostSignPage() {
		System.out.println("PostSignPage");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";
		
		Signature body = new Signature();
		body.setAuthority("Authority");
		body.setContact("Imran");
		body.setDate("1-1-2015");
		body.setFormFieldName("new");
		body.setLocation("");
		body.setPassword("password");
		Rectangle rect = new Rectangle();
		rect.setX(100);
		rect.setY(100);
		rect.setHeight(100);
		rect.setWidth(200);
		body.setRectangle(rect);
		body.setSignaturePath("temp.pfx");
		body.setSignatureType("PKCS7");
		body.setVisible(true);

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PostSignPage(name, pageNumber, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutAddNewPage method, of class PdfApi.
	 */
	@Test
	public void testPutAddNewPage() {
		System.out.println("PutAddNewPage");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		DocumentPagesResponse expResult = new DocumentPagesResponse();
		expResult.setStatus("OK");
		try {
			DocumentPagesResponse result = pdfApi.PutAddNewPage(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutPageAddStamp method, of class PdfApi.
	 */
	@Test
	public void testPutPageAddStamp() {
		System.out.println("PutPageAddStamp");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";
		Stamp body = new Stamp();
		body.setFileName("test.pdf");
		body.setValue("new value");

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.PutPageAddStamp(name, pageNumber, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of DeleteProperties method, of class PdfApi.
	 */
	@Test
	public void testDeleteProperties() {
		System.out.println("DeleteProperties");
		String name = "test.pdf";
		String storage = "";
		String folder = "";

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			SaaSposeResponse result = pdfApi.DeleteProperties(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of DeleteProperty method, of class PdfApi.
	 */
	@Test
	public void testDeleteProperty() {
		System.out.println("DeleteProperty");
		String name = "pst-barcode-doc.pdf";
		String propertyName = "newproperty";
		
		DocumentProperty property = new DocumentProperty();
		property.setName("newproperty");
		property.setValue("This is new");
		property.setBuiltIn(false);		
		List<Link> links = new ArrayList();
		Link l = new Link();
		l.setHref("http://testing.com");
		l.setTitle("Testing");
		links.add(l);
		property.setLinks(links);
		
		String storage = "";
		String folder = "";

		SaaSposeResponse expResult = new SaaSposeResponse();
		expResult.setStatus("OK");
		try {
			
			/*
			 * Creates a property in case there is no such property in the doc.
			 * */
			pdfApi.PutSetProperty(name, propertyName, storage, folder, property);
			
			SaaSposeResponse result = pdfApi.DeleteProperty(name, propertyName, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentProperties method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentProperties() {
		System.out.println("GetDocumentProperties");
		String name = "pst-barcode-doc.pdf";
		String storage = "";
		String folder = "";

		DocumentPropertiesResponse expResult = new DocumentPropertiesResponse();
		expResult.setStatus("OK");
		try {
			DocumentPropertiesResponse result = pdfApi.GetDocumentProperties(name, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetDocumentProperty method, of class PdfApi.
	 */
	@Test
	public void testGetDocumentProperty() {
		System.out.println("GetDocumentProperty");
		String name = "pst-barcode-doc.pdf";
		String propertyName = "Creator";
		String storage = "";
		String folder = "";

		DocumentPropertyResponse expResult = new DocumentPropertyResponse();
		expResult.setStatus("OK");
		try {
			DocumentPropertyResponse result = pdfApi.GetDocumentProperty(name, propertyName, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PutSetProperty method, of class PdfApi.
	 */
	@Test
	public void testPutSetProperty() {
		System.out.println("PutSetProperty");
		String name = "test.pdf";
		String propertyName = "NewProperty";
		String storage = "";
		String folder = "";
		DocumentProperty body = new DocumentProperty();
		body.setName("NewProperty");
		body.setValue("NewValue");
		body.setBuiltIn(false);
		
		List<Link> links = new ArrayList();
		Link l = new Link();
		l.setHref("http://testing.com");
		l.setTitle("Testing");
		links.add(l);
		body.setLinks(links);
		



		DocumentPropertyResponse expResult = new DocumentPropertyResponse();
		expResult.setStatus("OK");
		try {
			DocumentPropertyResponse result = pdfApi.PutSetProperty(name, propertyName, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetPageTextItems method, of class PdfApi.
	 */
	@Test
	public void testGetPageTextItems() {
		System.out.println("GetPageTextItems");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";

		TextItemsResponse expResult = new TextItemsResponse();
		expResult.setStatus("OK");
		try {
			TextItemsResponse result = pdfApi.GetPageTextItems(name, pageNumber, withEmpty, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of GetTextItems method, of class PdfApi.
	 */
	@Test
	public void testGetTextItems() {
		System.out.println("GetTextItems");
		String name = "test.pdf";
		String withEmpty = "";
		String storage = "";
		String folder = "";

		TextItemsResponse expResult = new TextItemsResponse();
		expResult.setStatus("OK");
		try {
			TextItemsResponse result = pdfApi.GetTextItems(name, withEmpty, storage, folder);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostDocumentReplaceText method, of class PdfApi.
	 */
	@Test
	public void testPostDocumentReplaceText() {
		System.out.println("PostDocumentReplaceText");
		String name = "test.pdf";
		String storage = "";
		String folder = "";
		TextReplace body = new TextReplace();
		
		body.setNewValue("This is the new test added by IA");

		DocumentTextReplaceResponse expResult = new DocumentTextReplaceResponse();
		expResult.setStatus("OK");
		try {
			DocumentTextReplaceResponse result = pdfApi.PostDocumentReplaceText(name, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostDocumentReplaceTextList method, of class PdfApi.
	 */
	@Test
	public void testPostDocumentReplaceTextList() {
		System.out.println("PostDocumentReplaceTextList");
		String name = "test.pdf";
		String storage = "";
		String folder = "";
		TextReplaceListRequest body = new TextReplaceListRequest();
		
		TextReplace tr = new TextReplace();
		tr.setNewValue("This will be the new text");
		List<TextReplace> TextReplaces = new ArrayList<TextReplace>();
		TextReplaces.add(tr);
		body.setTextReplaces(TextReplaces);


		DocumentTextReplaceResponse expResult = new DocumentTextReplaceResponse();
		expResult.setStatus("OK");
		try {
			DocumentTextReplaceResponse result = pdfApi.PostDocumentReplaceTextList(name, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostPageReplaceText method, of class PdfApi.
	 */
	@Test
	public void testPostPageReplaceText() {
		System.out.println("PostPageReplaceText");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";
		TextReplace body = new TextReplace();
		body.setNewValue("This is the latest text added by IA");

		PageTextReplaceResponse expResult = new PageTextReplaceResponse();
		expResult.setStatus("OK");
		try {
			PageTextReplaceResponse result = pdfApi.PostPageReplaceText(name, pageNumber, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}

	/**
	 * Test of PostPageReplaceTextList method, of class PdfApi.
	 */
	@Test
	public void testPostPageReplaceTextList() {
		System.out.println("PostPageReplaceTextList");
		String name = "test.pdf";
		Integer pageNumber = 1;
		String storage = "";
		String folder = "";
		TextReplaceListRequest body = new TextReplaceListRequest();

		TextReplace tr = new TextReplace();
		tr.setNewValue("This will be the new text");
		List<TextReplace> TextReplaces = new ArrayList<TextReplace>();
		TextReplaces.add(tr);
		body.setTextReplaces(TextReplaces);

		PageTextReplaceResponse expResult = new PageTextReplaceResponse();
		expResult.setStatus("OK");
		try {
			PageTextReplaceResponse result = pdfApi.PostPageReplaceTextList(name, pageNumber, storage, folder, body);

			assertEquals(expResult.getStatus(), result.getStatus());
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
		
	}
}
