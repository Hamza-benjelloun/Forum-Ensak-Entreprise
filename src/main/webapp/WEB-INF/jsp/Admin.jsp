<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Page Admin</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">

    

    <!-- Bootstrap core CSS -->
    <link href="/public/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      body{
        color:rgb(110, 110, 234);
      }
      .bg-myprimary {
          background-color:rgb(31, 16, 126);
      }
       
    </style>
    
    <!-- Custom styles for this template -->
    <link href="/public/css/dashboard.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      body{
        color:rgb(110, 110, 234);
      }
      .bg-myprimary,.table-myprimary{
        background-color:rgb(31, 16, 126);
      }
      .table-myprimary{
        color:white;
      }
      .btn-myprimary{
        background-color:rgb(31, 16, 126);
        color:white;
      }
      .btn-myprimary:hover{
        background:rgb(240, 240, 240);
        color:black;
        border:black 1px solid;
      }
    </style>
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-myprimary flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Bienvenue Admin</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
          <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
        </svg> DÃ©connexion
      </a>
    </li>
  </ul>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M14 2.5a.5.5 0 0 0-.5-.5h-6a.5.5 0 0 0 0 1h4.793L2.146 13.146a.5.5 0 0 0 .708.708L13 3.707V8.5a.5.5 0 0 0 1 0v-6z"/>
              </svg> Ãvolution Participants
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>
              Gestion Participants
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>
              Gestion Entreprises
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>
              Gestion Sponsors
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>             
              Gestions Ãvenement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
              </svg>  
              Feedback
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Ãvolution Participants</h1>
      </div>

      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
      <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Gestion Participants</h2>      
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-myprimary">
            <tr>
              <th>Id</th>
              <th>Nom complet</th>
              <th>Nom d'utilisateur</th>
              <th>Mot de passe</th>
              <th>Email</th>
              <th>Tel</th>
              <th>Cv</th>
              <th>Etat</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>benji</td>
              <td>benji</td>
              <td>bgkbgk002</td>
              <td>hamzabenjelloun77@gmail.com</td>
              <td>0695046096</td>
              <td><a href="#">benji.cv</a></td>
              <td>Active</td>
              <td><a href="#">ban</a></td>
            </tr>
          </tbody>
        </table>
        <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Gestion Entreprises</h2>      
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-myprimary">
            <tr>
              <th>Id</th>
              <th>Raison Social</th>
              <th>Nom d'utilisateur</th>
              <th>Mot de passe</th>
              <th>Logo</th>
              <th>Photos</th>
              <th>Url</th>
              <th>Etat</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>benji</td>
              <td>benji</td>
              <td>bgkbgk002</td>
              <td>hamzabenjelloun77@gmail.com</td>
              <td>0695046096</td>
              <td><a href="#">benji.cv</a></td>
              <td>Active</td>
              <td><a href="#">ban</a></td>
            </tr>
          </tbody>
        </table>
        <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Gestion Sponsors</h2>      
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead class="table-myprimary">
            <tr>
              <th>Id</th>
              <th>Raison Social</th>
              <th>Nom d'utilisateur</th>
              <th>Mot de passe</th>
              <th>Logo</th>
              <th>Photos</th>
              <th>Url</th>
              <th>Etat</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>benji</td>
              <td>benji</td>
              <td>bgkbgk002</td>
              <td>hamzabenjelloun77@gmail.com</td>
              <td>0695046096</td>
              <td><a href="#">benji.cv</a></td>
              <td>Active</td>
              <td><a href="#">ban</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2> Gestions Ãvenement</h2>      
      </div>
      <div class="container overflow-hidden">
      <form action="/addSpeaker" methode="post">
        <div class="row gx-5 my-5">
          <div class="col">
          <div class="p-3 border bg-light">
            <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
              <h6>ConfÃ©rencier</h6>      
            </div>
            <div class="input-group mb-3">
              <input name="nom" type="text" class="form-control" placeholder="Nom complet" aria-label="Nom" aria-describedby="basic-addon1">
            </div> 
            <div class="input-group mb-3">
              <input name="Fonction" type="text" class="form-control" placeholder="Fonction" aria-label="Fonction" aria-describedby="basic-addon1">
            </div> 
            <div class="input-group mb-3">
              <input name="facebook_link" type="text" class="form-control" placeholder="Facebook" aria-label="Facebook" aria-describedby="basic-addon1">
            </div> 
            <div class="input-group mb-3">
              <input name="gmail_link" type="text" class="form-control" placeholder="Gmail" aria-label="Gmail" aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
              <input name="twitter_link" type="text" class="form-control" placeholder="Twitter" aria-label="Twitter" aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
              <input name="linkedIn_link" type="text" class="form-control" placeholder="LinkedIn" aria-label="LinkedIn" aria-describedby="basic-addon1">
            </div>
            <div class="mb-3">
              <input class="form-control" type="file" id="formFile">
            </div>          
            <h1 align="center"><button class="btn btn-myprimary" type="submit" style="width:100%">Ajouter</button></h1>
          </div>
          </div>
          <div class="col">
            <div class="p-3 border bg-light">
              <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h6>ThÃ¨me</h6>
              </div>
              <div class="input-group mb-3">
                <input name="nomT" type="text" class="form-control" placeholder="Nom" aria-label="Nom Theme" aria-describedby="basic-addon1">
              </div>
              <div class="input-group mb-3">
                <input name="details" type="text" class="form-control" placeholder="Details" aria-label="Details" aria-describedby="basic-addon1">
              </div>
              <div class="input-group mb-3">
                <input name="time" type="text" class="form-control" placeholder="Heure" aria-label="Heure" aria-describedby="basic-addon1">
              </div>
              <div class="input-group mb-3">
                <input name="place" type="text" class="form-control" placeholder="Lieu" aria-label="Lieu" aria-describedby="basic-addon1">
              </div>
              <div class="input-group mb-3">
                <select class="form-select" id="inputGroupSelect01">
                  <option selected>Choose...</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
              </div>
              <h1 align="center"><button class="btn btn-myprimary" type="submit" style="width:100%">Ajouter</button></h1>            
          </div>
        </div>        
      </from>
      </div>
      <div class="d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Feedback</h2>      
      </div>
      <div class="card text-center my-4" style="color:black;">
        <div class="card-header">
          Email
        </div>
        <div class="card-body">
          <h5 class="card-title">Object</h5>
          <p class="card-text" style="text-align: justify;" >Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur mattis efficitur. Phasellus lorem sem, congue sed condimentum a, posuere sit amet tellus. Nunc quam ex, posuere ut condimentum ac, molestie a sapien. Donec maximus bibendum massa, et semper nunc tristique sit amet. Fusce sit amet diam vitae ante ullamcorper lobortis. Sed scelerisque sem et dolor vehicula ullamcorper. Sed in aliquam neque. Suspendisse massa neque, congue vitae mi at, faucibus interdum sapien. Phasellus facilisis gravida interdum. Nullam lacinia velit felis, sed ornare dui viverra at. Nam vestibulum vehicula est, in tincidunt mauris imperdiet bibendum. Sed libero augue, lacinia semper erat vitae, vulputate blandit sapien. Morbi mi nibh, euismod sagittis eros nec, aliquam ultricies ligula. Integer vitae imperdiet enim. Nunc interdum mi in mi semper, eget interdum quam varius.</p>
          <a href="#" class="btn btn-primary">Mark as seen</a>
        </div>
        <div class="card-footer text-muted">
          2 days ago
        </div>
      </div>
      <div class="card text-center my-4" style="color:black;">
        <div class="card-header">
          Email
        </div>
        <div class="card-body">
          <h5 class="card-title">Object</h5>
          <p class="card-text" style="text-align: justify;" >Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur mattis efficitur. Phasellus lorem sem, congue sed condimentum a, posuere sit amet tellus. Nunc quam ex, posuere ut condimentum ac, molestie a sapien. Donec maximus bibendum massa, et semper nunc tristique sit amet. Fusce sit amet diam vitae ante ullamcorper lobortis. Sed scelerisque sem et dolor vehicula ullamcorper. Sed in aliquam neque. Suspendisse massa neque, congue vitae mi at, faucibus interdum sapien. Phasellus facilisis gravida interdum. Nullam lacinia velit felis, sed ornare dui viverra at. Nam vestibulum vehicula est, in tincidunt mauris imperdiet bibendum. Sed libero augue, lacinia semper erat vitae, vulputate blandit sapien. Morbi mi nibh, euismod sagittis eros nec, aliquam ultricies ligula. Integer vitae imperdiet enim. Nunc interdum mi in mi semper, eget interdum quam varius.</p>
          <a href="#" class="btn btn-primary">Mark as seen</a>
        </div>
        <div class="card-footer text-muted">
          2 days ago
        </div>
      </div>
      <div class="card text-center my-4" style="color:black;">
        <div class="card-header">
          Email
        </div>
        <div class="card-body">
          <h5 class="card-title">Object</h5>
          <p class="card-text" style="text-align: justify;" >Lorem ipsum dolor sit amet, consectetur adipiscing elit. In consectetur mattis efficitur. Phasellus lorem sem, congue sed condimentum a, posuere sit amet tellus. Nunc quam ex, posuere ut condimentum ac, molestie a sapien. Donec maximus bibendum massa, et semper nunc tristique sit amet. Fusce sit amet diam vitae ante ullamcorper lobortis. Sed scelerisque sem et dolor vehicula ullamcorper. Sed in aliquam neque. Suspendisse massa neque, congue vitae mi at, faucibus interdum sapien. Phasellus facilisis gravida interdum. Nullam lacinia velit felis, sed ornare dui viverra at. Nam vestibulum vehicula est, in tincidunt mauris imperdiet bibendum. Sed libero augue, lacinia semper erat vitae, vulputate blandit sapien. Morbi mi nibh, euismod sagittis eros nec, aliquam ultricies ligula. Integer vitae imperdiet enim. Nunc interdum mi in mi semper, eget interdum quam varius.</p>
          <a href="#" class="btn btn-primary">Mark as seen</a>
        </div>
        <div class="card-footer text-muted">
          2 days ago
        </div>
      </div>
    </main>
  </div>
</div>
    <script src="/public/assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="/public/js/dashboard.js"></script>
  </body>
</html>
