package com.aspose.pdf.cloud.examples.properties;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetParticularDocumentPropertyExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Annotation.pdf";
		String propertyName = "Creator";
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

		    // Invoke Aspose.PDF Cloud SDK API to get particular document property
		    DocumentPropertyResponse apiResponse = pdfApi.GetDocumentProperty(fileName, propertyName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        DocumentProperty docProp = apiResponse.getDocumentProperty();
		        System.out.println(docProp.getName() + " :: " + docProp.getValue());
		        System.out.println("Get a Particular Document Property from a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
