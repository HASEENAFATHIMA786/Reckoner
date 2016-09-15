#!/usr/bin/perl


use Tk;
use warnings;

 $main =new MainWindow;
$main ->geometry("800x800");
$main->title("WELCOME");
my @files = "Students.gif";

for my $image (@files)
{
   my $shot = $main->Photo(-file => "$image");
   my $btn = $main->Button(-image => $shot)->pack();
   $btn->update;
   select(undef, undef, undef, .1);
}


my $button3 = $main->Button( -text => "    SOFTWARE ENGINEERING    ",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&roll_softie
)->pack(        -side =>'top',
                -ipadx => 40
);

my $button4 = $main->Button( -text => "THEORITICAL COMPUTER SCIENCE",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&roll_techie
)->pack(        -side =>'top',
                -ipadx => 40
);

MainLoop;

sub display_softie	{
$main->withdraw();
$main = new MainWindow;
$main->geometry("500x500");
	my $button = $main->Button( -text       => "    ATTENDANCE     ",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&att_disp_softie
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button1 = $main->Button( -text       =>        "   CA TIME TABLE   ",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&CA_TIMESOF
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button2 = $main->Button( -text =>              "SEMESTER TIME TABLE",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&sem_soft
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button3 = $main->Button( -text =>              "       CA MARKS    ",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&CA_softie
)->pack(        -side =>'top',
                -ipadx => 40
);

my $button4 = $main->Button( -text =>              "    SEMESTER MARKS ",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&sem_softies
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button5 = $main->Button( -text => "EXIT",
                -font => 'Courier 14 bold',
                -background => 'Pink',
                -command =>\&exitpgm
)->pack(        -side =>'bottom',
                -ipadx => 40
);

}
MainLoop;

sub roll_softie {
$main->withdraw();
$main =new MainWindow;
$main ->geometry("800x800");
$main->title("WELCOME");
my $label = $main -> Label(-text=>"     ALL THE BEST SOFTWARE ENGINEERS.....",
                                -font=>"Verdana 18 bold") -> pack();
$label = $main -> Label(-text=>"PLEASE ENTER YOUR NUMBER  (12PW**)...") -> pack();
$rollnum = $main -> Entry() -> pack();
my $button1 = $main->Button( -text       => "SUBMIT",
             -font       => 'Courier 14 bold',
             -background => 'Green',
             -command    =>\&display_softie
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

}
MainLoop;

sub att_disp_softie	{
	$main->withdraw();
	$main = new MainWindow;
	$roll = $rollnum ->get();
	$roll =~ s/^\s+//;
	$roll =~ s/\s+$//;
	$main->withdraw();
	if($roll eq '' || $roll < 01 || $roll > 10) {
       		 $main->withdraw();
        	$main -> messageBox(-message => "Invalid roll number");exit;
	}
	
	
	else	{
		$count = "01";
		$flag_unix = 0;
		open(DATA, "<unix_att.txt") or die "Couldn't open file file.txt, $!";
		foreach $value(<DATA>)	{
			if($count eq $roll)     {
                        	$main->withdraw();
				 $unix_att = $value;
                        	$flag_unix = 1;
				$count++;
                	}
                	   else    {
        	                $count++;
                	}
		}
	
		close(DATA);
		$count_ooad = "01";
		$flag_ooad = 0;
		open(DATA_ooad , "<ooad_att.txt") or die "couldnt open file,$!";
		foreach $value(<DATA_ooad>)	{
			 if($count_ooad eq $roll)     {
                        	$main->withdraw();
                        	 $ooad_att = $value;
                        	$flag_ooad = 1;
                        	$count_ooad++;
                	}
                   	else    {
                        	$count_ooad++;
                	}
		}
		close(DATA_ooad);

		$count_c = "01";
                $flag_c = 0;
                open(DATA_c , "<c_att.txt") or die "couldnt open file,$!";
                foreach $value(<DATA_c>)     {
                         if($count_c eq $roll)     {
                                $main->withdraw();
                                 $c_att = $value;
                                $flag_c = 1;
                                $count_c++;
                        }
                        else    {
                                $count_c++;
                        }
                }
                close(DATA_c);

		



		
        
        	if($flag_unix eq "0" || $flag_ooad eq "0" || $flag_c eq "0")        {
                	$main->withdraw();
                 	$main -> messageBox(-message => "No such roll num");
                	exit;
        	}

		else {
format STUDENT =
===========================================
@<<<<<<<<<<<<<<< @<<<<<<<<< 
   	$sub , $atten

.
format STUDENT_TOP =
#==========================================================
subject          Attendance
============================================
.
select(STDOUT);
$~ = STUDENT;
$^ = STUDENT_TOP;
		 	@subj = ("unix","ooad","c");
                        @mark_1 = ("$unix_att", "$ooad_att","$c_att");
                        $i = 0;
                        foreach(@subj)  {
                                $sub = $_;
                                $atten = $mark_1[$i];
                                $i++;
                                write;

                        }		
			exit;
		


		}
	




 	}


}


sub display_tcs	{

		$main->withdraw();
		$main = new MainWindow;
		$main->geometry("500x500");
	my $button = $main->Button( -text       => "ATTENDANCE",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&att_disp_tcs
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button1 = $main->Button( -text       => "CA TIME TABLE",
             -font       => 'Courier 14 bold',
             -background => 'Red',
             -command    =>\&ca_tcs
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

my $button2 = $main->Button( -text => "SEMESTER TIME TABLE",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&sem_techie
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button3 = $main->Button( -text => "CA MARKS",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&CA_tcs
)->pack(        -side =>'top',
                -ipadx => 40
);

my $button4 = $main->Button( -text => "SEMESTER MARKS",
                -font => 'Courier 14 bold',
                -background => 'Red',
                -command =>\&sem_tcs
)->pack(        -side =>'top',
                -ipadx => 40
);


my $button5 = $main->Button( -text => "EXIT",
                -font => 'Courier 14 bold',
                -background => 'Pink',
                -command =>\&exitpgm
)->pack(        -side =>'bottom',
                -ipadx => 40
);




}


sub roll_techie	{
		$main->withdraw();
$main =new MainWindow;
$main ->geometry("800x800");
$main->title("WELCOME");
my $label = $main -> Label(-text=>"     ALL THE BEST SOFTWARE ENGINEERS.....",
                                -font=>"Verdana 18 bold") -> pack();
$label = $main -> Label(-text=>"PLEASE ENTER YOUR NUMBER  (12PT**)...") -> pack();
$rollnum = $main -> Entry() -> pack();
my $button1 = $main->Button( -text       => "SUBMIT",
             -font       => 'Courier 14 bold',
             -background => 'Green',
             -command    =>\&display_tcs
  )->pack(   -side       => 'top',
             -ipadx      => 40
);

}
MainLoop;

sub att_disp_tcs	{
	
$main->withdraw();
	$main = new MainWindow;
	$roll = $rollnum ->get();
	$roll =~ s/^\s+//;
	$roll =~ s/\s+$//;
	$main->withdraw();
	#$main ->messageBox(-message=>"$roll" );
	if($roll eq '' || $roll < 01 || $roll > 10) {
       		 $main->withdraw();
        	$main -> messageBox(-message => "Invalid roll number");
       		 exit;
	}
	else	{
		$count = "01";
		$flag_tcp = 0;
		open(DATA, "<tcp_att.txt") or die "Couldn't open file file.txt, $!";
		foreach $value(<DATA>)	{
			if($count eq $roll)     {
                        	$main->withdraw();
				 $tcp_att = $value;
                        	$main -> messageBox(-message => "your attendance in unix is $tcp_att");
                        	$flag_tcp = 1;
				$count++;
                	}
                	   else    {
        	                $count++;
                	}
		}
	
		close(DATA);
		$count_ads = "01";
		$flag_ads = 0;
		open(DATA_ads , "<ads_att.txt") or die "couldnt open file,$!";
		foreach $value(<DATA_ads>)	{
			 if($count_ads eq $roll)     {
                        	$main->withdraw();
                        	 $ads_att = $value;
                        	$main -> messageBox(-message => "your attendance in ooad is $ads_att");
                        	$flag_ads = 1;
                        	$count_ads++;
                	}
                   	else    {
                        	$count_ads++;
                	}
		}
		close(DATA_ads);
		$count_os = "01";
		$flag_os = 0;
		open(DATA_os , "<os_att.txt") or die "couldnt open fie,$!";
		 foreach $value(<DATA_os>)       {
                         if($count_os eq $roll)     {
                                $main->withdraw();
                                 $os_att = $value;
                               $main -> messageBox(-message => "your attendance in c is $os_att");
                                $flag_os = 1;
                                $count_os++;
				print "\n";
				print "RollNumber :12pt$roll";
				print "\n";
                        }
                        else    {
                                $count_os++;
                      }
                }



		
        
        	if($flag_tcp eq "0" || $flag_os eq "0" || $flag_ads eq "0")        {
                	$main->withdraw();
                 	$main -> messageBox(-message => "No such roll num");
                	exit;
        	}

		else {
format STUDENTTCS =
===========================================
@<<<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<
	$sub ,  $atten

.
format STUDENTTCS_TOP =
#==========================================================
subject         	     	Attendance
============================================
.
select(STDOUT);
$~ = STUDENTTCS;
$^ = STUDENTTCS_TOP;
		 	@subj = ("ADS","Operating Systems","TCP/IP");
                        @mark_1 = ("$ads_att", "$os_att","$tcp_att");
                        $i = 0;
                        foreach(@subj)  {
                                $sub = $_;
                                $atten = $mark_1[$i];
                                $i++;
                                write;

                        }		
			exit;
		


		}
	




 	}


}

sub CA_softie	{
	$main->withdraw();
	$main = new MainWindow;
	$main->geometry("500x500");
	$roll = $rollnum ->get();
        $roll =~ s/^\s+//;
        $roll =~ s/\s+$//;
	my $flag = 1;
	if($roll eq '' || $roll < 01 || $roll > 10)	{
		$main->withdraw();
		$main->messageBox(-message => "Invalid roll num");

	}


	else	{
	unless (open(MYFILE, "unix_i1.txt")) {
      	if (-e "unix_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
 	$main->withdraw();
        $unix_m1 = "*";
      }
       else
		{		
		$count = "01";
                $flag_unix = 0;
                open(DATA, "<unix_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA>)  {
                        if($count eq $roll)     {
                                $main->withdraw();
                                 $unix_m1 = $value;
                           #  $main -> messageBox(-message => "your marks in unix is $unix_m1");
                                $flag_unix = 1;
                                $count++;
                        }
                           else    {
                                $count++;
                        }
                }

                close(DATA);
}
$flag = 1;

unless (open(MYFILE, "unix_i2.txt")) {
        if (-e "unix_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $unix_m2 = "*";     
      }
       else
                {               
		$count1 = "01";
                $flag_unix1 = 0;
               open(DATAu2, "<unix_i2.txt") or die "Couldn't open file file.txt, $!";

                foreach $value(<DATAu2>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $unix_m2 = $value;
                                $flag_unix1 = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATAu2);
	}

$flag = 1;
unless (open(MYFILE, "unix_t.txt")) {
        if (-e "unix_t.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $unix_tm = "*";     
      }
       else
                {               
		 $count2 = "01";
                $flag_unix2 = 0;
                open(DATAt, "<unix_t.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATAt>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $unix_tm = $value;
                                $flag_unix2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATAt);
		}
$flag = 1;
unless (open(MYFILE, "ooad_i1.txt")) {
        if (-e "ooad_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ooad_m1 = "*";     
      }
       else
                {               
		$count1 = "01";
                $flag_ooad = 0;
                open(DATA_ooad, "<ooad_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ooad>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $ooad_m1 = $value;
                                $flag_ooad = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATA_ooad);
		}
$flag = 1;
unless (open(MYFILE, "ooad_i2.txt")) {
        if (-e "ooad_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ooad_m2 = "*";
      }
       else
                {
		$count2 = "01";
                $flag_ooad2 = 0;
                open(DATA_ooad2, "<ooad_i2.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ooad2>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $ooad_m2 = $value;
                                $flag_ooad2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATA_ooad2);
}
$flag = 1;
unless (open(MYFILE, "ooad_tm.txt")) {
        if (-e "ooad_tm.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ooad_tm = "*";
      }
       else
                {
		$count3 = "01";
                $flag_ooadt = 0;
                open(DATAt, "<ooad_tm.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATAt>)  {
                        if($count3 eq $roll)     {
                                $main->withdraw();
                                $ooad_tm = $value ;
                                $flag_ooadt = 1;
                                $count3++;
                        }
                           else    {
                                $count3++;
                        }
                }

                close(DATAt);
	}

$flag = 1;
unless (open(MYFILE, "c_i1.txt")) {
        if (-e "c_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $c_m1 = "*";
      }
       else
                {
		 $count1 = "01";
                $flag_c1 = 0;
                open(DATA_c1, "<c_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_c1>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $c_m1 = $value;
                                $flag_c1 = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATA_c1);
	}
$flag = 1;
	unless (open(MYFILE, "c_i2.txt")) {
        if (-e "c_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $c_m2 = "*";
      }
       else
                {
	
	 $count2 = "01";
                $flag_c2 = 0;
                open(DATA_c2, "<c_i2.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_c2>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $c_m2 = $value;
                                $flag_c2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATA_c2);
	}
$flag = 1;
unless (open(MYFILE, "c_tm.txt")) {
        if (-e "c_tm.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $c_tm = "*";
      }
       else
                {	
	 $count3 = "01";
                $flag_ct = 0;
                open(DATA_ct, "<c_tm.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ct>)  {
                        if($count3 eq $roll)     {
                                $main->withdraw();
                                 $c_tm = $value;
                                $flag_ct = 1;
                                $count3++;
		
                        }
                           else    {
                                $count3++;
                        }
		
                }

                close(DATA_ct);
}	
unless (open(MYFILE, "unix_att.txt")) {
        if (-e "ooad_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ooad_m1 = "*";
      }
       else
                {
	$count_att1 = "01";
                $flag_att1 = 0;
                open(DATA_att1, "<unix_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att1>)  {
                        if($count_att1 eq $roll)     {
                                $main->withdraw();
                                 $unix_att = $value;
                                $flag_att1 = 1;
                                $count_att1++;
                             
                        }
                           else    {
                                $count_att1++;
                        }

                }

                close(DATA_att1);
		$count_att2 = "01";
                $flag_att2 = 0;
                open(DATA_att2, "<ooad_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att2>)  {
                        if($count_att2 eq $roll)     {
                                $main->withdraw();
                                $ooad_att = $value;
                                $flag_att2 = 1;
                                $count_att2++;
                              
                        }
                           else    {
                                $count_att2++;
                        }

                }

                close(DATA_att2);
		
		$count_att3 = "01";
                $flag_att3 = 0;
                open(DATA_att3, "<c_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att3>)  {
                        if($count_att3 eq $roll)     {
                                $main->withdraw();
                                $c_att = $value;
                                $flag_att3 = 1;
                                $count_att3++;
                           	print "\n";
				print "\n\n\t\t\tRoll number : 12pw$roll\n\n\n";
				print "\n";
                        }
                           else    {
                                $count_att3++;
                        }

                }

                close(DATA_att3);

}
#-----------------------------------------------}

		 if($flag_unix eq "0"  || $flag_unix1 eq "0" || $flag_unix2 eq "0" || $flag_c1 eq "0" || $flag_c2 eq "0" || $flag_ct eq "0" || $flag_ooad eq "0" || $flag_ooad2 eq "0" || $flag_ooadt eq "0")  {
                        $main->withdraw();
                        $main -> messageBox(-message => "No such roll num");
                        exit;
                }
		else	{
print "\n\n\n\t\t\t* - Mark entry pending\n\n\n";
format STUDENTCA =
===============================================================================================================================
@<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<< @<<<<<<<<<<<<<<< @<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<
        $sub , $first , $second , $tut , $avg ,$att , $tot

.
format STUDENTCA_TOP =
#==========================================================
subject          First_int       Second_int       Tutorial       Average          Attendance             Total
===============================================================================================================================
.
select(STDOUT);
$~ = STUDENTCA;
$^ = STUDENTCA_TOP;
		 @subj = ("unix","ooad","C");
                        @mark_1 = ("$unix_m1", "$ooad_m1","$c_m1");
                        @mark_2 = ("$unix_m2", "$ooad_m2","$c_m2");
			
			@mark_3 = ("$unix_tm","$ooad_tm","$c_tm");
                        $avg_unix = ($unix_m1 + $unix_m2)/2;
                        $avg_ooad = ($ooad_m1 + $ooad_m2)/2;
			$avg_c = ($c_m1 + $c_m2)/2;
			@avg = ("$avg_unix","$avg_ooad","$avg_c");
			@attend = ("$unix_att", "$ooad_att", "$c_att");
                        $i = 0;
			$tot_unix = $avg_unix + $unix_tm + $unix_att;
			$tot_ooad = $avg_ooad + $ooad_tm + $ooad_att;
			$tot_c = $avg_c + $c_tm + $c_att;
			@total = ("$tot_unix","$tot_ooad","$tot_c");
                        foreach(@subj)  {
                                $sub = $_;
                                $first = $mark_1[$i];
                                $second = $mark_2[$i];
				$tut = $mark_3[$i];
                                $avg = $avg[$i];
				$att = $attend[$i];
				$tot = $total[$i];
                                $i++;
                                write;

                        }

			exit;


		}


print "================================================================================================";





	}


	

}

sub CA_tcs	{
		$main->withdraw();
	$main = new MainWindow;
	$main->geometry("500x500");
	$roll = $rollnum ->get();
        $roll =~ s/^\s+//;
        $roll =~ s/\s+$//;
	my $flag = 1;
	if($roll eq '' || $roll < 01 || $roll > 10)	{
		$main->withdraw();
		$main->messageBox(-message => "Invalid roll num");

	}


	else	{
unless (open(MYFILE, "tcp_i1.txt")) {
        if (-e "tcp_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $tcp_m1 = "*";     
      }
       else
                {    
		$count = "01";
                $flag_unix = 0;
                open(DATA, "<tcp_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA>)  {
                        if($count eq $roll)     {
                                $main->withdraw();
                                 $tcp_m1 = $value;
                                $flag_unix = 1;
                                $count++;
                        }
                           else    {
                                $count++;
                        }
                }

                close(DATA);
}
$flag =1;
unless (open(MYFILE, "tcp_i2.txt")) {
        if (-e "tcp_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $tcp_m2 = "*";     
      }
       else
                {    
		$count1 = "01";
                $flag_unix1 = 0;
               open(DATAu2, "<tcp_i2.txt") or die "Couldn't open file file.txt, $!";

                foreach $value(<DATAu2>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $tcp_m2 = $value;
                                $flag_unix1 = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATAu2);
	}
$flag =1;
unless (open(MYFILE, "tcp_t.txt")) {
        if (-e "tcp_t.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $tcp_tm = "*";     
      }
       else
                {    
		 $count2 = "01";
                $flag_unix2 = 0;
                open(DATAt, "<tcp_t.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATAt>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $tcp_tm = $value;
                                $flag_unix2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATAt);
	}
$flag =1;
unless (open(MYFILE, "ads_i1.txt")) {
        if (-e "ads_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ads_m1 = "*";     
      }
       else
                {    
		$count1 = "01";
                $flag_ooad = 0;
                open(DATA_ooad, "<ads_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ooad>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $ads_m1 = $value;
                                $flag_ooad = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATA_ooad);
	}
$flag =1;
unless (open(MYFILE, "ads_i2.txt")) {
        if (-e "ads_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ads_m2 = "*";     
      }
       else
                {  
		$count2 = "01";
                $flag_ooad2 = 0;
                open(DATA_ooad2, "<ads_i2.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ooad2>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $ads_m2 = $value;
                                $flag_ooad2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATA_ooad2);
}
$flag =1;
unless (open(MYFILE, "ads_tm.txt")) {
        if (-e "ads_tm.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $ads_tm = "*";     
      }
       else
                {  
		$count3 = "01";
                $flag_ooadt = 0;
                open(DATAt, "<ads_tm.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATAt>)  {
                        if($count3 eq $roll)     {
                                $main->withdraw();
                                $ads_tm = $value ;
                                $flag_ooadt = 1;
                                $count3++;
                        }
                           else    {
                                $count3++;
                        }
                }

                close(DATAt);
	}$flag =1;
unless (open(MYFILE, "os_i1.txt")) {
        if (-e "os_i1.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $os_m1 = "*";     
      }
       else
                {  
		 $count1 = "01";
                $flag_c1 = 0;
                open(DATA_c1, "<os_i1.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_c1>)  {
                        if($count1 eq $roll)     {
                                $main->withdraw();
                                 $os_m1 = $value;
                                $flag_c1 = 1;
                                $count1++;
                        }
                           else    {
                                $count1++;
                        }
                }

                close(DATA_c1);
	}
$flag =1;
unless (open(MYFILE, "os_i2.txt")) {
        if (-e "os_i2.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $os_m2 = "*";     
      }
       else
                {  	
	 $count2 = "01";
                $flag_c2 = 0;
                open(DATA_c2, "<os_i2.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_c2>)  {
                        if($count2 eq $roll)     {
                                $main->withdraw();
                                 $os_m2 = $value;
                                $flag_c2 = 1;
                                $count2++;
                        }
                           else    {
                                $count2++;
                        }
                }

                close(DATA_c2);
	}
	$flag =1;
unless (open(MYFILE, "os_t.txt")) {
        if (-e "os_t.txt") {
                 die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $flag=0;
          }

  }
      if($flag eq "0" )   #File not exists
      {
        $main->withdraw();
        $os_tm = "*";     
      }
       else
                {  
		 $count3 = "01";
                $flag_ct = 0;
                open(DATA_ct, "<os_t.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_ct>)  {
                        if($count3 eq $roll)     {
                                $main->withdraw();
                                 $os_tm = $value;
                                $flag_ct = 1;
                                $count3++;
		
                        }
                           else    {
                                $count3++;
                        }
		
                }

                close(DATA_ct);
	}
		$count_att1 = "01";
                $flag_att1 = 0;
                open(DATA_att1, "<ads_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att1>)  {
                        if($count_att1 eq $roll)     {
                                $main->withdraw();
                                 $ads_att = $value;
                                $flag_att1 = 1;
                                $count_att1++;
                             
                        }
                           else    {
                                $count_att1++;
                        }

                }

                close(DATA_att1);
		$count_att2 = "01";
                $flag_att2 = 0;
                open(DATA_att2, "<tcp_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att2>)  {
                        if($count_att2 eq $roll)     {
                                $main->withdraw();
                                $tcp_att = $value;
                                $flag_att2 = 1;
                                $count_att2++;
                              
                        }
                           else    {
                                $count_att2++;
                        }

                }

                close(DATA_att2);
		
		$count_att3 = "01";
                $flag_att3 = 0;
                open(DATA_att3, "<os_att.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA_att3>)  {
                        if($count_att3 eq $roll)     {
                                $main->withdraw();
                                $os_att = $value;
                                $flag_att3 = 1;
                                $count_att3++;
                           	print "\n";
				print "Roll number : 12pt$roll";
				print "\n";
                        }
                           else    {
                                $count_att3++;
                        }

                }

                close(DATA_att3);




		 if($flag_unix eq "0"  || $flag_unix1 eq "0" || $flag_unix2 eq "0" || $flag_c1 eq "0" || $flag_c2 eq "0" || $flag_ct eq "0" || $flag_ooad eq "0" || $flag_ooad2 eq "0" || $flag_ooadt eq "0")  {
                        $main->withdraw();
                        $main -> messageBox(-message => "No such roll num");
                        exit;
                }
		else	{
format STUDENTCAT =
===============================================================================================================================
@<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<< @<<<<<<<<<<<<<<< @<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<
        $sub , $first , $second , $tut , $avg ,$att , $tot

.
format STUDENTCAT_TOP =
#==========================================================
subject          First_int       Second_int       Tutorial       Average          Attendance             Total
===============================================================================================================================
.
select(STDOUT);
$~ = STUDENTCAT;
$^ = STUDENTCAT_TOP;
		 @subj = ("ADS","TCP/IP","Operatins Sys");
                        @mark_1 = ("$ads_m1", "$tcp_m1","$os_m1");
                        @mark_2 = ("$ads_m2", "$tcp_m2","$os_m2");
			
			@mark_3 = ("$ads_tm","$tcp_tm","$os_tm");
                        $avg_ads = ($ads_m1 + $ads_m2)/2;
                        $avg_tcp = ($tcp_m1 + $tcp_m2)/2;
			$avg_os = ($os_m1 + $os_m2)/2;
			@avg = ("$avg_ads","$avg_tcp","$avg_os");
			@attend = ("$ads_att", "$tcp_att", "$os_att");
                        $i = 0;
			$tot_ads = $avg_ads + $ads_tm + $ads_att;
			$tot_tcp = $avg_tcp + $tcp_tm + $tcp_att;
			$tot_os = $avg_os + $os_tm + $os_att;
			@total = ("$tot_ads","$tot_tcp","$tot_os");
                        foreach(@subj)  {
                                $sub = $_;
                                $first = $mark_1[$i];
                                $second = $mark_2[$i];
				$tut = $mark_3[$i];
                                $avg = $avg[$i];
				$att = $attend[$i];
				$tot = $total[$i];
                                $i++;
                                write;

                        }

			exit;


		}



	





	}

	

}




sub CA_TIMESOF	{

	$main->withdraw();
	$roll = $rollnum->get();
	print "RollNum : 12pw$roll";
	open(FILE, "softies_ca.txt") or die("Unable to open file");
	@data = <FILE>;
	foreach $line (@data)
	{
		 print $line;
	}


	close(FILE);
	exit;


}


sub sem_soft	{
	$main->withdraw();
	open(FILE, "sem_soft.txt") or die("Unable to open file");
@data = <FILE>;
foreach $line (@data)
{
 print $line;
}

close(FILE);
exit;

}


sub ca_tcs	{

	$main->withdraw();
	open(FILE, "techies_ca.txt") or die("Unable to open file");
@data = <FILE>;
foreach $line (@data)
{
 print $line;
}

close(FILE);
exit;

}

sub	sem_techie	{
	$main->withdraw();
	open(FILE, "techies.txt") or die("Unable to open file");
	@data = <FILE>;
	foreach $line (@data)
	{
 		print $line;
	}

	close(FILE);
	exit;



}

sub sem_softies{
$main->withdraw;
$main = new MainWindow;
$roll = $rollnum->get();
$roll =~ s/^\s+//;
        $roll =~ s/\s+$//;
        $main->withdraw();
my $hsa1 = 0;
my $dis_so_s = 0;
        if($roll eq '' || $roll < 01 || $roll > 10) {
                 $main->withdraw();
                $main -> messageBox(-message => "Invalid roll number");
                 exit;
        }
	
	else	{
        my $hsa1 = 0;
unless (open(MYFILE, "unix_sm.txt")) {
      if (-e "unix_sm.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hsa1++;
          }

  }
unless (open(MYFILE, "ooad_sm.txt")) {
      if (-e "ooad_sm.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hsa1++;
          }
  }
unless (open(MYFILE, "c_tm.txt")) {
      if (-e "c_tm.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hsa1++;
          }
  }
if($hsa1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {
   $dis_so_s = 1;
		$count = "01";
                $flag_unix = 0;
		$unix_sem = 0;
                open(DATA, "<unix_sm.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA>)  {
                        if($count eq $roll)     {
                                $main->withdraw();
				$value =~ s/^\s+//;
			        $value =~ s/\s+$//;
                               	if($value eq "10")	{
					$unix_sem = $value."S";
				
				}
				elsif($value eq "9")	{
					$unix_sem = $value ."A";
				}
				elsif($value eq "8")	{
					$unix_sem = $value ."B";
				
				}
				elsif($value eq "7")	{
					$unix_sem = $value ."C";

				}
				elsif($value eq "6")	{
					$unix_sem = $value."D";
				}
				else	{
					$unix_sem = "fail";
				}


                                $flag_unix = 1;
                                $count++;
                        }
                         elsif($count ne $roll)    {
                                $count++;
                        }
                }

                close(DATA);
		$count_ooad = "01";
                $flag_ooad = 0;
                open(DATA_ooad, "<ooad_sm.txt") or die "Couldn't open file file.txt, $!";
		$value = 0;
		$ooad_sem = 0;
		print "$roll";
                foreach $value(<DATA_ooad>)  {
                        if($count_ooad eq $roll)     {
                                $main->withdraw();
				 $value =~ s/^\s+//;
                                $value =~ s/\s+$//;
                        	 if($value eq "10")      {
                                        $ooad_sem = $value."S";

                                }
                                elsif($value eq "9")    {
                                        $ooad_sem = $value ."A";
                                }
                                elsif($value eq "8")    {
                                        $ooad_sem = $value ."B";

                                }
                                elsif($value eq "7")    {
                                        $ooad_sem = $value ."C";

                                }
                                elsif($value eq "6")    {
                                        $ooad_sem = $value."D";
                                }
                                else    {
                                        $ooad_sem = "fail";
                                }


        
                                $flag_ooad = 1;
                                $count_ooad++;
                        }
                        else    {
                                $count_ooad++;
                        }
                }

                close(DATA_ooad);
		$count_c = "01";
                $flag_c = 0;
                open(DATA_c, "<c_sm.txt") or die "Couldn't open file file.txt, $!";
		$value = 0;
		$c_sem = 0;
                foreach $value(<DATA_c>)  {
                        if($count_c eq $roll)     {
                                $main->withdraw();
				 $value =~ s/^\s+//;
                                $value =~ s/\s+$//;
                                if($value eq "10")      {
                                        $c_sem = $value."S";

                                }
                                elsif($value eq "9")    {
                                        $c_sem = $value ."A";
                                }
                                elsif($value eq "8")    {
                                        $c_sem = $value ."B";

                                }
                                elsif($value eq "7")    {
                                        $c_sem = $value ."C";

                                }
                                elsif($value eq "6")    {
                                        $c_sem = $value."D";
                                }
                                else    {
                                        $c_sem = "fail";
                                }



                                $flag_c = 1;
                                $count_c++;
				print "\n";
				print "RollNum : 12pw$roll";
				print "\n";
                        }
                       else    {
                                $count_c++;
                        }
                }

                close(DATA);
	}
		if($flag_unix eq "0" || $flag_ooad eq "0" || $flag_c eq "0")	{
			 $main->withdraw();
                        $main -> messageBox(-message => "No such roll num");
                        exit;
		
		}
		else{
if($dis_so_s eq "0")
 {
    $main -> messageBox(-message => "\n*******************\nRESULTS ARE NOT ANNOUNCED YET\n********************");
    exit;
 }
	
format STUDENTSEM1 =
========================================
@<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<
        $sub , $grade

.
format STUDENTSEM1_TOP =
#==========================================================
subject         Grade
=========================================
.
select(STDOUT);
$~ = STUDENTSEM1;
$^ = STUDENTSEM1_TOP;
			 @subj = ("Unix","OOAD","C");
			 @mark_1 = ("$unix_sem", "$ooad_sem","$c_sem");
			$i = 0;
			foreach(@subj)  {
                                $sub = $_;
                                $grade = $mark_1[$i];
				$i++;
				write;
			}



		}
		exit;

	

	}



}


sub sem_tcs	{
	$main->withdraw;
$main = new MainWindow;
$roll = $rollnum->get();
$roll =~ s/^\s+//;
        $roll =~ s/\s+$//;
        $main->withdraw();
	my $hss1 = 0;
	my $dis_so_t = 0;
        #$main ->messageBox(-message=>"$roll" );
        if($roll eq '' || $roll < 01 || $roll > 10) {
                 $main->withdraw();
                $main -> messageBox(-message => "Invalid roll number");
                 exit;
        }
	
	else	{
unless (open(MYFILE, "ads_sm.txt")) {
      if (-e "ads_sm.txt") {
               die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hss1++;
          }

  }
unless (open(MYFILE, "tcp_sm.txt")) {
      if (-e "tcp_sm.txt") {
              die ("File file1 exists, but cannot be opened.\n");

         } else {
                 $hss1++;
          }
  }
unless (open(MYFILE, "os_sm.txt")) {
      if (-e "os_sm.txt") {
   die ("File file1 exists, but cannot be opened.\n");
        } else {
                 $hss1++;
          }
  }
if($hss1 ne "0" )
  {
   $main->messageBox(-message => "\n\n\n**********\n         SORRY MARK RNTRY IS NOT OPENED        \n**********\n\n\n");
    print "\n\n\n**********\n         SORRY MARK ENTRY IS NOT OPENED        \n**********\n\n\n";
    exit;
  }
 else
  {
		$dis_so_t = 1;
		$count = "01";
                $flag_unix = 0;
		$unix_sem = 0;
                open(DATA, "<ads_sm.txt") or die "Couldn't open file file.txt, $!";
                foreach $value(<DATA>)  {
                        if($count eq $roll)     {
                                $main->withdraw();
				$value =~ s/^\s+//;
			        $value =~ s/\s+$//;
                               	if($value eq "10")	{
					$ads_sem = $value."S";
				
				}
				elsif($value eq "9")	{
					$ads_sem = $value ."A";
				}
				elsif($value eq "8")	{
					$ads_sem = $value ."B";
				
				}
				elsif($value eq "7")	{
					$ads_sem = $value ."C";

				}
				elsif($value eq "6")	{
					$ads_sem = $value."D";
				}
				else	{
					$ads_sem = "fail";
				}


                                $flag_unix = 1;
                                $count++;
                        }
                         elsif($count ne $roll)    {
                                $count++;
                        }
                }

                close(DATA);
		$count_ooad = "01";
                $flag_ooad = 0;
                open(DATA_tcp, "<tcp_sm.txt") or die "Couldn't open file file.txt, $!";
		$value = 0;
		$ooad_sem = 0;
                foreach $value(<DATA_tcp>)  {
                        if($count_ooad eq $roll)     {
                                $main->withdraw();
				 $value =~ s/^\s+//;
                                $value =~ s/\s+$//;
                        	 if($value eq "10")      {
                                        $tcp_sem = $value."S";

                                }
                                elsif($value eq "9")    {
                                        $tcp_sem = $value ."A";
                                }
                                elsif($value eq "8")    {
                                        $tcp_sem = $value ."B";

                                }
                                elsif($value eq "7")    {
                                        $tcp_sem = $value ."C";

                                }
                                elsif($value eq "6")    {
                                        $tcp_sem = $value."D";
                                }
                                else    {
                                        $tcp_sem = "fail";
                                }


        
                                $flag_ooad = 1;
                                $count_ooad++;
                        }
                        else    {
                                $count_ooad++;
                        }
                }

                close(DATA_tcp);
		$count_c = "01";
                $flag_c = 0;
                open(DATA_os, "<os_sm.txt") or die "Couldn't open file file.txt, $!";
		$value = 0;
		$c_sem = 0;
                foreach $value(<DATA_os>)  {
                        if($count_c eq $roll)     {
                                $main->withdraw();
				 $value =~ s/^\s+//;
                                $value =~ s/\s+$//;
                                if($value eq "10")      {
                                        $os_sem = $value."S";

                                }
                                elsif($value eq "9")    {
                                        $os_sem = $value ."A";
                                }
                                elsif($value eq "8")    {
                                        $os_sem = $value ."B";

                                }
                                elsif($value eq "7")    {
                                        $os_sem = $value ."C";

                                }
                                elsif($value eq "6")    {
                                        $os_sem = $value."D";
                                }
                                else    {
                                        $os_sem = "fail";
                                }



                                $flag_c = 1;
                                $count_c++;
				print "\n";
				print "RollNum : 12pt$roll";
				print "\n";
                        }
                       else    {
                                $count_c++;
                        }
                }

                close(DATA_os);
		if($flag_unix eq "0" || $flag_ooad eq "0" || $flag_c eq "0")	{
			 $main->withdraw();
                        $main -> messageBox(-message => "No such roll num");
                        exit;
		
		}
		else{
if($dis_so_t eq 0)
{
    $main -> messageBox(-message => "\n*******************\nRESULTS ARE NOT ANNOUNCED YET\n********************");
    exit;
 }	
format STUDENTSEM2 =
========================================
@<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<
        $sub , $grade

.
format STUDENTSEM2_TOP =
#==========================================================
subject         Grade
=========================================
.
select(STDOUT);
$~ = STUDENTSEM2;
$^ = STUDENTSEM2_TOP;
			 @subj = ("ADS","TCP/IP","OS");
			 @mark_1 = ("$ads_sem", "$tcp_sem","$os_sem");
			$i = 0;
			foreach(@subj)  {
                                $sub = $_;
                                $grade = $mark_1[$i];
				$i++;
				write;
			}



		}
		exit;

	

	}



}


}

sub exitpgm  {
 exit;
}
