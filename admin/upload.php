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



  reset ($_FILES);
  $temp = current($_FILES);
  if (is_uploaded_file($temp['tmp_name'])){


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
