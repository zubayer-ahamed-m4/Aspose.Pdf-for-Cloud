package com.aspose.pdf.cloud.examples.pages;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.storage.api.StorageApi;


public class MovePDFToNewLocation {

	public static void main(String[] args) {
		String fileName = "sample-merged.pdf";
		int pageNumber = 1;
		int newIndex = 2;
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

		    // Invoke Aspose.PDF Cloud SDK API to move pages to new location
		    SaaSposeResponse apiResponse = pdfApi.PostMovePage(fileName, pageNumber, newIndex, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Move PDF Pages to New Locations in a PDF File, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}