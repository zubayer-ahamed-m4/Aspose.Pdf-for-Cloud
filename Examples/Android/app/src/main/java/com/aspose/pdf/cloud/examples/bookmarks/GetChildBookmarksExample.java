package com.aspose.pdf.cloud.bookmarks;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.Bookmark;
import com.aspose.pdf.model.BookmarkResponse;
import com.aspose.storage.api.StorageApi;

public class GetChildBookmarksExample {
	public static void main(String[] args) {
		//ExStart: 1
		String fileName = "Sample-Bookmark.pdf";
		String storage = "";
		String folder = "";
		String bookmarkPath = null;
		Path inputFile = Utils.getPath(GetAllBookmarksExample.class, fileName);
		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API
		    BookmarkResponse apiResponse = pdfApi.GetDocumentBookmarksChildren(fileName,bookmarkPath, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Bookmark bookmarks = apiResponse.getBookmark();
		        System.out.println("Get all Bookmarks from a PDF,Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
		//ExEnd: 1
	}
}
