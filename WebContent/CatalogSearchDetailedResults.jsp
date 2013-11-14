<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauSearchResults"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery.js"></script>
                <script src="js/functions.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  <script>
  $(function() {
    $( "#datepickerTwo" ).datepicker();
  });
  </script>
        <script type="text/javascript" defer="defer">
                function cascadeSelect(parent, child){
                                var childOptions = child.find('option:not(.static)');
                                        child.data('options',childOptions);
 
                                parent.change(function(){
                                        childOptions.remove();
                                        child
                                                .append(child.data('options').filter('.sub_' + this.value))
                                                .change();
                                })
 
                                childOptions.not('.static, .sub_' + parent.val()).remove();
 
                }
 
                $(function(){
                        cascadeForm = $('.cascade');
                        orgSelect = cascadeForm.find('.regSelect');
                        terrSelect = cascadeForm.find('.countySelect');
                        locSelect = cascadeForm.find('.citySelect');
 
                        cascadeSelect(orgSelect, terrSelect);
                        cascadeSelect(terrSelect, locSelect);
                });
        </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
                
                <title>’igusportaal</title>
        </head>
        
        <body>
        
        <%
                ArrayList<BureauSearchResults> br = (ArrayList<BureauSearchResults>) request
                                .getAttribute("bureauSR");
        %>
        
                <div id="wrapper">
                        <!-- include header -->
                        <%@include file='/header.jsp'%>
                        
                        <div class="page">
                                <h2>Otsing</h2>
                                <div class="content">
                                        <form action="<%=request.getContextPath()%>/SearchServlet" method="get" class="cascade">
                                        <p>Asukoht</p>
                                        <select name="regions" class="regSelect">
                                                <option value="0">--Select a Region--</option>
                                                <option value="1" >Pıhja-Eesti</option>
                                                <option value="2">Lıuna-Eesti</option>
                                                <option value="3">L‰‰ne-Eesti</option>
                                                <option value="4">Ida-Eesti</option>
                                        </select>
                                        <select name="counties" class="countySelect">
                                                <option value="0" class="static">--Vali maakond--</option>
                                                                                <option value="1" class="sub_1">Harjumaa</option>
                                                                                <option value="2" class="sub_1">J‰rvamaa</option>
                                                                                <option value="3" class="sub_1">Raplamaa</option>
                                                                                <option value="4" class="sub_2">Ida-Virumaa</option>
                                                                                <option value="5" class="sub_2">Jıgevamaa</option>
                                                                                <option value="6" class="sub_2">L‰‰ne-Virumaa</option>
                                                                                <option value="7" class="sub_3">Hiiumaa</option>
                                                                                <option value="8" class="sub_3">L‰‰nemaa</option>
                                                                                <option value="9" class="sub_3">P‰rnumaa</option>
                                                                                <option value="10" class="sub_3">Saaremaa</option>
                                                                                <option value="11" class="sub_4">Pılvamaa</option>
                                                                                <option value="12" class="sub_4">Tartumaa</option>
                                                                                <option value="13" class="sub_4">Valgamaa</option>
                                                                                <option value="14" class="sub_4">Viljandimaa</option>
                                                                                <option value="15" class="sub_4">Vırumaa</option>
                                        </select>
                                        <select name="cities" class="citySelect">
                                                <option value="0" class="static">--Vali linn--</option>
                                                                                <option value="1" class="sub_1">Tallinn</option>
                                                                                <option value="2" class="sub_2">Paide</option>
                                                                                <option value="3" class="sub_3">Rapla</option>
                                                                                <option value="4" class="sub_4">Jıhvi</option>
                                                                                <option value="5" class="sub_5">Jıgeva</option>
                                                                                <option value="6" class="sub_6">Rakvere</option>
                                                                                <option value="7" class="sub_7">K‰rdla</option>
                                                                                <option value="8" class="sub_8">Haapsalu</option>
                                                                                <option value="9" class="sub_9">P‰rnu</option>
                                                                                <option value="10" class="sub_10">Kuressaare</option>
                                                                                <option value="11" class="sub_11">Pılva</option>
                                                                                <option value="12" class="sub_12">Tartu</option>
                                                                                <option value="13" class="sub_13">Valga</option>
                                                                                <option value="14" class="sub_14">Viljandi</option>
                                                                                <option value="15" class="sub_15">Vıru</option> 
                                        </select>
                                        
                                        <p>Keskmine tunnihind</p>
                                        <div id="avgprice">
                                                <input name="averageprice" type="range" min=1 max=100 value=50 style="width: 40%">
                                                <output for="foo">1</output>
                                                <input type="checkbox" name="Price" value="Price" checked="checked">   Kasuta otsingus
                                        </div>
                                        <input type="hidden" name="fieldName" value="<%= request.getAttribute("fieldName") %>">    
                                        <p id="success">Viimane edulugu</p>
                                        <div id="success_date">
                                <p>From: <input type="text" id="datepicker" name="From"/></p>
                                          <p>To: <input type="text" id="datepickerTwo" name="To" /></p>
                                          <input type="checkbox" name="Date" value="Date" checked="checked">  Kasuta otsingus
                                           </div>
                                        <input type="submit" value="Otsi" id="searching"/>
                                        </form>
                        </div>
                        
                        <div class="page">
                <h2>--Selected Burueas for Detailed Search --</h2>
                <table width="95%" border="1">
                        <tr>
                                <%
                                        for (int i = 0; i < br.size(); i++) {
                                %>

                                <td width="20" align="center" class="borderdesign">
                                <td width="100" class="borderdesign">
                                        <h3><%=br.get(i).getFieldName() + " " + br.get(i).getName() + " " + br.get(i).getEmail() 
                                        + " " + br.get(i).averagePrice + " " + br.get(i).getStreet() + " " + br.get(i).postalcode 
                                        + " " + br.get(i).phoneNumber + " " + br.get(i).getCity()  %></h3>
                                </td>
                                <td width="100" class="tdnonborder"><img src="<%=br.get(i).getImage()%>"/></td>

                                <%
                                        if ((i + 1) % 2 == 0) {
                                %>
                        </tr>
                        <tr>
                                <%
                                        }

                                        }
                                %>

                        </tr>
                        </table>
                        </div>
                        <!-- include footer -->
                        <%@include file='/footer.jsp'%>
                </div>
        </body>

</html>