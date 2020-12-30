
#This is dbtv2.pl. Auto option
#author: Vishal Maingi
#dated: 16.November.2011

#huangjianxiang
#modified on Dec 19,2018

use Tk;
use Getopt::Long;
my $number_core = "1";
my $number_frag = "1";
my $number_terminal = "1";
my $mw = new MainWindow;

#_______________________________________
##### last modified 8.2.2011#############|                       

print
"
                   #*##*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
                   #                                            #
                   # * * *       ** *   T o o l k i t           #
                   # *     *     *    *       *                 #
                   # *      *    *    *       *                 #
                   # *       *   *   *        *                 #
                   # *       ||  *---*        *                 #
                   # *       *   *    *       *                 #
                   # *       r   *     *      *                 #
                   # *      e    *     *      *                 #  
                   # Dendrim     Builder      *                 #
                   #                                            #
                   # Tested on AMBER10 with AMBERTOOL1.2        #
                   #*##*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

";

####################1# BUTTONS ################################### 

$l = $mw -> Button(-text=>"Dendrimer Builder Toolkit",-background=>LemonChiffon,-relief=>"sunken")-> grid();
$special = $mw -> Frame ();
$special -> grid();                       ######### using $special as frame here
#$to = $mw -> Frame ();
#$to -> grid();                      ##### using to as frame as required for label "to" in Layers desired


#####################2#GUI, FRAME and WINDOWS MANAGEMENT ####################

#2.1# CORE 'aaa' residue   7 and 8 were added by huangjianxiang
my $num_frm_core = $mw -> Frame ();
my $label_core = $num_frm_core -> Label (-text=>"Core Multiplicity");
my $rdb_core_1 = $num_frm_core -> Radiobutton(-text=>"1",-value=>"1",-variable=>\$number_core);
my $rdb_core_2 = $num_frm_core -> Radiobutton(-text=>"2",-value=>"2",-variable=>\$number_core);
my $rdb_core_3 = $num_frm_core -> Radiobutton(-text=>"3",-value=>"3",-variable=>\$number_core);
my $rdb_core_4 = $num_frm_core -> Radiobutton(-text=>"4",-value=>"4",-variable=>\$number_core);
my $rdb_core_5 = $num_frm_core -> Radiobutton(-text=>"5",-value=>"5",-variable=>\$number_core);
my $rdb_core_6 = $num_frm_core -> Radiobutton(-text=>"6",-value=>"6",-variable=>\$number_core);
my $rdb_core_7 = $num_frm_core -> Radiobutton(-text=>"7",-value=>"7",-variable=>\$number_core);
my $rdb_core_8 = $num_frm_core -> Radiobutton(-text=>"8",-value=>"8",-variable=>\$number_core);


#my $rdb_core_7 = $num_frm_core -> Radiobutton(-text=>"7",-value=>"7",-variable=>\$number_core); ### here one can modify if desired multiplicity
                                                                                                 ## for 'aaa' is more than 6, but please be careful

#2.2# FRAGMENT 'bbb' residue
#my $num_frm_frag = $mw -> Frame ();
my $label_frag = $num_frm_core -> Label(-text=>"Fragment Multiplicity: Preferred is 2 only");
my $rdb_frag_1 = $num_frm_core -> Radiobutton(-text=>"1",-value=>"1",-variable=>\$number_frag);
my $rdb_frag_2 = $num_frm_core -> Radiobutton(-text=>"2",-value=>"2",-variable=>\$number_frag);
my $rdb_frag_3 = $num_frm_core -> Radiobutton(-text=>"3",-value=>"3",-variable=>\$number_frag);
my $rdb_frag_4 = $num_frm_core -> Radiobutton(-text=>"4",-value=>"4",-variable=>\$number_frag);
my $rdb_frag_5 = $num_frm_core -> Radiobutton(-text=>"5",-value=>"5",-variable=>\$number_frag);
#my $rdb_frag_6 = $num_frm_core -> Radiobutton(-text=>"6",-value=>"6",-variable=>\$number_frag); ### here one can modify if desired multiplicity
                                                                                               ## for 'bbb' is more than 5, but please be careful  
#2.3#terminal
#my $num_frm_term = $mw -> Frame ();
my $label_term = $num_frm_core -> Label(-text=>"Terminal Multiplicity");
my $rdb_term_1 = $num_frm_core -> Radiobutton(-text=>"1",-value=>"1",-variable=>\$number_terminal);


###################3# TEXT BOX MANAGEMENT##################################

#3.1#core
#my $ent_c_frm = $mw -> Frame ();          ######### using $num_frm_core as frame only
my $ent_c1 = $num_frm_core -> Entry();
my $ent_c2 = $num_frm_core -> Entry();
my $ent_c3 = $num_frm_core -> Entry();
my $ent_c4 = $num_frm_core -> Entry();
my $ent_c5 = $num_frm_core -> Entry();
my $ent_c6 = $num_frm_core -> Entry();
#added by huangjianxiang
my $ent_c7 = $num_frm_core -> Entry();
my $ent_c8 = $num_frm_core -> Entry();

#3.2#fragment
#my $ent_f_frm = $mw -> Frame ();      ######### using $num_frm_core as frame only
my $ent_f1 = $num_frm_core -> Entry();
my $ent_f2 = $num_frm_core -> Entry();
my $ent_f3 = $num_frm_core -> Entry();
my $ent_f4 = $num_frm_core -> Entry();
my $ent_f5 = $num_frm_core -> Entry();
my $ent_f6 = $num_frm_core -> Entry();

#3.3#terminal
#my $ent_t_frm = $mw -> Frame ();
my $ent_t = $num_frm_core -> Entry();

#3.4#Layers desired but initially was generation desired
my $gen_label = $special -> Label (-text => "Number of layers desired");
my $gen_label_to = $special -> Label (-text => "to");
my $gen = $special -> Entry();
my $gen_to = $special -> Entry();

$gen_label -> grid(-row=>4,-column=>1);
$gen -> grid(-row=>4,-column=>2);
$gen_label_to -> grid(-row=>4,-column=>3);
$gen_to -> grid(-row=>4,-column=>4);

#3.5#files to be loaded
$files = $mw -> Frame ();

$ff = $files -> Label (-text=> "force field");
$ff_entry = $files -> Entry ();

$frcmod_a = $files -> Label (-text=> "frcmod file for 'aaa' or leave this option blank");
$frcmod_entry_a = $files -> Entry ();

$frcmod_b = $files -> Label (-text=> "frcmod file for 'bbb' or leave this option blank");
$frcmod_entry_b = $files -> Entry ();

$frcmod_c = $files -> Label (-text=> "frcmod file for 'ccc' or leave this option blank");
$frcmod_entry_c = $files -> Entry ();

#$frcmod_add = $files -> Label (-text=> "additional frcmod,if any");
#$frcmod_entry_add = $files -> Entry ();

$lib = $files -> Label (-text => "residues containing library name");
$lib_entry = $files -> Entry ();


#3.6# Step by step Minimisation

$min = $mw -> Frame ();

##

############  #4#GEOMETRY MANAGEMENT:  #########################
# May be there are shortcuts that can be used but this code was written as learning process ###
#4.1#core Radiobuttons

$label_core -> grid(-row=>1,-column=>1);
$num_frm_core -> grid(-row=>2,-columnspan=>1);
$rdb_core_1 -> grid(-row=>3,-column=>1);
$rdb_core_2 -> grid(-row=>4,-column=>1);
$rdb_core_3 -> grid(-row=>5,-column=>1);
$rdb_core_4 -> grid(-row=>6,-column=>1);
$rdb_core_5 -> grid(-row=>7,-column=>1);
$rdb_core_6 -> grid(-row=>8,-column=>1);
#added by huangjianxiang  buttons
$rdb_core_7 -> grid(-row=>9,-column=>1);
$rdb_core_8 -> grid(-row=>10,-column=>1);

#4.2#core Entry
#$ent_c_frm -> grid (-row=>3,-column=>3); ######### using $num_frm_core as frame only
$ent_c1 -> grid (-row=>3,-column=>2);
$ent_c2 -> grid (-row=>4,-column=>2);
$ent_c3 -> grid (-row=>5,-column=>2);
$ent_c4 -> grid (-row=>6,-column=>2);
$ent_c5 -> grid (-row=>7,-column=>2);
$ent_c6 -> grid (-row=>8,-column=>2);
#added by huangjianxiang  the textbox
$ent_c7 -> grid (-row=>9,-column=>2);
$ent_c8 -> grid (-row=>10,-column=>2);

#4.3#fragment Radiobuttons
$label_frag -> grid(-row=>1,-column=>4);
#$num_frm_frag -> grid(-row=>3,-column=>4);  ######### using $num_frm_core as frame only
$rdb_frag_1 -> grid(-row=>3,-column=>4);
$rdb_frag_2 -> grid(-row=>4,-column=>4);
$rdb_frag_3 -> grid(-row=>5,-column=>4);
$rdb_frag_4 -> grid(-row=>6,-column=>4);
$rdb_frag_5 -> grid(-row=>7,-column=>4);
#$rdb_frag_6 -> grid(-row=>8,-column=>4);

#4.4#fragment Entry
#$ent_f_frm -> grid (-row=>3,-column=>7);      ######### using $num_frm_core as frame only
$ent_f1 -> grid (-row=>3,-column=>5);
$ent_f2 -> grid (-row=>4,-column=>5);
$ent_f3 -> grid (-row=>5,-column=>5);
$ent_f4 -> grid (-row=>6,-column=>5);
$ent_f5 -> grid (-row=>7,-column=>5);
$ent_f6 -> grid (-row=>8,-column=>5); #4.5#terminal Radiobuttons
$label_term -> grid(-row=>1,-column=>7);
#$num_frm_term -> grid(-row=>3,-column=>10);
$rdb_term_1 -> grid(-row=>3,-column=>7);

#4.6#terminal Entry
#$ent_t_frm -> grid (-row=>3,-column=>11);
$ent_t -> grid (-row=>3,-column=>8);


#4.7#files to be loaded
$files -> grid ();

$ff -> grid (-row=>1,-column=>1);
$ff_entry -> grid (-row=>1,-column=>2);

$frcmod_a -> grid (-row=>2,-column=>1);
$frcmod_entry_a -> grid (-row=>2,-column=>2);

$frcmod_b -> grid (-row=>3,-column=>1);
$frcmod_entry_b -> grid (-row=>3,-column=>2);

$frcmod_c -> grid (-row=>4,-column=>1);
$frcmod_entry_c -> grid (-row=>4,-column=>2);

#$frcmod_add -> grid (-row=>5,-column=>1);
#$frcmod_entry_add -> grid (-row=>5,-column=>2);

$lib -> grid (-row=>6,-column=>1);
$lib_entry -> grid (-row=>6,-column=>2);

#                            
#######this is heart of programme builder #############################
#
#####manual or auto option #### this option should come before ok_min but due to geometry problem has been kept here###


my $but = $mw -> Button(-text=>"go",-background=>OliveDrab, -command =>sub {

my $a_c1 = $ent_c1 -> get ();    # get all the values provided by user in boxes
my $a_c2 = $ent_c2 -> get ();    
my $a_c3 = $ent_c3 -> get ();
my $a_c4 = $ent_c4 -> get ();
my $a_c5 = $ent_c5 -> get ();
my $a_c6 = $ent_c6 -> get ();
# a_c7 a_c8 were added by huangjianxiang
my $a_c7 = $ent_c7 -> get ();
my $a_c8 = $ent_c8 -> get ();
my @a_c = ($a_c1,$a_c2,$a_c3,$a_c4,$a_c5,$a_c6,$a_c7,$a_c8);

my $a_f1 = $ent_f1 -> get ();    # get all the values provided by user in boxes
my $a_f2 = $ent_f2 -> get ();
my $a_f3 = $ent_f3 -> get ();
my $a_f4 = $ent_f4 -> get ();
my $a_f5 = $ent_f5 -> get ();
my $a_f6 = $ent_f6 -> get ();
my $a_f1 = $ent_f1 -> get ();
my @a_f = ($a_f1,$a_f2,$a_f3,$a_f4,$a_f5,$a_f6);

my $a_t = $ent_t -> get ();

my $a_g = $gen -> get (); #moved up ALSO because it is required for ok_min
my $a_g_to = $gen_to -> get ();

$ff_e = $ff_entry -> get ();
$f_e_a = $frcmod_entry_a -> get ();
$f_e_b = $frcmod_entry_b -> get ();
$f_e_c = $frcmod_entry_c -> get ();
$l_e = $lib_entry -> get ();


my $g = $a_g;
my $cm = $number_core; # cm is core multiplicity #
my $i = 2;
my $fm = $number_frag; # fm is fragment multiplicity PREFERRED TO BE "2" only 

#debug  huangjianxiang

print "The core multiplicity:\n";
print $cm;
print "The fragment multiplicity:\n";
print $fm;



$term = $a_g;
$end_layer = $a_g;

## First layer of 'bbb' residues ## 
#open INIT
use File::Temp qw(tempfile);
$temp_layer1 = new File::Temp( UNLINK => 1 );

print $temp_layer1 "source leaprc.$ff_e\n","loadamberparams $f_e_a\n","loadamberparams $f_e_b\n","
loadamberparams $f_e_c\n","loadoff $l_e\n";
print $temp_layer1 "set bbb head bbb.1.$a_f[$number_frag]\n"; 
print $temp_layer1 "set ccc head ccc.1.$a_t\n";

my $x =0;
for (1..$cm)
{
print $temp_layer1 "set aaa tail aaa.1.$a_c[$x]\n","aaa = sequence {aaa bbb}\n";
$x++;
}
print $temp_layer1 "saveamberparm aaa dend1.prmtop dend1.inpcrd\n","quit\n";
#close INIT

$temp = 1;

$layer{$temp} = $temp_layer1; 



# remaining layers of 'bbb' residue

$qwerty = $a_g;
for ($a_g..$a_g_to)

{
$o = 2;
$a = 2;

for (1..$qwerty-1)
{
# open GENRTNS
use File::Temp qw(tempfile);
$temp_layer = new File::Temp( UNLINK => 1 );

print $temp_layer "source leaprc.$ff_e\n","loadamberparams $f_e_a\n","loadamberparams $f_e_b\n","loadamberparams $f_e_c\n","loadoff $l_e\n","aaa = loadmol2 USER",$o-1,".mol2\n","set bbb head bbb.1.$a_f[$number_frag]\n","set ccc head ccc.1.$a_t\n"; 

 for (1..$cm)
 {
  $y = 0;
  for (1..$fm)
    {
      print $temp_layer "set aaa tail aaa.$a.$a_f[$y]\n","aaa = sequence {aaa bbb}\n";
       $y++;
    }
  $a++;
 }
$cm = $cm*$fm;

print $temp_layer "saveamberparm aaa dend$o.prmtop dend$o.inpcrd\n","quit\n";
      
$layer{$o} = $temp_layer;


$o++;
#close GENRTNS
}

# terminal 'ccc' layer

use File::Temp qw(tempfile);
$temp_term = new File::Temp( UNLINK => 1 );

#open TERM

print $temp_term "source leaprc.$ff_e\n","loadamberparams $f_e_a\n","loadamberparams $f_e_b\n","loadamberparams $f_e_c\n","loadoff $l_e\n","aaa = loadmol2 USER",$o-1,".mol2\n","set bbb head bbb.1.$a_f[$number_frag]\n","set ccc head ccc.1.$a_t\n";
for (1..$cm)
 {
  $z = 0;
  for (1..$fm)
  {
   print $temp_term "set aaa tail aaa.$a.$a_f[$z]\n","aaa = sequence {aaa ccc}\n";
   $z++;
  }
 $a++;
 }
print $temp_term "saveamberparm aaa termL$term.prmtop termL$term.inpcrd\n","quit\n";
#close TERM

$layer_term{$term} = $temp_term;

$cm = $number_core;

$term++;
$qwerty++;
}

}) -> grid();

GetOptions ('info=s' => \$info);

if ($info)
{
if ($info <=2 or $info==999)
 {
print "GOOD value\n";

}

else
{print "SORRY!!! you provided BAD info value. Allowed values are 0, 1, 2 or 999\n","0 (DEFAULT value) will remove all unnecessary files\n","1 will keep last information \n","2 will keep last information and all *.out files\n","Now DBT will quit\n";
exit;
}
}
else
{$info = 0;}     ##to make it and set info default value
print "you selected info level $info\n";

$OK = $min -> Button (-text=>"OK",-background=>DarkSeaGreen,-command=> sub 
{

###
use File::Temp qw(tempfile);
$temp_ok_min = new File::Temp( UNLINK => 1 );

$a_g = $gen -> get ();
$a_g_to = $gen_to -> get ();

$dbt = 1;
for (1..$a_g_to)
{
print $temp_ok_min "tleap -f $layer{$dbt} \n","wait\n";
print $temp_ok_min "sander -O -i min.in -o dbt$dbt.out -c dend$dbt.inpcrd -p dend$dbt.prmtop -r dbt$dbt.rst\n","wait\n";
#print $temp_ok_min "top2mol2 -at amber -p dend$dbt.prmtop -c dbt$dbt.rst -o USER$dbt.mol2\n","wait\n";
#huangjianxiang
print $temp_ok_min "cpptraj -p dend$dbt.prmtop -y dbt$dbt.rst  -x USER$dbt.mol2\n","wait\n";
#huangjianxiang
print $temp_ok_min "perl -pi -e 's/aa......./aaa      /g' USER$dbt.mol2\n","wait\n";
print $temp_ok_min "perl -pi -e 's/bb......./bbb      /g' USER$dbt.mol2\n","wait\n";
$dbt++;
}

for ($a_g..$a_g_to)
{
print "$end_layer\n";
print $temp_ok_min "tleap -f $layer_term{$end_layer}\n","wait\n";
print $temp_ok_min "sander -O -i min.in -o termL$end_layer.out -c termL$end_layer.inpcrd -p termL$end_layer.prmtop -r termL$end_layer.rst\n","wait\n";
#print $temp_ok_min "top2mol2 -at amber -p termL$end_layer.prmtop -c termL$end_layer.rst -o L$end_layer.mol2\n","wait\n";
#huangjianxiang
print $temp_ok_min "cpptraj -p termL$end_layer.prmtop -y termL$end_layer.rst -x L$end_layer.mol2\n","wait\n";
#huangjianxiang
print $temp_ok_min "perl -pi -e 's/aa......./aaa      /g' L$end_layer.mol2\n","wait\n";
print $temp_ok_min "perl -pi -e 's/bb......./bbb      /g' L$end_layer.mol2\n","wait\n";
print $temp_ok_min "perl -pi -e 's/cc......./ccc      /g' L$end_layer.mol2\n","wait\n";
$end_layer++;
}

});


$min -> grid ();


$OK -> grid (-row=>5,-column=>3);

###
$sander = $min -> Button (-text=>"sander minimization",-background=>LightSkyBlue3,-command => sub 
{
system ("cp $temp_ok_min new_min");
system("chmod +x new_min");
system("./new_min");


if ($info==0)
{system ("rm *.prmtop *.inpcrd *.rst *.out USER*.mol2");}
if ($info==1)
{system ("rm dend*.prmtop dend*.inpcrd term*.inpcrd USER*.mol2 dbt*.rst dbt*.out ");}
if ($info==2)
{system ("rm dend*.prmtop dend*.inpcrd dbt*.rst");}
print "JOB DONE";

});

$arrow = $min -> Label (-text => "---->> now press sander");
$arrow -> grid (-row=>5,-column=>4);
$sander -> grid (-row=>5,-column=>5);

### quit and close

$quit = $mw -> Button(-text=>"quit", -background=> red, -command =>sub 
{
$bye = new MainWindow;
$authors = $bye -> Label(-text => "\n Please refer: J. Comput. Chem. 2012, 33, 1997-2011 \n\n Dendrimer Building Toolkit: Model Building and Characterization of Various Dendrimer Architectures \n\n Mail your Compliments, Suggestions, Errors or Querries at dbt.query\@gmail.com") -> grid();
$ok = $bye -> Button(-text=>"OK",-background=>red, -command =>sub {exit}) -> grid();
}) -> grid ();
MainLoop;
