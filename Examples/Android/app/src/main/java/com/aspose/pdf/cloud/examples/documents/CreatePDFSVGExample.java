package com.aspose.pdf.cloud.examples.documents;


import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;

public class CreatePDFSVGExample {

	public static void execute(Context context) throws Exception {
		//ExStart: 1
		String fileName = "sample1-svg.pdf";
		String templateFile = "Example.svg";
		String dataFile = "";
		String templateType = "svg";
		String storage = "";
		String folder = "";
		File fileNameFile = Utils.stream2file("sample1-svg","pdf", context.getResources().openRawResource(R.raw.sample1));
		File templateFileFile = Utils.stream2file("Example","svg", context.getResources().openRawResource(R.raw.Example));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "",fileNameFile);

		    // Invoke Aspose.PDF Cloud SDK API to create pdf from SVG
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from SVG, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1

	}

}
