package com.aspose.pdf.cloud.links;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.CreatePDFFromJPGExample;
import com.aspose.pdf.model.LinkAnnotation;
import com.aspose.pdf.model.LinkAnnotationResponse;
import com.aspose.storage.api.StorageApi;


public class GetSpecificLinkFromPDFPageExample {

	public static void main(String[] args) {
		String fileName = "Sample-Bookmark.pdf";
		int pageNumber = 1;
		int linkIndex = 1;
		String storage = "";
		String folder = "";

		Path inputFile = Utils.getPath(CreatePDFFromJPGExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get specific link from a pdf page
		    LinkAnnotationResponse apiResponse = pdfApi.GetPageLinkAnnotationByIndex(fileName, pageNumber, linkIndex, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        LinkAnnotation linkAnnotation = apiResponse.getLink();
		        System.out.println("Action Type :: " + linkAnnotation.getActionType());
		        System.out.println("Action :: " + linkAnnotation.getAction());
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}

	}

}