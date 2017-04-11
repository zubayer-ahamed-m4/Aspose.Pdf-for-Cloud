package com.aspose.pdf.cloud.examples.formfields;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.FieldsResponse;
import com.aspose.storage.api.StorageApi;


public class GetFormFieldCountExample {

	public static void main(String[] args) {
		String fileName = "sample-field.pdf";
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

		    // Invoke Aspose.PDF Cloud SDK API to get field count
		    FieldsResponse apiResponse = pdfApi.GetFields(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        int count = apiResponse.getFields().getList().size();
		        System.out.println("Count" + count);
		        System.out.println("Get Form Field Count from a PDF Document, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}