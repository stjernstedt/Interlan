<?

        $consts='bcdgklmnprstBCDGKLMNPRST';
        $vowels='aeiouAEIOU';
        $vowels1='0a1e2i3o4u5A6E7I8O9U';
        $signs='bcdgklmnprstBCDGKLMNPRSTaeiouAEIOU123456890';

for ($y=0; $y < 10 ; $y++ ) {
        for ($x=0; $x < 6; $x++) {
                mt_srand ((double) microtime() * 1000000);
                $const[$x] = substr($consts,mt_rand(0,strlen($consts)-1),1);
                $vow[$x] = substr($vowels,mt_rand(0,strlen($vowels)-1),1);
        }
        print $const[0] . $vow[0] .$const[2] . $const[1] . $vow[1] . $const[3] . $vow[3] . $const[4];
        print "<br>";
}
print "<br>";
print "<br>";


for ($y=0; $y < 10 ; $y++ ) {
        for ($x=0; $x < 6; $x++) {
                mt_srand ((double) microtime() * 1000000);
                $const[$x] = substr($consts,mt_rand(0,strlen($consts)-1),1);
                $vow[$x] = substr($vowels1,mt_rand(0,strlen($vowels)-1),1);
        }
        print $const[0] . $vow[0] .$const[2] . $const[1] . $vow[1] . $const[3] . $vow[3] . $const[4];
        print "<br>";
}
print "<br>";
print "<br>";
print "<br>";
 for ($x=0; $x < 48; $x++) {
                mt_srand ((double) microtime() * 1000000);
                print substr($signs,mt_rand(0,strlen($signs)-1),1);
        }

print "<br>";
        for ($x=0; $x < 24; $x++) {
                mt_srand ((double) microtime() * 1000000);
                print substr($signs,mt_rand(0,strlen($signs)-1),1);
        }
?>

