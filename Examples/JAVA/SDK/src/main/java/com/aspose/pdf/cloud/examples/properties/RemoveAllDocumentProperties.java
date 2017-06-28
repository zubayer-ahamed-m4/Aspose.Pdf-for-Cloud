package com.aspose.pdf.cloud.examples.properties;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.storage.api.StorageApi;


public class RemoveAllDocumentProperties {

	public static void main(String[] args) {
		//ExStart
		String fileName = "Sample-Annotation.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(MovePDFToNewLocation.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to remove all document properties
		    SaaSposeResponse apiResponse = pdfApi.DeleteProperties(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Remove All Document Properties from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}


	}

}