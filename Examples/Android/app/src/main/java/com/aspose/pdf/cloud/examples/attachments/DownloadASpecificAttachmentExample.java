package com.aspose.pdf.cloud.examples.attachments;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class DownloadASpecificAttachmentExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String name = "SampleAttachment";
		String fileName = name + ".pdf";
		int attachmentIndex = 1;
		String storage = "";
		String folder = "";
		File inputFile = Utils.stream2file("SampleAttachment","pdf", context.getResources().openRawResource(R.raw.SampleAttachment));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile);

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
//ExEnd:  1
	}
}
