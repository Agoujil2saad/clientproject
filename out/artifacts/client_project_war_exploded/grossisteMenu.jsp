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

    <%@include file="authStatus.jsp" %>

            <%@include  file="navbar.jsp"%>


    <div class="middle aligned row">
        <div class="column six wide">
        <div  style="padding-top: 150px;">

            <a href="/products" class="circular ui icon button orange">
                <i class="massive list icon"></i>
            </a>

            <%--<span class="or"></span>--%>

            <a href="/addProduct" class="circular ui icon button">
                <i class="massive icon plus"></i>
            </a>

            <%--<span class="or"></span>--%>
            <a href="/earnings" class="ui yellow icon compact circular button">
                <i class="massive icon shop"></i>
            </a>

        </div>
        </div>
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

    $('a[href^="#"]').on('click', function (event) {

        var target = $(this.getAttribute('href'));

        if (target.length) {
            event.preventDefault();
            $('html, body').stop().animate({
                scrollTop: target.offset().top
            }, 1000);
        }

    });
    //del flash message in both cases: success and fail !
    $('.message .close')
        .on('click', function() {
            $(this)
                .closest('.message')
                .transition('fade')
            ;
        });
</script>
</body>
</html>
