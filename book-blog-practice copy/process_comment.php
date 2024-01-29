<?php
$id = $_POST['comment_id'];
$connection = new mysqli("localhost", "root", "", "new");

$queryComments = "SELECT Comment.* WHERE Comment.Comment_ID = $id";

 

// Get the comment ID from the form
//$commentId = $_POST['comment_id'];

$newStatus = 'approved';
$updateQuery = "UPDATE Comment SET status = '$newStatus' WHERE Comment_ID = $commentId";
mysqli_query($connection, $updateQuery);

header("Location: postAdmin.php");
exit();
