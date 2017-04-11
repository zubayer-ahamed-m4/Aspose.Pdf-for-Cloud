package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.AppendDocument;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ApendPDFFileExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample.pdf";
		int startPage = 2;
		int endPage = 3;
		String storage = "";
		String folder = "";
		String appendFileName = "sample1-input.pdf";
		AppendDocument body = new AppendDocument();
		body.setDocument (appendFileName);
		body.setStartPage (2);
		body.setEndPage (3);
		File input = Utils.stream2file("Sample_input","pdf", context.getResources().openRawResource(R.raw.sample_input));
		File appendFile = Utils.stream2file("sample1","pdf", context.getResources().openRawResource(R.raw.sample1));
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);
		    storageApi.PutCreate(appendFileName, "", "",appendFile);
		    // Invoke Aspose.PDF Cloud SDK API to append pdf file
		    DocumentResponse apiResponse = pdfApi.PostAppendDocument(fileName, "test", startPage, endPage, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Append PDF Files, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
