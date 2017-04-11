package com.aspose.pdf.cloud.attachments;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class DownloadASpecificAttachmentExample {

	public static void main(String[] args) {
		String name = "SampleAttachment";
		String fileName = name + ".pdf";
		int attachmentIndex = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(DownloadASpecificAttachmentExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to download specific attachment from a pdf
		    ResponseMessage apiResponse = pdfApi.GetDownloadDocumentAttachmentByIndex(fileName, attachmentIndex, storage, folder);

		    if (apiResponse != null)
		    {
		        System.out.println("Download a specific Attachment from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}
}