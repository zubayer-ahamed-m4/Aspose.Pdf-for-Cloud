package com.aspose.pdf.cloud.examples.properties;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.DocumentPropertiesResponse;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.storage.api.StorageApi;


public class GetAllDocumentPropertiesExample {

	public static void main(String[] args) {
		String fileName = "Sample-Annotation.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromHtmlExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get all document properies
		    DocumentPropertiesResponse apiResponse = pdfApi.GetDocumentProperties(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (DocumentProperty docProp : apiResponse.getDocumentProperties().getList())
		        {
		        	System.out.println(docProp.getName() + " :: " + docProp.getValue());
		        }
		        System.out.println("Get All Document Properties from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}