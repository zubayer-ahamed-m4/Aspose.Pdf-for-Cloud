package com.aspose.pdf.cloud.examples.formfields;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.FieldsResponse;
import com.aspose.storage.api.StorageApi;


public class GetAllFormFieldsFromPDFDocument {

	public static void main(String[] args) {
		String fileName = "sample-field.pdf";
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

		    // Invoke Aspose.PDF Cloud SDK API to get all fields from pdf document
		    FieldsResponse apiResponse = pdfApi.GetFields(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (Field field : apiResponse.getFields().getList())
		        {
		            System.out.println("Name:" + field.getName());
		            System.out.println("Value:" + field.getValues().get(0));
		        }
		        System.out.println("Get all Form Fields from the PDF Document, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}