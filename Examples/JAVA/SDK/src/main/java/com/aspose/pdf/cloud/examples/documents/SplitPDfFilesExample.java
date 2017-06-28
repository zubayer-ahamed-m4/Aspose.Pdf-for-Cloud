package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.SplitResultResponse;
import com.aspose.storage.api.StorageApi;


public class SplitPDfFilesExample {

	public static void main(String[] args) {
		String fileName = "input.pdf";
		String format = "pdf";
		int from = 1;
		int to = 2;
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

		    // Invoke Aspose.PDF Cloud SDK API to split pdf files
		    SplitResultResponse apiResponse = pdfApi.PostSplitDocument(fileName, format, from, to, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Split PDF Files, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}

	}

}