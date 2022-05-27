<?php
$servername = "127.0.0.1";
$uname = "root";
$password = "";
$db_name = "glm_db";

$db = mysqli_connect($servername, $uname, $password, $db_name);
if (!$db)
{
    echo "Connection Failed!";
    exit();
}


if (isset ($_POST['firstname']) && isset ($_POST['subject']) ) 
{
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
      }

      $name = test_input ($_POST['firstname']);
      $subject = test_input ($_POST['subject']);

      if (empty($name))
      {
          header("Location:contactus.php?error=Name is required");
      }
      else if (empty($subject))
      {
        header("Location:contactus.php?error=Subject is required");
      }
      else
      {
        $insertquery = "INSERT INTO glm_db_contacts (glm_db_contacts_customername,glm_db_contacts_message)  
        VALUES ('$name','$subject')";
        if(mysqli_query($db, $insertquery))
        {
        echo ("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('Message sent successfully!')
        window.location.href='contactus.php';
        </SCRIPT>");
        }
    }


}
?>