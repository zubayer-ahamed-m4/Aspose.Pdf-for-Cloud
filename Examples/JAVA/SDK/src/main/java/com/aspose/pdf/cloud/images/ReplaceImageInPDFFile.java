package com.aspose.pdf.cloud.images;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ImageResponse;
import com.aspose.storage.api.StorageApi;


public class ReplaceImageInPDFFile {

	public static void main(String[] args) {

		String name = "SampleImage";
		String fileName = name + ".pdf";
		int pageNumber = 1;
		int imageNumber = 1;
		String imageFile = "aspose-cloud.png";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(GetImageCountFromPDFPage.class, fileName);

		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage
			storageApi.PutCreate(fileName, "", "", inputFile.toFile());

			// Invoke Aspose.PDF Cloud SDK API to replace image using image file
			ImageResponse apiResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage,
					folder, inputFile.toFile());

			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {
				System.out.println("Replace Image in a PDF File using Image File, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}