package com.aspose.pdf.cloud.examples.documents;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class ConvertPDFtoOtherFormatsWithoutStorage {

	public static void main(String[] args) {
		String fileName = "input.pdf";
		String format = "TIFF";
		String url = "";
		String outPath = "";
		Path inputFile = Utils.getPath(ConvertPDFtoOtherFormatsWithoutStorage.class, fileName);

		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage
			storageApi.PutCreate(fileName, "", "", inputFile.toFile());

			// Invoke Aspose.PDF Cloud SDK API to convert pdf to other formats
			ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

			if (apiResponse != null) {
				System.out.println("Convert PDF to TIFF, Done!");
			}

			format = "DOC";
			apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

			if (apiResponse != null) {
				System.out.println("Convert PDF to DOC, Done!");
			}

			format = "html";
			apiResponse = pdfApi.PutConvertDocument(format, url, outPath, inputFile.toFile());

			if (apiResponse != null) {
				System.out.println("Convert PDF to HTML, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}