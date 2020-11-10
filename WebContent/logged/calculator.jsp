<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Sidebar template</title>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
 	<link href="css/nav.css" rel="stylesheet"> 
 	<link href="css/counter.css" rel="stylesheet">
 	<script src="js/counter.js"></script>
 	
        <link href="framework/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/freelancer.min.css" rel="stylesheet">
        <link href="framework/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
        <script src="framework/jquery/jquery.min.js"></script>
        <script src="framework/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="framework/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/feature.js"></script>
        <script src="framework/magnific-popup/jquery.magnific-popup.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link href="css/cards.css" rel="stylesheet" />
        <link href="css/motive.css" rel="stylesheet" />
        <link href="css/pasi.css" rel="stylesheet" />
        <link href="css/citat.css" rel="stylesheet" />
            <link href="css/calculator.css" rel="stylesheet">
                <link href="framework/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="framework/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Plugin CSS -->
    <link href="framework/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/freelancer.min.css" rel="stylesheet">
    <link href="css/calculator.css" rel="stylesheet">

    
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom fonts for this template -->
        <link href="framework/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">




        <!-- Contact Form JavaScript -->

        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/freelancer.min.js"></script>
        
 	
 

</head>

<body>
<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">pro sidebar</a>
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
      </div>
      <div class="sidebar-header">
 
        <div class="user-info">
          <span class="user-name">
            <strong><c:out value="${requestScope.username}"></c:out></strong>
          </span>
          <span class="user-role"><c:out value="${requestScope.rank}"></c:out></span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
        </div>
      </div>
      <!-- sidebar-header  -->
      <div class="sidebar-search">
        <div>
          <div class="input-group">
            <input type="text" class="form-control search-menu" placeholder="Search...">
            <div class="input-group-append">
              <span class="input-group-text">
                <i class="fa fa-search" aria-hidden="true"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
      <!-- sidebar-search  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li>
            <a href="<c:url value="Home"></c:url>">
              <i class="fa fa-home"></i>
              <span>Home</span>
            </a>
          </li>
          <li>
            <a href="<c:url value="Prezentare"></c:url>">
              <i class="fa fa-book"></i>
              <span>Prezentare</span>
             
            </a>
          </li>
          <li >
            <a href="Articole">
              <i class="fa fa-newspaper-o""></i>
              <span>Articole</span>
            </a>
          </li>
       <li>
            <a href="Idei">
              <i class="fa fa-lightbulb-o"></i>
              <span>Idei</span>
            </a>
           
          </li>
          <li class="header-menu">
            <span>Extra</span>
          </li>
       <li>
            <a href="Extern">
              <i class="fa fa-globe"></i>
              <span>Linkuri Externe</span>
            </a>
          </li>
          <li>
            <a href="Calculator">
              <i class="fa fa-calculator"></i>
              <span>Calculator</span>
            </a>
          </li>
          <li>
            <a href="Quizz">
              <i class="fa fa-puzzle-piece"></i>
              <span>Quizz</span>
            </a>
          </li>

                 </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
    <!-- sidebar-content  -->
    <div class="sidebar-footer">
      <a href="#">
        <i class="fa fa-bell"></i>
        <span class="badge badge-pill badge-warning notification">3</span>
      </a>
      <a href="#">
        <i class="fa fa-envelope"></i>
        <span class="badge badge-pill badge-success notification">7</span>
      </a>
      <a href="#">
        <i class="fa fa-cog"></i>
        <span class="badge-sonar"></span>
      </a>
      <a href="#">
        <i class="fa fa-power-off"></i>
      </a>
    </div>
  </nav>
  
  <!-- AICI INTRA PAGINA -->

 <main class="page-content pt-2">
            <div id="overlay" class="overlay" style="margin-bottom:0px;"></div>
  <div class="container">
        <h2 class="text-center text-uppercase text-secondary mb-0">Interactiv</h2>
        <hr class="star-dark mb-5">
        <h4>Calculator credite</h4>
        <span>Acesta este un calculator ce te va ajuta sa calculezi cat trebuie sa platesti pentru un credit .Un credit este necasar pentru numeroase afaceri aflate la inceput. Dobanda nu este una fixa deaorece depinde de banca de la care iei creditul dar si de indicele ROBOR </span>

        <div class="price-box">
            <div class="row">
                <div class="col-sm-6">
                    <form class="form-horizontal form-pricing" role="form">

                        <div class="price-slider">
                            <h4 class="great">Suma</h4>
                            <span>Minim 10000 lei</span>
                            <div class="col-sm-12">
                                <div id="slider_amirol"></div>
                            </div>
                        </div>
                        <div class="price-slider">
                            <h4 class="great">Durata</h4>
                            <span>Alege o varianta</span>
                            <div class="btn-group btn-group-justified">
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block month active-month selected-month" id='24month'>24 luni</button>
                                </div>
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block month" id='18month'>18 luni</button>
                                </div>
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block month" id='12month'>12 luni</button>
                                </div>
                            </div>
                        </div>
                        <div class="price-slider">
                            <h4 class="great">Plata</h4>
                            <span>Alege o varianta</span>
                            <input name="sliderVal" type="hidden" id="sliderVal" value='0' readonly="readonly" />
                            <input name="month" type="hidden" id="month" value='24month' readonly="readonly" />
                            <input name="term" type="hidden" id="term" value='quarterly' readonly="readonly" />
                            <div class="btn-group btn-group-justified">
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block term active-term selected-term" id='quarterly'>La 4 luni</button>
                                </div>
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block term" id='monthly'>lunar</button>
                                </div>
                                <div class="btn-group btn-group-lg">
                                    <button type="button" class="btn btn-primary btn-lg btn-block term" id='weekly'>saptamanal</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-sm-6">
                    <div class="price-form">

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="amount_amirol" class="control-label">In Total (lei): </label>
                                    <span class="help-text">Suma de platit</span>
                                </div>
                                <div class="col-sm-6">
                                    <input type="hidden" id="amount_amirol" class="form-control">
                                    <!-- <p class="price lead" id="total"></p> -->
                                    <input class="price lead" name="totalprice" type="text" id="total" disabled="disabled" style="" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="amount_amirol" class="control-label">Pe luna (lei) </label>
                                    <span class="help-text">Suma de platit</span>
                                </div>
                                <div class="col-sm-6">
                                    <input type="hidden" id="amount_amirol" class="form-control">
                                    <!-- <p class="price lead" id="total12"></p> -->
                                    <input class="price lead" name="totalprice12" type="text" id="total12" disabled="disabled" style="" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="amount_amirol" class="control-label">Pe saptamana (lei): </label>
                                    <span class="help-text">Suma de platit</span>
                                </div>
                                <div class="col-sm-6">
                                    <input type="hidden" id="amount_amirol" class="form-control">
                                    <!-- <p class="price lead" id="total52"></p> -->
                                    <input class="price lead" name="totalprice52" type="text" id="total52" disabled="disabled" style="" />
                                </div>
                            </div>
                        </div>
                        <div style="margin-top:30px"></div>
                        <hr class="style">

                    </div>

                    </form>
                </div>

            </div>
 
 </div>
 </div>
   
    
</main>
<!-- page-wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="js/nav.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="framework/jquery/jquery.min.js"></script>
<script src="framework/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>

<!-- Plugin JavaScript -->
<script src="framework/jquery-easing/jquery.easing.min.js"></script>
<script src="framework/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="js/test.js"></script>
<script src="js/freelancer.min.js"></script>
<script src="js/calculator.js"></script>
    
</body>

</html>