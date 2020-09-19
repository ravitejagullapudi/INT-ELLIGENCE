<?php

class fileing 
{
  function upload()
    {
      $name = $_FILES['file']['name'];
      $type = $_FILES['file']['type'];
      $tmp = $_FILES['file']['tmp_name'];
      $size = $_FILES['file']['size'];

      $dir = "uploads/"; //Create a folder named "uploads" and give write permission (chmod 777 uploads)
      $filepath = "uploads/$name";

      //echo $type."<br>".$size."<br>".$filepath;
      $validsize = 100000; //Change this number to increase or decrease the file size limit
    
      if($size <= $validsize) 
        {
          if(move_uploaded_file($tmp, $filepath))
            {
               echo "$name is uploaded into $dir";
            }
          else
            {
               echo " Not uploaded";
            }
        }
      else
        {
          echo "File size has to be less than $validsize";
        }
  } 
}

if(isset($_FILES['file'])) 
  {
    $fu = new fileing;
    $fu->upload();
  }

?>
