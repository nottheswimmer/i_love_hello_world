<?php
print "PHP: I love to try stuff\n";
// https://www.php.net/manual/en/function.popen.php#116948
$proc = pclose(popen("dart hello_world.dart", 'w'));
print "PHP: Boom-de-ah-da!\n"
?>
