package com.aspose.pdf.cloud.examples.bookmarks;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.documents.ApendPDFFileExample;
import com.aspose.pdf.model.Bookmarks;
import com.aspose.pdf.model.BookmarksResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetBookmarksCountExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "Sample-Bookmark.pdf";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("Sample-Bookmark","pdf", context.getResources().openRawResource(R.raw.Sample_Bookmark));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);
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
//ExEnd:  1
	}

}
