package com.aspose.pdf.cloud.examples.documents;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.CreatePDFFromJPGExample;
import com.aspose.pdf.model.DocumentResponse;
import com.aspose.storage.api.StorageApi;

public class CreatePDFSVGExample {

	public static void main(String[] args) {
		//ExStart: create-pdf-svg
		String fileName = "sample-svg.pdf";
		String templateFile = "Example.svg";
		String dataFile = "";
		String templateType = "svg";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreatePDFFromJPGExample.class, fileName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(templateFile, "", "",inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to create pdf from SVG
		    DocumentResponse apiResponse = pdfApi.PutCreateDocument(fileName, templateFile, dataFile, templateType, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		    	System.out.println("Create PDF from SVG, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: create-pdf-svg

	}

}
