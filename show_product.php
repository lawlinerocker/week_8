<?php
session_start();
$servername="localhost";
$username="root";
$password="123456789";
$dbname="shop";
$per_page=5;
if(isset($_GET["page"])) $start_page=$_GET["page"]*$per_page;
else $start_page=0;
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
echo "Connect mysql successfully!";
$sql="SELECT * FROM product";
$result=mysqli_query($con,$sql);
$numrow=mysqli_num_rows($result);

echo "<br>".$numrow." Records<br>";
for($i=0;$i<ceil($numrow/$per_page);$i++)
    echo "<a href='show_product.php?page=$i'>[".($i+1)."]</a>";
$sql="SELECT * FROM product LIMIT $start_page,$per_page";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0){
    
    echo "<table border=1><tr><th>ID</th><th>Name</th><th>Description</th><th>Price</th><th>Image</th><th></th></tr>";
    while($row=mysqli_fetch_assoc($result)){
    echo "<tr style='text-align:center; font-weight:bold;'>";
    echo "<td>".$row["id"]."</td><td>".$row["name"]."</td><td>";
    echo $row["description"]."</td><td>".$row["price"]."</td><td><img src=".$row["img"]."width=100 height=100></td>";
    echo "<td><a href='add_product.php?id=".$row["id"]."'>ใส่ตระกร้า</a></td></tr>";
    }
    echo "</table>";
}else{
    echo "0 results";
}
if(isset($_SESSION["cart"])){
$total=0;
echo "<h1>ตะกร้าสินค้า</h1>";
echo "<table><tr><th>ลำดับ</th><th>ID</th><th>Name</th><th>Description</th><th>Price</th><th>Image</th></tr>";
    for($i=0;$i<count($_SESSION["cart"]);$i++)
    {
        $item=$_SESSION["cart"][$i];
        echo "<tr style='text-align:center; font-weight:bold;'>";
        echo "<td>".($i+1)."</td>";
        echo "<td>".$item['id']."</td>";
        echo "<td>".$item['name']."</td>";
        echo "<td>".$item['description']."</td>";
        echo "<td>".$item['price']."</td>";
        echo "<td><img src=".$item["img"]."width=100 height=100></td>";
        echo "<td><a href='del_cart.php?i=".$i."'>";
        echo "<font color='red'>x</font></a></td></tr>";
        $total+=$item['price'];
    }
echo "</table>";
echo "<button><a href='del_all.php'>นำสินค้าทั้งหมดออกจากตะกร้า</a></button>";
echo "<h1>ราคาสิ้นค้า $total บาท</h1>";
echo "<h2><a href='checkout.php'>สั่งซื้อ</a></h2>";
}
mysqli_close($con);
?>