<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>


        <div id="show-user" class="content scaffold-show" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>


            <div class="container-fluid">
                <h1 style="font-weight: bold !important; margin-top: 2rem !important; " >Détails Utilisateurs</h1>

                <br>
                <ol class="property-list user">

                    <li class="fieldcontain">
                        <span id="username-label" class="property-label">Username</span>
                        <div class="property-value" aria-labelledby="username-label">
                            ${this.user.username}
                        </div>
                    </li>

                    <li class="fieldcontain">
                        <span id="role-label" class="property-label">Role</span>
                        <div class="property-value" aria-labelledby="role-label">
                            <g:each var="role" in="${user.getAuthorities()}">
                                ${role.authority}
                            </g:each>
                        </div>
                    </li>
%{--                    -------}%
                    <li class="fieldcontain">
                        <span id="Title-label" class="property-label">TITRE</span>
                        <div class="property-value" aria-labelledby="saleAds-label">
                            <g:each var="listAds" in="${this.user.saleAds}" >
                                <g:link controller="saleAd" action="show" id="${listAds.id}">
                                    ${listAds.title}
                                </g:link>
                            </g:each>
                        </div>
                    </li>
%{--                    ---------}%
                    <li class="fieldcontain">
                        <span id="description-label" class="property-label">DESCRIPTION</span>
                        <div class="property-value" aria-labelledby="saleAds-label">
                            <g:each var="listAds" in="${this.user.saleAds}" >
                                <g:link controller="saleAd" action="show" id="${listAds.id}">
                                    ${listAds.description}
                                </g:link>
                            </g:each>
                        </div>
                    </li>
                    <li class="fieldcontain">
                        <span id="price-label" class="property-label">PRICE</span>
                        <div class="property-value" aria-labelledby="saleAds-label">
                            <g:each var="listAds" in="${this.user.saleAds}" >
                                <g:link controller="saleAd" action="show" id="${listAds.id}">
                                    ${listAds.price}DH
                                </g:link>
                            </g:each>
                        </div>
                    </li>

                        </div>
                    </li>
                </ol>


                <br>
                <br>
                <g:form resource="${this.user}" method="DELETE">
                    <fieldset>
                        <g:link class="btn btn-primary  btn-lg" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="btn btn-primary  btn-lg" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"style=" background: teal" />
                    </fieldset>
                </g:form>
                <hr>


            </div>




        </div>
    </body>
</html>
