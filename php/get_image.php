<?php
header('Content-Type: image/bmp');

$dir = 'img/';
$dh  = opendir($dir);
while (false !== ($filename = readdir($dh))) {
  $filename = $filename;
  if (strpos($filename, '.bmp') > 0) {
    $files[] = $filename;
  }
}

$file_no = rand(0,count($files)-1);
readfile($dir . $files[$file_no]);
?>
