<?php
include("header.php");
include("connection.php");

?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
          <div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
                            <h1 class="display-5 fw-bold my-3">Vaccines save lives!</h1>
                        </div>
                    </div>
            
                </div>
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class=" bg-secondary text-white card-header">
                        <h4 class="text-white card-title">Vaccine Available </h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive ">
                            <table class="table table-responsive-sm text-dark">
                                <thead> 
                                    <tr>
                                        <th>Id</th>
                                        <th>Vaccine Name</th>
                                        <th>Vaccine Qauntity</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                <tr>
                                    <?php
                                       $sql = "select * from vaccine_list";
                                       $result = mysqli_query($conn , $sql);
                                    while($rows = mysqli_fetch_assoc($result)){
                                    ?>
                                    <td><?php echo $rows['id'] ?>
                                    
                                </td>
                                                <td><?php echo $rows['vaccine_name'] ?></td>
                                                <td><?php echo $rows['vaccine_qauntity'] ?> </td>
                                                 <td>
                                                 <a href="vaccine_delete.php?id=<?php echo $rows['id'];?>" class="mx-5 text-danger"> <i class="fa-solid fa-trash"></i></a>
                                                 <a href="vaccine_edit.php?id=<?php echo $rows['id'];?>" class="mx-5 text-success"> <i class="fa-solid fa-pen-to-square"></i></a>
                                                 </td>        
                                </tr>
                                    <?php  } ?>   
                              </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
<!-- modal work start -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title fw-bold" id="exampleModalLabel">Add Available Vaccine Here </h3>
        <button data-bs-dismiss="modal" aria-label="Close">
        <i class="fa-solid fa-x"></i>
        </button>
      </div>
      <div class="modal-body">
      <?php
    include("connection.php");
    $sql = "select * from vaccine_list";
    $result = mysqli_query($conn, $sql);
?>
<div class=" container">
<form method="POST">
    <div class="form-grp">
        <label for=""><h3>Vaccine Name:</h3></label>
        <input type="text" name="vaccine_name" class="form-control" placeholder="Enter New Vaccine Name">
    </div>
    <div class="form-grp mt-3">
        <label for=""><h3>Numbers Of Vaccine Available:</h3></label>
        <input type="number" name="vaccine_qauntity" class="form-control" placeholder="Enter New Vaccine Name">
    </div>
    <button type="submit" name="submit" class="btn btn-secondary mt-3 fw-bold"><i class="fa-solid fa-plus"></i>Add!</button>
</form>
</div>
<?php
if(isset($_POST['submit'])){
$_vaccineName = $_POST['vaccine_name'];
$_vaccineQauntity = $_POST['vaccine_qauntity'];
$sql = "insert into vaccine_list (vaccine_name, vaccine_qauntity ) values ('$_vaccineName','$_vaccineQauntity')";

$result = mysqli_query($conn, $sql);

echo"<script>
swal('Vaccine Register successfully!', 'success')
setTimeout(function(){
    window.location.href='vaccine.php';
},3000)
</script>";

} 


?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- modal work end -->

<?php
    include("footer.php");
?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


