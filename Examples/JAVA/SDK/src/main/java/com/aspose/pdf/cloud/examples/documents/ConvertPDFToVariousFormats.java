package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class ConvertPDFToVariousFormats {

	public static void main(String[] args) {
		//
		String fileName =  "input.pdf";
		String format = "TIFF";
		String storage = "";
		String folder = "";
		String outPath = "";
		Path inputFile = Utils.getPath(ConvertPDFToVariousFormats.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to convert pdf to images
		    ResponseMessage apiResponse = pdfApi.GetDocumentWithFormat(fileName, format, storage, folder, outPath);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF to TIFF, Done!");
		    }
		    
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}