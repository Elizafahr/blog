<?php
 $connection = mysqli_connect("localhost", "root", "", "new");

 // Проверяем, удалось ли подключиться к базе данных
 if (mysqli_connect_errno()) {
     die("Ошибка подключения к базе данных: " . mysqli_connect_error());
 } 
 if (isset($_POST['postId'])) {
    $postId = $_POST['postId'];

    // Создаем запрос на удаление комментария по его id
    $query = "DELETE FROM Post WHERE Post_ID = $postId";

    // Выполняем запрос
    $result = mysqli_query($connection, $query);

    // Проверяем, удален ли комментарий
    if ($result) {
        // Успешное удаление комментария
        //echo "Комментарий успешно удален.";
        header("Location: $_SERVER[HTTP_REFERER]");
    } else {
        // Ошибка при удалении комментария
        echo "Ошибка при удалении  : " . mysqli_error($connection);
    }

    // Закрываем подключение к базе данных
    mysqli_close($connection);
    echo 'Статья успешно удалена';
} else {
    echo 'Неверный запрос';
}

if (isset($_POST['Article_ID'])) {
    $articleId = $_POST['Article_ID'];

    // Создаем запрос на удаление комментария по его id
    $query = "DELETE FROM Article WHERE Article_ID = $articleId";

    // Выполняем запрос
    $result = mysqli_query($connection, $query);

    // Проверяем, удален ли комментарий
    if ($result) {
        // Успешное удаление комментария
        //echo "Комментарий успешно удален.";
        header("Location: $_SERVER[HTTP_REFERER]");
    } else {
        // Ошибка при удалении комментария
        echo "Ошибка при удалении  : " . mysqli_error($connection);
    }

    // Закрываем подключение к базе данных
    mysqli_close($connection);
    echo 'Статья успешно удалена';
} else {
    echo 'Неверный запрос';
}
?>
 