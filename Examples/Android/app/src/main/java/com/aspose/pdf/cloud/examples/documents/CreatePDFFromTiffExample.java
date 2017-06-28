package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.CreatePDFFromJPGExample;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class CreatePDFFromTiffExample {

	public static void execute(Context context) throws Exception {

		//ExStart: 1
		String fileName = "sample1-tiff.pdf";
		String templateFile = "Sample.tiff";
		String dataFile = "";
		String templateType = "tiff";
		String storage = "";
		String folder = "";
		//Path inputFile = Utils.getPath(CreatePDFFromJPGExample.class, fileName);
		File inputFile = Utils.stream2file("sample1-tiff","pdf", context.getResources().openRawResource(R.raw.sample1));


		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "", inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to create pdf from TIFF
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from TIFF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
