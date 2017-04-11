package com.aspose.pdf.cloud.examples.links;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.images.CreatePDFFromJPGExample;
import com.aspose.pdf.model.LinkAnnotation;
import com.aspose.pdf.model.LinkAnnotationResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetSpecificLinkFromPDFPageExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Bookmark.pdf";
		int pageNumber = 1;
		int linkIndex = 1;
		String storage = "";
		String folder = "";

		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.Sample_Bookmark));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

		    // Invoke Aspose.PDF Cloud SDK API to get specific link from a pdf page
		    LinkAnnotationResponse apiResponse = pdfApi.GetPageLinkAnnotationByIndex(fileName, pageNumber, linkIndex, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        LinkAnnotation linkAnnotation = apiResponse.getLink();
		        System.out.println("Action Type :: " + linkAnnotation.getActionType());
		        System.out.println("Action :: " + linkAnnotation.getAction());
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
//ExEnd:  1
	}

}
