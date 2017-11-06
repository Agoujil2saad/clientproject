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
<div class="ui  centered grid">


    <%@include file="navbar.jsp" %>
    <div class="row">

        <form class="ui huge form" action="/addProduct" method="post">

            <div class="field">
                <label class="label" for="ab">Product Name:</label>
                <div class="ui input left icon">
                    <i class="shop icon"></i>
                    <input type="text" name="name" id="ab" placeholder="Enter product name">
                </div>
            </div>

            <div class="field">
                <label class="label " for="ac">Product Price (DH) :</label>
                <div class="ui input left icon">
                    <i class="money icon"></i>
                    <input type="text" name="price" id="ac" placeholder="3000">
                </div>
            </div>

            <div class="field">


                    <button type="submit" class="ui huge orange icon button">
                        <i class="send icon"></i>
                        </button>

            </div>
        </form>
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

</script>

</body>
</html>
