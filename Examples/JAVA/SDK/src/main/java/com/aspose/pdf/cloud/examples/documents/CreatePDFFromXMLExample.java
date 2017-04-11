package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;


public class CreatePDFFromXMLExample {

	public static void main(String[] args) {
		
		String fileName = "input.pdf";
		String templateFile = "sample.xsl";
		String dataFile = "sample.xml";
		String templateType = "xml";
		String storage = "";
		String folder = "";
		Path templateFilePath = Utils.getPath(CreatePDFFromXMLExample.class, templateFile);
		Path dataFilePath = Utils.getPath(CreatePDFFromXMLExample.class, dataFile);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "", templateFilePath.toFile());
		    storageApi.PutCreate(dataFile, "", "", dataFilePath.toFile());


		    // Invoke Aspose.PDF Cloud SDK API to create Pdf from XML
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from XML, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}