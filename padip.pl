#!/usr/local/bin/perl

use Tk;
use warnings;
use Tk::Photo;



my $main = new MainWindow;
$main -> geometry ("1500x1500");


$main->title("WELCOME");
my @files = "title.gif";

for my $image (@files)
{
   my $shot = $main->Photo(-file => "$image");
   my $btn = $main->Button(-image => $shot)->pack();
   $btn->update;
   select(undef, undef, undef, .1);
}

my @files1 = "psgtech.gif";

for my $image1 (@files1)
{
   my $shot1 = $main->Photo(-file => "$image1");
   my $btn1 = $main->Button(-image => $shot1)->pack();
   $btn1->update;
   select(undef, undef, undef, .1);
}

my $label = $main -> Label(-text=>"\n\n\tPSG College of Technology is an autonomous, \ngovernment aided, private engineering college in Coimbatore, India. \nIt is affiliated to Anna University.",
                                -font=>"Verdana 18 bold") -> pack();


my $button = $main->Button( -text     => "      NEXT        ",
             -font       => 'Courier 14 bold',
             -background => 'Green',
             -command    =>\&IntroPage
  )->pack(   -side       => 'bottom',
             -ipadx      => 40
);

MainLoop;



sub IntroPage  {
$main->withdraw;
 $main =new MainWindow;
$main ->geometry("1500x1200");
$label = $main -> Label(-text=>"\n\n\tWELCOME TO PSG COLLEGE OF TECHNOLOGY",
                                -font=>"Verdana 20 bold") -> pack();
my @files = "g.gif";

for my $image (@files)
{
   my $shot = $main->Photo(-file => "$image");
   my $btn = $main->Button(-image => $shot)->pack();
   $btn->update;
   select(undef, undef, undef, .1);
}

my @files1 = "grd.gif";

for my $image1 (@files1)
{
   my $shot1 = $main->Photo(-file => "$image1");
   my $btn1 = $main->Button(-image => $shot1)->pack();
   $btn1->update;
   select(undef, undef, undef, .1);
}


 $label = $main -> Label(-text=>"\n\tVISION OF THE COLLEGE",  
                                -font=>"Verdana 18 bold") -> pack();
 $label = $main -> Label(-text=>"\nPSG College of Technology aspires to be recognised as\n one of the leaders in engineering education,\n research and application of knowledge to benefit society.",
                                -font=>"Verdana 10 bold") -> pack();


 $label = $main -> Label(-text=>"\tMISSION OF THE COLLEGE",
                                -font=>"Verdana 18 bold") -> pack();
 $label = $main -> Label(-text=>"\n\tProvide world-class EE Foster Research and Development.\n Ultimately mould young men and women capable of assuming leadership of the society for the\n betterment of the Country.",
                                -font=>"Verdana 10 bold") -> pack();


 $button = $main->Button( -text     => "      NEXT        ",
             -font       => 'Courier 14 bold',
             -background => 'Green',
             -command    =>\&MainPage
  )->pack(   -side       => 'bottom',
             -ipadx      => 40
);

}
MainLoop;

sub MainPage
{
$main->withdraw;
 $main =new MainWindow;
$main ->geometry("1500x1000");
my @files = "w3.gif";

for my $image (@files)
{
   my $shot = $main->Photo(-file => "$image");
   my $btn = $main->Button(-image => $shot)->pack();
   $btn->update;
   select(undef, undef, undef, .1);
}


my $button = $main->Button( -text       => "   TEACHERS ZONE   ",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&Teachers
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button1 = $main->Button( -text       => "   STUDENTS ZONE   ",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&Student
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button2 = $main->Button( -text => "EXIT",
                -font => 'Courier 14 bold',
                -background => 'Pink',
                -command =>sub{
                        $main->withdraw,
                        \&exitpgm
}
)->pack(        -side =>'bottom',
                -ipadx => 40
);

}



sub Teachers  {
$main->withdraw();
 $main = new MainWindow;
$main -> geometry ("1000x1000");
my @filest = "teacher 5.gif";

for my $imaget (@filest)
{
   my $shott = $main->Photo(-file => "$imaget");
   my $btnt = $main->Button(-image => $shott)->pack();
   $btnt->update;
   select(undef, undef, undef, .1);

}




my $label = $main -> Label(-text=>"PLEASE ENTER YOUR LOGIN DETAILS...",
				-font=>"Verdana 18 bold") -> pack();
$label = $main -> Label(-text=>"Username:") -> pack();
$ent_name = $main -> Entry() -> pack();
$label = $main -> Label(-text=>"Password:") -> pack();
$ent_pass = $main -> Entry(-show => '*') -> pack();
my $button1 = $main->Button( -text       => "SUBMIT",
             -font       => 'Courier 14 bold',
             -background => 'Green',
             -command    =>\&push_button
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

}



MainLoop;

sub push_button {
$entv_name = $ent_name->get();
$entv_pass = $ent_pass->get();

#------------------------------------------------------------------------------------------------------------
 if (( $entv_name eq "GEETHA" ) && ($entv_pass eq "786S"))
                     {
	$main->withdraw();
       $main = new MainWindow;
      $main ->geometry("1200x1200");
      my $label = $main->Label( -text  => "WELCOME TO OUR UNIX WORIX WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();
	my $button1 = $main->Button( -text => "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unix1
)->pack(        -side =>'top',
                -ipadx => 40
);

	my $button2 = $main->Button( -text => "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command=>\&unix2
)->pack(        -side =>'top',
                -ipadx => 40
);

	 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unixt
)->pack(        -side =>'top',
                -ipadx => 40
);

       my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unixsm
)->pack(        -side =>'top',
                -ipadx => 40
);

}

 elsif (( $entv_name eq "NADARAJAN" ) && ($entv_pass eq "786S"))
      { 
	$main->withdraw();
       $main = new MainWindow;
      $main ->geometry("1000x1000");
      my $label = $main->Label( -text  => "WELCOME TO OUR OBJECT ORIENTED ANALYSIS AND DESIGN WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();
     my $button1 = $main->Button( -text => "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooad1
)->pack(        -side =>'top',
                -ipadx => 40
);

        my $button2 = $main->Button( -text => "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooad2
)->pack(        -side =>'top',
                -ipadx => 40
);

 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooadt
)->pack(        -side =>'top',
                -ipadx => 40
);

      my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooadsm
)->pack(        -side =>'top',
                -ipadx => 40
);



}



 elsif (( $entv_name eq "ILAYARAJA" ) && ($entv_pass eq "786S"))
      {
	$main->withdraw();
       $main = new MainWindow;
      $main ->geometry("1000x1000");
      my $label = $main->Label( -text  => "WELCOME TO OUR C WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();
     my $button1 = $main->Button( -text =>  "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&c1
)->pack(        -side =>'top',
                -ipadx => 40
);

        my $button2 = $main->Button( -text =>  "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&c2
)->pack(        -side =>'top',
                -ipadx => 40
);

 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ct
)->pack(        -side =>'top',
                -ipadx => 40
);
     my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&csm
)->pack(        -side =>'top',
                -ipadx => 40
);






}


#---------------------------------------------------------------------------------------------------------



elsif (( $entv_name eq "ANITHA" ) && ($entv_pass eq "786S"))
     {
	$main->withdraw;
       $main = new MainWindow;
      $main ->geometry("1000x1000");
      my $label = $main->Label( -text  => "WELCOME TO OUR ADVANCED DATA STRUCTURE WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();

     my $button1 = $main->Button( -text => "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ads1
)->pack(        -side =>'top',
                -ipadx => 40
);

        my $button2 = $main->Button( -text => "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ads2
)->pack(        -side =>'top',
                -ipadx => 40
);

 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&adst
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&adssm
)->pack(        -side =>'top',
                -ipadx => 40
);



}
elsif (( $entv_name eq "SHINA" ) && ($entv_pass eq "786S"))
     {
	$main->withdraw;
       $main = new MainWindow;
      $main ->geometry("1000x1000");
      my $label = $main->Label( -text  => "WELCOME TO OUR TCP/IP NETWORKS AND APPLICATIONS WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();

     my $button1 = $main->Button( -text => "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcp1
)->pack(        -side =>'top',
                -ipadx => 40
);

        my $button2 = $main->Button( -text => "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcp2
)->pack(        -side =>'top',
                -ipadx => 40
);

 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcpt
)->pack(        -side =>'top',
                -ipadx => 40
);

my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcpsm
)->pack(        -side =>'top',
                -ipadx => 40
);


}



 elsif (( $entv_name eq "SENTHILKUMARAN" ) && ($entv_pass eq "786S"))
      {
	$main->withdraw;
       $main = new MainWindow;
      $main ->geometry("1000x1000");
      my $label = $main->Label( -text  => "WELCOME TO OUR OPERATING SYSTEM WORLD",
                        -width      => 55,
                        -font       => 'Adobe_Caslon_Pro_Bold 20 bold',
                        -background => 'Blue',
                        -relief     =>'groove',
                )->pack( -ipadx => 35 );
                $label->focus();
     my $button1 = $main->Button( -text => "     INTERNAL 1    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&os1
)->pack(        -side =>'top',
                -ipadx => 40
);

        my $button2 = $main->Button( -text =>   "     INTERNAL 2    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&os2
)->pack(        -side =>'top',
                -ipadx => 40
);

 my $button3 = $main->Button( -text => "      TUTORIALS    ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ostm
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button4 = $main->Button( -text => "  SEMESTER MARKS   ",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ossm
)->pack(        -side =>'top',
                -ipadx => 40
);


}

#------------------------------------------------------------------------------------------------------------
	else
                {
	  $main->messageBox(-message=> "Invalid Username/Password.....");

                }
}

MainLoop;




sub unix1 {
$main->withdraw;
 $main =new MainWindow;
$main->geometry("1500x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unix_m1
)->pack(        -side =>'top',
                -ipadx => 40
);
}



MainLoop;



sub unix_m1 {
$main->withdraw();
$main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_ui1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
		 foreach $value(@marks_ui1)  {
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }

       }
if($flag eq "1")        {
	$main->withdraw;
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_u1 , $sm1);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm2);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm3);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm4);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm5);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm6);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm7);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm8);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm9);
        push(@marks_u1 , "\n");
        push(@marks_u1 , $sm10);
        push(@marks_u1 , "\n");
        open(DATA, "+>unix_i1.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_u1;
        close(DATA);
        exit;
}

}


MainLoop;




sub unix2 {
$main->withdraw;
 $main =new MainWindow;
$main->geometry("1000x1000");
my $flag = 0;
  unless (open(MYFILE, "unix_i1.txt")) {
      if (-e "unix_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {  
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
 my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unix_m2
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}


MainLoop;

sub unix_m2	{
	$main->withdraw;
	$main =new MainWindow;
	my $flag = 0;
	my $h1 = 0;
	$sm1 = $m1->get();
	$sm1 =~ s/^\s+//;
	$sm2 = $m2->get();
	$sm2 =~ s/^\s+//;
	$sm3 = $m3->get();
	$sm3 =~ s/^\s+//;
	$sm4 = $m4->get();
	$sm4 =~ s/^\s+//;
	$sm5 = $m5->get();
	$sm5 =~ s/^\s+//;
	$sm6 = $m6->get();
	$sm6 =~ s/^\s+//;
	$sm7 = $m7->get();
	$sm7 =~ s/^\s+//;
	$sm8 = $m8->get();
	$sm8 =~ s/^\s+//;
	$sm9 = $m9->get();
	$sm9 =~ s/^\s+//;
	$sm10 = $m10->get();
	$sm10 =~ s/^\s+//;
	@marks_ui2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
 	foreach $value(@marks_ui2)  {
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
       }
if($flag eq "1")        {
	$main->withdraw;
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_u2 , $sm1);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm2);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm3);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm4);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm5);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm6);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm7);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm8);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm9);
        push(@marks_u2 , "\n");
        push(@marks_u2 , $sm10);
        push(@marks_u2 , "\n");
        open(DATA, "+>unix_i2.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_u2;
        close(DATA);
        exit;
	}
#	}
}



MainLoop;




sub unixt {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unix_tm
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;

sub unix_tm {
	$main->withdraw;
	$main =new MainWindow;
	$main->withdraw();
	 $main->messageBox(-message => "Tutorial");
	 my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_utm = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
	 foreach $value(@marks_utm)  {
                 if($value lt 0 || $value gt 10 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }

       }
if($flag eq "1")        {
	$main->withdraw;
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_ut1 , $sm1);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm2);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm3);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm4);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm5);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm6);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm7);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm8);
        push(@marks_ut1 , "\n");
        push(@marks_u1 , $sm9);
        push(@marks_ut1 , "\n");
        push(@marks_ut1 , $sm10);
        push(@marks_ut1 , "\n");
        open(DATA, "+>unix_t.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_ut1;
        close(DATA);
        exit;
}

}


MainLoop;

sub unixsm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "unix_i1.txt")) {
      if (-e "unix_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "unix_i2.txt")) {
      if (-e "unix_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "unix_t.txt")) {
      if (-e "unix_t.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {

my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
$m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&unix_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}

MainLoop;

sub unix_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_s = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_s)  {
               if($value lt 0 || $value gt 10 || $value eq '' )       {
                       $main->withdraw();
                        $main->messageBox(-message=> "Invalid marks");
                        $flag = 0;
                        exit;
                }
                else    {

                     $flag = 1;
                }
      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_us1 , $sm1);
       push(@marks_us1 , "\n");
        push(@marks_us1 , $sm2);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm3);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm4);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm5);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm6);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm7);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm8);
       push(@marks_us1 , "\n");
       push(@marks_us1 , $sm9);
        push(@marks_us1 , "\n");
        push(@marks_us1 , $sm10);
        push(@marks_us1 , "\n");
        open(DATA, "+>unix_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_us1;
        close(DATA);
        exit;
}
}
MainLoop;


sub ooad1 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooad_m1
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;

sub ooad_m1	{
	$main->withdraw();
	$main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_oi1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
	 foreach $value(@marks_oi1)  {
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }

      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_o1 , $sm1);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm2);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm3);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm4);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm5);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm6);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm7);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm8);
       push(@marks_o1 , "\n");
        push(@marks_o1 , $sm9);
        push(@marks_o1 , "\n");
        push(@marks_o1 , $sm10);
        push(@marks_o1 , "\n");
        open(DATA, "+>ooad_i1.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_o1;
        close(DATA);
        exit;
}
}


MainLoop;



sub ooad2 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
unless (open(MYFILE, "ooad_i1.txt")) {
      if (-e "ooad_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooad_m2
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}


MainLoop;

sub ooad_m2	{
$main->withdraw();
$main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_oi2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
    foreach $value(@marks_oi2)  { 
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }

      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_o2 , $sm1);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm2);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm3);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm4);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm5);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm6);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm7);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm8);
       push(@marks_o2 , "\n");
        push(@marks_o2 , $sm9);
        push(@marks_o2 , "\n");
        push(@marks_o2 , $sm10);
        push(@marks_o2 , "\n");
        open(DATA, "+>ooad_i2.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_o2;
        close(DATA);
        exit;
}

}


MainLoop;



sub ooadt {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ooad_tm
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;



sub ooad_tm      {
	$main->withdraw();	
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_otm = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_otm)  {
               if($value lt 0 || $value gt 10 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_otm , $sm1);
        push(@marks_otm , "\n");
      push(@marks_otm , $sm2);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm3);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm4);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm5);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm6);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm7);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm8);
       push(@marks_otm , "\n");
        push(@marks_otm , $sm9);
        push(@marks_otm , "\n");
        push(@marks_otm , $sm10);
        push(@marks_otm , "\n");
        open(DATA, "+>ooad_tm.txt") or die "Couldn't open file file.txt, $!";
       print DATA @marks_otm;
        close(DATA);
        exit;
}
}

MainLoop;




sub ooadsm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "ooad_i1.txt")) {
      if (-e "ooad_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "ooad_i2.txt")) {
      if (-e "ooad_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "ooad_tm.txt")) {
      if (-e "ooad_t.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
$m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
               -background => 'Green',
                -command =>\&ooad_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}

MainLoop;



sub ooad_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
       $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_o = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_o)  {
               if($value lt 0 || $value gt 10 || $value eq '' )       {
		        $main->withdraw();
                        $main->messageBox(-message=> "Invalid marks");
                        $flag = 0;
                        exit;
                }
                else    {
                     $flag = 1;
                }
     }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_oos1 , $sm1);
       push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm2);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm3);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm4);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm5);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm6);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm7);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm8);
     push(@marks_oos1 , "\n");
       push(@marks_oos1 , $sm9);
        push(@marks_oos1 , "\n");
        push(@marks_oos1 , $sm10);
        push(@marks_oos1 , "\n");
        open(DATA, "+>ooad_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_oos1;
        close(DATA);
        exit;
}
}
MainLoop;







#---------------------------

sub c1 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&c_m1
)->pack(        -side =>'top',
                -ipadx => 40
);
}

sub c_m1	{
	
	$main->wihdraw();
	$main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_ci1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_ci1)  { 
 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                } 
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_c1 , $sm1); 
        push(@marks_c1 , "\n"); 
      push(@marks_c1 , $sm2); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm3); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm4); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm5); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm6); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm7); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm8); 
       push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm9); 
        push(@marks_c1 , "\n"); 
        push(@marks_c1 , $sm10); 
        push(@marks_c1 , "\n"); 
        open(DATA, "+>c_i1.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_c1; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 


sub c2 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
unless (open(MYFILE, "c_i1.txt")) {
      if (-e "c_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main-> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&c_m2
)->pack(        -side =>'top',
                -ipadx => 40
);
}

sub c_m2	{
	$main->withdraw();
   $main =new MainWindow;
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_ci2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_ci2)  { 
               if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_c2 , $sm1); 
        push(@marks_c2 , "\n"); 
      push(@marks_c2 , $sm2); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm3); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm4); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm5); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm6); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm7); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm8); 
       push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm9); 
        push(@marks_c2 , "\n"); 
        push(@marks_c2 , $sm10); 
        push(@marks_c2 , "\n"); 
        open(DATA, "+>c_i2.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_c2; 
        close(DATA); 
        exit; 
} 
}
} 


MainLoop; 

sub ct {
$main->withdraw();
 $main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main-> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&c_tm
)->pack(        -side =>'top',
                -ipadx => 40
);
}

sub c_tm	{
	$main->withdraw();

	$main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_ct = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_ct)  { 
                if($value lt 0 || $value gt 10 || $value eq '' )       { 
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_t , $sm1); 
        push(@marks_t , "\n"); 
      push(@marks_t , $sm2); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm3); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm4); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm5); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm6); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm7); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm8); 
       push(@marks_t , "\n"); 
        push(@marks_t , $sm9); 
        push(@marks_t , "\n"); 
        push(@marks_t , $sm10); 
        push(@marks_t , "\n"); 
        open(DATA, "+>c_tm.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_t; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 
	


sub csm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "c_i1.txt")) {
      if (-e "c_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "c_i2.txt")) {
      if (-e "c_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "c_tm.txt")) {
      if (-e "c_tm.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {

my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PW01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PW02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pw03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12pw04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12pw05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12pw06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12pw07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12pw08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12pw09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12pw10:") -> pack();
$m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
               -background => 'Green',
                -command =>\&c_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}
MainLoop;





sub c_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
       $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_cs = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_cs)  {
               if($value lt 0 || $value gt 10 || $value eq '' )       {
                       $main->withdraw();
                        $main->messageBox(-message=> "Invalid marks");
                        $flag = 0;
                        exit;
                }
                else    {
                     $flag = 1;
                }
     }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_cs1 , $sm1);
       push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm2);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm3);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm4);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm5);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm6);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm7);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm8);
     push(@marks_cs1 , "\n");
       push(@marks_cs1 , $sm9);
        push(@marks_cs1 , "\n");
        push(@marks_cs1 , $sm10);
        push(@marks_cs1 , "\n");
        open(DATA, "+>c_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_cs1;
        close(DATA);
        exit;
}
}

MainLoop;






#---------------------------

#TeChies------------------------






sub ads1 {
$main->withdraw();
 $main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main-> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ads_i1
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;


sub ads_i1      {
	$main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
       $sm9 =~ s/^\s+//; 
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_adsi1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_adsi1)  {
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_ads1 , $sm1);
        push(@marks_ads1 , "\n");
      push(@marks_ads1 , $sm2);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm3);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm4);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm5);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm6);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm7);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm8);
       push(@marks_ads1, "\n");
        push(@marks_ads1 , $sm9);
        push(@marks_ads1 , "\n");
        push(@marks_ads1 , $sm10);
        push(@marks_ads1 , "\n");
        open(DATA, "+>ads_i1.txt") or die "Couldn't open file file.txt, $!";
       print DATA @marks_ads1;
        close(DATA);
        exit;
}

}
MainLoop;




sub ads2 {
$main->withdraw();
 $main =new MainWindow;
$main->geometry("1000x1000");

unless (open(MYFILE, "ads_i1.txt")) {
      if (-e "ads_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ads_i2
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}


MainLoop;




sub ads_i2      {
	$main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
       $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
       $sm9 =~ s/^\s+//;   
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_adsi2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_adsi2)  {
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_ads2 , $sm1);
        push(@marks_ads2 , "\n");
      push(@marks_ads2 , $sm2);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm3);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm4);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm5);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm6);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm7);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm8);
       push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm9);
        push(@marks_ads2 , "\n");
        push(@marks_ads2 , $sm10);
        push(@marks_ads2 , "\n");
        open(DATA, "+>ads_i2.txt") or die "Couldn't open file file.txt, $!";
       print DATA @marks_ads2;
        close(DATA);
        exit;
}
}
MainLoop;

sub adst {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main-> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&ads_tm
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;


sub ads_tm      {
	$main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
        $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
       $sm9 =~ s/^\s+//;    
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_adstm = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_adstm)  {
                 if($value lt 0 || $value gt 10 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_adst , $sm1);
        push(@marks_adst , "\n");
      push(@marks_adst , $sm2);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm3);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm4);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm5);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm6);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm7);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm8);
       push(@marks_adst , "\n");
        push(@marks_adst , $sm9);
        push(@marks_adst , "\n");
        push(@marks_adst , $sm10);
        push(@marks_adst , "\n");
        open(DATA, "+>ads_tm.txt") or die "Couldn't open file file.txt, $!";
       print DATA @marks_adst;
        close(DATA);
        exit;
}
}
MainLoop;


sub adssm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "ads_i1.txt")) {
      if (-e "ads_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "ads_i2.txt")) {
      if (-e "ads_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "ads_tm.txt")) {
      if (-e "ads_tm.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {

my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
$m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
               -background => 'Green',
                -command =>\&ads_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}

MainLoop;



sub ads_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
       $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_adss = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_adss)  {
               if($value lt 0 || $value gt 10 || $value eq '' )       {
                       $main->withdraw();
                        $main->messageBox(-message=> "Invalid marks");
                        $flag = 0;
                        exit;
			}

                else    {
                     $flag = 1;
                }
     }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_as1 , $sm1);
       push(@marks_as1 , "\n");
        push(@marks_as1 , $sm2);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm3);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm4);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm5);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm6);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm7);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm8);
     push(@marks_as1 , "\n");
       push(@marks_as1 , $sm9);
        push(@marks_as1 , "\n");
        push(@marks_as1 , $sm10);
        push(@marks_as1 , "\n");
        open(DATA, "+>ads_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_as1;
        close(DATA);
        exit;
}
}

MainLoop;




#-----------------------------------------

sub tcp1 {
$main->withdraw();
 $main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcp_i1
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;

sub tcp_i1	{
	$main->withdraw();
	$main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_tcpi1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_tcpi1)  { 
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_tcp1 , $sm1); 
        push(@marks_tcp1 , "\n"); 
      	push(@marks_tcp1 , $sm2); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm3); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm4); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm5); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm6); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm7); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm8); 
       	push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm9); 
        push(@marks_tcp1 , "\n"); 
        push(@marks_tcp1 , $sm10); 
        push(@marks_tcp1 , "\n"); 
        open(DATA, "+>tcp_i1.txt") or die "Couldn't open file file.txt, $!"; 
       	print DATA @marks_tcp1; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 

sub tcp2 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $flag =0;
unless (open(MYFILE, "tcp_i1.txt")) {
      if (-e "tcp_i1.txt") {
         # if (-e "file1") {

                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main-> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main-> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcp_m2
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}


MainLoop;


sub tcp_m2	{
	$main->withdraw();
	$main =new MainWindow;
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_tcpi2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_tcpi2)  { 
                if($value lt 0 || $value gt 30 || $value eq '' )       { 
                        $main->withdraw(); 
                        $main->messageBox(-message=> "Invalid marks"); 
                        $flag = 0; 
                        exit; 
                } 
                else    { 
                       $flag = 1; 
                } 
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_tcp2 , $sm1); 
        push(@marks_tcp2 , "\n"); 
      	push(@marks_tcp2 , $sm2); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm3); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm4); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm5); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm6); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm7); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm8); 
       	push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm9); 
        push(@marks_tcp2 , "\n"); 
        push(@marks_tcp2 , $sm10); 
        push(@marks_tcp2 , "\n"); 
        open(DATA, "+>tcp_i2.txt") or die "Couldn't open file file.txt, $!"; 
       	print DATA @marks_tcp2; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 

sub tcpt {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12pT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&tcp_t
)->pack(        -side =>'top',
                -ipadx => 40
);
}


MainLoop;

sub tcp_t	{
	$main->withdraw();
	   $main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;      
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_t = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_t)  { 
                if($value lt 0 || $value gt 10 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                } 
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_tcp , $sm1); 
        push(@marks_tcp , "\n"); 
      push(@marks_tcp , $sm2); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm3); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm4); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm5); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm6); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm7); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm8); 
       push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm9); 
        push(@marks_tcp , "\n"); 
        push(@marks_tcp , $sm10); 
        push(@marks_tcp , "\n"); 
        open(DATA, "+>tcp_t.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_tcp; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 



sub tcpsm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "tcp_i1.txt")) {
      if (-e "tcp_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "tcp_i2.txt")) {
      if (-e "tcp_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "tcp_t.txt")) {
      if (-e "tcp_t.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
               -background => 'Green',
                -command =>\&tcp_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}

MainLoop;




sub tcp_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
       $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_ts = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_ts)  {
               if($value lt 0 || $value gt 10 || $value eq '' )     {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                }

                else    {
                                $flag = 1;
                        }
     }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_ts1 , $sm1);
       push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm2);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm3);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm4);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm5);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm6);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm7);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm8);
     push(@marks_ts1 , "\n");
       push(@marks_ts1 , $sm9);
        push(@marks_ts1 , "\n");
        push(@marks_ts1 , $sm10);
        push(@marks_ts1 , "\n");
        open(DATA, "+>tcp_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_ts1;
        close(DATA);
        exit;
}
}

MainLoop;



#-------------------------------

sub os1 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&os_m1
)->pack(        -side =>'top',
                -ipadx => 40
);
}

sub os_m1	{
	$main->withdraw();
	$main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_osi1 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_osi1)  { 
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                }
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_os1 , $sm1); 
        push(@marks_os1 , "\n"); 
      push(@marks_os1 , $sm2); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm3); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm4); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm5); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm6); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm7); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm8); 
       push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm9); 
        push(@marks_os1 , "\n"); 
        push(@marks_os1 , $sm10); 
        push(@marks_os1 , "\n"); 
        open(DATA, "+>os_i1.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_os1; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 


sub os2 {
$main->withdraw();
$main =new MainWindow;
$main->geometry("1000x1000");
unless (open(MYFILE, "os_i1.txt")) {
      if (-e "os_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
if($flag eq "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }

 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&os_m2
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}


sub os_m2	{
	$main->withdraw();
	$main =new MainWindow;
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_oqs2 = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_oqs2)  { 
                 if($value lt 0 || $value gt 30 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                } 
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_os2 , $sm1); 
        push(@marks_os2 , "\n"); 
      push(@marks_os2 , $sm2); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm3); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm4); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm5); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm6); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm7); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm8); 
       push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm9); 
        push(@marks_os2 , "\n"); 
        push(@marks_os2 , $sm10); 
        push(@marks_os2 , "\n"); 
        open(DATA, "+>os_i2.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_os2; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 

sub ostm {
$main->withdraw();

$main =new MainWindow;
$main->geometry("1000x1000");
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
                -background => 'Green',
                -command =>\&os_t
)->pack(        -side =>'top',
                -ipadx => 40
);
}


sub os_t	{
	$main->withdraw();
	   $main =new MainWindow; 
        my $flag = 0; 
        $sm1 = $m1->get(); 
        $sm1 =~ s/^\s+//; 
        $sm2 = $m2->get(); 
        $sm2 =~ s/^\s+//; 
        $sm3 = $m3->get(); 
        $sm3 =~ s/^\s+//; 
        $sm4 = $m4->get(); 
        $sm4 =~ s/^\s+//; 
        $sm5 = $m5->get(); 
        $sm5 =~ s/^\s+//; 
        $sm6 = $m6->get(); 
        $sm6 =~ s/^\s+//; 
        $sm7 = $m7->get(); 
        $sm7 =~ s/^\s+//; 
        $sm8 = $m8->get(); 
        $sm8 =~ s/^\s+//; 
        $sm9 = $m9->get(); 
        $sm9 =~ s/^\s+//;     
        $sm9 =~ s/^\s+//; 
        $sm10 = $m10->get(); 
        $sm10 =~ s/^\s+//; 
        @marks_ost = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10"); 
        foreach $value(@marks_ost)  { 
                 if($value lt 0 || $value gt 10 || $value eq ''  )       {
                        if($value eq "ab")      {
                                $flag = 1;
                        }

                        else    {
                                 $main->withdraw();
                                $main->messageBox(-message=> "Invalid marks");
                                $flag = 0;
                                exit;
                        }
                }

                else    {
                        if($flag eq "ab")       {
                                $flag = 1;
                        }
                       $flag = 1;
                } 
      } 
if($flag eq "1")        { 
        $main->withdraw(); 
        $main->messageBox(-message => "Your marks successfully entered"); 
        push(@marks_ost , $sm1); 
        push(@marks_ost , "\n"); 
      push(@marks_ost , $sm2); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm3); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm4); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm5); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm6); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm7); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm8); 
       push(@marks_ost , "\n"); 
        push(@marks_ost , $sm9); 
        push(@marks_ost , "\n"); 
        push(@marks_ost , $sm10); 
        push(@marks_ost , "\n"); 
        open(DATA, "+>os_t.txt") or die "Couldn't open file file.txt, $!"; 
       print DATA @marks_ost; 
        close(DATA); 
        exit; 
} 

} 


MainLoop; 

sub ossm {
$main-> withdraw;
$main =new MainWindow;
$main->geometry("1000x1000");
        my $hs1 = 0;
unless (open(MYFILE, "os_i1.txt")) {
      if (-e "os_i1.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }

  }
unless (open(MYFILE, "os_i2.txt")) {
      if (-e "os_i2.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hs1++;
          }
  }
unless (open(MYFILE, "os_t.txt")) {
      if (-e "os_t.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hs1++;
          }
  }
if($hs1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {
my $title = $main -> Label(-text=>"ENTER THE MARKS",-font=>"Verdana 18 bold") -> pack();
 $name1 = $main -> Label(-text=>"12PT01:") -> pack();
 $m1 = $main -> Entry() -> pack();
 $name2 = $main -> Label(-text=>"12PT02:") -> pack();
 $m2 = $main -> Entry() -> pack();
 $name3 = $main -> Label(-text=>"12PT03:") -> pack();
 $m3 = $main -> Entry() -> pack();
 $name4 = $main -> Label(-text=>"12PT04:") -> pack();
 $m4 = $main -> Entry() -> pack();
 $name5 = $main -> Label(-text=>"12PT05:") -> pack();
 $m5 = $main -> Entry() -> pack();
 $name6 = $main -> Label(-text=>"12PT06:") -> pack();
 $m6 = $main -> Entry() -> pack();
 $name7 = $main -> Label(-text=>"12PT07:") -> pack();
 $m7 = $main -> Entry() -> pack();
 $name8 = $main -> Label(-text=>"12PT08:") -> pack();
 $m8 = $main -> Entry() -> pack();
 $name9 = $main -> Label(-text=>"12PT09:") -> pack();
 $m9 = $main -> Entry() -> pack();
 $name10 = $main -> Label(-text=>"12PT10:") -> pack();
 $m10 = $main -> Entry() -> pack();
my $button3 = $main->Button( -text => "SUBMIT",
                -font => 'Courier 14 bold',
               -background => 'Green',
                -command =>\&os_sfm
)->pack(        -side =>'top',
                -ipadx => 40
);
}
}
MainLoop;

sub os_sfm {
    $main->withdraw();
        $main =new MainWindow;
        my $flag = 0;
        $sm1 = $m1->get();
        $sm1 =~ s/^\s+//;
        $sm2 = $m2->get();
        $sm2 =~ s/^\s+//;
        $sm3 = $m3->get();
        $sm3 =~ s/^\s+//;
        $sm4 = $m4->get();
        $sm4 =~ s/^\s+//;
        $sm5 = $m5->get();
        $sm5 =~ s/^\s+//;
        $sm6 = $m6->get();
        $sm6 =~ s/^\s+//;
        $sm7 = $m7->get();
        $sm7 =~ s/^\s+//;
       $sm8 = $m8->get();
        $sm8 =~ s/^\s+//;
        $sm9 = $m9->get();
        $sm9 =~ s/^\s+//;
        $sm10 = $m10->get();
        $sm10 =~ s/^\s+//;
        @marks_oss = ("$sm1","$sm2","$sm3","$sm4","$sm5","$sm6","$sm7","$sm8","$sm9","$sm10");
        foreach $value(@marks_oss)  {
               if($value lt 0 || $value gt 10 || $value eq '' )       {
                       $main->withdraw();
                        $main->messageBox(-message=> "Invalid marks");
                        $flag = 0;
                        exit;
                }
                else    {
                     $flag = 1;
                }
     }
if($flag eq "1")        {
        $main->withdraw();
        $main->messageBox(-message => "Your marks successfully entered");
        push(@marks_oss1 , $sm1);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm2);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm3);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm4);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm5);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm6);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm7);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm8);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm9);
        push(@marks_oss1 , "\n");
        push(@marks_oss1 , $sm10);
        push(@marks_oss1 , "\n");
        open(DATA, "+>os_sm.txt") or die "Couldn't open file file.txt, $!";
        print DATA @marks_oss1;
        close(DATA);
        exit;
}
}
MainLoop;



sub Student{
$main->withdraw;
system($^X, "padipstud.pl");
}


sub exitpgm
{
 exit;
}


