<?php
session_start();
$fname= $_POST["fname"];
$lname= $_POST["lname"];
$address= $_POST["address"];
$mobile= $_POST["mobile"];
$servername="localhost";
$username="root";
$password="123456789";
$dbname="shop";
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
//echo "Connect mysql successfully!";
$sql="INSERT INTO order_product (fname, lname,address,mobile)";
$sql.="VALUES ('$fname', '$lname', '$address','$mobile');";
//echo $sql;
if (mysqli_query($con, $sql)) {
    $last_id = mysqli_insert_id($con);
    //echo "New record created successfully. Last inserted ID is: " . $last_id;
    // loop in session cart and insert each item to database
    $sql1="INSERT INTO order_details (order_id,product_id) VALUES ";
    for($i=0;$i<count($_SESSION["cart"]);$i++){
        $item_id=$_SESSION["cart"][$i]['id'];
        $sql1.="('$last_id','$item_id')";
        if($i<count($_SESSION["cart"])-1)
         $sql1.=",";
        else
         $sql.=";";
    }
    //echo $sql1;
    if(mysqli_query($con,$sql1)) echo "บันทึกข้อมูลการสั่งซื้อเรียบร้อยแล้ว";
    $sql = "SELECT * FROM order_product";
    $result = mysqli_query($con,$sql);
    $last_order_id = 0;
    $sumprice=0;
    if(mysqli_num_rows($result)>0){
      while($row=mysqli_fetch_assoc($result)){
        $last_order_id = $last_order_id + 1;
      }
    }
    $sql = "SELECT * FROM `order_product`,`order_details`,`product` 
    WHERE `order_product`.id = `order_details`.order_id 
    AND `order_details`.product_id = `product`.id 
    AND `order_product`.id=$last_order_id";
    $result = mysqli_query($con,$sql);
    if(mysqli_num_rows($result)>0){
      echo "<table border='3'
      style='text-align:center;
      font-weight:bold;'>";
      echo "<tr>
      <th>DATE</th>
      <th>firstname</th>
      <th>lastname</th>
      <th>address</th>
      <th>mobile</th>
      <th>id</th>
      <th>name</th>
      <th>price</th>
      <th>img</th></tr>";
      while($row=mysqli_fetch_assoc($result)){
        $sumprice = $sumprice + $row['price'];
        echo "<tr>
        <td>".$row['date_time']."</td>
        <td>".$row['fname']."</td>
        <td>".$row['lname']."</td>
        <td>".$row['address']."</td>
        <td>".$row['mobile']."</td>
        <td>".$row['id']."</td>
        <td>".$row['name']."</td>
        <td>".$row['price']."</td>
        <td><img src=".$row['img']." width=100 height=100></td>
        </tr>";
      }
    }
    echo "<br><h1>ราคาสินค้ารวม ".$sumprice." บาท</h1><br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
//$result=mysqli_query($con,$sql);
//$numrow=mysqli_num_rows($result);
?>