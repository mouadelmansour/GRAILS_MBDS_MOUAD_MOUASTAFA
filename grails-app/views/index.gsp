<%@ page import="emsi.mbds.SaleAd" %>
<!doctype html>
<html>
<head>
    <style type="text/css">
    body {
        font-family: "Archivo Black", sans-serif;
        background: rgb(0,0,255);
        display: flex;
        flex-direction: column;
        height: 100vh;
        justify-content: center;
        align-items: center;
    }

    .words {
        color: white;
        font-size: 0;
        line-height: 1.5;
    }

    .words span {
        font-size: 5rem;
        display: inline-block;
        animation: move 3s ease-in-out infinite;
    }

    @keyframes move {
        0% {
            transform: translate(-30%, 0);
        }
        50% {
            text-shadow: 0 25px 50px rgba(0, 0, 255, 0.5);
        }
        100% {
            transform: translate(30%, 0);
        }
    }

    .words span:nth-child(2) {
        animation-delay: 0.5s;
    }

    .words span:nth-child(3) {
        animation-delay: 1s;
    }

    .words span:nth-child(4) {
        animation-delay: 1.5s;
    }

    .words span:nth-child(5) {
        animation-delay: 2s;
    }

    .words span:nth-child(6) {
        animation-delay: 2.5s;
    }

    .words span:nth-child(7) {
        animation-delay: 3s;
    }

    </style>

    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<div class="words word-1">
    <span>G</span>
    <span>R</span>
    <span>A</span>
    <span>I</span>
    <span>L</span>
    <span>S</span>

</div>

<div class="words word-2">
    <span>P</span>
    <span>R</span>
    <span>O</span>
    <span>J</span>
    <span>E</span>
    <span>C</span>
    <span>T</span>
</div>

<div class="words word-3">
    <span>M</span>
    <span>B</span>
    <span>D</span>
    <span>S</span>
</div>


%{--    <div id="content" role="main">--}%
%{--        <section class="row colset-2-its">--}%
%{--            <div class="home" style="width: 800px;margin-right: 400px">--}%
%{--                <g:img dir="images" file="img.png"  />--}%
%{--            </div>--}%
%{--            <h1> <img src="https://img.icons8.com/doodle/48/000000/rubber-duck.png"/> Bienvenue Sur Le Coin Coin <img src="https://img.icons8.com/doodle/48/000000/rubber-duck.png"/></h1>--}%


%{--            <div>--}%
%{--                <h2>Dernières Annonces</h2>--}%
%{--                <br>--}%
%{--                <g:each var="saleAd" in="${emsi.mbds.SaleAd.list(max:3)}" >--}%
%{--                    <div class="row mb-2 " style="">--}%
%{--                        <div class="col-md-1">--}%
%{--                        </div>--}%
%{--                        <div class="col-md-10" style="background-color: lightgray !important; border-radius: 10px !important;">--}%
%{--                            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">--}%
%{--                                <div class="row mb-2 mt-2" style="padding: 2rem !important;">--}%
%{--                                    <div class="col-md-4 mt-2" >--}%
%{--                                        <img src="${grailsApplication.config.tpmbds.illustrations.url}${saleAd.illustrations[0].filename}" height="150px" alt="Grails"/>--}%
%{--                                    </div>--}%
%{--                                    <div class="col-md-8">--}%
%{--                                        <g:link controller="saleAd" action="show" id="${saleAd.id}">--}%
%{--                                            <strong class="d-inline-block mb-2 text-primary"> ${saleAd.title}</strong>--}%
%{--                                        </g:link>--}%
%{--                                        <p>${saleAd.description} </p>--}%
%{--                                        <p> ${saleAd.price} €</p>--}%
%{--                                        <p> Créé Par: <g:link controller="user" action="show" id="${saleAd.author.id}">--}%
%{--                                            ${saleAd.author.username}--}%
%{--                                        </g:link></p>--}%
%{--                                    </div>--}%
%{--                                </div>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%
%{--                    <br>--}%
%{--                    <br>--}%
%{--                </g:each>--}%

            </div>


    </div>

</body>
</html>
