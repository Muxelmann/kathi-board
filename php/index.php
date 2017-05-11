VERSION:1.0
FILES:<?
$dir = 'updates/';
$dh  = opendir($dir);

while (false !== ($filename = readdir($dh))) {
  if (strpos($filename, '.py') > 0) {
    $files[] = $filename;
  }
}

foreach ($files as $k => $filename) {
  echo($dir . $filename);
}
?>
