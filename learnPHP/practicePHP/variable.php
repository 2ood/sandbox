<?php
	function variableName() {
		//variable name starts with alphabet or underscore(_).
		static $color='BLACK';
		echo "This color is $color";
		echo "\n";

		//echo statement can have multiple input variables, separated by comma(,)s.
		$name="Kyungmin";
		echo "This color is ".$name.$color;
		echo "\n";
	}
	
	function staticVariable() {
		//excercise for static variable.
		 function static_var()  
		{  
			static $num1 = 3;       
			$num2 = 6;          

			$num1++;  
			$num2++;  

			echo "Static: " .$num1;  
			echo "\nNon-static: " .$num2; 
			echo "\n";

		}  

		static_var();  //non-statuc variable result is garbage-collected.
		static_var();  //static variable result is stored.
		echo "\n";
	}
	
	function doubleDollar() {
		//exercise for double-dollar sign ($$).
		$name="Cat";  
		${$name}="Dog";  //$Cat ="Dog";
		${${$name}}="Monkey"; //$Dog="Monkey";

		echo $name. "\n";  
		echo ${$name}. "\n";  
		echo $Cat. "\n";  
		echo ${${$name}}. "\n";  
		echo $Dog. "\n"; 
	}
	
	function defineFunc() {
		define("Message","Hey, Hey you!",true);
		echo MEsSaGe,"\n";
		echo constant("Message");  
	}

	function specialVariable() {
		//special variable starts and ends with double underscore(__).
		//case insensitive.
		//resolved at compile-time.
		
		//__LINE__
		echo "line number is ".__LINE__,"\n";
		
		//__FILE__
		echo "file path is ".__FILE__."\n";
		
		//__DIR__
		echo "directory : ".__DIR__."\n";
		echo "directory : ".dirname(__FILE__)."\n";
		
		//__FUNCITON__
		echo "This function is ".__FUNCTION__."\n";
		
		//...?
	}

	function arrayTest() {
		$names =array("Kyungmin", "Seunghyun","Haedon","Jihoon","Dohyun");
		echo $names[0]."\n";
		echo $names[1]."\n";
		echo $names[2]."\n";
	}

	function execution() {
		echo `whoami`;
	}
	
	function switchCase () {
		//PHP allows you to use number, character, string, as well as functions in switch expression.
		$ch = 'c';  
    switch ($ch)  
		{     
			case 'a': case 'e': case 'i': case 'o': case 'u':   
			case 'A': case 'E': case 'I': case 'O': case 'U':   
				echo "Given character is vowel"; break;

			default:    
				echo "Given character is consonant";  break;  
		}
	}

	function funcCallByRef () {
		function adder(&$str2)  {  	$str2 .= 'Call By Reference';  }  
		//putting ampersand at the start of variable name is passing the reference. 
		
		$str = 'Hello ';  
		adder($str);  
		echo $str;  //the string is changed, because of call by reference. 
	}
	function defaultValue() {
		function sayHello($name="Sonoo") {  echo "Hello $name ";  }  
		sayHello("Rajesh");  
		sayHello();//passing no value  
		sayHello("John");
	}

	function associatArray() {
		$salary=array("Sonoo"=>"550000","Vimal"=>"250000","Ratan"=>"200000");  
		echo "Sonoo salary: ".$salary["Sonoo"]."\n";  
		echo "Vimal salary: ".$salary["Vimal"]."\n";  
		echo "Ratan salary: ".$salary["Ratan"]."\n";  
	}

	

?>
