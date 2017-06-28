package com.aspose.pdf.cloud.examples.annotations;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.R;
import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.AnnotationsResponse;
import com.aspose.pdf.model.Link;
import com.aspose.storage.api.StorageApi;
import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;
import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.R; import java.io.File;
import com.aspose.pdf.cloud.Utils;




public class GetAllAnnotationsFromPDFPageExample {

	public static void execute(Context context) throws Exception {
		//ExStart: 1
		String fileName = "Sample-Annotation.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		File inputFile = Utils.stream2file("sample1","pptx", context.getResources().openRawResource(R.raw.Sample_Annotation));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to get all annotations from pdf page
		    AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (Link annotatonLink : apiResponse.getAnnotations().getLinks())
		        {
		        	System.out.println("Annotation Link :: " + annotatonLink.getHref());
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
