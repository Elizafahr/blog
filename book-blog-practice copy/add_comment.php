<?php
session_start();
    // подключение к базе данных
     $connection = mysqli_connect("localhost", "root", "", "new");

    // проверка подключения
    if (mysqli_connect_errno()) {
        die("Ошибка подключения к базе данных: " . mysqli_connect_error());
    }

    // получение id поста из формы
    $id = $_POST['id'];
    $username = $_SESSION['username'];
    // получение текста комментария из формы
    $comment = $_POST['comment'];

    // получение id пользователя из сессии
    $user_id = $_SESSION['User_ID'];

    // создание текущей даты и времени
     $comment_date = date('Y-m-d H:i:s');

    // создание запроса на добавление комментария
    $query = "INSERT INTO Comment (Text, User_ID, Post_ID, Comment_Date) VALUES ('$comment', '$user_id', '$id', '$comment_date')";
    // выполнение запроса
    $result = mysqli_query($connection, $query);

    // проверка выполнения запроса
    if ($result) {
        // успешное добавление комментария
        echo "Комментарий успешно добавлен.";
 
    } else {
        // ошибка при добавлении комментария
        echo "Ошибка при добавлении комментария: " . mysqli_error($connection);
    }

    // закрытие подключения к базе данных
    mysqli_close($connection);
?>
 

 