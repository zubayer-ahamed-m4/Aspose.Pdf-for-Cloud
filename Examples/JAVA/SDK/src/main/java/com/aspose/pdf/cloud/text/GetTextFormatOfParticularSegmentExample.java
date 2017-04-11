package com.aspose.pdf.cloud.text;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.TextFormat;
import com.aspose.pdf.model.TextFormatResponse;
import com.aspose.storage.api.StorageApi;


public class GetTextFormatOfParticularSegmentExample {

	public static void main(String[] args) {
		String fileName = "segments.pdf";
		int pageNumber = 1;
		int fragmentNumber = 1;
		int segmentNumber = 1;
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to get text format of particular segment
		    TextFormatResponse apiResponse = pdfApi.GetSegmentTextFormat(fileName, pageNumber, fragmentNumber, segmentNumber, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        TextFormat segTextFormat = apiResponse.getTextFormat();
		        System.out.println("Segment Font Name - " + segTextFormat.getFontName());
		        System.out.println("Segment Font Size - " + segTextFormat.getFontSize().floatValue());
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}