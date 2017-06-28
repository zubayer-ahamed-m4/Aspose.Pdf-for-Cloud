package com.aspose.pdf.cloud.attachments;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.Attachments;
import com.aspose.pdf.model.AttachmentsResponse;
import com.aspose.storage.api.StorageApi;


public class GetAttachmentCountExample {

	public static void main(String[] args) {
		//ExStart: get-count-attachment
		String fileName = "SampleAttachment.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(GetAttachmentCountExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get attachment count from a pdf
		    AttachmentsResponse apiResponse = pdfApi.GetDocumentAttachments(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Attachments attachments = apiResponse.getAttachments();
		        int count = attachments.getList().size();
		        System.out.println("Count :: " + count);
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnds: get-count-attachment
	}

}