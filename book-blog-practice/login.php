<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style/index.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="index.php">BooksBlog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        </div>
    </nav>
    <div class="container container-form">
        <!-- Вкладки для "Вход" и "Регистрация" -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="true">Вход</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="register-tab" data-bs-toggle="tab" data-bs-target="#register" type="button" role="tab" aria-controls="register" aria-selected="false">Регистрация</button>
            </li>
        </ul>

        <!-- Содержимое вкладок -->
        <div class="tab-content" id="myTabContent">
            <!-- Вкладка "Вход" -->
            <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                <form action="" method="post" class="d-flex flex-column gap-2">
                    <input class="form-control" type="text" name="username" placeholder="Имя пользователя">
                    <input class="form-control" type="password" name="password" placeholder="Пароль">
                    <button type="submit" name="login" class="btn btn-primary">Войти</button>
                </form>
            </div>

            <!-- Вкладка "Регистрация" -->
            <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                <form action="" method="post" class="d-flex flex-column gap-2">
                    <input class="form-control" type="text" name="name" placeholder="Имя">
                    <input class="form-control" type="text" name="surname" placeholder="Фамилия">
                    <input class="form-control" type="text" name="phoneNumber" placeholder="Номер телефона">

                    <input class="form-control" type="text" name="username" placeholder="Имя пользователя">
                    <input class="form-control" type="password" name="password" placeholder="Пароль">
                     <button type="submit" name="register" class="btn btn-primary">Зарегистрироваться</button>
                </form>
            </div>
        </div>

        <?php
        session_start();

        // Подключение к базе данных
        $connection = new mysqli("localhost", "root", "", "Fakhrutdinova_books_block");

        // Проверка соединения
        if ($connection->connect_error) {
            die("Ошибка соединения с базой данных: " . $connection->connect_error);
        }

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST['login'])) {
                // Получение данных из формы
                $username = $_POST['username'];
                $password = $_POST['password'];

                // Запрос на проверку данных в базе данных
                $query = "SELECT * FROM User WHERE login='$username' AND password='$password'";

                // if ($user_result->num_rows == 1) {
                //     $user_row = $user_result->fetch_assoc();
                //     $_SESSION["User_ID"] = $user_row['id'];
                // }

                $result = $connection->query($query);

                // Проверка результата запроса
                if ($result->num_rows == 1) { // Авторизация успешна
                    $user_row = $result->fetch_assoc();
                    $_SESSION["User_ID"] = $user_row['User_ID'];
                    $_SESSION['auth'] = true;
                    $_SESSION['username'] = $username;
 
                    header("Location: index.php"); // Перенаправление на главную страницу или другую страницу с авторизированным доступом
                    exit();
                } else { // Некорректные данные авторизации
                    echo "Некорректные данные авторизации";
                }
            } elseif (isset($_POST['register'])) {

                // Обработка регистрации
                $name = $_POST['name'];
                $surname = $_POST['surname'];
                $phoneNumber = $_POST['phoneNumber'];
                $username = $_POST['username'];
                $password = $_POST['password'];
                $role = 1 ; // Добавлено получение выбранной роли

                // Проверка наличия пользователя с таким же именем в базе данных
                $check_query = "SELECT * FROM User WHERE login='$username'";
                $check_result = $connection->query($check_query);

                if ($check_result->num_rows > 0) {
                    echo "Пользователь с таким именем уже зарегистрирован";
                } else {
                    // Регистрация пользователя
                    $register_query = "INSERT INTO User (name, surname, phoneNumber, login, password, role_id) VALUES ('$name', '$surname', '$phoneNumber', '$username', '$password', $role)";                    if ($connection->query($register_query) === true) {
                        echo "Регистрация успешна";
                        $_SESSION['auth'] = true;
                        echo $_SESSION['auth'] == true;
                        $_SESSION["authtry"] = "authtry";
                        $_SESSION["username"] = $username;


                    } else {
                        echo "Ошибка регистрации: " . $connection->error;
                    }
                }
            }
        }

        if (isset($_SESSION['auth'])) {
            echo "<br><a href='logout.php'>Выйти</a>"; // Добавлена ссылка для выхода из аккаунта
        }

        $connection->close();
        ?>
    </div>

    <div class="social-media container" id="contact">
            <a href="#" class="telegram social-media__btn">
                Мы в TG
                <img src="media/images/social-media/Telegram.svg" alt="Instagram">
            </a>
            <a href="#" class="instagram social-media__btn">
            Мы в Inst
            <img src="media/images/social-media/Instagram.svg" alt="Instagram">
            </a>
            <a href="#" class="instagram social-media__btn">
            Мы в Vk
                <img src="media/images/social-media/Instagram.svg" alt="Instagram">
            </a>
        </div>

        <div class="container">
  <footer class="py-3 my-4">
   
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a class="nav-link px-2 text-muted" aria-current="page" href="#">Главная</a></li>
      <li class="nav-item">  <a class="nav-link px-2 text-muted" href="#">Посты</a></li>
      <li class="nav-item"><a class="nav-link px-2 text-muted" href="#">Связатьс</a></li>
      <li class="nav-item"><a class="nav-link px-2 text-muted" href="#">Статьи</a></li>
     </ul>
    <p class="text-center text-muted">&copy; 2024 by me</p>
  </footer>
</div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Clamp.js/0.5.1/clamp.min.js"></script>
    <!--Сокращение текста-->
    <script>
        // Выбираем все элементы <p> внутри класса .card-text
        var truncate = document.querySelectorAll(".card-text");
        for (var i = 0; i < truncate.length; i++) {
            $clamp(truncate[i], {
                clamp: 5, // Число строк
                useNativeClamp: false // НЕ используем -webkit-line-clamp
            });
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>

</body>

</html>