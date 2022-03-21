<?php
session_start();

session_destroy();

header ("location: index.html", TRUE, 301);

exit();

?>