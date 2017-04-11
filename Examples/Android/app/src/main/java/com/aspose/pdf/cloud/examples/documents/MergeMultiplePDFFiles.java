package com.aspose.pdf.cloud.examples.documents;

import java.util.Arrays;
import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.pdf.model.MergeDocuments;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class MergeMultiplePDFFiles {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-merged.pdf";
		String storage = "";
		String folder = "";
		MergeDocuments body = new MergeDocuments();
		
		String[] fileNames={ "sample1.pdf", "input.pdf" };
		body.setList(Arrays.asList(fileNames)) ;
		
		//Path sampleFilePath = Utils.getPath(MergeMultiplePDFFiles.class,  "sample1.pdf");
		//Path dataFilePath = Utils.getPath(MergeMultiplePDFFiles.class, "input.pdf");


		File sampleFilePath = Utils.stream2file("sample","pdf", context.getResources().openRawResource(R.raw.Sample));
		File dataFilePath = Utils.stream2file("test","pdf", context.getResources().openRawResource(R.raw.test));



		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate("sample1.pdf", "", "", sampleFilePath);
		    storageApi.PutCreate("input.pdf", "", "", dataFilePath);

		    // Invoke Aspose.PDF Cloud SDK API to merge pdf files
		    DocumentResponse apiResponse = pdfApi.PutMergeDocuments(fileName, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Merge Multiple PDF Files, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
