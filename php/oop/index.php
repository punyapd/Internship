<?php

class Student
{
    public $name;
    public $rollNo;
    public function __construct($name, $rollNo)
    {
        $this->name = $name;
        $this->rollNo = $rollNo;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getRollNo()
    {
        return $this->rollNo;
    }
}
class MatheMatics extends Student
{
    public $discrete_structure;
    public $linear_algebra;
    public $derivatives;


    public function __construct($name, $rollNo, $discrete_structure, $linear_algebra, $derivatives)
    {
        parent::__construct($name, $rollNo);
        $this->discrete_structure = $discrete_structure;
        $this->linear_algebra = $linear_algebra;
        $this->derivatives  = $derivatives;
    }

    public function getAverage()
    {
        $average =  ($this->discrete_structure  + $this->linear_algebra + $this->derivatives) / 3;
        return $average;
    }
}

//comupterScience class
class ComputerScience extends Student
{
    public $daa;
    public $cn;
    public $web;

    function __construct($name, $rollNo, $daa, $cn, $web)
    {
        parent::__construct($name, $rollNo);
        $this->daa = $daa;
        $this->cn = $cn;
        $this->web = $web;
    }


    function getAverage()
    {
        $average =  ($this->daa  + $this->cn + $this->web) / 3;
        return $average;
    }
}


$mathStudent = new MatheMatics('punya pd dahal', 22, 40, 56, 75);
$csStudent = new ComputerScience('hari bahadur', 33, 56, 77, 22);
echo "Mathematics student " . $mathStudent->getName() . " with roll no " . $mathStudent->getRollNo() . " has an average of " . $mathStudent->getAverage() . "<br>";
echo "Computer Science student " . $csStudent->getName() . " with roll no " . $csStudent->getRollNo() . " has an average of " . $csStudent->getAverage() . "<br>";
$math->getAverage();
