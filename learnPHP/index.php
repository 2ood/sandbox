<html>
<?php
/*
    $url = parse_url(getenv("CLEARDB_DATABASE_URL"));

    $server = $url["host"];
    $username = $url["user"];
    $password = $url["pass"];
    $db = substr($url["path"], 1);

    $conn = new mysqli($server, $username, $password, $db);
    if ($mysqli -> connect_errno) {
      echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
      exit();
    }

    else echo "<h3>This is a php embbeded title</h3>";
*/
?>
    <head>
        <title>Test</title>
    </head>
    <body>
        <form action="processorder.php" method="post">
        <table style="border:0;">
        <tr style="background:#cccccc">
            <td style="width: 150px; text-align:center;">Item</td>
            <td style="width: 15px; text-align:center;">Quantity</td>
            </tr>

        <tr>
            <td>Tires</td>
            <td> <input type="text" name="tireqty" size="3" maxlength="3"/></td>
        </tr>
            <tr>
            <td>Oil</td>
            <td> <input type="text" name="oilqty" size="3" maxlength="3"/></td>
        </tr>
            <tr>
            <td>Spark plugs</td>
            <td> <input type="text" name="sparkqty" size="3" maxlength="3"/></td>
        </tr>
        <tr>
        <td colspan="2" style="text-align:center"><input type="submit" value="Submit Order"/>            </td>
            </tr>
            </table>
        </form>
    </body>
</html>
