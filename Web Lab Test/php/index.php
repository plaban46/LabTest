<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plaban</title>
</head>
<body>
    <?php

    //Basics
    $plaban = 'Plaban Das';   // Single Cotation and double all granted

    echo 'Type 1 : My Name : ' . $plaban . '<br>';
    echo 'Type 2 : My Name :  $plaban : Not Working<br>  '; 
    echo "Type 3 : My Name :  $plaban : Working<br> "; 

    $age1 = 2;
    $age2 = 3; 

    $a = 2;
    $b = 3; 

    echo "To The Power : " . ($a ** $b) . '<br>';

    echo "My age is : " . $age1+$age2 . '<br>';
    echo ("My age is : " . $age1+$age2+3);
    echo "<br>";
    echo 'Bangla' . $plaban . '<br>';    // HTML will come under echo -> under cotation
    print 'My Name : ' . $plaban . '<br>' . ' <br>';    // . is for concatenate


    //Variables
    $num1 = 20;  // Integer
    $num2 = 22.3; // Float

    $my_name = "Plaban";
    $my_full_name = "Plaban Das";
    
    $people = array('Bangali','Indian','British');
    
    $null_value = null;

    var_dump($num1);  echo '<br>';
    var_dump($num2);  echo '<br>';
    var_dump($my_name);  echo '<br>';
    var_dump($my_full_name);  echo '<br>';
    var_dump($people);  echo '<br>';
    var_dump($null_value);  echo '<br>';
    
    //OOP
    class Phone{
        var $model;
        function phoneModel($number){
            global $model;
            $model = $number;
            echo "The Phone is : " . $model;
        }
    }

    echo '<br>';    echo '<br>';

    $lg = new Phone;
    $lg->phoneModel('LG Phone');

    echo '<br>';

    $samsung = new phone;
    $samsung->phoneModel('Samsung Phone');
    echo '<br>';    echo '<br>';

    //Strings

    echo 'My Name Length = ' . strlen($my_full_name) . '<br>';
    echo 'My Name Word Count = ' . str_word_count($my_full_name) . '<br>';
    echo 'My Name Reverse = ' . strrev($my_full_name) . '<br>';
    echo 'Check Substring Position = ' . strpos($my_full_name, $my_name) . '<br>';
    echo '<br>';    echo '<br>';
    
    //Maths
    echo "Value Of Pi : " . (pi()) . '<br>';
    echo "Find Minimum Value : " . (min(1,2,3,4,5,3)) . '<br>';
    echo "Find Maximum Value : " . (max(1,2,3,4,5,3)) . '<br>';
    echo "Find Absolute Value : " . (abs(-10)) . '<br>';
    echo "Find Sqrt : " . (sqrt(16)) . '<br>';
    echo "Round The Value : " . (round(pi())) . '<br>';
    echo "Randam Value : " . (rand()) . '<br>';
    echo "Random Under 10<->50 : " . (rand(10,50)) . '<br>';
    echo '<br>';    echo '<br>';


    //Constant   // This is global

    define('cons_name','cons_value');
    define('id','2007111'); 
    define('cars', ['BMW','Toyota']);  //Array

    echo "ID Value : " . id . '<br>';
    echo ' : ID Type' . var_dump(id). '<br>';
    echo cars[0] . '<br>';

    function name(){
        //echo ($my_full_name);  // Outside variable
        $xx = 10;
        echo $xx; echo '<br>';
        echo id; echo '<br>';

    } 
    name();   //Function Call
    echo '<br>';    echo '<br>';

    
    //Comparison Operator
    $type_1 = 20;
    $type_2 = '20';
    if($type_1 == $type_2){  // It will check without type
        echo "Result using (==)    ::: ----> True <br>";
    }elseif(1){
        echo "Result using (==)    ::: ----> False <br>";
    }
    if($type_1 === $type_2){   // It will check with type
        echo "Result using (===)    ::: ----> True <br>";
    }else{
        echo "Result using (===)    ::: ----> False <br>";
    }
    echo '<br>';    echo '<br>';

    //Loop
    $x = 0;
    while($x <= 3){
        echo "The Number is : " . $x . '<br>';
        $x++;
    }
    echo '<br>';
    for($y=0; $y<6; $y+=2){
        echo "Value Of Y : " . $y . '<br>';
    }
    echo '<br>';
    $colors = array("red", "green", "blue", "yellow"); 
    foreach ($colors as $x) {
    echo "$x <br>";
    }
    echo '<br>';    echo '<br>';

    //Functions
    function test_name($name, $age){
        echo "This is my name : " . $name . "<br>"; 
        echo "$name Age is : $age <br>"; 
    } 
    test_name("Plaban",22);
    echo '<br>';    echo '<br>';

    //Date Time
    date_default_timezone_set("Asia/Dhaka");

    echo "Today Date is : " . date("D/M/Y") . '<br>';
    echo "Today Date is : " . date("d/m/y") . '<br>';
    echo "Today Date is : " . date("d-m-y") . '<br>';
    echo "Today Date is : " . date("Y") . '<br>';
 
    echo "Now BD Time is : " . date("h:i:sa") . '<br>';

    ?>
</body>
</html>