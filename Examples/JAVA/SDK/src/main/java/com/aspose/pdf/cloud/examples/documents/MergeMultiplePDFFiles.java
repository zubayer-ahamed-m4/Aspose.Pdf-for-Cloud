package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;
import java.util.Arrays;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.pdf.model.MergeDocuments;
import com.aspose.storage.api.StorageApi;


public class MergeMultiplePDFFiles {

	public static void main(String[] args) {
		String fileName = "sample-merged.pdf";
		String storage = "";
		String folder = "";
		MergeDocuments body = new MergeDocuments();
		
		String[] fileNames={ "sample.pdf", "input.pdf" };
		body.setList(Arrays.asList(fileNames)) ;
		
		Path sampleFilePath = Utils.getPath(MergeMultiplePDFFiles.class,  "sample.pdf");
		Path dataFilePath = Utils.getPath(MergeMultiplePDFFiles.class, "input.pdf");


		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate("sample.pdf", "", "", sampleFilePath.toFile());
		    storageApi.PutCreate("input.pdf", "", "", dataFilePath.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to merge pdf files
		    DocumentResponse apiResponse = pdfApi.PutMergeDocuments(fileName, storage, folder, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Merge Multiple PDF Files, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}

	}

}