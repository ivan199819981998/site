
<?php
require ('DB.php')
?>

<?php
/*mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);*/
$prid=($_GET["prid"]);
$prid = (int)$prid;
    $index3 = mysqli_query($dbconnect,"SELECT p.Name, p.ID_Products, p.Characteristics, p.Description, p.Price, p.Discont_Price, p.Promo_Code_Price, p.Main_Picture, pi.Link
    FROM products p
    JOIN pictures pi on p.Main_Picture = pi.ID_Picture
    where p.ID_Products=$prid");
$row = mysqli_fetch_assoc($index3);
$image= $row['Link'];
?>

<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width= device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="css/CSS3.css"/>
  </head>

  <header>

    <div class="header">
        <a class="menu" href="http://192.168.1.11">↞На главную↠</a>
        <a class="back" href="#" onclick="history.back(-1);">↞Назад↠</a>
    <p >Здесь могла быть ваша реклама!</p>
    </div>
    
    </header>

  <body>
    <main class="main">
      <div class="layout">
        <div class="choises">

        <?php
             $dopimg1 = mysqli_query($dbconnect,"SELECT p.ID_Products, p.Name, pi.Link
             FROM products p
             JOIN productspictures pr on pr.ID_Products = p.ID_Products
             JOIN pictures pi  on pi.ID_Picture = pr.ID_Picture
             where p.ID_Products=$prid");
             while ($dopimg2 = mysqli_fetch_assoc($dopimg1)){
              $gg=$dopimg2['Link'];
           echo("<img class='choise1 zoom' src='img/$gg' alt='' />");
             }
            ?>

          <img
            class="button_menu"
            src="img/Button_menu_more_closed2.png"
            alt=""
          />
        </div>
        <div class="window" style=" background-image: url(../img/<?php  echo ($image);  ?>)"></div>
        <div class="frame">
         
          <div class="frame_zaglav">
            <h1 style="margin-bottom: 20px"><?php  echo ($row['Name']);  ?></h1>
            <div style="justify-content: flex-start; display: flex">

            <?php
             $categ = mysqli_query($dbconnect,"SELECT p.Name, s.Name, s.ID_Section
             FROM products p
             JOIN productssections pr on pr.ID_Products = p.ID_Products
             JOIN sections s on s.ID_Section = pr.ID_Section
             where p.ID_Products=$prid");
             while ($tuyu = mysqli_fetch_assoc($categ)){
        
             $gg=$tuyu['Name'];
             $id=$tuyu['ID_Section'];
              echo("<a href='http://192.168.1.11/index2.php.?id=$id&col=1' style='margin-right: 20px'> $gg </a>");}
              ?>

            </div>

          </div>
          <div class="frame_coin">
            <p class="coin1"><strike><?php  echo ($row['Price']);  ?></strike></p>
            <p class="coin2"><?php  echo ($row['Discont_Price']);  ?></p>
            <p class="coin3"><?php  echo ($row['Promo_Code_Price']);  ?></p>
            <p style="font-size: 18px">- с промокодом</p>
          </div>
          <div class="frame_inf">
            <img
              class="icons"
              src="img/5cbe5376cf61ec6db1ffa12a_4dbcfa324f2b864ff2b81a3b7cce4b96.png"
              alt=""
            />
            <p style="display: inline-block; margin-top: 25px">
              В наличии в магазине
            </p>
            <a href="">Lamoda</a> <br />
            <img
              class="icons"
              src="img/309-3090253_truck-comments-clipart.png"
              alt=""
            />
            <p style=" display: inline-block; margin-bottom: 17px; margin-top: 15px; " >
              Бесплатная доставка
            </p>
          </div>

          <div style="display: flex; margin-top: 10px; width: 100%;">
            <div class="number" data-step="1" data-min="1" data-max="100">
              <input class="number_text" type="text" name="count" value="1" />
              <a href="#" class="number-minus">−</a>
              <a href="#" class="number-plus">+</a>
            </div>
            <div class="number_mes dn">
              <p>В корзину добавлено:&nbsp<span class="gg"></span> &nbsp<span class="ff"></span></p>
             </div>
          </div>
        
          <div class="frame_click">
            <button class="buy button">
              КУПИТЬ
            </button>
            <button style="margin-left: 20px" class="button">
              В ИЗБРАННОЕ
            </button>
          </div>
          <p class="frame_text">
          <?php  echo ($row['Description']);  ?>
            <br />Детали: <?php  echo ($row['Characteristics']);  ?>
          </p>
          <div class="messengers">
            <p>ПОДЕЛИТЬСЯ:</p>
            <img style=" width: 30px; height: 30px; display: inline-block; filter: brightness(110%); margin-left: 15px; " src="img/i (3).webp" alt="" />
            <img style=" width: 30px; height: 30px; display: inline-block; filter: brightness(100%); margin-left: 10px; " src="img/i.webp" alt="" />
            <img style=" width: 30px; height: 30px; display: inline-block; margin-left: 10px; " src="img/i (1).webp" alt="" />
            <img style=" width: 30px; height: 30px; display: inline-block; margin-left: 10px; " src="img/tw.png" alt="" />
            <div class="messengers_triangle"></div>
            <div class="messengers_rectangle"><p>123</p></div>
          </div>
        </div>
        <div></div>
        
      </div>

      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script>
        var currentMousePos = { x: -1, y: -1 };

        $(document).ready(function () {
          $(document).mousemove(function (event) {
            currentMousePos.x = event.pageX;
            currentMousePos.y = event.pageY;
          });

          $(".zoom").mouseenter(function () {
            currentlyZoomed = $(this).clone();

            currentlyZoomed.css({ position: "absolute", height: "0", width: "0" });
            currentlyZoomed.css({ top: currentMousePos.y - 200 });
            currentlyZoomed.appendTo($(this).parent());
            $(currentlyZoomed).animate({
              left: "+=200",
              height: "300",
              width: "200",
            });
          });

          $(".zoom").mouseout(function () {
            $(currentlyZoomed).hide("slow", function () {
              $(this).remove();
            });
          });
        });
      </script>

      <script>
        var winval="1";
        $(document).ready(function () {
          $("body").on("click", ".number-minus, .number-plus", function () {
            var $row = $(this).closest(".number");
            var $input = $row.find(".number_text");
            var step = $row.data("step");
            var val = parseFloat($input.val());
            if ($(this).hasClass("number-minus")) {
              val -= step; 
            } else {
              val += step;
            }
            $input.val(val);
            $input.change();
            return false;
          });

          $("body").on("change", ".number_text", function () {
            var $input = $(this);
            var $row = $input.closest(".number");
            var step = $row.data("step");
            var min = parseInt($row.data("min"));
            var max = parseInt($row.data("max"));
            var val = parseFloat($input.val());
            if (isNaN(val)) {
              val = step;
            } else if (min && val < min) {
              val = min;
            } else if (max && val > max) {
              val = max;
            }
            $input.val(val);
            winval=val;
          });
        });        
      </script>

      <script>
        $(document).ready(function()
        { 
        $(".buy").click(function()
        {
            
          if ($('.number_mes').hasClass("dn")) $('.number_mes').removeClass("dn")
          $('.gg').text(winval)
          
           if (winval < 2) {$('.ff').text("товар")} else $('.ff').text("товаров")
          window.setTimeout(function(){
            $('.number_mes').addClass("dn")
          }, 2000);
         
            });
          });
          
 
        </script>

    </main>
  </body>

  <footer>

    <div class="footer">
    <p style="display:flex; justify-content: center; color: white; font-size: 20px;">8-913-709-1807</p>
    </div>
    
    
    </footer>
    
</html>
