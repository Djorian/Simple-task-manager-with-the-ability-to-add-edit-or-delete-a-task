<?php

if (isset($_POST['show-tasks'])) {

    function __autoload($class) {
        include "../Classes/$class.php";
    }

    $mysql = new Database();

    $result = $mysql->select('id, tasktext, date', 'tasklist', '', '', 'id DESC', '');

    echo json_encode($result, JSON_UNESCAPED_UNICODE);
}

?>
