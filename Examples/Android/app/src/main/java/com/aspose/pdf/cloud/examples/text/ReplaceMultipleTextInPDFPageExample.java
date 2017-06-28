package com.aspose.pdf.cloud.examples.text;



import java.util.ArrayList;
import java.util.Arrays;

import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.PageTextReplaceResponse;
import com.aspose.pdf.model.TextReplace;
import com.aspose.pdf.model.TextReplaceListRequest;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ReplaceMultipleTextInPDFPageExample {

	public static void execute(Context context) throws Exception {

		//ExStart: replace-multiple-text
		String fileName = "sample1-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";

		TextReplaceListRequest body = new TextReplaceListRequest();

		TextReplace tr1 = new TextReplace();
		tr1.setOldValue("Sample");
		tr1.setNewValue("Aspose Sample");

		TextReplace tr2 = new TextReplace();
		tr2.setOldValue ( "PDF");
		tr2.setNewValue ( "PDF Document");
		
		TextReplace[] arr={ tr1, tr2 };

		body.setTextReplaces ( new ArrayList<TextReplace> (Arrays.asList(arr)));
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.Sample_Annotation));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",input);

		    // Invoke Aspose.PDF Cloud SDK API to replace mutiple text in pdf page
		    PageTextReplaceResponse apiResponse = pdfApi.PostPageReplaceTextList(fileName, pageNumber, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Replace Multiple Texts in a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
		//ExEnd: replace-multiple-text
	}

}
