package com.aspose.pdf.cloud.annotations;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.ApendPDFFileExample;
import com.aspose.pdf.model.AnnotationsResponse;
import com.aspose.pdf.model.Link;
import com.aspose.storage.api.StorageApi;


public class GetAllAnnotationsFromPDFPageExample {

	public static void main(String[] args) {
		String fileName = "Sample-Annotation.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(ApendPDFFileExample.class, fileName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get all annotations from pdf page
		    AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (Link annotatonLink : apiResponse.getAnnotations().getLinks())
		        {
		        	System.out.println("Annotation Link :: " + annotatonLink.getHref());
		        }
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}