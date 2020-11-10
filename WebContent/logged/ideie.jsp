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
         <script src="js/idei.js"></script>
        <script src="framework/magnific-popup/jquery.magnific-popup.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link href="css/cards.css" rel="stylesheet" />
        <link href="css/motive.css" rel="stylesheet" />
        <link href="css/pasi.css" rel="stylesheet" />
        <link href="css/citat.css" rel="stylesheet" />
    	<link href="css/idei.css" rel="stylesheet" />
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
       <script>
       function functTrimite()
       {
       	var url = document.getElementById('urlul').value;
       	var msg = document.getElementById('messageIdee').value;
       	var denum = document.getElementById('denumire').value;
     	var caen = document.getElementById('caen').value;
     	var domeniu = document.getElementById('domeniu').value;
     	var tip = document.getElementById('tip').value;
     	
       	$.ajax({
       		    	  type: "POST",
       		    	  url: url,
       		    	  data:{
       		    		  mesaj : msg,
       		  	 		denum : denum,
       		  	 		caen : caen,
       		  	 		domeniu : domeniu,
       		  	 		tip : tip
       		    	  	
       		    	  },
       		    	  succes: alert(url + " " + msg +" "+denum+" "+caen+" "+domeniu+" "+tip) 
       		    	});
       		    
       	}
       function like(x)
       {
    	   var url = document.getElementById('urlul').value;
    		var msg = document.getElementById('messageStire').value;
    		var tit = document.getElementById('messageTitlu').value;
    		$.ajax({
    			    	  type: "POST",
    			    	  url: url,
    			    	  data:{
    			    		  mesaj : msg,
    			  	 		titlu : tit
    			    	  },
    			    	  succes: location.reload() 
    			    	});
    			    
       }</script>

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
            
                                <input type="hidden" id="urlul" value="${requestScope.url}/Trimite">
                    	 <div class="card gedf-card">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="posts-tab" data-toggle="tab" href="#posts" role="tab" aria-controls="posts" aria-selected="true">Articolul</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="images-tab" data-toggle="tab" role="tab" aria-controls="images" aria-selected="false" href="#images">Titlul</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                <div class="form-group">
                                    <label class="sr-only" for="message">post</label>
                                    <textarea class="form-control" id="messageIdee" rows="3" placeholder="Text Idee"></textarea>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="images" role="tabpanel" aria-labelledby="images-tab">
                                <div class="form-group">
                                    <div class="custom-file">
                                        <label class="sr-only" for="message">post</label>
                                        
                                         <input class="form-control" id="denumire" rows="3" placeholder="Numele Firmei"></input>
                                   	 <input class="form-control" id="caen" rows="3" placeholder="Codul caen"></input>
                                   	     <input class="form-control" id="domeniu" rows="3" placeholder="Domeniu"></input>
                                   			                                         <input class="form-control" id="tip" rows="3" placeholder="Tipul de afacere"></input>
                                   			
                                    </div>
                                </div>
                                <div class="py-4"></div>
                            </div>
                        </div>
                        <div class="btn-toolbar justify-content-between">
                            <div class="btn-group">
                                <button type="submit" class="btn btn-primary" onclick="functTrimite()">trimite</button>
                            </div>
                            <div class="btn-group">
                                <button id="btnGroupDrop1" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    <i class="fa fa-globe"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                    	
            

   <c:forEach items="${requestScope.allidei}" var="mes">
    <div class="card gedf-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0"><c:out value="${mes.getUser().getUsername()}"></c:out></div>
                                    <div class="h7 text-muted"><c:out value="${mes.getUser().getInfo().getProfesie()}"></c:out></div>
                                </div>
                            </div>
                            <div>
                               
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i><c:out value="${mes.getData()}"></c:out></div>
                        <a class="card-link" href="#">
                            <h5 class="card-title"><c:out value="${mes.getDenumire()}"></c:out></h5>
                        </a>

                        <p class="card-text">
                               <p>Numele Firmei: <c:out value="${mes.getDenumire()}"></c:out></p>
                    <p>Codul CAEN: <c:out value="${mes.getCaen()}"></c:out></p>
                     <p>Domeniu: <c:out value="${mes.getDomeniu()}"></c:out></p>
                     <p>Tip: <c:out value="${mes.getTip()}"></c:out></p>
                     <p> <c:out value="${mes.getMesaj()}"></c:out></p>
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-heart" onclick="like(<c:out value="${mes.getId()}"></c:out>)"></i> Like</a>
                        <a href="#" class="card-link"><i class="fa fa-comment"></i> Comment</a>
                      
                    </div>
                </div>
                
                
   </c:forEach>
    
</main>
<!-- page-wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="js/nav.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    
</body>

</html>