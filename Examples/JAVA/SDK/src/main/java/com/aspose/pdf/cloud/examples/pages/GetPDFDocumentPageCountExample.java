package com.aspose.pdf.cloud.examples.pages;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.DocumentPagesResponse;
import com.aspose.storage.api.StorageApi;


public class GetPDFDocumentPageCountExample {

	public static void main(String[] args) {

		String fileName = "sample-input.pdf";
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

		    // Invoke Aspose.PDF Cloud SDK API to get page count from pdf document
		    DocumentPagesResponse apiResponse = pdfApi.GetPages(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        int count = apiResponse.getPages().getList().size();
		        System.out.println("Total Page Count :: " + count);
		        System.out.println("Get PDF Document Page Count, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}