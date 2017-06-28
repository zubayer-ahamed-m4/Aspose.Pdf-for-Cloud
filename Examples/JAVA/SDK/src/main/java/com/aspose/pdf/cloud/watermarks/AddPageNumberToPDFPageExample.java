package com.aspose.pdf.cloud.watermarks;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.bookmarks.GetAllBookmarksExample;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.storage.api.StorageApi;

public class AddPageNumberToPDFPageExample {

	public static void main(String[] args) {
		// ExStart: add-pdf-page-stamp
		// For complete examples and data files, please go to
		// https://github.com/aspose-tasks/Aspose.Tasks-for-Java
		String fileName = "sample-input.pdf";
		String pdfName = "Sample.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";

		Stamp body = new Stamp();
		body.setFileName(pdfName);
		body.setBackground(true);
		body.setType("Image");
		body.setPageIndex(0);
		body.setLeftMargin(0.0);
		body.setOpacity(0.5);
		Path inputPDF = Utils.getPath(GetAllBookmarksExample.class, fileName);
		Path inputFile = Utils.getPath(GetAllBookmarksExample.class, fileName);

		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage

			storageApi.PutCreate(fileName, "", "", inputFile.toFile());
			storageApi.PutCreate(pdfName, "", "", inputPDF.toFile());

			// Invoke Aspose.PDF Cloud SDK API to add pdf page as stamp to a pdf
			// page
			SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

			if (apiResponse != null) {
				System.out.println("Add PDF Page as Stamp (Watermark) to a PDF Page, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// ExEnd: add-pdf-page-stamp
	}
}