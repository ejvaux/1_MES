<?php
            

    include $_SERVER['DOCUMENT_ROOT']."/1_mes/_includes/connect.php";  

    $mcode = $_POST['mc'];

    $sql = "SELECT CUSTOMER_NAME FROM dmc_customer WHERE CUSTOMER_CODE = '$mcode' ";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    echo json_encode($row,true);    
    
    $conn->close();

?>