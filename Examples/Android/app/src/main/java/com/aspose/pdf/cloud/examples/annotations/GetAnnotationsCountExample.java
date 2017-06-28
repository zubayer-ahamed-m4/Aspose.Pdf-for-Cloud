package com.aspose.pdf.cloud.examples.annotations;



import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.R;
import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.documents.ApendPDFFileExample;
import com.aspose.pdf.model.AnnotationsResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;

import com.aspose.pdf.cloud.R; import java.io.File;


public class GetAnnotationsCountExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Annotation.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		File inputFile = Utils.stream2file("Sample-Annotation","pdf", context.getResources().openRawResource(R.raw.Sample_Annotation));
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to get annotations count from Pdf page
		    AnnotationsResponse apiResponse = pdfApi.GetPageAnnotations(fileName, pageNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        int count = apiResponse.getAnnotations().getLinks().size();
		        System.out.println("Annotation Count :: " + count);
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}
}
