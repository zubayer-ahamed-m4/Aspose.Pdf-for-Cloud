package com.aspose.pdf.cloud.examples.pages;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.Rectangle;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Signature;
import com.aspose.storage.api.StorageApi;


public class SignPDFPageExample {

	public static void main(String[] args) {
	//ExStart:  1	
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromHtmlExample.class, fileName);
		
		Signature body = new Signature();
		body.setAuthority("Authority");
		body.setContact("naeem.akram@aspose.com");
		body.setDate("18-4-2016");
		body.setFormFieldName ("Signature1");
		body.setLocation ( "Gojra");
		body.setPassword( "aspose");
		Rectangle rect = new Rectangle();
		rect.setX (100);
		rect.setY (100);
		rect.setHeight ( 100);
		rect.setWidth(200);
		body.setRectangle ( rect);
		body.setSignaturePath ( "pkc7-sample.pfx");
		body.setSignatureType ( "PKCS7");
		body.setVisible (true);


		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API
		    SaaSposeResponse apiResponse = pdfApi.PostSignPage(fileName, pageNumber, storage, folder,body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Delete Page from PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	//ExEnd:  1	

	}

}
