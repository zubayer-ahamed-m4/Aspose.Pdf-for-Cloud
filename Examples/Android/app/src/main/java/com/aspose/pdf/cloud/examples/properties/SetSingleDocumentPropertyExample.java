package com.aspose.pdf.cloud.examples.properties;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.DocumentProperty;
import com.aspose.pdf.model.DocumentPropertyResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class SetSingleDocumentPropertyExample {

	public static void execute(Context context) throws Exception {

		//ExStart: set-single-property
		String fileName = "Sample-Annotation.pdf";
		String propertyName = "author";
		String storage = "";
		String folder = "";
		DocumentProperty body = new DocumentProperty();
		body.setName ("author");
		body.setValue ("Naeem Akram");
		body.setBuiltIn (true);
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.Sample_Annotation));
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

		    // Invoke Aspose.PDF Cloud SDK API to set single pdf document property
		    DocumentPropertyResponse apiResponse = pdfApi.PutSetProperty(fileName, propertyName, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        DocumentProperty docProp = apiResponse.getDocumentProperty();
		        System.out.println(docProp.getName() + " :: " + docProp.getValue());
		        System.out.println("Set a Single Document Property in a PDF, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
