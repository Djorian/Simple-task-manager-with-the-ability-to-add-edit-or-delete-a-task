<?php

if (isset($_POST['id']) && isset($_POST['tasktext'])) {
    if(empty($_POST['id']) || empty($_POST['tasktext']))
    {
        echo 0;
        exit; 
    } else {

        function __autoload($class) {
            include "../Classes/$class.php";
        }

        // Получить id задачи
        $id =  (int) trim(strip_tags(htmlspecialchars($_POST['id'])));

        // Получить текст задачи
        $tasktext = (string) trim(strip_tags(htmlspecialchars($_POST['tasktext'])));

        // Подучить актуальную дату
        $date = date('d.m.Y');

        $mysql = new Database();

        $result = $mysql->update('tasklist', array('tasktext' => $tasktext, 'date' => $date), "id=$id");

        echo $result;
    }
}
?>