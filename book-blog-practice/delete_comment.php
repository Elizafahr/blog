<?php
session_start();

// Проверяем, авторизован ли пользователь
if (!empty($_SESSION['auth'])) {
    // Подключаемся к базе данных
    $connection = mysqli_connect("localhost", "root", "", "Fakhrutdinova_books_block");

    // Проверяем, удалось ли подключиться к базе данных
    if (mysqli_connect_errno()) {
        die("Ошибка подключения к базе данных: " . mysqli_connect_error());
    }

    // Получаем id комментария из URL
    $commentID = $_GET['id'];

    // Создаем запрос на удаление комментария по его id
    $query = "DELETE FROM Comment WHERE Comment_ID = $commentID";

    // Выполняем запрос
    $result = mysqli_query($connection, $query);

    // Проверяем, удален ли комментарий
    if ($result) {
        // Успешное удаление комментария
        //echo "Комментарий успешно удален.";
        header("Location: $_SERVER[HTTP_REFERER]");
    } else {
        // Ошибка при удалении комментария
        echo "Ошибка при удалении комментария: " . mysqli_error($connection);
    }

    // Закрываем подключение к базе данных
    mysqli_close($connection);
} else {
    echo "Вы должны быть авторизованы для удаления комментария.";
}
