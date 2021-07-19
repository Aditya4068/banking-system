<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Profile</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
    <section class="customer-head">
        <nav>
            <div class="nav-links" id="navLinks">
                <ul>
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="customers.php">CUSTOMER LIST</a></li>
                    <li><a href="transactions.php">TRANSACTIONS</a></li>
                    <li><a href="index.html#contact">CONTACT US</a></li>
                </ul>
                </div>
        </nav>             
    </section>
<div>
<?php
    //Connecting to the local SQL database. If hosting online, credentials will change. Everything else remains the same.
    $username = "root";
    $password = "";
    $database = "tsf_database";
    $mysqli = new mysqli("localhost", $username, $password, $database);

    

    $id = $_GET['customers'];

    $query = "SELECT * FROM customers WHERE ID='$id'";

    //showing contents of 'customers' table, in tabular form.
    echo '<div class="profile"><h1> Customer Profile </h1>';

    //fetching individual rows from the 'customer' table.
    if ($result = $mysqli->query($query)) {

        while ($row = $result->fetch_assoc()) {
            $field1name = $row["ID"];
            $field2name = $row["Name"];
            $field3name = $row["Email"];
            $field4name = $row["Phone"];
            $field5name = $row["Balance"];

            echo '<br><b>ID: </b>'.$field1name;
            echo '<br><b>Name: </b>'.$field2name;
            echo '<br><b>Email: </b>'.$field3name;
            echo '<br><b>Phone: </b>'.$field4name;
            echo '<br><b>Balance: </b>'.$field5name.'</div>';
            echo '<br><br>';
        }

        $result->free();
    }
?>
</div>


<?php
    $query2 = "SELECT * FROM customers";
    echo '<form method = "post" action = "handler.php">';
    echo '<h2> Transfer Money</h2><br>';
    
    echo '<input type="hidden" name="sender" value='.$id.'>';


    //creating Select Receiver dropdown
    echo '<select name = "receiver" required>';
    echo '<option selected disabled value = "">Choose Receiver</option>';

        //Each Receiver option, read from 'customers' table.
        if ($result = $mysqli->query($query2)) {

            while ($row = $result->fetch_assoc()) {
                $field1name = $row["ID"];
                $field2name = $row["Name"];
                $field3name = $row["Email"];
                $field4name = $row["Phone"];
                $field5name = $row["Balance"];

                echo '<option value ='.$field1name.' required>'.$field2name.'</option>';
                
            }

        $result->free();
    }
    echo '</select>';
    echo '<br>';
    
    //input label for the amount to be transferred
    echo '<label for = "amount"> Enter the amount to be transferred :</label><br>';

    echo '<input name = "amount" type = "number" required>';
    echo '<br>';

    //submit button for the form
    echo '<input type = "submit" name = "submit" class = "h-button">';

    echo '</form>';


?>

<!--Transfer Money button
<div style="display : block; text-align : center; margin : auto auto 20px auto;">
    <a href="transfer.php" class="h-button">Transfer Money</a>-->
</div>
</body>
</html>