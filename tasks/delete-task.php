<?php 

if (isset($_POST['delete-task'])){

    function __autoload($class) {
        include "../Classes/$class.php";
    }

    // Получить id задачи
    $taskID = (int) trim(strip_tags(htmlspecialchars($_POST['delete-task'])));

    $mysql = new Database();

    $result = $mysql->delete('tasklist', "id=$taskID");

    echo $result;
}
?>