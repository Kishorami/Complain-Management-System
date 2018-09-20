<?php
require_once './library/config.php';
require_once './library/functions.php';

checkUser(); //check the user type

$content = 'main.php'; //this is the main content of the page. So I am including main.php

$pageTitle = 'Corporate Complain Management System'; //here I am  showing the title.
//$script = array();

require_once 'include/template.php'; //including the template.
?>
