package com.aspose.pdf.cloud.examples.images;



import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;

public class CreatePDFFromJPGExample {

	public static void execute(Context context) throws Exception {

		//ExStart: 1
		String fileName = "sample1-jpeg.pdf";
		String templateFile = "Einstein_JPEG.jpg";
		String dataFile = "";
		String templateType = "jpeg";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("Einstein_JPEG","jpg", context.getResources().openRawResource(R.raw.Einstein_JPEG));
		File output=Utils.createTempFile("sample1-jpeg","pdf");


		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "", input);
		    // Invoke Aspose.PDF Cloud SDK API to create pdf from JPEG
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from JPEG, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: 1
	}

}
