<#import "/templates/tags/util.ftl" as util>
<!DOCTYPE html>
<html lang="en">
<head>
<#--title>${title}</title-->
<title>Nase apka</title>
<meta charset="utf-8">
<link rel="stylesheet" href="<@util.url "/css/reset.css" />" type="text/css" media="screen">
<link rel="stylesheet" href="<@util.url "/css/style.css" />" type="text/css" media="screen">
<link rel="stylesheet" href="<@util.url "/css/grid.css" />" type="text/css" media="screen">
<script src="<@util.url "/js/jquery.2.0.min.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/cufon-yui.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/cufon-replace.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/Vegur_300.font.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/Vegur_500.font.js" />" type="text/javascript"></script>
<script src="<@util.url "/js/FF-cash.js" />" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="<@util.url "/js/html5.js" />"></script>
<link rel="stylesheet" href="<@util.url "/css/ie.css" />" type="text/css" media="screen">
<![endif]-->
${head}
</head>
<body id="page2">
<div class="main-bg">
  <div class="bg">
    <!--==============================header=================================-->
    <header>
      <div class="main">
        <div class="wrapper">
          <h1><a href="/">Car Repair</a></h1>
          <!--div class="fright">
            <div class="indent"> <span class="address">8901 Marmora Road, Glasgow, D04 89GR</span> <span class="phone">Tel: +1 959 552 5963</span> </div>
          </div-->
        </div>
        <nav>
          <ul class="menu">
            <li><a href="/">Home</a></li>
            <li><a class="active" href="<@util.url "/search/" />"><@util.message "menu.search" /></a></li>
            <!--li><a href="maintenance.html">Maintenance </a></li>
            <li><a href="repair.html">Repair</a></li>
            <li><a href="price.html">Price List</a></li>
            <li><a href="locations.html">Locations</a></li-->
          </ul>
        </nav>
      </div>
    </header>
    <!--==============================content================================-->
    <section id="content">
      <div class="main">
        <div class="container_12">
          <!--div class="wrapper p5">
            <article class="grid_4">
              <div class="wrapper">
                <figure class="img-indent"><img src="images/page1-img1.png" alt=""></figure>
                <div class="extra-wrap">
                  <h4>Engine Repair</h4>
                  <p class="p2">Lorem ipsum dolosit amet, consetetur sadipng elitr sed diam nonumy eirmod.</p>
                  <a class="button" href="#">Read More</a> </div>
              </div>
            </article>
            <article class="grid_4">
              <div class="wrapper">
                <figure class="img-indent"><img src="images/page1-img2.png" alt=""></figure>
                <div class="extra-wrap">
                  <h4>Wheel Alignment</h4>
                  <p class="p2">Tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                  <a class="button" href="#">Read More</a> </div>
              </div>
            </article>
            <article class="grid_4">
              <div class="wrapper">
                <figure class="img-indent"><img src="images/page1-img3.png" alt=""></figure>
                <div class="extra-wrap">
                  <h4>Fluid Exchanges</h4>
                  <p class="p2">No sea takimata sanctus est gorem ipsum dolor sit amet forem ipsum.</p>
                  <a class="button" href="#">Read More</a> </div>
              </div>
            </article>
          </div-->
          <div class="container-bot">
            <div class="container-top">
              <div class="container">
                <div class="wrapper">
                  <article class="grid_8">
                    <div class="indent-left">
                      
                      <h3 class="prev-indent-bot">${title}</h3>
                      <div class="wrapper img-indent-bot">
                        <figure class="img-indent3"></figure>
                        <div class="extra-wrap">
                        	${body}
                        </div>
                      </div>
                    </div>
                  </article>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--==============================footer=================================-->
    <footer>
      <div class="main"> <span>Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved</span> Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a> </div>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>