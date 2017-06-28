package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ConvertPDFRemoteServer {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String name = "123";
		String fileName = name + ".pdf";
		String format = "TIFF";
		String url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + fileName;
		String outPath = "";
		File input = Utils.stream2file("123","pdf", context.getResources().openRawResource(R.raw.sample_input));
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to TIFF, Done!");
		    }

		    format = "DOC";
		    // Invoke Aspose.PDF Cloud SDK API to pdf file to doc format
		    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to DOC, Done!");
		    }

		    format = "HTML";
		    // Invoke Aspose.PDF Cloud SDK API to convert pdf to HTML format
		    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to HTML, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
