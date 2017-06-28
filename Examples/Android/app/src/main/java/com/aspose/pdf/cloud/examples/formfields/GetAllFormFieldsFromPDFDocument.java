package com.aspose.pdf.cloud.examples.formfields;




import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.pages.MovePDFToNewLocation;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.FieldsResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class GetAllFormFieldsFromPDFDocument {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-field.pdf";
		String storage = "";
		String folder = "";
		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.sample_field));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

		    // Invoke Aspose.PDF Cloud SDK API to get all fields from pdf document
		    FieldsResponse apiResponse = pdfApi.GetFields(fileName, storage, folder);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        for (Field field : apiResponse.getFields().getList())
		        {
		            System.out.println("Name:" + field.getName());
		            System.out.println("Value:" + field.getValues().get(0));
		        }
		        System.out.println("Get all Form Fields from the PDF Document, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
