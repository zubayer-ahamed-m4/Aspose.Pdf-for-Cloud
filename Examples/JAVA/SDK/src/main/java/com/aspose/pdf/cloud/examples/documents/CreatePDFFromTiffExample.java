package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.CreatePDFFromJPGExample;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;


public class CreatePDFFromTiffExample {

	public static void main(String[] args) {
		//ExStart: create-pdf-tiff
		String fileName = "sample-tiff.pdf";
		String templateFile = "Sample.tiff";
		String dataFile = "";
		String templateType = "tiff";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromJPGExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to create pdf from TIFF
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from TIFF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: create-pdf-tiff
	}

}