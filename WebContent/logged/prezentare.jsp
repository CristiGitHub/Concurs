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

<body style="margin-top: -100;">
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
            <a href="<c:url value="/Home"></c:url>">
              <i class="fa fa-home"></i>
              <span>Home</span>
            </a>
          </li>
          <li>
            <a href="<c:url value="/Prezentare"></c:url>">
              <i class="fa fa-book"></i>
              <span>Prezentare</span>
             
            </a>
          </li>
          <li>
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

    <!-- Header -->
    <header class="masthead bg-primary text-white text-center" style="top:0px; margin-top:0px;">
        <div class="container">
            <h1 class="text-uppercase mb-0">Ghidul micilor intreprinzatori</h1>
            <img class="img-fluid mb-5 d-block mx-auto" style=" border-radius:50%; max-height: 256px; max-width: 256px;" src="img/Business-man-in-presentation/OAI50J0.jpg" alt="">
            <hr class="star-light">
            <h2 class="font-weight-light mb-0"  >Simplificat pentru toate varstele</h2>
            <h4 id="b"> </h4>
        </div>
    </header>
    <!-- Introducere -------->
    <section class="introd" id="introd">
        <div class="container">
        <h2 class="text-center text-uppercase text-secondary mb-0">Introducere</h2>
        <hr class="star-dark mb-5">
        <h4 class="typewrite" data-period="2000" style="text-align: center;" data-type='[ "Salut, noi suntem antreprenorii de azi.", "Noi suntem curajosi.", "Noi suntem independeti.", "Noi suntem viitorul." ]'></h4>
            <br>
            <h4>Cine sunt Antreprenorii?</h4>
            <span>Antreprenorul este persoana care identifica oportunitatea unei afaceri, isi asuma responsabilitatea initierii acesteia si obtine resursele necesare pentru inceperea activitatii, deci persoana care isi asuma riscurile conducerii unei afaceri si gestioneaza resursele necesare functionarii unei afaceri bazate pe inovatie.</span>
            <h4>Ce reprezinta Antreprenorii in societatea de azi?</h4>
            <span>Antreprenorii reprezinta motorul sistemului economic; ei sunt cei care creeaza acea multitudine de firme si organizatii care genereaza cele mai multe locuri de munca la nivel mondial si din randul carora se vor dezvolta viitoarele corporatii multinationale. Toate corporatiile multinationale actuale au pornit ca si idei de afaceri ale unor antreprenori care prin munca, perseverenta, relatii sau noroc au reusit sa supravietuiasca si sa se dezvolte in mod spectaculos.</span>
            <br>
            <h4>Tipuri de firme</h4>
            <span>
                SNC - Societate in Nume Colectiv
            <br>SCS - Societate in Comandita Simpla
             <br>SCA - Societate in Comandita pe Actiuni
             <br>SRL - Societate cu Raspundere Limitata
             <br>SA - Societate pe Actiuni
             <br>Societate cooperatiste;
             <br>Persoana fizica autorizata;
             <br>Intreprindere individuala;
             <br>Intreprindere familiala.
            </span>
            <br>
            <div class="quote">Am decis sa nu fiu o persoana obisnuita. Este dreptul meu sa fiu, daca pot, deosebit. Nu doresc sa fiu un cetatean intretinut, umilit de faptul ca Statul are grija de mine. Vreau sa-mi asum riscuri, vreau sa visez, sa construiesc, sa gresesc, sa o iau de la capat si sa reusesc. </span><br><span class = "author">Crezul Asociatiei Americane a Intreprinzatorilor</span></div>



        </div>
    </section>

    <!-- Portfolio Grid Section -->
    <section class="bg-primary text-white mb-0" id="pasi" style="overflow-x: hidden;">
        <div class="container">
            <h2 class="text-center text-uppercase text-white">Pasi</h2>
            <hr class="star-light mb-5">
            <br>
            <h4>Cat de greu este sa deschid o firma?</h4>
            <span>Nu este greu deloc, dimpotriva crearea unei firme este un proces simplu ce l-am simplificat in 8 pasi. Daca ideea de afacere o ai deja urmareste pasii pentru a afla cum poti transforma un vis in realitate</span>
           <br>
            <div class="stepwizard" style="margin-top: 20px;">
                <div class="stepwizard-row setup-panel">
                    <div class="stepwizard-step">
                        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                        <p>Pasul 1</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                        <p>Pasul 2</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                        <p>Pasul 3</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                        <p>Pasul 4</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-5" type="button" class="btn btn-default btn-circle" disabled="disabled">5</a>
                        <p>Pasul 5</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-6" type="button" class="btn btn-default btn-circle" disabled="disabled">6</a>
                        <p>Pasul 6</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-7" type="button" class="btn btn-default btn-circle" disabled="disabled">7</a>
                        <p>Pasul 7</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-8" type="button" class="btn btn-default btn-circle" disabled="disabled">8</a>
                        <p>Pasul 8</p>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <form role="form">
            <div class="row setup-content" id="step-1">
                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 1</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Obtine dovada rezervarii denumirii</h4>
                    </div>

                </div>
            </div>
            <div class="row setup-content" id="step-2">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0"> Pasul 2</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Obtine dovada ca ai la dispozitie un sediu social</h4>
                    </div>
                </div>

            </div>
            <div class="row setup-content" id="step-3">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 3</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Inregistreaza o cerere la ANAF prin care soliciti un certificat emis de administratia fiscala pentru a verifica daca sunt respectate conditiile legale referitoare la numarul de societati comerciale care pot avea sediu in acelasi imobil</h4>
                    </div>
                </div>

            </div>
            <div class="row setup-content" id="step-4">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 4</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Redacteaza actul constitutiv si stabileste obiectul de activitate</h4>
                    </div>

                </div>
            </div>
            <div class="row setup-content" id="step-5">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 5</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Mergi la banca si depune intr-un cont nou capitalul social. Pastreaza chitanta primita pentru a dovedi ca ai parcurs acest pas</h4>
                    </div>

                </div>
            </div>
            <div class="row setup-content" id="step-6">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 6</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Completeaza declaratiile pe proprie raspundere</h4>
                    </div>

                </div>
            </div>
            <div class="row setup-content" id="step-7">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 7</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Pentru ca dosarul de inregistrare sa fie complet, vei mai avea nevoie de urmatoarele documente :
                            Copie dupa actele de identitate ale fondatorilor, administratorilor, cenzorilor sau auditorilor persoane fizice, Cerere de inregistrare si specimene de semnatura ale reprezentantilor societatii</h4>
                    </div>

                </div>
            </div>
            <div class="row setup-content" id="step-8">

                <div class="col-md-12">
                    <div class="a">
                        <h2 class="font-weight-light mb-0" > Pasul 8</h2>
                        <br>
                        <h4 class="font-weight-light mb-0" >Depune dosarul si plateste taxele necesare inregistrarii</h4>
                    </div>
                </div>
            </div>

        </form>
    </section>




    <!-- Motive ---->
    <section class="motive" id="motive">
        <div class="container">
            <h2 class="text-center text-uppercase text-secondary mb-0">Motive</h2>
            <hr class="star-dark mb-5">
            <h4>De ce sa deschizi o firma?</h4>
            <br> <span>Mii de persoane dechid in Romania firme. Mii de persoane incearca sa aduca o schimbare in tara spre bine. Alaturate si tu cauzei lor si schimba ceva in tara</span></br>
            <span style="text-align: center">In continuare voi enumera 3 motive pentru care trebuie sa deschizi o firma</span>
            <br>
            <div class="row" style="margin-top: 10px;" >
                <div class="col-md-6 how-img">
                    <img src="img/icons/coins.png" class="img-fluid" alt=""/>
                </div>
                <div class="col-md-6">
                    <h4>Independenta Financiara</h4>
                    <p class="text-muted">Infintarea unei firme reprezinta pentru multi antrepenori momentul in care devin cu adevarat independeti financiar rupand-se de salariul oferit de stat sau angajator. Banii obtinuti in afacere pot fi utilizati in cadrul firmei pentru a marii castigurile dezvoltand astfel firma.</p>
                </div>
            </div>

            <div class="row" >
                <div class="col-md-6">
                    <h4>Crearea unei echipe</h4>
                    <p class="text-muted">Ideea ta de afacere poate fi vazuta de multi oameni indrazneata si sa imparta cu tine aceleasi opinii si idei alaturandu-se echipei tale de lucru. La inceput numarul de angajati nu este mare dar in timp vei forma o adevarata familie ce te va ajuta sa iti indeplinesti visul</p>
                </div>
                <div class="col-md-6 how-img">
                    <img src="img/icons/user.png" class="img-fluid" alt=""/>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 how-img">
                    <img src="img/icons/boss.png" class="img-fluid" alt=""/>
                </div>
                <div class="col-md-6">
                    <h4>Dezvoltare personala</h4>
                    <p class="text-muted">O firma reprezinta o adevarata incercare pentru orice persoana la inceput de drum in ale antreprenoriatului. Trebuie sa inveti sa iti asumi riscuri, sa crezi in ideea ta si sa inveti din toate greselile tale incercand sa te imbunatatesti in fiecare zi pentru a iti atinge scopul.</p>
                </div>
            </div>

        </div>
    </section>


    <!-- About Section -->


    <!-- Contact Section -->


    <section class="bg-primary text-white mb-0"  id="recomandari"  style="overflow-x: hidden;">
        <div class="container" >
            <h2 class="text-center text-uppercase text-secondary mb-0">Recomandari</h2>
            <hr class="star-light mb-5">
            <h4>Principalele recomandari?</h4>
            <div class="col-md-3 float-left">
                <div class="card">
                    <img class="card-img-top" src="img/icons/conversation.png" style="max-width: 350px;max-height: 350px" alt="Card image cap">
                    <div class="card-body">
                        <span>  Consulta oameni cu experienta in domeniul tau de practica sau care au mai avute firme ca sa ai mai multe puncte de vedere
                        </span>
                        <br>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
			            <div class="col-md-3 float-left">
			                <div class="card">
			                    <img class="card-img-top" src="img/icons/idea.png" style="max-width: 350px;max-height: 350px" alt="Card image cap">
			                    <div class="card-body">
			                        <span >Lucreaza eficient ca sa iti indeplinesti visul tau. Invata din greselile tale si a celor din jurul tau pentru a iti indeplinii visurile mai rapid.
			                        </span>
			                        <br>
			                        <br>
			                        <br>
			                    </div>
			                </div>
			            </div>
				            <div class="col-md-3 float-left">
				                <div class="card">
				                    <img class="card-img-top" src="img/icons/profits.png" style="max-width: 350px;max-height: 350px" alt="Card image cap">
				                    <div class="card-body">
				                        <span>Pentru ca sa reusesti ca antreprenor trebuie sa ai curaj in ideea ta si tine oricat de greu de crezut pare toti antreprenorii la inceput au trecut prin clipe grele ca sa isi indeplineasca visul.
				                        </span>
				                    </div>
				                </div>
				            </div>
				            <div class="col-md-3 float-left">
				                <div class="card">
				                    <img class="card-img-top" src="img/icons/stopwatch.png" style="max-width: 350px;max-height: 350px" alt="Card image cap">
				                    <div class="card-body">
				                        <span>Incearca sa iti gestionaezi timpul intr-un mod eficient tinand cont de toate obligatiile pe care le ai ca antreprenor
				                        </span>
				                        <br>
				                        <br>
				                        <br>
				                    </div>
				                </div>
				            </div>
        </div>
    </section>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
        <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <script src="framework/jquery/jquery.min.js"></script>
    <script src="framework/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="framework/jquery-easing/jquery.easing.min.js"></script>
    <script src="framework/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>
    <script src="js/pasi.js"></script>
    <script type="text/javascript" src="js/greensock/TweenMax.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="js/jquery.superscrollorama.js"></script>
</div>
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