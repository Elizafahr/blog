<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style/index.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="#">BooksBlog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
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
                <form class="d-flex" role="login">
                    <button class="btn login">
                        <img src="media/images/user.png" alt="">
                    </button>
                </form>
            </div>
        </div>
    </nav>

    <div class="header-content">
        <div class="container">
            <div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="media/images/slider-1.jpg" class="d-block w-100" alt="1">
                    </div>
                    <div class="carousel-item">
                        <img src="media/images/slider-2.jpg" class="d-block w-100" alt="2">
                    </div>
                    <div class="carousel-item">
                        <img src="media/images/slider-3.jpg" class="d-block w-100" alt="3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

    <div class="posts">
        <div class="container">
            <h2>Книжные новинки и интересные книги</h2>
            <div class="flex posts-cards">
                <?php

                // Заполняю список постов
                $connection = new mysqli("localhost", "root", "", "Fakhrutdinova_books_block");

                $query = "SELECT * FROM Post";
                $result = mysqli_query($connection, $query); // Используйте mysqli_query или PDO::query в зависимости от выбранного метода подключения
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '
                    <div class="col-sm-3 mb-3 mb-sm-0">
                    <div class="card">
                    <div class="card-body">';
                            // echo "<h4 class='card-title'" . $row['Title'] . "</h2>";
                            echo "<h2>" . $row['Title'] . "</h2>";
                            echo "<p class='card-text truncate'>" . $row['Text'] . "</p>";
                            echo "<a href='posts/post.php?id=" . $row['Post_ID'] . "' class='btn btn-primary'>Go somewhere</a>";
                            echo "<p>" . $row['Date'] . "</p>";
                            echo '</div>
                    </div>
                    </div>
                    ';
                    }

                ?>
            </div>
        </div>
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>

</body>

</html>