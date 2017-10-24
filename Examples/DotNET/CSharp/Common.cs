using System;
using System.IO;

    class Common
    {
        public static string APP_SID = "B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766";
        public static string APP_KEY = "da77c9f5da014d91faf2961ecec2de66";
        public static string FOLDER = "";
        public static string STORAGE = "";
        public static string BASEPATH = "http://api.aspose.cloud/v1.1";
        //public static string BASEPATH = "http://52.89.98.97/v1.1";
        public static string OUTFOLDER = "C://temp/";

        public static string GetDataDir()
        {
            var parent = ((Directory.GetParent(Directory.GetCurrentDirectory()).Parent).Parent).Parent;
            string startDirectory = null;
            if (parent != null)
            {
                var directoryInfo = parent.Parent;
                if (directoryInfo != null)
                {
                    startDirectory = directoryInfo.FullName;
                }
            }
            else
            {
                startDirectory = parent.FullName;
            }
            return Path.Combine(startDirectory, "Data\\");
        }
      
    }

