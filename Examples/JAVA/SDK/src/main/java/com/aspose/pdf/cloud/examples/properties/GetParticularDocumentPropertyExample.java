package com.aspose.pdf.cloud.examples.properties;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.storage.api.StorageApi;


public class GetParticularDocumentPropertyExample {

	public static void main(String[] args) {
		String fileName = "Sample-Annotation.pdf";
		String propertyName = "Creator";
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

		    // Invoke Aspose.PDF Cloud SDK API to get particular document property
		    DocumentPropertyResponse apiResponse = pdfApi.GetDocumentProperty(fileName, propertyName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        DocumentProperty docProp = apiResponse.getDocumentProperty();
		        System.out.println(docProp.getName() + " :: " + docProp.getValue());
		        System.out.println("Get a Particular Document Property from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}