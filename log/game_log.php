<?php
    $info_file = './info.log';
    $crash_file = './crash.log';
    $error_file = './error.log';
    $debug_file = './debug.log';
    $yesterday_error_file = './error.log.0';
    $yesterday_debug_file = './debug.log.0';
?>

<a target='_blank' href="<?php echo $info_file ?>">info</a> <br/>
<a target='_blank' href="<?php echo $crash_file ?>">crash</a> <br/>
<a target='_blank' href="<?php echo $error_file ?>">error</a> <br/>
<a target='_blank' href="<?php echo $debug_file ?>">debug</a> <br/>

<?php echo "<br/>"; ?>

<a target='_blank' href="<?php echo $yesterday_error_file?>"> yesterday error</a> <br/>
<a target='_blank' href="<?php echo $yesterday_debug_file?>"> yesterday debug</a> <br/>

<pre>

<?php include("${error_file}"); ?>

