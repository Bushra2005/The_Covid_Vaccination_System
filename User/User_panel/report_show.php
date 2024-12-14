<?php
include("connection.php");
    include("header.php");

?>

<div class="hero-v1">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-lg-6 text-center mx-auto">
            <span class="d-block subheading"></span>
            <h1 class="heading mb-3">Check Report</h1>
            <p class="mb-5">Stay at home and call your doctor:</strong> The COVID-19 helpline centre in Pakistan · A vital support system during a difficult time · 70,000 contact a day .</p>
          </div>
          
        </div>
      </div>
    </div>
    <div class="container">

    <table class="table table-responsive-sm borderd-dark">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>First Name</th>
                                                <th>Contact</th>
                                                <th>CNIC</th>
                                                <th>Date Of Birth</th>
                                                <th>Location</th>
                                                <th>Post Code</th>
                                                <th>Vaccine</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody class="text-dark">
                                            <tr>
                                               <?php
                                               $sql = "select * from report";
                                               $result = mysqli_query($conn , $sql);
                                               while($rows = mysqli_fetch_assoc($result)){
                                               ?>
                                                <td><?php echo $rows['id'] ?></td>
                                                <td><?php echo $rows['first_name'] ?></td>
                                                <td><?php echo $rows['contact'] ?></td>
                                                <td><?php echo $rows['cnic'] ?></td>
                                                <td><?php echo $rows['dob'] ?></td>
                                                <td><?php echo $rows['location'] ?></td>
                                                <td><?php echo $rows['postcode'] ?></td>
                                                <td><?php echo $rows['vaccine'] ?></td>
                                                <td><?php echo $rows['status'] ?></td>
                                              </tr>
                                               <?php } ?>
                                        </tbody>
                                    </table>
    </div>
<?php

include("footer.php");
?>