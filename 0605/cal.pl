
clear;
print"MENU DRIVEN CALCULATOR\n";
print"Enter the first number:";
$a=<>;
print "Enter the second number:";
$b=<>;
do  {
    print"1.Addition\n";
    print"2.Subtration\n";
    print"3.Multiplication\n";
    print"4.Division\n";
    print"5.Modulus\n";
    use feature qw(switch say);
    print"Enter your choice:";
    chomp( my $grade = <> );  
    given ($grade) {  
        when ('1') 
        { $sum = $a + $b ;
          print"Sum = ".$sum;}  
        when ('2') 
        { $diff = $a - $b;
         print"Difference = ".$diff;}  
        when ('3')
        { $mul = $a*$b;
            print"Product = ".$mul;} 
        when ('4')
        { $div = $a / $b;
         print"Quotient = ".$div;}
        when ('5')
        { $mod = $a % $b;
         print"Remainder = ".$mod;}
        default 
        { print "Invalid operation";}  
    } print"\n"; 
    print "To continue press 0 / To quit press 1 \n ";
    print"Enter your option : ";
    $ch=<>;
     if ( $ch == '1')
    {   exit ; }
    
    }while($ch == '0');

