package com.aspose.pdf.cloud.examples.documents;

import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.model.PageWordCount;
import com.aspose.pdf.model.WordCountResponse;
import com.aspose.storage.api.StorageApi;

public class GetWordsPerPageExample {

    public static void main(String[] args) {
      //ExStart: create-pdf-svg
        String fileName = "sample-input.pdf";
        String storage = "";
        String folder = "";
        Path inputFile = Utils.getPath(ApendPDFFileExample.class, fileName);
        try
        {
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Instantiate Aspose Words API SDK
            PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
            // Upload source file to aspose cloud storage
            storageApi.PutCreate(fileName, "", "",inputFile.toFile());

            // Invoke Aspose.PDF Cloud SDK API to get all annotations from pdf page
            WordCountResponse apiResponse = pdfApi.GetWordsPerPage(fileName, storage, folder);

            if (apiResponse != null && apiResponse.getStatus().equals("OK"))
            {
                for (PageWordCount PageWordCount : apiResponse.getWordsPerPage().getList())
                {
                    System.out.println("Page Number :: " + PageWordCount.getPageNumber() + " Total Words :: " + PageWordCount.getCount());                        
                }                   
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        //ExEnd: create-pdf-svg
    }

}
