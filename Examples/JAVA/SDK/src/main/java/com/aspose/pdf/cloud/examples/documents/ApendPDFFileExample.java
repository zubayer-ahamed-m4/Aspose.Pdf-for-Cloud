package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.AppendDocument;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;


public class ApendPDFFileExample {

	public static void main(String[] args) {
		String fileName = "Sample.pdf";
		String appendFile = null;
		int startPage = 2;
		int endPage = 3;
		String storage = "";
		String folder = "";
		String appendFileName = "sample-input.pdf";
		AppendDocument body = new AppendDocument();
		body.setDocument (appendFileName);
		body.setStartPage (2);
		body.setEndPage (3);
		Path inputFile = Utils.getPath(ApendPDFFileExample.class, fileName);
		Path appendFilePath = Utils.getPath(ApendPDFFileExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    storageApi.PutCreate(appendFileName, "", "",appendFilePath.toFile());
		    // Invoke Aspose.PDF Cloud SDK API to append pdf file
		    DocumentResponse apiResponse = pdfApi.PostAppendDocument(fileName, appendFile, startPage, endPage, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Append PDF Files, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}