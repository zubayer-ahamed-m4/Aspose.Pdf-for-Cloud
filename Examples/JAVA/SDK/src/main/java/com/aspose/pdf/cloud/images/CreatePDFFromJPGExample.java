package com.aspose.pdf.cloud.images;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;

public class CreatePDFFromJPGExample {

	public static void main(String[] args) {
		//ExStart: create-pdf-jpeg
		String fileName = "sample-jpeg.pdf";
		String templateFile = "Einstein_JPEG.jpg";
		String dataFile = "";
		String templateType = "jpeg";
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
		    // Invoke Aspose.PDF Cloud SDK API to create pdf from JPEG
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from JPEG, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: create-pdf-jpeg

	}

}
