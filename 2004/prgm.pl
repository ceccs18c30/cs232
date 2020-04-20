#!/usr/bin/perl


# Introduction to perl
print"Hello,I am Jibin Joseph.";
print"\n";


# /usr/bin/perl ia a perl interpreter binary.To change the  mode of script and execution priviledge,we use the below code
# chmod 0755 prgm.pl;
# ./prgm.pl;


# Differnces between single and double quotes
print"Hello,I am Jibin Joseph\n";
print'Hello,I am Jibin Joseph\n';


# Capitalises the whole sentence
print"\n";
print"\UWelcome to my world";
print"\n";


# Assigning values to the variables
$name = "Michael";
$age = 20;
print"Name = $name\n";
print"Age = $age\n";
print"\n";


# Arrays
@names = ("Saurav","Kevin","Arun");
@ages = (20,28,14);
print"names[0] = $names[0]\n";
print"ages[0] = $ages[0]\n";
print"names[2] = $names[2]\n";
print"ages[2] = $ages[2]\n";
print"\n";


# Hashes
%info = ('Keshav'=>20,'Shankar'=>28,'Akhil'=>32);
print"\$info{'Keshav'} = $info{'Keshav'}\n";
print"\$info{'Akhil'} = $info{'Akhil'}\n";
print"\n";

# Extracting slices
%info = ('Keshav'=>20,'Shankar'=>28,'Akhil'=>32);
@data = @info{Keshav,Shankar};
print"@data\n";
print"\n";



# A simple program using array and for loop
my @names = ('Ali','Ganesh','Devan','Jacob');
my @ages = (65,72,23,28);
for($i = 0;$i<4;$i=$i+1)
{   print"$names[$i] \n";
    if($ages[$i]>60)
    {print"$names[$i] is a senior citizen \n";
        
    }
    else
    {print"$names[$i] is not a senior citizen\n";}
}

