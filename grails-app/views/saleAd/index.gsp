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
%{--/*-------------------------------------------------------------------*/--}%

%{--        </style>--}%
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>


    <h2>Table Annonces</h2>
%{--    Search Panel--}%
    <div class="btn-group">
        <g:form controller="saleAd" action="index" method="GET">
            <div class="input-group" id="search-area">
                <g:select name="title" class="form-control" from="[title: 'TITRE', price: 'PRICE']" value="${params?.title}" optionKey="key" optionValue="value"/>
                <g:textField name="coltitle" class="form-control" value="${params?.coltitle}"/>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Search</button>
                </span>
            </div>
        </g:form>
    </div>
  <div class="container-fluid">
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
            <tr>

                                    <g:sortableColumn property="title" title="Titre" style="text-align:center !important;"/>
                                    <g:sortableColumn property="description" title="Description" />
                                    <g:sortableColumn property="longDescription" title="Description detaillee" />

                                    <g:sortableColumn property="price" title="Prix" style="text-align:center !important;"/>
                                    <g:sortableColumn property="author" title="Auteur" style="text-align:center !important;" />
                                    <g:sortableColumn property="illustrations" title="Illustrations" />

            </tr>
            </thead>

            <tbody>
                                    <g:each var="saleAd" in="${saleAdList}" >
                                    <tr>
                                        <td style="font-weight: bold !important; text-align:center !important;">
                                            <g:link controller="saleAd" action="show" id="${saleAd.id}">
                                                ${saleAd.title}
                                            </g:link>
                                        </td>
                                        <td>${saleAd.description}</td>
                                        <td>${saleAd.longDescription}</td>

                                        <td style="text-align:center !important;">${saleAd.price}</td>
                                        <td style="text-align:center !important;">
                                            <g:link controller="user" action="show" id="${saleAd.author.id}">
                                                ${saleAd.author.username}
                                            </g:link>
                                        </td>
                                        <td style="text-align: center !important;">
                                            <g:each var="listIllustrations" in="${saleAd.illustrations}" >
                                                <img src="${grailsApplication.config.tpmbds.illustrations.url}${listIllustrations.filename}" height="150px" alt="Grails"/>
                                            </g:each>
                                        </td>
                                    </tr>
                                    </g:each>
                                </tbody>

        </table>
        <br>


                    <g:link class="btn btn-primary  btn-lg " controller="saleAd" action="create" style="width: 100%;background: teal">Create Une Annonce</g:link>

                    <br>
                    <br>
    </div>

  </div>




%{--     <div class="pagination">--}%
%{--       <g:paginate total="${total ?: 0}" />--}%
%{--     </div>--}%

</div>

</body>
</html>