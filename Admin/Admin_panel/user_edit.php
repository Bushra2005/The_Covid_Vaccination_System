<?php
include("connection.php");
include("header.php");

$ID = $_GET["id"];
$sql = "select * from user_register where id = $ID";
$result = mysqli_query($conn, $sql);
$rows = mysqli_fetch_assoc($result);
?>
<div class="main-panel">
			<div class="content">
				<div class="page-inner">
        <div class="content-body">
            
            <div class="container-fluid mt-5 col-lg-6">
                    <div class="card">
                            <div class="card-body">
                                <div class="basic-form">
                                <form method="POST">
                                    <div class="form-grp"> 
                                        <label for=""> Username:</label>
                                        <input type="text" value="<?php echo $rows['username'] ?>" name="username" class="form-control" placeholder="Enter Your Username">
                                    </div>
                                    <div class="form-grp mt-3">
                                        <label for="">Email</label>
                                        <input type="email" value="<?php echo $rows['email'] ?>" name="email" class="form-control" placeholder="Enter Your Email">
                                    </div>
                                    <div class="form-grp mt-3">
                                        <label for="">Password</label>
                                        <input type="password" value="<?php echo $rows['password'] ?>" name="password" class="form-control" placeholder="Enter Your Password">
                                    </div>
                                    <div class="form-grp mt-3">
                                        <label for="">Contact</label>
                                        <input type="text" value="<?php echo $rows['contact'] ?>" name="contact" class="form-control" placeholder="Enter Your Contact Number">
                                    </div>
                                    <button type="submit" name="update" class="btn btn-secondary mt-3 fw-bold">Update!</button>
                                </form>
                                 </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
            </div>
</div>

<?php
   if(isset($_POST['update'])){
    $_username = $_POST['username'];
    $_email = $_POST['email'];
    $_password = $_POST['password'];
    $_contact = $_POST['contact'];
    $id = $_GET['id'];
    $sql = "update user_register set username = '$_username', email = '$_email' , password = '$_password' , contact = '$_contact' where id = $id";
    $result = mysqli_query($conn, $sql);
    echo"<script>
    alert('Your User Record Has Been Updated!');
    window.location.href='user.php';
     </script>";
}

include("footer.php");
?>