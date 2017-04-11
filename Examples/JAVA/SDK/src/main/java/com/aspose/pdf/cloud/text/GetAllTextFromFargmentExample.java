package com.aspose.pdf.cloud.text;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.TextItem;
import com.aspose.pdf.model.TextItemsResponse;
import com.aspose.storage.api.StorageApi;// For complete examples and data files, please go to https://github.com/aspose-tasks/Aspose.Tasks-for-Java



public class GetAllTextFromFargmentExample {

	public static void main(String[] args) {
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		int fragmentNumber = 1;
		String withEmpty = "";
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

		    // Invoke Aspose.PDF Cloud SDK API to get text from particular fragment of pdf document
		    TextItemsResponse apiResponse = pdfApi.GetFragment(fileName, pageNumber, fragmentNumber, withEmpty, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (TextItem textItem : apiResponse.getTextItems().getList())
		        {
		        	System.out.println("Text:" + textItem.getText());
		        }
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}