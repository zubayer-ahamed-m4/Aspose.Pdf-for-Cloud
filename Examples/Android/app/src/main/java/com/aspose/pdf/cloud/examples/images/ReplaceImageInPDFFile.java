package com.aspose.pdf.cloud.examples.images;


import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.ImageResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ReplaceImageInPDFFile {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String name = "SampleImage";
		String fileName = name + ".pdf";
		int pageNumber = 1;
		int imageNumber = 1;
		String imageFile = "aspose-cloud.png";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.SampleImage));

		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage
			storageApi.PutCreate(fileName, "", "", input);

			// Invoke Aspose.PDF Cloud SDK API to replace image using image file
			ImageResponse apiResponse = pdfApi.PostReplaceImage(fileName, pageNumber, imageNumber, imageFile, storage,
					folder, input);

			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {
				System.out.println("Replace Image in a PDF File using Image File, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
//ExEnd:  1
	}

}
