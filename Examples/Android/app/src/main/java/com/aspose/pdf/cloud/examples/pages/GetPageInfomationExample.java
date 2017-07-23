package com.aspose.pdf.cloud.examples.pages;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

public class GetPageInfomationExample {
	
	public static void execute(String[] args) {
		//ExStart: 1
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromHtmlExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK for Android
		    ResponseMessage apiResponse = pdfApi.GetPage(fileName, pageNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Delete Page from PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: 1

	}

}
