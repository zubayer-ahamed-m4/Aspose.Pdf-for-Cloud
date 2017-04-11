package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ConvertPDFToVariousFormats {

	public static void execute(Context context) throws Exception {
		//ExStart: 1
		String fileName =  "input.pdf";
		String format = "TIFF";
		String storage = "";
		String folder = "";
		String outPath = "";
		File inputFile = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.sample_input));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to convert pdf to images
		    ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF to TIFF, Done!");
		    }
		    
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
