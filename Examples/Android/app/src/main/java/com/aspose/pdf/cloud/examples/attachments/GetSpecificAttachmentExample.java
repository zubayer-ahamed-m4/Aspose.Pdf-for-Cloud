package com.aspose.pdf.cloud.examples.attachments;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.Attachment;
import com.aspose.pdf.model.AttachmentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetSpecificAttachmentExample {

	public static void execute(Context context) throws Exception {
		//ExStart: get-specific-attachment
		String name = "SampleAttachment";
		String fileName = name + ".pdf";
		int attachmentIndex = 1;
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("sample1","pptx", context.getResources().openRawResource(R.raw.sample1));
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

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
		//ExEnd: get-specific-attachment
	}

}