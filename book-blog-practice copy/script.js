 
    $(document).ready(function() {
        // Обработчик нажатия на кнопку удаления статьи
        $('.btn-delete-article').click(function(e) {
            e.preventDefault();

            var postId = $(this).data('post-id');

            // Отправка запроса на сервер для удаления статьи
            $.ajax({
                url: 'delete_article.php',
                method: 'POST',
                data: { postId: postId },
                success: function(response) {
                    // Обработка успешного удаления статьи
                    location.reload(); // Перезагрузить страницу после удаления
                },
                error: function(xhr, status, error) {
                    // Обработка ошибки удаления статьи
                    alert('Произошла ошибка при удалении статьи: ' + error);
                }
            });
        });
    }); 
