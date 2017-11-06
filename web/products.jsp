<%@ page import="com.project.metier.IClientMetier" %>
<%@ page import="com.project.model.Product" %>
<%@ page import="java.rmi.Naming" %>
<%@ page import="java.rmi.NotBoundException" %>
<%@ page import="java.util.ArrayList" %>
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
    <link rel="stylesheet" href="/assets/product_slider/css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="/assets/product_slider/css/style.css"> <!-- Resource style -->

</head>

<body>
<div class="ui centred grid">
    <%@include file="navbar.jsp" %>

    <div class="row">
        <input type="text" id="search" placeholder="Type to search" >


            <%
                ArrayList<Product> products = new ArrayList<Product>();
                String username = (String) session.getAttribute("username");
                String type = (String) session.getAttribute("type");
                try {
                    IClientMetier client = (IClientMetier) Naming.lookup("rmi://localhost/client");
                    products = client.getProducts(username, type);
                } catch (NotBoundException e) {
                    System.out.println("Error getting client remote ");
                }
                StringBuilder p = new StringBuilder("<ul class=\"cd-gallery\">\n");
                for (Product product : products) {
                    p.append("<li id=\"cd-item-wrapper\">");
                    p.append("<a id='lo'></a>");
                    p.append("<ul class=\"cd-item-wrapper\"  >\n" +
                            "                    <li class=\"selected\">\n" +
                            "                        <img src=\"/assets/img/ugmonk-tshirt-1.jpg\" alt=\"Preview image\">\n" +
                            "                    </li>\n" +
                            "\n" +
                            "                    <li class=\"move-right\" data-sale=\"true\" data-price=\"$22\">\n" +
                            "                        <img src=\"/assets/img/ugmonk-tshirt-2.jpg\" alt=\"Preview image\">\n" +
                            "                    </li>\n" +
                            "\n" +
                            "                    <li>\n" +
                            "                        <img src=\"/assets/img/ugmonk-tshirt-3.jpg\" alt=\"Preview image\">\n" +
                            "                    </li>\n" +
                            "                </ul>\n");


                    p.append(" <div class=\"cd-item-info\">\n" +
                            "               <a href=\"#0\" class='username'>" + product.getName() + ";" + product.getSeller() + "</a>\n" +
                            "\n" +
                            "                <em class=\"cd-price\">" + product.getPrice() + "</em>\n" +
                            "            </div> <!-- cd-item-info -->");

                    if (type.equalsIgnoreCase("client")) {
                        p.append(
                                "<form action='/purchase' class='ui form' method='post'>" +
                                "<button type='submit'  style ='padding:20px;'class='ui orange  very padded large fluid button'>" +
                                " <i class='large shop icon'></i>Acheter</a></button>" +
                                "<input name='product_id' type='hidden' value=" + product.getId() + "> " +
                                "</form>");
                    }
                    p.append("</li>");
                }

                out.print(p);
            %>

        </ul>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="/assets/js/jquery-3.2.1.min.js"></script>
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


    var $rows = $('#cd-item-wrapper li');
    $('#search').keyup(function() {
    });

</script>

<script src="/assets/product_slider/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
