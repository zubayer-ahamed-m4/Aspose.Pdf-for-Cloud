package com.aspose.pdf.cloud.examples.formfields;



import java.util.Arrays;

import com.aspose.pdf.api.PdfApi; import com.aspose.pdf.cloud.Utils;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.documents.CreatePDFFromHtmlExample;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.FieldResponse;
import com.aspose.storage.api.StorageApi; import android.content.Context; import com.aspose.pdf.cloud.R; import java.io.File;


public class UpdateFormFieldExample {

	public static void execute(Context context) throws Exception {
//ExStart: 1
		String fileName = "sample1-field.pdf";
		String fieldName = "textbox1";
		String storage = "";
		String folder = "";

		Field body = new Field();
		body.setName ("textbox1");
		String[] names={ "Aspose" };
		body.setValues(Arrays.asList(names));

		File input = Utils.stream2file("input","pdf", context.getResources().openRawResource(R.raw.sample_field));

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", input);

		    // Invoke Aspose.PDF Cloud SDK API to update form field
		    FieldResponse apiResponse = pdfApi.PutUpdateField(fileName, storage, folder, fieldName, body);

		    if (apiResponse != null && apiResponse.getStatus().equals("OK"))
		    {
		        Field field = apiResponse.getField();
		        System.out.println("Name" + field.getName());
		        System.out.println("Value" + field.getValues().get(0));
		        System.out.println("Update a Form Field in a PDF Document, Done!");
		    }
		}
		catch (Exception ex)
		{
		    ex.printStackTrace();
		}
//ExEnd:  1
	}

}
