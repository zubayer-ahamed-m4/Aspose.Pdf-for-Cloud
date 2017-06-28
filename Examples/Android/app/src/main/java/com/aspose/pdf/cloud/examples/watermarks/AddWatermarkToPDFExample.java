package com.aspose.pdf.cloud.examples.watermarks;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class AddWatermarkToPDFExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Stamp body = new Stamp();
		body.setValue ("Aspose.com");
		body.setBackground ( true);
		body.setType ("Text");

		File inputFile = Utils.stream2file("sample1-input","pdf", context.getResources().openRawResource(R.raw.sample1));
		File inputImage = Utils.stream2file("aspose-cloud","png", context.getResources().openRawResource(R.raw.aspose_cloud));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to add text stamp to a pdf page
		    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

		    if (apiResponse != null)
		    {
		    	System.out.println("Add Text Stamp (Watermark) to a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
//ExEnd:  1
	}

}
