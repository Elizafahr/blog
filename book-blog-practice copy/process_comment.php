<?php
    $connection = new mysqli("localhost", "root", "", "new");
    $id = $_GET['comm'];
    $newStatus = 'approved';
   

    // Update the comment status
    $updateQuery = "UPDATE Comment SET status = '$newStatus' WHERE Comment_ID = $id";
    mysqli_query($connection, $updateQuery);

    // Redirect back to the page where comments are displayed
    header("Location: $_SERVER[HTTP_REFERER]");
    exit();

?>

 