<?php
session_start();
if (!empty($_POST['password']) and !empty($_POST['login'])) {
    $login = $_POST['login'];
    $password = $_POST['password'];
    // Подключение к базе данных
    $link = mysqli_connect("localhost", "root", "", "Fakhrutdinova_books_block");
    if (!$link) {
        die("Connection failed: " . mysqli_connect_error());
    }
    // Защита от SQL-инъекций
    $login = mysqli_real_escape_string($link, $login);
    $password = mysqli_real_escape_string($link, $password);
    // Подготовленный запрос
    $query = "SELECT * FROM users WHERE login=? AND password=?";
    $stmt = mysqli_prepare($link, $query);
    mysqli_stmt_bind_param($stmt, "ss", $login, $password);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $user = mysqli_fetch_assoc($result);
    if (!empty($user)) {
        $_SESSION['auth'] = true;
    } else {
       
    }
    header("Location: index.php");
}
?>