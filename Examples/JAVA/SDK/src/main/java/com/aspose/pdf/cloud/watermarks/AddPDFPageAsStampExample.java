package com.aspose.pdf.cloud.watermarks;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.storage.api.StorageApi;


public class AddPDFPageAsStampExample {

	public static void main(String[] args) {
		//ExStart: add-pdf-page-stamp
		String fileName = "sample-input.pdf";
		String pdfName = "Sample.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";

		Stamp body = new Stamp();
		body.setFileName ( pdfName);
		body.setBackground ( true);
		body.setType ( "Image");
		body.setPageIndex ( 0);
		body.setLeftMargin ( 0.0);
		body.setOpacity ( 0.5);
		body.setRightMargin ( 0.0);
		body.setTopMargin ( 0.0);
		body.setYIndent ( 100.0);
		body.setXIndent ( 100.0);
		body.setZoom ( 1.0);
		body.setTextState ( null);
		body.setWidth ( 300.0);
		body.setHeight ( 300.0);
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);
		Path inputPDF = Utils.getPath(ExtractImageDefaultSizeExample.class, pdfName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    storageApi.PutCreate(pdfName, "", "", inputPDF.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to add pdf page as stamp to a pdf page
		    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

		    if (apiResponse != null)
		    {
		    	System.out.println("Add PDF Page as Stamp (Watermark) to a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: add-pdf-page-stamp
	}
}