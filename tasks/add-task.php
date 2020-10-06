<?php 

if (isset($_POST['task-text'])) {
  if(empty($_POST['task-text']))
    {
      echo 0;
      exit; 
    } else {

        function __autoload($class) {
            include "../Classes/$class.php";
        }

        // Получить текст задачи
        $tasktext = (string) trim(strip_tags(htmlspecialchars($_POST['task-text'])));

        // Получить актуальную дату
        $date = date('d.m.Y');

        $mysql = new Database();

        $result = $mysql->insert('tasklist', array('tasktext'=>$tasktext,'date'=>$date));

        echo $result;
    }
}
?>