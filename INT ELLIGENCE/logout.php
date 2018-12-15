<?php include "header1.php" ?>


<?php
include "access.php";

session_unset();
session_destroy();

echo "You have been successfully logged out!";

?>
<?php include "footer.php" ?>