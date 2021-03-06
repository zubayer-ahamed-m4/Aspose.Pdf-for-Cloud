package com.aspose.pdf.cloud.examples.text;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.TextItem;
import com.aspose.pdf.model.TextItemsResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetAllTextItemFromPDFPageExample {
	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-input.pdf";
		int pageNumber = 1;
		String withEmpty = "";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.Sample_Annotation));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",input);

		    // Invoke Aspose.PDF Cloud SDK API to get text items from pdf page
		    TextItemsResponse apiResponse = pdfApi.GetPageTextItems(fileName, pageNumber, withEmpty, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for(TextItem textItem : apiResponse.getTextItems().getList())
		        {
		            System.out.println("Text:" + textItem.getText());
		        }
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
