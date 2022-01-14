<!DOCTYPE html>
<html>
<head>
%{--<style type="text/css">--}%
%{--@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);--}%
%{--* {--}%
%{--    margin: 0;--}%
%{--    padding: 0;--}%
%{--    box-sizing: border-box;--}%
%{--    -webkit-box-sizing: border-box;--}%
%{--    -moz-box-sizing: border-box;--}%
%{--    -webkit-font-smoothing: antialiased;--}%
%{--    -moz-font-smoothing: antialiased;--}%
%{--    -o-font-smoothing: antialiased;--}%
%{--    font-smoothing: antialiased;--}%
%{--    text-rendering: optimizeLegibility;--}%
%{--}--}%

%{--body {--}%
%{--    font-family: "Roboto", Helvetica, Arial, sans-serif;--}%
%{--    font-weight: 100;--}%
%{--    font-size: 12px;--}%
%{--    line-height: 30px;--}%
%{--    color: #777;--}%
%{--    background: #4CAF50;--}%
%{--}--}%

%{--.container {--}%
%{--    max-width: 400px;--}%
%{--    width: 100%;--}%
%{--    margin: 0 auto;--}%
%{--    position: relative;--}%
%{--}--}%

%{--#contact input[type="text"],--}%
%{--#contact input[type="email"],--}%
%{--#contact input[type="tel"],--}%
%{--#contact input[type="url"],--}%
%{--#contact textarea,--}%
%{--#contact button[type="submit"] {--}%
%{--    font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;--}%
%{--}--}%

%{--#contact {--}%
%{--    background: #F9F9F9;--}%
%{--    padding: 25px;--}%
%{--    margin: 150px 0;--}%
%{--    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);--}%
%{--}--}%

%{--#contact h3 {--}%
%{--    display: block;--}%
%{--    font-size: 30px;--}%
%{--    font-weight: 300;--}%
%{--    margin-bottom: 10px;--}%
%{--}--}%

%{--#contact h4 {--}%
%{--    margin: 5px 0 15px;--}%
%{--    display: block;--}%
%{--    font-size: 13px;--}%
%{--    font-weight: 400;--}%
%{--}--}%

%{--fieldset {--}%
%{--    border: medium none !important;--}%
%{--    margin: 0 0 10px;--}%
%{--    min-width: 100%;--}%
%{--    padding: 0;--}%
%{--    width: 100%;--}%
%{--}--}%

%{--#contact input[type="text"],--}%
%{--#contact input[type="email"],--}%
%{--#contact input[type="tel"],--}%
%{--#contact input[type="url"],--}%
%{--#contact textarea {--}%
%{--    width: 100%;--}%
%{--    border: 1px solid #ccc;--}%
%{--    background: #FFF;--}%
%{--    margin: 0 0 5px;--}%
%{--    padding: 10px;--}%
%{--}--}%

%{--#contact input[type="text"]:hover,--}%
%{--#contact input[type="email"]:hover,--}%
%{--#contact input[type="tel"]:hover,--}%
%{--#contact input[type="url"]:hover,--}%
%{--#contact textarea:hover {--}%
%{--    -webkit-transition: border-color 0.3s ease-in-out;--}%
%{--    -moz-transition: border-color 0.3s ease-in-out;--}%
%{--    transition: border-color 0.3s ease-in-out;--}%
%{--    border: 1px solid #aaa;--}%
%{--}--}%

%{--#contact textarea {--}%
%{--    height: 100px;--}%
%{--    max-width: 100%;--}%
%{--    resize: none;--}%
%{--}--}%

%{--#contact button[type="submit"] {--}%
%{--    cursor: pointer;--}%
%{--    width: 100%;--}%
%{--    border: none;--}%
%{--    background: #4CAF50;--}%
%{--    color: #FFF;--}%
%{--    margin: 0 0 5px;--}%
%{--    padding: 10px;--}%
%{--    font-size: 15px;--}%
%{--}--}%

%{--#contact button[type="submit"]:hover {--}%
%{--    background: #43A047;--}%
%{--    -webkit-transition: background 0.3s ease-in-out;--}%
%{--    -moz-transition: background 0.3s ease-in-out;--}%
%{--    transition: background-color 0.3s ease-in-out;--}%
%{--}--}%

%{--#contact button[type="submit"]:active {--}%
%{--    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);--}%
%{--}--}%

%{--.copyright {--}%
%{--    text-align: center;--}%
%{--}--}%

%{--#contact input:focus,--}%
%{--#contact textarea:focus {--}%
%{--    outline: 0;--}%
%{--    border: 1px solid #aaa;--}%
%{--}--}%

%{--::-webkit-input-placeholder {--}%
%{--    color: #888;--}%
%{--}--}%

%{--:-moz-placeholder {--}%
%{--    color: #888;--}%
%{--}--}%

%{--::-moz-placeholder {--}%
%{--    color: #888;--}%
%{--}--}%

%{--:-ms-input-placeholder {--}%
%{--    color: #888;--}%
%{--}--}%
%{--</style>--}%
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div id="create-saleAd" class="content scaffold-create" role="main">
    <h1 style="font-weight: bold !important; margin-top: 2rem !important; padding-bottom: 2rem !important;">Ajouter Une Annonce</h1>

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.saleAd}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.saleAd}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="container">

        <div class="row">
            <div class="col-md-4 order-md-2 mb-4">

            </div>

            <div class="col-md-4">
                <g:form class="form-signin" enctype="multipart/form-data" action="save" style="max-width:20rem !important;" resource="${this.saleAd}" method="POST">

                    <br>

                    <div class="form-label-group">
                        <label for="title">Titre</label>
                        <input type="text" name="title" value="" required="" id="title" class="form-control"
                               placeholder="Entrez un titre" autofocus="">
                    </div>
                    <br>

                    <div class="form-label-group">
                        <label for="description">Description</label>
                        <input type="text" name="description" value="" required="" id="description" class="form-control"
                               placeholder="Entrez une description succinte">
                    </div>
                    <br>

                    <div class="form-label-group">
                        <label for="longDescription">Description Longue</label>
                        <textarea type="text" name="longDescription" value="" required="" id="longDescription"
                                  class="form-control"
                                  placeholder="Entrez une description détaillée"></textarea>
                    </div>
                    <br>

                    <div class="form-label-group">
                        <label>Prix</label>
                        <input type="number decimal" name="price" value="" required="" min="0.0" id="price"
                               class="form-control"
                               placeholder="Entrez un prix en DH">
                    </div>
                    <br>

                    <div class="form-label-group">
                        <label for="filename0">Illustration</label>
                        <input type="file" name="filename0" value="" required="" id="filename0"
                               placeholder="Entrez un nom de fichier">

                        <div class="content" id="wrapper">
                            <br>
                        </div>
                        <br>
                        <input type="button" class=" btn btn-primary  btn-lg btn-block  "
                               id="more_fields" onclick="add_fields();
                        add();" value="Ajouter plus d'Illustrations"/>
                    </div>
                    <br>

                    <div class="form-label-group">
                        <label>Sélectionnez un Auteur</label>
                        <g:select class="form-control" from="${emsi.mbds.User.list()}"
                                  name="author" id='author' optionKey="id" optionValue="username"/>
                    </div>
                    <br>

                    <div class="form-label-group">
                        <g:submitButton class="btn btn-primary  btn-lg btn-block" name="create"
                                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                    </div>

                </g:form>
                <br><br><br><br><br><br><br>
            </div>
        </div>
    </div>
</div>


%{--                        <div class="col-md-12 mt-3">--}%
%{--                            <label class="mb-3 mr-1" for="gender">Gender: </label>--}%

%{--                            <input type="radio" class="btn-check" name="gender" id="male" autocomplete="off" required>--}%
%{--                            <label class="btn btn-sm btn-outline-secondary" for="male">Male</label>--}%

%{--                            <input type="radio" class="btn-check" name="gender" id="female" autocomplete="off" required>--}%
%{--                            <label class="btn btn-sm btn-outline-secondary" for="female">Female</label>--}%

%{--                            <input type="radio" class="btn-check" name="gender" id="secret" autocomplete="off" required>--}%
%{--                            <label class="btn btn-sm btn-outline-secondary" for="secret">Secret</label>--}%
%{--                            <div class="valid-feedback mv-up">You selected a gender!</div>--}%
%{--                            <div class="invalid-feedback mv-up">Please select a gender!</div>--}%
%{--                        </div>--}%
%{-------------------------------------}%
%{--<div class="container">--}%
%{--    <form id="contact" action="" method="post">--}%
%{--        <g:form class="form-signin" enctype="multipart/form-data" action="save" style="max-width:20rem !important;" resource="${this.saleAd}" method="POST">--}%

%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label for="title">Titre</label>--}%
%{--                <input type="text" name="title" value=""  id="title" class="form-control"--}%
%{--                       placeholder="Entrez un titre" autofocus="">--}%
%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label for="description">Description</label>--}%
%{--                <input type="text" name="description" value="" id="description" class="form-control"--}%
%{--                       placeholder="Entrez une description">--}%
%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label for="ref">Référence</label>--}%
%{--                <textarea type="text" name="ref" value=""  id="ref"--}%
%{--                          class="form-control"--}%
%{--                          placeholder="Entrez une référence"></textarea>--}%
%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label>Prix</label>--}%
%{--                <input type="number" name="price" value=""  min="0.0" id="price"--}%
%{--                       class="form-control"--}%
%{--                       placeholder="Entrez un prix">--}%
%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label for="filename0">Illustration</label>--}%
%{--                <input type="file" name="filename0" value=""  id="filename0"--}%
%{--                       placeholder="Entrez un nom de fichier">--}%

%{--                <div class="content" id="image_fields">--}%
%{--                    <br>--}%
%{--                </div>--}%

%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <label>Sélectionnez un Auteur</label>--}%
%{--                <g:select class="form-control" from="${emsi.mbds.User.list()}"--}%
%{--                          name="author" id='author' optionKey="id" optionValue="username"/>--}%
%{--            </div>--}%
%{--            <br>--}%

%{--            <div class="form-label-group">--}%
%{--                <g:submitButton class="btn btn-primary  btn-block" name="create"--}%
%{--                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>--}%
%{--            </div>--}%

%{--        </g:form>--}%
%{-------------------}%
%{--<g:form  enctype="multipart/form-data" action="save" style="max-width:20rem !important;" resource="${this.saleAd}" method="POST">--}%
%{--        <h3>Colorlib Contact Form</h3>--}%

%{--        <fieldset>--}%






%{--                                    <label for="title">Titre</label>--}%
%{--                                    <input type="text" name="title" value="" required="" id="title" class="form-control"--}%
%{--                                           placeholder="Entrez un titre" autofocus="">--}%

%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <label for="description">Description</label>--}%
%{--                                <input type="text" name="description" value="" required="" id="description" class="form-control"--}%
%{--                                       placeholder="Entrez une description succinte">--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <label for="longDescription">Description Longue</label>--}%
%{--                                <textarea type="text" name="longDescription" value="" required="" id="longDescription"--}%
%{--                                          class="form-control"--}%
%{--                                          placeholder="Entrez une description détaillée"></textarea>--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <label>Prix</label>--}%
%{--                                <input type="number decimal" name="price" value="" required="" min="0.0" id="price"--}%
%{--                                       class="form-control"--}%
%{--                                       placeholder="Entrez un prix en €">--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <label for="filename0">Illustration</label>--}%
%{--                                <input type="file" name="filename0" value="" required="" id="filename0"--}%
%{--                                       placeholder="Entrez un nom de fichier">--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <input type="button" class=" btn  btn-warning"--}%
%{--                                       id="more_fields" onclick="add_fields();--}%
%{--                                add();" value="Ajouter plus d'Illustrations"/>--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <label>Sélectionnez un Auteur</label>--}%
%{--                                <g:select class="form-control" from="${emsi.mbds.User.list()}"--}%
%{--                                          name="author" id='author' optionKey="id" optionValue="username"/>--}%
%{--        </fieldset>--}%
%{--        <fieldset>--}%
%{--            <g:submitButton class="btn btn-primary btn-warning btn-lg btn-block" name="create"--}%
%{--                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>--}%
%{--        </fieldset>--}%
%{--   </g:form>--}%
    </form>
</div>


<script>
    var i = 1;

    function add() {
        i++;
    }

    function add_fields() {
        document.getElementById('wrapper').innerHTML += '<input type="file" name="filename' + i + '" value="" required="" id="filename"' + i + ' placeholder="Entrez un nom de fichier"> <br>\r\n';
    }
</script>
</body>

</html>
