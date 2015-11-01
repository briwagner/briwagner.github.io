<?php
if (isset($_POST['send'])) {
  $to = 'info@windowpanemedia.com';
  $subject = 'Message from web site';
  $message = 'Name: ' . $_POST['name'] . "\r\n\r\n";
  $message .= 'Email: ' . $_POST['email'] . "\r\n\r\n";
  $message .= 'Message: ' . $_POST['message'];

  echo $message;
}

?>