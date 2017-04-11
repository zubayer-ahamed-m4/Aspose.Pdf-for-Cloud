package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class ConvertPDFRemoteServer {

	public static void main(String[] args) {
		String name = "123";
		String fileName = name + ".pdf";
		String format = "TIFF";
		String url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" + fileName;
		String outPath = "";
		Path inputFile = Utils.getPath(ConvertPDFRemoteServer.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to TIFF, Done!");
		    }

		    format = "DOC";
		    // Invoke Aspose.PDF Cloud SDK API to pdf file to doc format
		    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to DOC, Done!");
		    }

		    format = "HTML";
		    // Invoke Aspose.PDF Cloud SDK API to convert pdf to HTML format
		    apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert PDF from Remote Server to HTML, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}