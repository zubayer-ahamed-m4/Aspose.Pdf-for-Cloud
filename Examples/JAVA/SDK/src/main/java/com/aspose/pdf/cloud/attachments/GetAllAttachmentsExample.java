package com.aspose.pdf.cloud.attachments;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.bookmarks.GetAllBookmarksExample;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.AttachmentsResponse;
import com.aspose.storage.api.StorageApi;


public class GetAllAttachmentsExample {

	public static void main(String[] args) {
		//ExStart: get-all-attachments
		String fileName = "SampleAttachment.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(GetAllBookmarksExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get all attachments from a pdf
		    AttachmentsResponse apiResponse = pdfApi.GetDocumentAttachments(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Get all Attachments from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
		//ExStart: get-all-attachments
	}

}