<?php
$dbhost = "localhost";
$dbuser = "phpbb";
$dbpass = "phpbb";
$dbname = "phpbb";

$dbhandle = mysql_connect($dbhost, $dbuser, $dbpass);
mysql_select_db($dbname);

$site_rootpath = "";
/* 
Subfolder of the domain-root the website is located in (the website, not the forums, not abc, the whole thing.)
This should be "" if the website is hosted in the root directory of the domain.
If you are e.g. using XAMPP and hosting the site in the subfolder "GC", it should be: "/GC"

Used to generate absolute filepaths, like for example the signature link for the medal bar.
*/
?>
