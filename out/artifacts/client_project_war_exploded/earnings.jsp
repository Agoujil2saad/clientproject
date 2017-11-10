<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.model.Product" %>
<%@ page import="com.project.metier.IGrossisteMetier" %>
<%@ page import="java.rmi.Naming" %>
<%@ page import="java.rmi.NotBoundException" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Projet jee">
    <title>Mini Projet JEE / Pr.Y.ELBOUZEKRI</title>

    <!-- Bootstrap core CSS -->
    <link href="/assets/css/semantic.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <%--<link href="/assets/css/cover.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="/assets/css/mycss.css">

</head>

<body>

<div class="ui grid centered">
    <%@include file="/navbar.jsp" %>
        <%
            String username = (String)session.getAttribute("username");
            ArrayList<Product>  buyed_products = new ArrayList<Product>();
            int total = 0 ;
            try {
                IGrossisteMetier grossiste = (IGrossisteMetier) Naming.lookup("rmi://localhost/grossiste");
                buyed_products = grossiste.getBuyedProducts(username);
                total = grossiste.getSumBuyedProducts(username);
            }catch (NotBoundException e){
                e.printStackTrace();
            }
            StringBuilder result = new StringBuilder("<table class=\"ui single line table\">\n");
            result.append(
                    "            <thead>\n" +
                            "            <tr>\n" +
                            "                <th>Nom produit</th>\n"  +
                            "                <th>Prix (MAD)</th>\n" +
                            "                <th>Nom Client</th>\n" +
                            "            </tr>\n" +
                            "            </thead>\n" +
                            "            <tbody>\n") ;
            for (Product p : buyed_products){
                result.append(
                        "            <tr>\n" +
                        "                <td>"  + p.getName()  + " </td>\n" +
                        "                <td>" + p.getPrice()+  " </td>\n"  +
                        "                <td>"  + p.getBuyer() + " </td>\n" +
                        "            </tr>\n" +
                        "            </thead>\n" +
                        "            <tbody>\n") ;
            }
            result.append("   </tbody>\n" + "        </table>");
            result.append("" +
                    "<div class=\"ui massive statistics\">"+
                    "<div class=\"teal statistic\">\n" +
                    "    <div class=\"value\">\n" +
                    "      <i class=\"money icon\" id=\"counter\"></i>\n"+ //total+
                    //"    MAD</div>\n" +
                    "    <div class=\"label\">\n" +
                    "      Profits\n" +
                    "    </div>\n" +
                    "</div>"+
                    "</div>");
            out.print(result);
        %>
    </div>
</div>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="/assets/js/jquery-3.2.1.min.js"></script>
<script src="/assets/js/countUp.min.js"></script>
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/semantic.js"></script>
<script src="/assets/js/myscript.js"></script>
<script>
    $('.ui.dropdown').dropdown();

    $('a[href^="#"]').on('click', function(event) {

        var target = $(this.getAttribute('href'));

        if( target.length ) {
            event.preventDefault();
            $('html, body').stop().animate({
                scrollTop: target.offset().top
            }, 1000);
        }

    });
</script>
<%--CountUp animation for profits--%>
<script>
    var options = {
        useEasing:  true,
        useGrouping: true,
        separator: ',',
        decimal: '.',
        prefix: '',
        suffix: 'MAD'
    };
    var demo = new CountUp("counter", 0, <% out.print(total); %>, 1, 2, options);
    demo.start();
</script>
</body>
</html>
