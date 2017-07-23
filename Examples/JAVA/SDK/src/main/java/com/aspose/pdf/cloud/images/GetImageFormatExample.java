package com.aspose.pdf.cloud.images;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

public class GetImageFormatExample {
	public static void main(String[] args) {
		//ExStart: 1
		String fileName = "Lenovo_Tablet_2_Datasheet.pdf";
		Integer pageNumber = 1;
		Integer imageNumber = 1;
		String format = "jpeg";
		Integer width = 0;
		Integer height = 0;
		String storage = null;
		String folder = null; 
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get image count
		    ResponseMessage apiResponse = pdfApi.GetImageWithFormat(fileName, pageNumber, imageNumber, format, width, height, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        System.out.println("Get Image Count from a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: 1
	}
}
