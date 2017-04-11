package com.aspose.pdf.cloud.examples.attachments;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.Attachments;
import com.aspose.pdf.model.AttachmentsResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetAttachmentCountExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "SampleAttachment.pdf";
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
//ExEnd:  1
	}

}
