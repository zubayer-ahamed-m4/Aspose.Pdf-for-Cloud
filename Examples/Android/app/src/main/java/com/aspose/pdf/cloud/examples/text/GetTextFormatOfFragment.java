package com.aspose.pdf.cloud.examples.text;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.TextFormat;
import com.aspose.pdf.model.TextFormatResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetTextFormatOfFragment {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-input.pdf";
		int pageNumber = 1;
		int fragmentNumber = 1;
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

		    // Invoke Aspose.PDF Cloud SDK API to get text format of pdf fragment
		    TextFormatResponse apiResponse = pdfApi.GetFragmentTextFormat(fileName, pageNumber, fragmentNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        TextFormat segTextFormat = apiResponse.getTextFormat();
		        System.out.println("Segment Font Name - " + segTextFormat.getFontName());
		        System.out.println("Segment Font Size - " + segTextFormat.getFontSize().floatValue());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
