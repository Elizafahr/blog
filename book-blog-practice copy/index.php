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
    <nav id="navbar" class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="index.php">
                <img src="media/images/logo-black.svg" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#navbar">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#posts">Посты</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Связаться</a>
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
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

    <div class="posts" id="posts">
    <div class="container">
            <h2>Книжные новинки и интересные книги</h2>
            <div class=" posts-cards">
                <?php
                // Заполняю список постов
                $connection = new mysqli("localhost", "root", "", "new");

                $query = "SELECT Post.*, Book.Title AS BookTitle, Author.Name AS AuthorName FROM Post LEFT JOIN Book ON Post.Book_ID = Book.Book_ID LEFT JOIN Author ON Book.Author_ID = Author.Author_ID";
                $result = mysqli_query($connection, $query);

                while ($row = mysqli_fetch_assoc($result)) {
                    echo '
                    <div class="col-sm-5  mb-3 mb-sm-0 col-lg-3">
                        <div class="card">
                            <div class="card-body">
                               <div class="card-img">  <img src="media/images/posts/' . $row['photo'] . '"></img></div>
                                <h4>' . $row['Title'] . '</h4>
                                <p class="card-text truncate">' . $row['Text'] . '</p>
                                
                                <div class="d-block"> 
                                    <div class="d-flex justify-content-between">
                                        <p class="ligth">' . $row['BookTitle'] . '</p>
                                        <p class="ligth"> ' . $row['AuthorName'] . '</p>

                                       <!--<p class="ligth">' . $row['Date'] . '</p>-->
                                    </div>
                                </div>
                                <a href="post.php?id=' . $row['Post_ID'] . '" class="btn btn-primary">Go somewhere</a>                    

                                <form method="get" action="post.php">
                                    <input type="text" name="Post_ID" value=' . $row['Post_ID']  . ' class="hidden">
                                </form>
                            </div>
                        </div>
                    </div>
                    ';
                }
                ?>

            </div>
        </div>
    </div>

    <div class="articles">
    <div class="container">
        <h2>Статьи</h2>
        <?php
        // Заполняю список постов
        $connection = new mysqli("localhost", "root", "", "new");

        $query = "SELECT * FROM Article";
        $result = mysqli_query($connection, $query);
        echo '<div class=" article-cards">';
        while ($row = mysqli_fetch_assoc($result)) {
            echo '
            <div class=" article-card   mt-3 m-1 ' . $row['bg']  .'">
                    <div class="article-card-body d-flex flex-column  ">
                        <h4>' . $row['Title'] . '</h4>
                        <a href="article.php?id=' . $row['Article_ID'] . '" class="btn btn-primary">Читать</a>                    
                        ';

            // Проверка наличия фотографии
            if ($row['img'] !== null) {
                echo '<img src="media/images/articles/'.  $row['img'] .  '"></img>';
            }

            echo '
                        <form method="get" action="article.php">
                            <input type="text" name="Article_ID"class="hidden value=' . $row['Article_ID ']  . ' ">
                        </form>
                    </div>
            </div>
            ';
        }
        echo '</div>';

        ?>
    </div>
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