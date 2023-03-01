



<?php
class MagicMethod
{
   //magic method example one
   function __construct()
   {
      echo "This is the construct magic method" . "<br>";
   }


   //magic method example two
   function __call($name, $parameters)
   {
      echo  "<br>" . "Name of method =>" . $name . "<br>";
      echo "<br>" . "Parameters provided" . "<br>";
      print_r($parameters);
   }
}

$obj = new MagicMethod();

$obj->magic("Magic", "Method");



?>



