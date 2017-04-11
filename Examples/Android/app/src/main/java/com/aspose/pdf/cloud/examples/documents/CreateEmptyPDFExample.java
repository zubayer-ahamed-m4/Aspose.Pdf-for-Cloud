package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class CreateEmptyPDFExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "input.pdf";
		String templateFile = "";
		String dataFile = "";
		String templateType = "";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.sample_input));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);
		    // Invoke Aspose.PDF Cloud SDK API to create empty pdf file
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        System.out.println("Create Empty PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
//ExEnd:  1

	}

}
