<?php 
   abstract class Car{
     public $color;

     public function __construct($color)
     {
         $this->color = $color;
     }

     abstract public function showColor();
   }


   class Honda extends car{
     public function showColor(){
        echo "color:". $this->color;
     }

   }


   $honda = new Honda("honda");
   $honda->showColor();
