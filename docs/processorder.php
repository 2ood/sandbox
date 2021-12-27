<!DOCTYPE html>
<html>
    <head>
        <title>Bob's Auto Parts -Order Results</title>
    </head>
    <body>
        <?
        $tireqty =$_POST['tireqty'];
        $oilqty =$_POST['oilqty'];
        $sparkqty =$_POST['sparkqty'];
        
        define('TIREPRICE', 100);
        define('OILPRICE', 10);
        define('SPARKPRICE', 4);
        ?>
        <h1>Bob's Auto Parts</h1>
        <h2>Order Results</h2>
        <?
            echo "<p>Order processed at ".date('H:i, jS F Y')."</p>";
        
            echo "<p> Your order is as follows: </p>";
            echo htmlspecialchars($tireqty).' tires<br/>';
            echo htmlspecialchars($oilqty).' bottles of oil<br/>';
            echo htmlspecialchars($sparkqty).' spark plugs <br/>';
            
            $total_price=0;
            $total_price+=$tireqty*TIREPRICE;
            $total_price+=$oilqty*OILPRICE;
            $total_price+=$sparkqty*SPARKPRICE;
        
            echo "The total price is".htmlspecialchars($total_price);
        ?>
    </body>
</html>