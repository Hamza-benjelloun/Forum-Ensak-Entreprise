<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Forum Ensak Entreprise</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="/public/img/favicon.png" rel="icon">
  <link href="/public/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/public/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/public/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/public/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/public/lib/venobox/venobox.css" rel="stylesheet">
  <link href="/public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <link href="/public/css/style.css" rel="stylesheet">
  <style>
  .edit{ 
	  border:0;
	  border-bottom:1px solid #555;  
	  background:transparent;
	  width:100%;
	  padding:8px 0 5px 0;
	  font-size:16px;
	  color:black;
	  font-weight:lighter;
	}
	.edit:focus{ 
	 border:none;	
	 outline:none;
	 border-bottom:1px solid blue;	
	}
  </style>
  
</head>

<body>
  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <!-- Uncomment below if you prefer to use a text logo -->
        <!-- <h1><a href="#main">C<span>o</span>nf</a></h1>-->
        <a href="#intro" class="scrollto"><img src="/public/img/logo.png" alt="" title=""></a>                
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Accueil</a></li>          
          <li><a href="#speakers">les conferenciers </a></li>
          <li><a href="#schedule">planning de la journée</a></li>
          <li><a href="#venue">Lieu</a></li>
          <li><a href="#gallery">la gallerie</a></li>
          <li><a href="#supporters">les sponsors</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="#about">A propos</a></li><%
          String key="username";
          Optional<String> checkusername=Arrays.stream(request.getCookies())
          .filter(c -> key.equals(c.getName()))
          .map(Cookie::getValue)
          .findAny();
          if (checkusername.isPresent()) {
        	  System.out.println(checkusername);
        	  String username=checkusername.get();
        	  out.println("<li><a onclick=\"$('#gc').modal('show');\" style=\"color:white;cursor:pointer\"><i class=\"fa fa-user\"></i> "+username+"</a></li>");
	    	  out.println("<li><a style=\"color:white;cursor:pointer\" href=\"/logout\"><i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i> D&eacute;connexion</a></li>");
          }
	      else{
	    	  out.println("<li><a href=\"/Espace\" class=\"EspaceUser\">Espace utilisateurs</a></li>");
	      }
	      %>
        </ul>
      </nav>
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container wow fadeIn">
      <h1 class="mb-4 pb-0"> Forum<br><span>ENSAK</span> Entrepise</h1>
      <p class="mb-4 pb-0">21 février , Ecole nationale des sciences appliquées,Kénitra</p>
      <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video"
        data-autoplay="true"></a>
      <a href="#about" class="about-btn scrollto">A propos de l'évènement</a>
    </div>
  </section>

  <main id="main">

    <!--==========================
      About Section
    ============================-->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h2>Apropos de l'événement</h2>
            <p>L'événement phare de l'école Nationale des Sciences Appliquées est de retour.
              D'année en année le Forum ENSA-Kénitra Entreprises ne cesse de gagner en ampleur et en echo. 
              Les entreprises du royaume y participent pour permettre aux étudiants de franchir la porte vers un nouveau monde 
              promettant . Cette 7ème édition qui a pour thème :"hta nchof chno theme had 3am " sera encore plus riche . 
              On vous donne rendez-vous alors le 26 Février 2021, pour une expérience inédite et une rencontre enrichissante</p>
          </div>
          <div class="col-lg-3">
            <h3> le lieu</h3>
            <p>Ecole nationale des sciences appliquées ,Kénitra</p>
          </div>
          <div class="col-lg-3">
            <h3>Date</h3>
            <p>lundi<br>15 février 2021</p>
          </div>
        </div>
      </div>
    </section>

    <!--==========================
      Speakers Section
    ============================-->
    <section id="speakers" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Nos conférenciers</h2>
          <p>Voici quelques-uns de nos intervenants</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="/public/img/speakers/1.jpg" alt="Speaker 1" class="img-fluid">
              <div class="details">
                <h3><a href="#">diaa alhak el fallous</a></h3>
                <p>Quas alias incidunt</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="/public/img/speakers/2.jpg" alt="Speaker 2" class="img-fluid">
              <div class="details">
                <h3><a href="#">Hubert Hirthe</a></h3>
                <p>Consequuntur odio aut</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="/public/img/speakers/3.jpg" alt="Speaker 3" class="img-fluid">
              <div class="details">
                <h3><a href="#">Cole Emmerich</a></h3>
                <p>Fugiat laborum et</p>
                <div class="social">
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>                              
        </div>
      </div>
    </section>

    <!--==========================
      Schedule Section
    ============================-->
    <section id="schedule" class="section-with-bg">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h2>Forum</h2>
          <p>ENSAK Entreprise</p>
        </div>

        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" href="#day-1" role="tab" data-toggle="tab">la journée</a>
          </li>         
        </ul>

        <h3 class="sub-heading"></h3>

        <div class="tab-content row justify-content-center">

          <!-- Schdule Day 1 -->
          <div role="tabpanel" class="col-lg-9 tab-pane fade show active" id="day-1">

            <div class="row schedule-item">
              <div class="col-md-2"><time>09:30 AM</time></div>
              <div class="col-md-10">
                <h4>Registration</h4>
                <p>l'inscription aux ateliers</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>10:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/chafik.jpg" alt="Pr. MOHAMED CHAFIK EL IDRISS">
                </div>
                <h4>Pr. MOHAMED <span> CHAFIK EL IDRISS</span></h4>
                <p>Directeur de l’ENSA de Kénitra</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>10:30 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/1.jpg" alt="Pr. MOHAMED CHAFIK EL IDRISS">
                </div>
                <h4>Pr. <span> conferenciers</span></h4>
                <p>conference sous le théme : système embarqué</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>11:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/diaa.jpg" alt="diaa alhak el fallous">
                </div>
                <h4>Ediaa alhak <span> el fallous</span></h4>
                <p>conferece sous le théme :Technical Recruiter - Career Coach</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>12:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/3.jpg" alt="Cole Emmerich">
                </div>
                <h4>Pause <span>lunch</span></h4>
                <p>une pause pour le déjeuner</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>02:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/4.jpg" alt="Jack Christiansen">
                </div>
                <h4>nom du  <span>conferencier</span></h4>
                <p>atelier imprimante 3D</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>03:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/diaa.jpg" alt="diaa">
                </div>
                <h4>Mr.diaa hallak <span>el fellous</span></h4>
                <p>correction des CVs.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>04:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/6.jpg" alt="Willow Trantow">
                </div>
                <h4>fermeture <span>de la journée</span></h4>
                <p>Déstribution des ateliers .</p>
              </div>
            </div>

          </div>
          <!-- End Schdule Day 1 -->

          <!-- Schdule Day 2 -->
          <div role="tabpanel" class="col-lg-9  tab-pane fade" id="day-2">

            <div class="row schedule-item">
              <div class="col-md-2"><time>10:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/1.jpg" alt="Brenden Legros">
                </div>
                <h4>Libero corrupti explicabo itaque. <span>Brenden Legros</span></h4>
                <p>Facere provident incidunt quos voluptas.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>11:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/2.jpg" alt="Hubert Hirthe">
                </div>
                <h4>Et voluptatem iusto dicta nobis. <span>Hubert Hirthe</span></h4>
                <p>Maiores dignissimos neque qui cum accusantium ut sit sint inventore.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>12:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/3.jpg" alt="Cole Emmerich">
                </div>
                <h4>Explicabo et rerum quis et ut ea. <span>Cole Emmerich</span></h4>
                <p>Veniam accusantium laborum nihil eos eaque accusantium aspernatur.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>02:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/4.jpg" alt="Jack Christiansen">
                </div>
                <h4>Qui non qui vel amet culpa sequi. <span>Jack Christiansen</span></h4>
                <p>Nam ex distinctio voluptatem doloremque suscipit iusto.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>03:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/5.jpg" alt="Alejandrin Littel">
                </div>
                <h4>Quos ratione neque expedita asperiores. <span>Alejandrin Littel</span></h4>
                <p>Eligendi quo eveniet est nobis et ad temporibus odio quo.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>04:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/6.jpg" alt="Willow Trantow">
                </div>
                <h4>Quo qui praesentium nesciunt <span>Willow Trantow</span></h4>
                <p>Voluptatem et alias dolorum est aut sit enim neque veritatis.</p>
              </div>
            </div>

          </div>
          <!-- End Schdule Day 2 -->

          <!-- Schdule Day 3 -->
          <div role="tabpanel" class="col-lg-9  tab-pane fade" id="day-3">

            <div class="row schedule-item">
              <div class="col-md-2"><time>10:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/2.jpg" alt="Hubert Hirthe">
                </div>
                <h4>Et voluptatem iusto dicta nobis. <span>Hubert Hirthe</span></h4>
                <p>Maiores dignissimos neque qui cum accusantium ut sit sint inventore.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>11:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/3.jpg" alt="Cole Emmerich">
                </div>
                <h4>Explicabo et rerum quis et ut ea. <span>Cole Emmerich</span></h4>
                <p>Veniam accusantium laborum nihil eos eaque accusantium aspernatur.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>12:00 AM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/1.jpg" alt="Brenden Legros">
                </div>
                <h4>Libero corrupti explicabo itaque. <span>Brenden Legros</span></h4>
                <p>Facere provident incidunt quos voluptas.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>02:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/4.jpg" alt="Jack Christiansen">
                </div>
                <h4>Qui non qui vel amet culpa sequi. <span>Jack Christiansen</span></h4>
                <p>Nam ex distinctio voluptatem doloremque suscipit iusto.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>03:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/5.jpg" alt="Alejandrin Littel">
                </div>
                <h4>Quos ratione neque expedita asperiores. <span>Alejandrin Littel</span></h4>
                <p>Eligendi quo eveniet est nobis et ad temporibus odio quo.</p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2"><time>04:00 PM</time></div>
              <div class="col-md-10">
                <div class="speaker">
                  <img src="/public/img/speakers/6.jpg" alt="Willow Trantow">
                </div>
                <h4>Quo qui praesentium nesciunt <span>Willow Trantow</span></h4>
                <p>Voluptatem et alias dolorum est aut sit enim neque veritatis.</p>
              </div>
            </div>

          </div>
          <!-- End Schdule Day 2 -->

        </div>

      </div>

    </section>

    <!--==========================
      Venue Section
    ============================-->
    <section id="venue" class="wow fadeInUp">

      <div class="container-fluid">

        <div class="section-header">
          <h2>lieu de l'événement</h2>
          <p> informations sur l'emplacement du lieu de l'événement et galerie</p>
        </div>

        <div class="row no-gutters">
          <div class="col-lg-6 venue-map">
          
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3297.99784285678!2d-6.58542348544685!3d34.24859868055294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda759f9847310ff%3A0xfcdd86f18958657d!2sEcole%20Nationale%20des%20Sciences%20Appliqu%C3%A9es%20de%20K%C3%A9nitra!5e0!3m2!1sfr!2sma!4v1611675580107!5m2!1sfr!2sma" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
          <div class="col-lg-6 venue-info">
            <div class="row justify-content-center">
              <div class="col-11 col-lg-8">
                <h3>Ecole nationale des sciences appliquées ,kenitra</h3>
              </div>
            </div>
          </div>
        </div>
      </div>      
    </section>

    

    <!--==========================
      Gallery Section
    ============================-->
    <section id="gallery" class="wow fadeInUp">

      <div class="container">
        <div class="section-header">
          <h2>la gallerie</h2>
          <p>Consultez notre galerie de l'événement</p>
        </div>
      </div>

      <div class="owl-carousel gallery-carousel">
        <a href="/public/img/gallery/1.png" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/1.png" alt=""></a>
        <a href="/public/img/gallery/2.png" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/2.png" alt=""></a>
        <a href="/public/img/gallery/3.png" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/3.png" alt=""></a>
        <a href="/public/img/gallery/4.png" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/4.png" alt=""></a>
        <a href="/public/img/gallery/5.jpg" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/5.jpg" alt=""></a>
        <a href="/public/img/gallery/6.jpg" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/6.jpg" alt=""></a>
        <a href="/public/img/gallery/7.jpg" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/7.jpg" alt=""></a>
        <a href="/public/img/gallery/8.jpg" class="venobox" data-gall="gallery-carousel"><img src="/public/img/gallery/8.jpg" alt=""></a>
      </div>

    </section>

    <!--==========================
      Sponsors Section
    ============================-->
    <section id="supporters" class="section-with-bg wow fadeInUp">

      <div class="container">
        <div class="section-header">
          <h2>Sponsors</h2>
        </div>

        <div class="row no-gutters supporters-wrap clearfix">

          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/1.png" class="img-fluid" alt="">
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/2.png" class="img-fluid" alt="">
            </div>
          </div>
        
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/3.png" class="img-fluid" alt="">
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/4.png" class="img-fluid" alt="">
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/5.png" class="img-fluid" alt="">
            </div>
          </div>
        
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/6.png" class="img-fluid" alt="">
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/7.png" class="img-fluid" alt="">
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 col-xs-6">
            <div class="supporter-logo">
              <img src="/public/img/supporters/8.png" class="img-fluid" alt="">
            </div>
          </div>

        </div>

      </div>

    </section>


   


 
 
    <section id="contact" class="section-bg wow fadeInUp">

      <div class="container">

        <div id="msg" class="section-header">
          <h2>contactez nous</h2>
        </div>
			<%
			String key0="sign";
			Optional<String> checksign=Arrays.stream(request.getCookies())
			.filter(c -> key0.equals(c.getName()))
			.map(Cookie::getValue)
			.findAny();
			if(checksign.isPresent()){
				out.println("<div class=\"row\"><div class=\"col-md-12\"><div class=\"alert alert-success text-center\" role=\"alert\">Message envoyé !!</div></div></div>");
			}
			%>
        <div class="row contact-info">			
          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Addresse</h3>
              <address> campus universitaire, B.P 241, Kénitra - 14 000 - Maroc</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Numéro de téléphone</h3>
              <p><a href="tel:+212537376765"> +212 5 37 37 67 65</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="ion-ios-email-outline"></i>
              <h3>Email</h3>
              <p><a href="mailto:info@example.com">info@example.com</a></p>
            </div>
          </div>

        </div>

        <div class="form">          
          <form method="post" action="/feedback" role="form" class="contactForm">
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="form-control" id="name" placeholder="Votre nom" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Votre Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Sujet" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit">envoyer le Message</button></div>
          </form>
        </div>

      </div>
    </section><!-- #contact -->

  </main>


  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <img src="/public/img/logo.png" alt="TheEvenet">
            <p>  L'événement phare de l'école Nationale des Sciences Appliquées est de retour. D'année en année le Forum ENSA-Kénitra Entreprises ne cesse de gagner en ampleur et en echo. Les entreprises du royaume y participent pour permettre aux étudiants de franchir la porte vers un nouveau monde promettant . Cette 7ème édition qui a pour thème :"hta nchof chno theme had 3am " sera encore plus riche . On vous donne rendez-vous alors le 26 Février 2021, pour une expérience inédite et une rencontre enrichissante</p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="#">Accueil</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Apropos </a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="#">accueil</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">apropos </a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact</h4>
            <p>
              campus universitaire <br>
              B.P 241, Kénitra<br>
              - 14 000 - Maroc <br>
              <strong>Numéro de téléphone:</strong> +212537376765 <br>
              <strong>Email:</strong> info@example.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>forum ensak entreprise</strong>. Tous droits réservés 
      </div>
      <div class="credits">
        
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- #footer -->
  <!-- MODAL -->
  <div class="modal fade" id="gc" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="margin:0 auto;" id="exampleModalLabel"><b>Gestion du compte</b></h5>
      </div>
      <div class="modal-body">
      	<% 
      	String key1="entreprise";
        Optional<String> checkrole1=Arrays.stream(request.getCookies())
        .filter(c -> key1.equals(c.getName()))
        .map(Cookie::getValue)
        .findAny();	
        if(checkrole1.isPresent()){
        	out.println("<form action=\"/updateEntreprise\" method=\"post\">");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"raison\" type=\"text\" placeholder=\"Raison social\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"username\" type=\"text\" placeholder=\"Nom d'utilisateur\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"password\" type=\"password\" pattern=\".{8,}\" title=\"le mot de passe doit contenir 8 lettres min\" placeholder=\"Mot de passe\"/></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"link\" type=\"text\" placeholder=\"Url de votre site web\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:none;\" name=\"photo\" type=\"file\" id=\"getphoto\" ></div></div>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:none;\" name=\"logo\" type=\"file\" id=\"getlogo\" ></div></div>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:block;\" onclick=\"document.getElementById('getlogo').click()\" placeholder=\"Ajouter votre logo (Optionnel)\" readonly></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:block;\" onclick=\"document.getElementById('getphoto').click()\" placeholder=\"Ajouter vos images\" readonly></div></div><br/>");
        	out.println("<input type=\"submit\" name=\"submit\" style=\"display:none;\" id=\"update\" />");
        	out.println("</form>");
        }
        String key2="sponsor";
        Optional<String> checkrole2=Arrays.stream(request.getCookies())
        .filter(c -> key2.equals(c.getName()))
        .map(Cookie::getValue)
        .findAny();
        if(checkrole2.isPresent()){
        	out.println("<form action=\"/updateSponsor\" method=\"post\">");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"raison\" type=\"text\" placeholder=\"Raison social\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"username\" type=\"text\" placeholder=\"Nom d'utilisateur\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"password\" type=\"password\" pattern=\".{8,}\" title=\"le mot de passe doit contenir 8 lettres min\" placeholder=\"Mot de passe\"/></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"link\" type=\"text\" placeholder=\"Url de votre site web\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:none;\" name=\"photo\" type=\"file\" id=\"getphoto\" ></div></div>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:none;\" name=\"logo\" type=\"file\" id=\"getlogo\" ></div></div>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:block;\" onclick=\"document.getElementById('getlogo').click()\" placeholder=\"Ajouter votre logo (Optionnel)\" readonly></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:block;\" onclick=\"document.getElementById('getphoto').click()\" placeholder=\"Ajouter vos images\" readonly></div></div><br/>");
        	out.println("<input type=\"submit\" name=\"submit\" style=\"display:none;\" id=\"update\" />");
        	out.println("</form>");
        }
        String key3="participant";
        Optional<String> checkrole3=Arrays.stream(request.getCookies())
        .filter(c -> key3.equals(c.getName()))
        .map(Cookie::getValue)
        .findAny();	
        if(checkrole3.isPresent()){
        	out.println("<form action=\"/updateParticipant\" method=\"post\">");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"nom\" type=\"text\" placeholder=\"Nom complet\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"username\" type=\"text\" placeholder=\"Nom d'utilisateur\" /></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"password\" type=\"password\" pattern=\".{8,}\" title=\"le mot de passe doit contenir 8 lettres min\" placeholder=\"Mot de passe\"/></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"email\" type=\"email\" placeholder=\"Email\"/></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:none;\" name=\"cv\" type=\"file\" id=\"getcv\" ></div></div>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;\" name=\"tel\" type=\"tel\" placeholder=\"Tel\"/></div></div><br/>");
        	out.println("<div class=\"flex-row justify-content-center \"><div class=\"col col-md-12\"><input class=\"edit\" style=\"width:100%;display:block;\" onclick=\"document.getElementById('getcv').click()\" placeholder=\"Ajouter votre cv\" readonly></div></div><br/>");
        	out.println("<input type=\"submit\" name=\"submit\" style=\"display:none;\" id=\"update\" />");
        	out.println("</form>");
        }
      	%>
      </div>
      <div class="modal-footer justify-content-between">
        <button style="margin:0 auto;" type="button" class="btn btn-primary" onclick="document.getElementById('update').click()">Sauvegarder</button>
      </div>
      <button data-dismiss="modal" onclick="$('#gi').modal('show');" type="button" class="btn btn-primary" id="switch">Espace GI</button>
    </div>
  </div>
  </div>
  <!-- Modal Espace GU-->
	<div class="modal fade" id="gi" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="margin:0 auto;" id="exampleModalLabel"><b>Gestion des informations</b></h5>
      </div>
      <div class="modal-body">
      	<% 
        if(checkrole1.isPresent()){
        	
        }
        if(checkrole2.isPresent()){
        	
        }
        if(checkrole3.isPresent()){
        	
        }
      	%>
      </div>
      <div class="modal-footer justify-content-between">
        <button style="margin:0 auto;" type="button" class="btn btn-warning" onclick="document.getElementById('update').click()">Sauvegarder</button>
      </div>
      <button data-dismiss="modal" onclick="$('#gc').modal('show');" type="button" class="btn btn-warning" id="switch">Espace GI</button>
    </div>
	  </div>
	</div>

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="/public/lib/jquery/jquery.min.js"></script>
  <script src="/public/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/public/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/public/lib/easing/easing.min.js"></script>
  <script src="/public/lib/superfish/hoverIntent.js"></script>
  <script src="/public/lib/superfish/superfish.min.js"></script>
  <script src="/public/lib/wow/wow.min.js"></script>
  <script src="/public/lib/venobox/venobox.min.js"></script>
  <script src="/public/lib/owlcarousel/owl.carousel.min.js"></script>
  <!-- Template Main Javascript File -->
  <script src="/public/js/main.js"></script>
</body>

</html>
    