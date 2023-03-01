<?php
interface Vehicle
{
    public function makeSound();
}

class Car implements Vehicle
{
    public function makeSound()
    {
        echo "teeteeet";
    }
}

$car  = new Car();
$car->makeSound();
