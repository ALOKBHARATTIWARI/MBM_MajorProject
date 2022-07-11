<!DOCTYPE html>
<html>
<head>
<?php
session_start();
   
    
    $conn=mysqli_connect("localhost","root","","crime_portal");
    if(!$conn)
    {
        die("could not connect".mysqli_error());
    }
    mysqli_select_db($conn,"crime_portal");
    
    if($_SERVER["REQUEST_METHOD"]=="POST")
    
       
      
      
        
     
       $Suspect_Age=$_POST['Suspect_Age'];
      
       $Suspect_Height1=$_POST['Suspect_Height'];
        $Weapon=$_POST['Weapon']; 
        $Crime_Type=$_POST['Crime_Type'];

                                            
   $reg="Select First_Name,state,Discription,weapon,Crime_Type from new_case where Suspect_Age = '$Suspect_Age' and Suspect_Height = '$Suspect_Height1'";
 mysqli_select_db($conn,"crime_portal");
 $res=mysqli_query($conn,$reg);
 $que="select c_id,description,inc_status,pol_status from complaint where 1='1' ";
 mysqli_select_db($conn,"crime_portal");
    $res1=mysqli_query($conn,$que);
?>

if(!$res)
            {

        echo "<script type='text/javascript'>alert('Suspect found succeussfully');</script>";

  
<title>Complaint Details</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    
   
    <body style="background-color: #dfdfdf;">
     <nav  class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.php"><b>Crime Portal</b></a>
            </div>
            
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="page4.php">Prediction</a></li>
                    <li class="active" ><a href="head_case_details.php">Prediction Details</a></li>
                    <li><a href="logout.php">Logout &nbsp <i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
                </ul>
            </div>
         </div>
        </nav>
 
        <div style="padding:50px;margin-top:10px;">
            <table class="table table-bordered">
            <thead class="thead-dark" style="background-color: black; color: white;">
                <tr>
                    <th scope="col"> Name</th>
                    <th scope="col">State</th>
                    <th scope="col">Discription</th>
                    <th scope="col">Weapon Used</th>
                    <th scope="col">Crime Type</th>
                </tr>
            </thead>

            <?php
 while($rows=mysqli_fetch_assoc($res)){
            ?> 
             <tbody style="background-color: white; color: black;">
              <tr>
                <td><?php echo $rows['First_Name']; ?></td>
                <td><?php echo $rows['state']; ?></td>     
                <td><?php echo $rows['Discription']; ?></td>     
                <td><?php echo $rows['weapon']; ?></td>
              <td><?php echo $rows['Crime_Type']; ?></td>
              </tr>
             </tbody>
            <?php
              } 
            ?>
            </table>
        </div>
    
        <div style="padding:50px; margin-top:8px;">
            <table class="table table-bordered">
               <thead class="thead-dark" style="background-color: black; color: white;">
                   <tr>
                        <th scope="col">Date Of Update</th>
                        <th scope="col">Case Update</th>
                   </tr>
               </thead>
           <?php
              while($rows1=mysqli_fetch_assoc($res1)){
            ?> 
             <tbody style="background-color: white; color: black;">
              <tr>
                <td><?php echo $rows1['c_id']; ?></td>
                <td><?php echo $rows1['description']; ?></td>     
                <td><?php echo $rows1['inc_status']; ?></td>     
                <td><?php echo $rows1['pol_status']; ?></td>
              </tr>
             </tbody>
            <?php
              } 
            ?>
            </table>
        </div>
    
        <div style="position: fixed;
          left: 0;
          bottom: 0;
          width: 100%;
          height: 30px;
          background-color: rgba(0,0,0,0.8);
          color: white;
          text-align: center;">
         <h4 style="color: white;">&copy <b>Crime Portal 2021</b></h4>
       </div> 
    
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.js"></script>
     <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>


    }     
 else
    {
<?php
        $message = "Not found any match";
        echo "<script type='text/javascript'>alert('$message');</script>";
   
?> }
 