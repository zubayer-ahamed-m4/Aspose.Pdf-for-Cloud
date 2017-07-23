package com.aspose.pdf.cloud.examples.formfields;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.Field;
import com.aspose.pdf.model.Link;
import com.aspose.pdf.model.Rectangle;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.storage.api.StorageApi;

public class CreateFormFieldExample {
	public static void main(String[] args) {
		//ExStart: 1
		String fileName = "sample-field.pdf";
		String storage = "";
		String folder = "";
		Path inputFile = Utils.getPath(CreateFormFieldExample.class, fileName);

		Field body = new Field();

		Link link = new Link();
		link.setHref("http://api.aspose.cloud/v1.1/pdf/ABFillablewfields.pdf/fields/NewField");
		link.setRel("self");
		link.setTitle("NewField");
		link.setType("link");

		Rectangle rect = new Rectangle();
		rect.setX(0);
		rect.setY(0);

		body.setName("dvDate_1");
		body.setValues(new ArrayList<>(Arrays.asList("NewFieldValue")));
		body.setRect(rect);
		body.setSelectedItems(new ArrayList<>(Arrays.asList(1)));
		body.setType(0);
		body.setLinks(new ArrayList<>(Arrays.asList(link)));

		try {
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
			// Upload source file to aspose cloud storage
			storageApi.PutCreate(fileName, "", "", inputFile.toFile());

			// Invoke Aspose.PDF Cloud SDK API to get all fields from pdf
			// document
			SaaSposeResponse apiResponse = pdfApi.PostCreateField(fileName, 1, storage, folder, body);

			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Get all Form Fields from the PDF Document, Done!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	//ExEnd: 1
}
