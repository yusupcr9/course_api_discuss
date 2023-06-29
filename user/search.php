<?php
include '../connection.php';

$search_query = $_POST['search_query'];

$sql = "SELECT * FROM user
        WHERE
        username LIKE '%$search_query%'
        ";
$result = $connect->query($sql);
if(mysqli_num_rows($result) > 0){
    $data = array();
    while($get_row = $result->fetch_assoc()){
        $data[] = $get_row;
    }
    echo json_encode(array(
        "success":true,
        "data":$data,
    ));
}else{
    echo json_encode(array(
        "success":false,
        "data":[],
    ));
}
?>