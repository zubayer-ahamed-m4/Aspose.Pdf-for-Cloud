package com.aspose.pdf.cloud.examples.properties;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.storage.api.StorageApi;


public class SetSingleDocumentPropertyExample {

	public static void main(String[] args) {
		//ExStart: set-single-property
		String fileName = "Sample-Annotation.pdf";
		String propertyName = "author";
		String storage = "";
		String folder = "";
		DocumentProperty body = new DocumentProperty();
		body.setName ("author");
		body.setValue ("Naeem Akram");
		body.setBuiltIn (true);
		Path inputFile = Utils.getPath(CreatePDFFromHtmlExample.class, fileName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to set single pdf document property
		    DocumentPropertyResponse apiResponse = pdfApi.PutSetProperty(fileName, propertyName, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        DocumentProperty docProp = apiResponse.getDocumentProperty();
		        System.out.println(docProp.getName() + " :: " + docProp.getValue());
		        System.out.println("Set a Single Document Property in a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}