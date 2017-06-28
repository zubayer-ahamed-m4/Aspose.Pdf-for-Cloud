package com.aspose.pdf.cloud.text;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.PageTextReplaceResponse;
import com.aspose.pdf.model.TextReplace;
import com.aspose.storage.api.StorageApi;


public class RepalceTextInPDFDocument {

	public static void main(String[] args) {
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		TextReplace body = new TextReplace();

		body.setOldValue ( "Sample PDF");
		body.setNewValue ( "Sample Aspose PDF");
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    // Invoke Aspose.PDF Cloud SDK API to replace text in a pdf page
		    PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceText(fileName, pageNumber, storage, folder, body);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Replace Text in a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}