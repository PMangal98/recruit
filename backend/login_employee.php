<?php
  require_once 'dbconnect.php';
  
  $response = array();
  
  if(isset($_POST['username']) && isset($_POST['password'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $query = "SELECT username FROM recruit.logininfo WHERE `username`='$username' AND `password`='$password'";
    $result = mysqli_query($query);
    
    if(!emtpy($result)){
      if(mysql_num_rows($result) > 0){
        $response['success'] = 1;
        $response['message'] = 'VALID';
      }else{
        $response['success'] = 1;
        $response['message'] = 'INVALID';
      }
    }else{
      $response['success'] = 0;
      $response['message'] = 'ERROR';
    }
    
    echo json_encode($response);  
  }
?>
