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
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Посты</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">О нас</a>
                    </li>
                </ul>
                <form class="d-flex" action="login.php">
                    <button class="btn login" type="">
                        <img src="media/images/user.png" alt="">
                    </button>
                </form>

            </div>
        </div>
    </nav>

    <div class="container fullPost">
    <?php
    session_start();

    // Получаем значение параметра id из URL
    $id = $_GET['id'];

    // Подключаемся к базе данных
    $connection = new mysqli("localhost", "root", "", "new");

    // Создаем запрос для выборки данных поста с заданным id
    $query = "SELECT Article.*,  User.Name AS UserName, User.Surname AS UserSurname FROM Article LEFT JOIN User ON Article.User_ID = User.User_ID WHERE Article.Article_ID = $id";
    $result = mysqli_query($connection, $query);

    // Проверяем, есть ли запись с таким id
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);

        // Выводим данные поста
        echo '
        <div class="">
            <div>
                <div class="d-lg-flex gap-5">
                    ';

        // Проверка наличия фотографии
        if ($row['photo'] !== null) {
            echo '
            <div class="post-image">
                <img src="media/images/posts/' . $row['photo'] . '"></img>
            </div>
            ';
        }

        echo '
                    <div class="post-content d-flex flex-column gap-3">

                        



                     <div class="header">
                        <h2>' . $row['Title'] . '</h2>
                        <div class="header-image">
                         <img src="media/images/103.png"></img>
                         <table class="table">
                            <thead>
                           
                            <tr>
                            <th colspan="2" scope="col" style="text-align: center;  ">Подробнее о Статье</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">Дата поста</th>
                                <td>' . $row['Date'] . '</td>
                            </tr>
                            <tr>
                                <th scope="row">Автор статьи</th>
                                <td>' . $row['UserName'] . " " . $row['UserSurname'] . '</td>
                            </tr>
                             
                            </tbody>
                        </table>
                        </div>
                     </div>
                        <p class=" ">' . $row['Text'] . '</p>
                         <a href="index.php" style="width: max-content;" class="btn btn-primary">Назад</a>                    
                     </div>
                </div>
            </div>
        </div>
        ';
    } else {
        echo "Пост не найден";
    }
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