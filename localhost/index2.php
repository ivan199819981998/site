<?php
require ('DB.php')
?>





<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"  href="css/CSS2.css">
</head>

<header>

    <div class="header">
        <a class="menu" href="http://localhost">↞На главную↠</a>
        <a class="back" href="#" onclick="history.back(-1);">↞Назад↠</a>
    <p >Здесь могла быть ваша реклама!</p>
    </div>
    
    
    </header>

    <body>
    <main class="main">
    
        <div class="area">
         


        <?php


?>




        <?php


  $id=($_GET["id"]);
  $id = (int)$id;
  $colvo=($_GET["col"]);
  $colvo = (int)$colvo;
  $do=12*$colvo;
  $ot=(12*$colvo)-12;
$index2 = mysqli_query($dbconnect,"SELECT p.Promo_Code_Price, p.ID_Products , p.name as name, pi.Link, pi.ALT
FROM products p
JOIN productssections pr on pr.ID_Products= p.ID_Products
JOIN sections s on s.ID_Section=pr.ID_Section
JOIN pictures pi on pi.ID_Picture = p.Main_Picture
where p.ON_OF =1 AND s.ID_Section= $id 
limit $ot,$do
");

$row3 = mysqli_query($dbconnect,"SELECT  COUNT(p.name)
FROM products p
JOIN productssections pr on pr.ID_Products= p.ID_Products
JOIN sections s on s.ID_Section=pr.ID_Section
where p.ON_OF =1 AND s.ID_Section= $id");
$row3 = mysqli_fetch_assoc($row3);
$row3=(($row3['COUNT(p.name)'])/12);

while ($row = mysqli_fetch_assoc($index2)) {
   
    $id=$row['ID_Section'];
    $prid=$row['ID_Products'];
    $prid = (int)$prid;
    $img=$row['Link'];
         echo ("<div class='block hover'>
         <a href='http://localhost/index3.php.?id=.$id.&prid=$prid' class='block1 hover1' style='background-image: url(../img/$img)'></a>
         <p class='text'> "); 
         echo($row['name']); 
         echo("<br>"); 
         echo( $row['Promo_Code_Price']);
         echo ' руб.';
         echo (" </p>
     </div>");
 } 


 if ($row3 >1) {
    $row3++;
    echo ("<div class='block2'>");
    $colvo=1;
 while ($row3 >1){
    $id=($_GET["id"]);
  $id = (int)$id;
    echo ("<a href='http://localhost/index2.php.?id=$id&col=$colvo' class='block3'>"); 
    echo ($colvo);
    echo ("</a>"); 
    $row3=$row3-1;
    $colvo++;
   }

   echo ("
   </div>");
}

 


 $do=13;
?>
        
 

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