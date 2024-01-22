<?php
session_start();
session_destroy();
header("Location: index.php"); // Перенаправление на главную страницу после выхода
exit();
?>
