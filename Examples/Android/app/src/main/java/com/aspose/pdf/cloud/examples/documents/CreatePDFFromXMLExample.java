package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context;

import com.aspose.pdf.cloud.R; import java.io.File;


public class CreatePDFFromXMLExample {

	public static void execute(Context context) throws Exception {
		//ExStart: 1
		String fileName = "input.pdf";
		String templateFile = "sample.xsl";
		String dataFile = "sample.xml";
		String templateType = "xml";
		String storage = "";
		String folder = "";
		//Path templateFilePath = Utils.getPath(CreatePDFFromXMLExample.class, templateFile);
		//Path dataFilePath = Utils.getPath(CreatePDFFromXMLExample.class, dataFile);

		File templateFilePath = Utils.stream2file("sample","xsl", context.getResources().openRawResource(R.raw.sample));
		File dataFilePath = Utils.stream2file("sample","xml", context.getResources().openRawResource(R.raw.sampleXML));



		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "", templateFilePath);
		    storageApi.PutCreate(dataFile, "", "", dataFilePath);


		    // Invoke Aspose.PDF Cloud SDK API to create Pdf from XML
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from XML, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
