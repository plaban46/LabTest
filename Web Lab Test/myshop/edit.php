<?php
$servername ="localhost";
$username = "root";
$password = "";
$database = "myshop";

$connection = new mysqli($servername,$username,$password,$database);

$id = "";
$name = "";
$email = "";
$phone = "";
$address = ""; 


if($_SERVER['REQUEST_METHOD'] == 'GET'){
        //GET METHOD: Show the data of the cilent
        if(!isset($_GET["id"])){
            header("location: /myshop/index.php");
            exit;
        }

        $id = $_GET["id"];

        $sql = "select * from clients where id=$id";
        $result = $connection->query($sql);
        $row = $result->fetch_assoc();

        if(!$row){
            header("location: /myshop/index.php");
            exit;
        } 
        $name = $row["name"];
        $email = $row["email"];
        $phone = $row["phone"];
        $address = $row["address"];
    }else{
        //POST METHOD: Update the data of the clint

        $id = $_POST["id"];
        $name = $_POST["name"];
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $address = $_POST["address"];
    
    
            do{
                if(empty($name) || empty($email) || empty($phone) || empty($address)){ 
                    die("All Fields are required !!");
                    break;
                }
    
    
                //$sql = "update clients set name=$name,email=$email,phone=$phone,address=$address where id=$id";   // Single cotation needed
                $sql = "update clients set name='$name',email='$email',phone='$phone',address='$address' where id=$id";
                $result = $connection->query($sql);
    
                if(!$result){
                    die("Invalid Query");
                    break;
                }
                header("location: /myshop/index.php");
                exit;
         
            }while(false);  

    }
 
  
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Shop</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container my-5">
          <h2>New Client</h2>
          <form method="post">

               <input type="hidden" name="id" value="<?php echo "$id" ?>">
                
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Name</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="name" value="<?php echo "$name" ?>">
                    </div>
                </div> 
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Email</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="email" value="<?php echo "$email" ?>">
                    </div>
                </div> 
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Phone</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="phone" value="<?php echo "$phone" ?>">
                    </div>
                </div> 
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Address</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="address" value="<?php echo "$address" ?>">
                    </div>
                </div> 
                <div class="row mb-3">
                    <div class="offset-sm-3 col-sm-3 d-grid">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div> 
                    <div class="col-sm-3 d-grid">
                        <a href="/myshop/index.php" class="btn btn-outline-primary" role="button">Cancel</a>
                    </div>
                </div> 
          </form>
    </div>
</body>
</html>