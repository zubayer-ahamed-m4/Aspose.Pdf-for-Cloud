package com.aspose.pdf.cloud.examples.pages;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class ConvertPDFDefaultSizeExample {

	public static void main(String[] args) {
		String name = "sample-input";
		String fileName = name + ".pdf";
		int pageNumber = 1;
		String format = "jpeg";
		int width = 0;
		int height = 0;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromHtmlExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to convert pdf page to image with defualt size
		    ResponseMessage apiResponse = pdfApi.GetPageWithFormat(fileName, pageNumber, format, width, height, storage, folder);

		    if (apiResponse != null)
		    {
		    	System.out.println("Convert a PDF Page to Image with Default Size, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
	}

}