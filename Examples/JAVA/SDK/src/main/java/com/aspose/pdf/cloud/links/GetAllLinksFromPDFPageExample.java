package com.aspose.pdf.cloud.links;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.LinkAnnotationsResponse;
import com.aspose.storage.api.StorageApi;


public class GetAllLinksFromPDFPageExample {

	public static void main(String[] args) {
		String fileName = "Sample-Bookmark.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(GetAllLinksFromPDFPageExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get all links from a pdf page
		    LinkAnnotationsResponse apiResponse = pdfApi.GetPageLinkAnnotations(fileName, pageNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Get all Links from a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		    

		}
	}

}