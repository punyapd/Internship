<?php
// opening a file in read mode
$file = fopen('textfile.txt', 'r');
$text = fread($file, filesize("textfile.txt"));
$caloryCarried = explode("\n\n", $text);  //separating calories carried by monks in different arrray
foreach ($caloryCarried as $calory) {
    $sum[] = array_sum(explode("\n", $calory));    //sum of calories carried by each monk
}
$maxCalorie = max($sum);    //  finding the maximum calorie carried by a monk
echo ("Maximum calorie carried by a monk is: $maxCalorie ");
rsort($sum);  //soritng the sum of caloires in ascending order
echo nl2br("\n Highest calories carried by three  monks: ");
for ($i = 0; $i < 3; $i++) {
    echo ($sum[$i] . "\r\n");
}
