package com.aspose.pdf.cloud.examples.formfields;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.FieldResponse;
import com.aspose.storage.api.StorageApi;


public class GetParticularFormFieldsFromPDFDocument {

	public static void main(String[] args) {
		String fileName = "sample-field.pdf";
		String fieldName = "textbox1";
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

		    // Invoke Aspose.PDF Cloud SDK API to get particular field
		    FieldResponse apiResponse = pdfApi.GetField(fileName, fieldName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Field field = apiResponse.getField();
		        System.out.println("Name" + field.getName());
		        System.out.println("Value" + field.getValues().get(0));
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}