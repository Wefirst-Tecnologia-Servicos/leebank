<?php

if (isset($_FILES['file']['name'])) {


   $filename = $_POST['fileName'];
   $pathPost = $_POST['pathPost'];

   $location = $pathPost . $filename;
   $imageFileType = pathinfo($location, PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   $valid_extensions = array("jpg", "jpeg", "png", "PNG", "JPEG", "JPG", "JFIF");

   $response = 0;

   if (in_array(strtolower($imageFileType), $valid_extensions)) {

      if ($_FILES["file"]["size"] < 10000000) {
         if (move_uploaded_file($_FILES['file']['tmp_name'], $location)) {
            /*
            $img_size_array = getimagesize($location);
            // *** Include the class
            include("php/resize-class.php");

            // *** 1) Initialise / load image
            $resizeObj = new resize($location);

            // *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
            $resizeObj->resizeImage($img_size_array[0], $img_size_array[0], 'crop');

            // *** 3) Save image
            $resizeObj->saveImage($location, 100);
            */
            //$response = 0;
            $response = 0;
         }
      } else {
         $response = "Arquivo é muito grande, não foi possível fazer o upload";
      }
   } else {
      $response = "Arquivo não é do formato adequado, não foi possível fazer o upload";
   }

   echo $response;
   exit;
}
