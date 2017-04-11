package com.aspose.pdf.cloud.examples.properties;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class RemoveAllDocumentProperties {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Annotation.pdf";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.Sample_Annotation));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

		    // Invoke Aspose.PDF Cloud SDK API to remove all document properties
		    SaaSposeResponse apiResponse = pdfApi.DeleteProperties(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Remove All Document Properties from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1

	}

}
