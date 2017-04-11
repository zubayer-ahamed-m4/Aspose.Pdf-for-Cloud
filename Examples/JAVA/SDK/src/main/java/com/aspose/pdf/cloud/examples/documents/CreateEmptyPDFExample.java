package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;


public class CreateEmptyPDFExample {

	public static void main(String[] args) {
		String fileName = "input.pdf";
		String templateFile = "";
		String dataFile = "";
		String templateType = "";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreateEmptyPDFExample.class, fileName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    // Invoke Aspose.PDF Cloud SDK API to create empty pdf file
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        System.out.println("Create Empty PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}

	}

}