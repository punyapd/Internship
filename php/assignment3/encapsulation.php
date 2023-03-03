<?php

//encapusulation is possible in php it can be achieved with the help of class in php.
class Job
{
public $Job_name;
public $Job_id;
function __construct($job_names, $job_ids)
{
$this->Job_name = $job_names;
$this->Job_id = $job_ids;
}
public function Job_details()
{
echo "Job name is: $this->Job_name  Job id is: $this->Job_id";
}
}
$obj = new Job("Web Developer", "096847");
echo $obj->Job_details();
?>