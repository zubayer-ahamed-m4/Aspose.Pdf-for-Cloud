package com.aspose.pdf.cloud.bookmarks;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.examples.documents.ApendPDFFileExample;
import com.aspose.pdf.model.Bookmarks;
import com.aspose.pdf.model.BookmarksResponse;
import com.aspose.storage.api.StorageApi;


public class GetBookmarksCountExample {

	public static void main(String[] args) {
		String fileName = "Sample-Bookmark.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(ApendPDFFileExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());
		    // Invoke Aspose.PDF Cloud SDK API to get bookmark count from pdf
		    BookmarksResponse apiResponse = pdfApi.GetDocumentBookmarks(fileName, storage, folder);
		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Bookmarks bookmarks = apiResponse.getBookmarks();
		        int count = bookmarks.getList().size();
		        System.out.println("Bookmark Count :: " + count);
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}

	}

}