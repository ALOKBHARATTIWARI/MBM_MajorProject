
<?php
session_start();
    $_SESSION['x']=1;
    
    $conn=mysqli_connect("localhost","root","","crime_portal");
    if(!$conn)
    {
        die("could not connect".mysqli_error());
    }
    mysqli_select_db($conn,"crime_portal");
    
    if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        $First_Name=$_POST['First_Name'];
        $Middle_Name=$_POST['Middle_Name'];
        $Last_name=$_POST['Last_name'];
        $Address=$_POST['Address'];
        $PIN_Code=$_POST['PIN_Code'];
        $State=$_POST['State']; 
       $Discription=$_POST['Discription'];
        $Suspect_Age=$_POST['Suspect_Age'];
        $Suspect_Gender=$_POST['Suspect_Gender']; 
       $Suspect_Height=$_POST['Suspect_Height'];
        $Weapon=$_POST['Weapon']; 
        $Crime_Type=$_POST['Crime_Type'];
       
          $reg="insert into new_case values('$First_Name','$Middle_Name','$Last_name','$Address','$PIN_Code','$State','$Discription','$Suspect_Age','$Suspect_Gender','$Suspect_Height','$Weapon','$Crime_Type')";
     mysqli_select_db($conn,"crime_portal");
        $res=mysqli_query($conn,$reg);
        if(!$res)
            {
        $message1 = "Case Already Exist";
        echo "<script type='text/javascript'>alert('$message1');</script>";
    }
            
        else
    {
        $message = "New case Added Successfully";
        echo "<script type='text/javascript'>alert('$message');</script>";
    }
    }

?>