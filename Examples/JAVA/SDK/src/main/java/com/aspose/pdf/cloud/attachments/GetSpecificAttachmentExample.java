package com.aspose.pdf.cloud.attachments;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.bookmarks.GetAllBookmarksExample;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.Attachment;
import com.aspose.pdf.model.AttachmentResponse;
import com.aspose.storage.api.StorageApi;


public class GetSpecificAttachmentExample {

	public static void main(String[] args) {
		String name = "SampleAttachment";
		String fileName = name + ".pdf";
		int attachmentIndex = 1;
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

		    // Invoke Aspose.PDF Cloud SDK API to get specific attachment from a pdf
		    AttachmentResponse apiResponse = pdfApi.GetDocumentAttachmentByIndex(fileName, attachmentIndex, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Attachment attach = apiResponse.getAttachment();
		        System.out.println("Name :: " + attach.getName());
		        System.out.println("MimeType :: " + attach.getMimeType());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}