<?php

require_once __DIR__.'/cloudinary/autoload.php';
require_once __DIR__.'/cloudinary/src/Helpers.php';

\Cloudinary::config(array(
'cloud_name' => 'fivegins',
'api_key' => '221242981627757',
'api_secret' => 'iYS6KdAKmBpQDDY-IoczW0kQ0sA'
));

function show_image($img, $options = array())
{
  $options['format'] = $img['format'];
  $transformation_url = cloudinary_url($img['public_id'], $options);
  return $transformation_url;
}

  /***************************************************
   * Only these origins are allowed to upload images *
   ***************************************************/
  $accepted_origins = array("http://localhost", "http://192.168.1.1", "http://example.com");

  /*********************************************
   * Change this line to set the upload folder *
   *********************************************/
  $imageFolder = "../uploads/";

  reset ($_FILES);
  $temp = current($_FILES);
  if (is_uploaded_file($temp['tmp_name'])){
    if (isset($_SERVER['HTTP_ORIGIN'])) {
      // same-origin requests won't set an origin. If the origin is set, it must be valid.
      if (in_array($_SERVER['HTTP_ORIGIN'], $accepted_origins)) {
        header('Access-Control-Allow-Origin: ' . $_SERVER['HTTP_ORIGIN']);
      } else {
        header("HTTP/1.1 403 Origin Denied");
        return;
      }
    }

    /*
      If your script needs to receive cookies, set images_upload_credentials : true in
      the configuration and enable the following two headers.
    */
    // header('Access-Control-Allow-Credentials: true');
    // header('P3P: CP="There is no P3P policy."');

    // Sanitize input
    if (preg_match("/([^\w\s\d\-_~,;:\[\]\(\).])|([\.]{2,})/", $temp['name'])) {
        header("HTTP/1.1 400 Invalid file name.");
        return;
    }

    // Verify extension
    if (!in_array(strtolower(pathinfo($temp['name'], PATHINFO_EXTENSION)), array("gif", "jpg", "png"))) {
        header("HTTP/1.1 400 Invalid extension.");
        return;
    }

    // Accept upload if there was no origin, or if it is an accepted origin
    $name = rand();
    $kq = \Cloudinary\Uploader::upload($temp['tmp_name'], array('public_id' => "test_php/{$name}"));
    $filetowrite = show_image($kq, array("dpr"=>"auto", "flags"=>"lossy", "quality"=>"auto:eco", "fetch_format"=>"auto", "width"=>"300", "crop"=>"scale"));

    // Respond to the successful upload with JSON.
    // Use a location key to specify the path to the saved image resource.
    // { location : '/your/uploaded/image/file'}
    echo json_encode(array('location' => $filetowrite));
  } else {
    // Notify editor that the upload failed
    header("HTTP/1.1 500 Server Error");
  }
?>
