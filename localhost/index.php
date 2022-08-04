<?php
require ('DB.php')
?>

<?php



    $index1 = mysqli_query($dbconnect,"SELECT s.Name, SUM(p.Amount), s.ID_Section,p.ON_OF
    FROM sections s
    JOIN productssections pr on pr.ID_Section= s.ID_Section
    JOIN products p on p.ID_Products=pr.ID_Products
    where p.ON_OF=1
    GROUP by s.ID_Section");




/*while ($row = mysqli_fetch_assoc($Card8)) {
    
        /*printf("%s %s \n", $row["Name"], $row["SUM(p.Amount)"]);*/
/*} */
  
   
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"  href="css/CSS.css">
</head>

<header>

<div  class="header">
    
    <p >Добро пожаловать!</p>
</div>


</header>

<body>
    <main class="main">
    
        <div class="area">
         
        <?php


while ($row = mysqli_fetch_assoc($index1)) {
   /* $nn= printf('%s %s', $row['Name'], $row['SUM(p.Amount)']);
$nn;*/
    $id=$row['ID_Section'];
    
    $image = mysqli_query($dbconnect,"SELECT p.Promo_Code_Price, p.ID_Products , p.name as name, pi.Link, pi.ALT
FROM products p
JOIN pictures pi on pi.ID_Picture = p.Main_Picture
JOIN productssections pr on pr.ID_Products= p.ID_Products
JOIN sections s on s.ID_Section=pr.ID_Section
where p.ON_OF =1 AND s.ID_Section= $id 
limit 1 ");
$image = mysqli_fetch_assoc($image);
/*style="background-image: <?php  echo ($image['Link']);  ?>;"*/
    echo ("<div class='block hover'>
    <a href='http://localhost/index2.php.?id=$id&col=1' class='block1 hover1' style='background-image: url(../img/");
    echo($image['Link']);
    echo(")'></a> <p class='text'> "); 
    echo($row['Name']); 
    echo("<br>"); 
    echo( $row['SUM(p.Amount)']);
    echo ' шт';
    echo (" </p>
</div>");

} 
?>
        </div>
 

<?php/*
        mysqli_data_seek($Card8, 0);
       while ($row = mysqli_fetch_assoc($Card8)) {
    
        printf("%s %s \n", $row["Name"], $row["SUM(p.Amount)"]);
     } 
       */
 ?>

       
   
        




    </main>
</body>

<footer>

    <div class="footer">
    <p style="display:flex; justify-content: center; color: white; font-size: 20px;">8-913-709-1807</p>
    </div>
    
    
    </footer>
</html>