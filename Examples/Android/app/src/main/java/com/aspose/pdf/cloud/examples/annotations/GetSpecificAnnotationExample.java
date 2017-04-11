package com.aspose.pdf.cloud.examples.annotations;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.R;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.Annotation;
import com.aspose.pdf.model.AnnotationResponse;
import com.aspose.storage.api.StorageApi;
import android.content.Context;

import java.io.File;


public class GetSpecificAnnotationExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Annotation.pdf";
		int pageNumber = 1;
		int annotationNumber = 1;
		String storage = "";
		String folder = "";
		File inputFile = Utils.stream2file("sample1","pptx", context.getResources().openRawResource(R.raw.sample1));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "",inputFile);

		    // Invoke Aspose.PDF Cloud SDK API to get specific annotation from pdf page
		    AnnotationResponse apiResponse = pdfApi.GetPageAnnotation(fileName, pageNumber, annotationNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Annotation annotation = apiResponse.getAnnotation();
		        System.out.println("Annotation Content" + annotation.getContents());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
