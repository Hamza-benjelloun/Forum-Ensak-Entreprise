<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Espace User</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link href="/public/css/styleEspaceUser.css" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
            input{
                margin-bottom: 5px;
                border-radius:5px ;
                /* border: 1px solid black; */
                outline: none;                
            }
            input:focus{
                border: rgb(91, 91, 240) 1px solid;
            }
            button{
                border-radius:50px ;                           
            }            
            button:hover{
                box-shadow: rgb(141, 129, 197) 5px 5px 5px;
            }              
            button:focus,
            select:focus{
                outline: none; 
                border: rgb(91, 91, 240) 1px solid;
            }     
            .sign-up-container input{                
                height: 35px;
            }
            select {
                background-color: #eee;
                border: none;
                padding: 3px 15px;
                margin: 8px 0;
                width: 100%;
                height: 35px;
                color: rgba(78, 78, 78, 0.9);
                font-weight: bold;
            }                      
        </style>
    </head>
    <body>    
	    <%
		    String key="NotFound";
		    Optional<String> CheckIfExist=Arrays.stream(request.getCookies())
		          							.filter(c -> key.equals(c.getName()))
		          							.map(Cookie::getValue)
		          							.findAny();
		    if(CheckIfExist.isPresent()){
		    	out.println("<div class=\"alert alert-danger\" role=\"alert\"> Nom d'utilisateur introuvable </div>");
		    }
		    String key1="successwait";
		    Optional<String> CheckIfsuccesswait=Arrays.stream(request.getCookies())
		          							.filter(c -> key1.equals(c.getName()))
		          							.map(Cookie::getValue)
		          							.findAny();
		    if(CheckIfsuccesswait.isPresent()){
		    	out.println("<div class=\"alert alert-primary\" role=\"alert\"> Inscription reussie Veuillez attendre la validation d'administrateur</div>");
		    }
		    String key2="success";
		    Optional<String> CheckIfsuccess=Arrays.stream(request.getCookies())
		          							.filter(c -> key2.equals(c.getName()))
		          							.map(Cookie::getValue)
		          							.findAny();
		    if(CheckIfsuccess.isPresent()){
		    	out.println("<div class=\"alert alert-success\" role=\"alert\"> Inscription reussie Vous pouvez maintenant se connecter</div>");
		    }
		    
		    String key3="error";
		    Optional<String> CheckIferror=Arrays.stream(request.getCookies())
		          							.filter(c -> key3.equals(c.getName()))
		          							.map(Cookie::getValue)
		          							.findAny();
		    if(CheckIferror.isPresent()){
		    	out.println("<div class=\"alert alert-warning\" role=\"alert\">"+CheckIferror.get()+" Veuillez choisir un nom d'utilisateur ou un mot de passe valable </div>");
		    }
	     %>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form id="SwitchAction" action="#" method="post">
                    <h3 style="color:#7b8be7;font-weight: bold;">Inscription</h3>
                    <select class="form-select" aria-label="Default select example" id="roleSelector">
                        <option value="" selected>Choisir le type de votre compte </option>
                        <option value="registerEntreprise" >Entreprise</option>
                        <option value="registerParticipant" >Participant</option>
                        <option value="registerSponsor" >Sponsor</option>
                    </select>
                    <div id="registerEntreprise" class="user" style="display: none;">
                        <input required name="raison" type="text" placeholder="Raison social" />                    
                        <input required name="username" type="text" placeholder="Nom d'utilisateur" />
                        <input required name="password" type="password" pattern=".{8,}" title="le mot de passe doit contenir 8 lettres min" placeholder="Mot de passe"/>
                        <input required name="link" type="text" placeholder="Url de votre site web" />                    
                        <input required name="photo" type='file' id="getphoto" style="display:none">
                        <input name="logo" type='file' id="getlogo" style="display:none">
                        <input style="display:block;" onclick="document.getElementById('getlogo').click()" placeholder="Ajouter votre logo (Optionnel)" readonly>
                        <input style="display:block;" onclick="document.getElementById('getphoto').click()" placeholder="Ajouter vos images" readonly>
                    </div>          
                    <div id="registerParticipant" class="user" style="display: none;">
                        <input required name="nom" type="text" placeholder="Nom complet" />                    
                        <input required name="username" type="text" placeholder="Nom d'utilisateur" />
                        <input required name="password" type="password" pattern=".{8,}" title="le mot de passe doit contenir 8 lettres min" placeholder="Mot de passe"/>
                        <input required name="email" type="email" placeholder="E-mail"/>
                        <input required name="tel" type="tel" placeholder="Num&eacute;ro de t&eacute;l&eacute;phone" />
                        <input required name="cv" type='file' id="getCv" style="display:none">
                        <input style="display:block;" onclick="document.getElementById('getCv').click()" placeholder="Ajouter votre Cv" readonly>
                    </div>
                    <div id="registerSponsor" class="user" style="display: none;">
                        <input required name="raison" type="text" placeholder="Raison social" />                    
                        <input required name="username" type="text" placeholder="Nom d'utilisateur" />
                        <input required name="password" type="password" pattern=".{8,}" title="le mot de passe doit contenir 8 lettres min" placeholder="Mot de passe"/>
                        <input required name="link" type="text" placeholder="Url de votre site web" />                    
                        <input name="photo" type='file' id="getphotoSp" style="display:none">
                        <input required name="logo" type='file' id="getlogoSp" style="display:none">
                        <input style="display:block;" onclick="document.getElementById('getlogoSp').click()" placeholder="Ajouter votre logo" readonly>
                        <input style="display:block;" onclick="document.getElementById('getphotoSp').click()" placeholder="Ajouter vos images (Optionnel)" readonly>
                    </div>
                    <button name="submit" type="submit">S'inscrire</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="/authenticate" method="post">
                    <h3 style="color:#7b8be7;font-weight: bold;">Connexion</h3><br/>                                                                                 
                    <input required name="username" type="text" placeholder="Nom d'utilisateur" />
                    <input required name="password" type="password" pattern=".{8,}" title="le mot de passe doit contenir 8 lettres min" placeholder="Mot de passe" /><br/>
                    <button>Se connecter</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <img src="/public/img/logo.png" width="100px">
                        <h2>Bienvenue cher utilisateur</h2>
                        <p>Cliquer sur se connecter pour commencer votre journée avec nous !</p>
                        <button class="ghost" id="signIn">Se connecter</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <img src="/public/img/logo.png" width="100px">
                        <h2>Cr&eacute;er un compte ?</h2>
                        <p>Cliquer sur s'inscrir et rejoignez nous !</p>
                        <button class="ghost" id="signUp">S'inscrire</button>
                    </div>
                </div>
            </div>
        </div>        
        <script>
            const signUpButton = document.getElementById('signUp');
            const signInButton = document.getElementById('signIn');
            const container = document.getElementById('container');

            signUpButton.addEventListener('click', () => {
                container.classList.add("right-panel-active");
            });

            signInButton.addEventListener('click', () => {
                container.classList.remove("right-panel-active");
            });
            // Selector
            $(function() {    // Makes sure the code contained doesn't run until
                              //     all the DOM elements have loaded

                $('#roleSelector').change(function(){
                    $(".user :input").prop("disabled", true);
                    $('#' + $(this).val()+' :input').prop("disabled",false);
                    $('.user').hide();
                    $('#' + $(this).val()).show();
                    $('#SwitchAction').attr('action','/'+$(this).val());
                });
            
            });
        </script>
    </body>
</html>