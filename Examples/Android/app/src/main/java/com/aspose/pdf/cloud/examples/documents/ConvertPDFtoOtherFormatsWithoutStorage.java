package com.aspose.pdf.cloud.examples.documents;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.model.ResponseMessage;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class ConvertPDFtoOtherFormatsWithoutStorage {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "input.pdf";
		String format = "TIFF";
		String url = "";
		String outPath = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.sample_input));
		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage
			storageApi.PutCreate(fileName, "", "", input);

			// Invoke Aspose.PDF Cloud SDK API to convert pdf to other formats
			ResponseMessage apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

			if (apiResponse != null) {
				System.out.println("Convert PDF to TIFF, Done!");
			}

			format = "DOC";
			apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

			if (apiResponse != null) {
				System.out.println("Convert PDF to DOC, Done!");
			}

			format = "html";
			apiResponse = pdfApi.PutConvertDocument(format, url, outPath, input);

			if (apiResponse != null) {
				System.out.println("Convert PDF to HTML, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
//ExEnd:  1

	}

}
