package com.aspose.pdf.cloud.annotations;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.Annotation;
import com.aspose.pdf.model.AnnotationResponse;
import com.aspose.storage.api.StorageApi;


public class GetSpecificAnnotationExample {

	public static void main(String[] args) {
		String fileName = "Sample-Annotation.pdf";
		int pageNumber = 1;
		int annotationNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(GetSpecificAnnotationExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get specific annotation from pdf page
		    AnnotationResponse apiResponse = pdfApi.GetPageAnnotation(fileName, pageNumber, annotationNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Annotation annotation = apiResponse.getAnnotation();
		        System.out.println("Annotation Content" + annotation.getContents());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}