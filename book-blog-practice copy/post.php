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
        // echo $_SESSION['auth'] != true;

        // Получаем значение параметра id из URL
        $id = $_GET['id'];

        // Подключаемся к базе данных
        $connection = new mysqli("localhost", "root", "", "new");

        // Создаем запрос для выборки данных поста с заданным id
        $query = "SELECT Post.*, Book.Title AS BookTitle, Author.Name AS AuthorName, Author.Surname AS AuthorSurname FROM Post LEFT JOIN Book ON Post.Book_ID = Book.Book_ID LEFT JOIN Author ON Book.Author_ID = Author.Author_ID WHERE Post.Post_ID = $id";
        $result = mysqli_query($connection, $query);

        // Проверяем, есть ли запись с таким id
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);

            // Выводим данные поста
            echo '
                <div class="">
                    <div>
                        <div class="d-lg-flex gap-5">
                           <div class="post-image">
                           <img src="media/images/posts/' . $row['photo'] . '"></img>
                           </div>
                             <div class="post-content d-flex flex-column gap-3">
                                

                                <table class="table">
                                    <thead>
                                        <tr>
                                        <th colspan="2" scope="col"  style="text-align: center;  ">Подробнее о посте</th>
                                        </tr>
                                    </thead>    
                                    <tbody>
                                        <tr>
                                            <th scope="row">Дата поста</th>
                                            <td>' . $row['Date'] . '</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Автор книги</th>
                                            <td>' . $row['AuthorName']  . " " . $row['AuthorSurname']  . '</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Название книги</th>
                                            <td>' . $row['BookTitle'] . '</td>
                                        </tr>
                                    </tbody>
                                </table>                                
                                <h2>' . $row['Title'] . '</h2>
                                <p class=" ">' . $row['Text'] . '</p>

                               
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

    <div class="container">
        <?php
        // Создаем запрос для выборки комментариев поста с заданным id
        $queryComments = "SELECT Comment.*, User.Name, User.Surname FROM Comment JOIN User ON Comment.User_ID = User.User_ID WHERE Comment.Post_ID = $id";
        $resultComments = mysqli_query($connection, $queryComments);

        // Проверяем, есть ли комментарии
        if (mysqli_num_rows($resultComments) > 0) {
            echo '<div class="list-group">
        <h3>Комментарии</h3>';

            while ($rowComment = mysqli_fetch_assoc($resultComments)) {
                echo '
            <div class="list-group-item align-items-start">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1">' . $rowComment['Name'] . " "  . $rowComment['Surname']  . '</h5>'
                    . '<small>' . $rowComment['Comment_Date'] . '</small>'
                    . '</div>'
                    . '<div class="d-flex w-100 justify-content-between">'
                    . '<p class=" ">'
                    . $rowComment['Text']
                    . '</p>';
                // Проверяем, является ли текущий авторизованный пользователь автором комментария
                if (!empty($_SESSION['auth'])) {
                    // Выводим кнопку "Удалить" с передачей id комментария в URL
                    echo '<a href="delete_comment.php?id=' . $rowComment['Comment_ID'] . '" class="btn btn-danger">Удалить</a>';
                }

                echo '</div>';
                echo '</div>';
            }

            echo '</div>';


            if (!empty($_SESSION['auth'])) {

                echo '
                    <form method="POST" action="" class="mt-3 m-1">
                        <div class="form-group">
                            <label for="comment">Оставьте комментарий:</label>
                            <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
                        </div>
                        <input type="hidden" name="id" value="' . $id . '">
                        <button type="submit" class="btn btn-primary mt-3">Отправить</button>
                        
                    </form>';
                session_start();
                if (isset($_POST['id']) && !empty($_POST['id']) && isset($_POST['comment']) && !empty($_POST['comment']) && isset($_SESSION['User_ID']) && !empty($_SESSION['User_ID'])) {

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
            }
            } else {
                echo '<p>Для того чтобы оставить комментарий, пожалуйста, авторизуйтесь.</p>';
            }
        } else {
            echo '<div class="container">
                    <p>Комментариев пока нет</p>
                </div>';
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
                <li class="nav-item"> <a class="nav-link px-2 text-muted" href="#">Посты</a></li>
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