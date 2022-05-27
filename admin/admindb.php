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

//admin login validation

if (isset ($_POST['username']) && isset ($_POST['password']) ) 
{

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
      }

      $name = test_input ($_POST['username']);
      $password = test_input ($_POST['password']);
      
      if (empty($name))
      {
          header("Location:adminlogin.php?error=Username is required");
      }
      else if (empty($password))
      {
        header("Location:adminlogin.php?error=Password is required");
      }
      else
      {
        

        $sql = " SELECT * FROM  glm_db_admins WHERE glm_db_admins_username='$name' and glm_db_admins_password='$password' ";
        $query = mysqli_query($db,$sql);
  
        if($row = mysqli_fetch_array($query))
        {
          
          $_SESSION['name'] = $name;
          $newname =  $_SESSION['name'];
          
          header("Location: admin.php");
        } 
            else 
            {
        		header("Location: adminlogin.php?error=Incorect Email and password combination");
        	}
      }
      
    }

    /* Adding employee and creating account */

if (isset($_POST['submit'])) {
  // receive all input values from the form
  $name = mysqli_real_escape_string($db, $_POST['name']);
  $email= mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password']);
  $confirmpassword = mysqli_real_escape_string($db, $_POST['password2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array

  //validate name, password and email for required format
  if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) 
  {
    header("Location:adduser.php?error=Only letters and white space allowed on names");
  }
  else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) 
  {
    header("Location:adduser.php?error=Email Format Invalid");
  }
  else if (strlen($_POST["password"]) < 8) 
  {
    header("Location:adduser.php?error=Your Password Must Contain At Least 8 Characters!"); 
  }
  elseif(!preg_match("#[0-9]+#",$password)) 
  {
    header("Location:adduser.php?error=Your Password Must Contain At Least 1 Number!");  
  }
  elseif(!preg_match("#[A-Z]+#",$password))
  {
    header("Location:adduser.php?error=Your Password Must Contain At Least 1 Capital Letter!");   
  }
  elseif(!preg_match("#[a-z]+#",$password)) 
  {
    header("Location:adduser.php?error=Your Password Must Contain At Least 1 Lowercase Letter!");  
  }

  if (empty($name))
{
    header("Location:adduser.php?error=Name is required");
}
else if (empty($email))
{
  header("Location:adduser.php?error=email is required");
}

else if (empty($password))
{
  header("Location:adduser.php?error=Password is required");
}
else if ($password != $confirmpassword)
{
  header("Location:admin.php?error=Passwords do not Match");
}
 else
 {
  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM glm_db_employees WHERE glm_db_employees_email='$email' OR glm_db_employees_password='$password' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);

  if ($user) { // if user exists
    if ($user['glm_db_employees_email'] === $email) {
      echo"error=Email already exists!";
    }
  }
  else
  {
    $password = md5($password);
    $insert_query = "INSERT INTO glm_db_employees (glm_db_employees_name,glm_db_employees_email,  glm_db_employees_password) 
          VALUES( '$name','$email','$password')"; 
    mysqli_query($db, $insert_query);
    if($insert_query)
    {
    $_SESSION['glm_db_employees_name'] = $name;
    echo ("<SCRIPT LANGUAGE='JavaScript'>
          window.alert('Added Successfully')
          window.location.href='admin.php';;
          </SCRIPT>");
    
  }
}

  }

}


 /* Adding cashier */

 if (isset($_POST['send'])) {
  // receive all input values from the form
  $name = mysqli_real_escape_string($db, $_POST['name']);
  $email= mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password']);
  $confirmpassword = mysqli_real_escape_string($db, $_POST['password2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array

  //validate name, password and email for required format
  if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) 
  {
    header("Location:addcashier.php?error=Only letters and white space allowed on names");
  }
  else if (strlen($_POST["password"]) < 8) 
  {
    header("Location:addcashier.php?error=Your Password Must Contain At Least 8 Characters!"); 
  }
  elseif(!preg_match("#[0-9]+#",$password)) 
  {
    header("Location:addcashier.php?error=Your Password Must Contain At Least 1 Number!");  
  }
  elseif(!preg_match("#[A-Z]+#",$password))
  {
    header("Location:addcashier.php?error=Your Password Must Contain At Least 1 Capital Letter!");   
  }
  elseif(!preg_match("#[a-z]+#",$password)) 
  {
    header("Location:addcashier.php?error=Your Password Must Contain At Least 1 Lowercase Letter!");  
  }

  if (empty($name))
{
    header("Location:addcashier.php?error=Name is required");
}

else if (empty($password))
{
  header("Location:addcashier.php?error=Password is required");
}
else if ($password != $confirmpassword)
{
  header("Location:admin.php?error=Passwords do not Match");
}
 else
 {
  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM glm_db_cashiers WHERE glm_db_cashiers_username='$name' OR glm_db_cashiers_password='$password' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);

  if ($user) { // if user exists
    if ($user['glm_db_cashiers_username'] === $email) {
      echo"error=Username already exists!";
    }
  }
  else
  {
    $password = md5($password);
    $insert_query = "INSERT INTO glm_db_cashiers (glm_db_cashiers_username, glm_db_cashiers_password) 
          VALUES( '$name','$password')"; 
    mysqli_query($db, $insert_query);
    if($insert_query)
    {
    $_SESSION['glm_db_cashiers_username'] = $name;
    echo ("<SCRIPT LANGUAGE='JavaScript'>
          window.alert('Added Successfully')
          window.location.href='admin.php';;
          </SCRIPT>");
    
  }
}

  }

}


?>