<?php
// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Establish database connection
    $connection = new mysqli("localhost", "root", "", "new");

    // Get the comment ID from the form
    $commentId = $_POST['comment_id'];

    // Check if the Approve button was clicked
    if (isset($_POST['approve'])) {
        $newStatus = 'approved';
    } elseif (isset($_POST['reject'])) { // Check if the Reject button was clicked
        $newStatus = 'rejected';
    }

    // Update the comment status
    $updateQuery = "UPDATE Comment SET status = '$newStatus' WHERE Comment_ID = $commentId";
    mysqli_query($connection, $updateQuery);

    // Redirect back to the page where comments are displayed
    header("Location: postAdmin.php");
    exit();
}
?>

 