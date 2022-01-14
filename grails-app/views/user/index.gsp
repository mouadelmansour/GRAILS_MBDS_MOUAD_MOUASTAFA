<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
        *{
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
        }
        body{
            font-family: Helvetica;
            -webkit-font-smoothing: antialiased;
            background: rgba( 71, 147, 227, 1);
        }
        h2{
            text-align: center;
            font-size: 18px;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: white;
            padding: 30px 0;
        }

        /* Table Styles */

        .table-wrapper{
            margin: 10px 70px 70px;
            box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
        }

        .fl-table {
            border-radius: 5px;
            font-size: 12px;
            font-weight: normal;
            border: none;
            border-collapse: collapse;
            width: 100%;
            max-width: 100%;
            white-space: nowrap;
            background-color: white;
        }

        .fl-table td, .fl-table th {
            text-align: center;
            padding: 8px;
        }

        .fl-table td {
            border-right: 1px solid #f8f8f8;
            font-size: 12px;
        }

        .fl-table thead th {
            color: #ffffff;
            background: #4FC3A1;
        }


        .fl-table thead th:nth-child(odd) {
            color: #ffffff;
            background: #324960;
        }

        .fl-table tr:nth-child(even) {
            background: #F8F8F8;
        }

        /* Responsive */

        @media (max-width: 767px) {
            .fl-table {
                display: block;
                width: 100%;
            }
            .table-wrapper:before{
                content: "Scroll horizontally >";
                display: block;
                text-align: right;
                font-size: 11px;
                color: white;
                padding: 0 0 10px;
            }
            .fl-table thead, .fl-table tbody, .fl-table thead th {
                display: block;
            }
            .fl-table thead th:last-child{
                border-bottom: none;
            }
            .fl-table thead {
                float: left;
            }
            .fl-table tbody {
                width: auto;
                position: relative;
                overflow-x: auto;
            }
            .fl-table td, .fl-table th {
                padding: 20px .625em .625em .625em;
                height: 60px;
                vertical-align: middle;
                box-sizing: border-box;
                overflow-x: hidden;
                overflow-y: auto;
                width: 120px;
                font-size: 13px;
                text-overflow: ellipsis;
            }
            .fl-table thead th {
                text-align: left;
                border-bottom: 1px solid #f7f7f9;
            }
            .fl-table tbody tr {
                display: table-cell;
            }
            .fl-table tbody tr:nth-child(odd) {
                background: none;
            }
            .fl-table tr:nth-child(even) {
                background: transparent;
            }
            .fl-table tr td:nth-child(odd) {
                background: #F8F8F8;
                border-right: 1px solid #E6E4E4;
            }
            .fl-table tr td:nth-child(even) {
                border-right: 1px solid #E6E4E4;
            }
            .fl-table tbody td {
                display: block;
                text-align: center;
            }
        }
        </style>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div id="list-user" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="container-fluid">

                <h2>Table Annonces</h2>
                %{--Search Panel --}%
                <div class="btn-group">
                    <g:form controller="saleAd" action="index" method="GET">
                        <div class="input-group" id="search-area">
                            <g:select name="title" class="form-control" from="[title: 'TITRE', price: 'PRICE']" value="${params?.title}" optionKey="key" optionValue="value"/>
                            <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="submit">Search</button>
                            </span>
                        </div>
                    </g:form>
                </div>
                <div class="table-wrapper">
                    <table class="fl-table">
                        <thead>
                        <tr>

                            <g:sortableColumn property="username" title="Nom d'utilisateur" style="text-align:center !important;"/>
                            <g:sortableColumn property="saleAds" title="Annonces" />


                        </tr>
                        </thead>

                        <tbody>
                                            <g:each var="user" in="${userList}" >
                                                <tr>
                                                    <td style="font-weight: bold !important; text-align:center !important;">
                                                        <g:link controller="user" action="show" id="${user.id}">
                                                            ${user.username}
                                                        </g:link>
                                                    </td>
                                                    <td>
                                                        <table class=" table table-sm thead-light">
                                                            <thead >

                                                            </thead>
                                                            <tbody>
                                                                <g:each var="listAds" in="${user.saleAds}" >
                                                                    <tr>
                                                                        <td>
                                                                            <g:link controller="saleAd" action="show" id="${listAds.id}">
                                                                                ${listAds.title}
                                                                            </g:link>
                                                                        </td>
                                                                        <td> ${listAds.description} </td>
                                                                        <td>${listAds.price} DH</td>
                                                                    </tr>
                                                                </g:each>
                                                            </tbody>

                    </table>
%{--                =====================--}%
%{--
%{--                =========================--}%
                            </td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
                <br>

                <g:link class="btn btn-primary btn-lg "
                        controller="user" action="create" style="width: 100%;background: teal">Create Un Utilisateur</g:link>

                <br>
                <br>
                <hr>


            </div>


%{--            <div class="pagination">--}%
%{--                <g:paginate total="${userCount ?: 0}" />--}%
%{--            </div>--}%
        </div>
    </body>
</html>