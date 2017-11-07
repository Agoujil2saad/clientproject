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

<div class="ui centered  grid">

    <%@include file="authStatus.jsp" %>

    <%@include file="navbar.jsp" %>


    <div class="row">
        <img src="/assets/img/market.jpg" alt="" class="ui image fluid">
    </div>


    <div class="row">
        <div class="eight wide column">


            <div class="ui  centered segment">
                <h1 class="ui  centered header">Site Ecommerce</h1>

            </div>

        </div>

    </div>




        <div id="login" role="main" style="height: 100vh;" class="row">

            <form class="ui huge form" action="/login"  style="padding-top: 5em" method="post">
                <div class="field">
                    <label class="label" for="email">Username:</label>
                    <div class="ui input left icon">
                        <i class="user icon"></i>
                        <input type="text" name="username" id="email2" placeholder="Enter username">
                    </div>
                </div>

                <div class="field">
                    <label class="label" for="pwd">Password:</label>
                    <span class="ui input left icon">
                            <i class="icon lock"></i>
                            <input type="password" class="form-control" name="password" id="pwd2"
                                   placeholder="Enter password">
                        </span>
                </div>


                <div class="field">
                    <label class="label">Client/grossiste:</label>

                    <select name="type" class="ui dropdown" id="user_type2">
                        <option value="client">Client</option>
                        <option value="grossiste">Grossiste</option>
                    </select>
                </div>

                <div class="field">

                    <button type="submit" class="ui orange button">Login</button>

                </div>
            </form>
        </div>

        <div id="signup" role="main" class="row" style="height: 100vh;">

            <form class="ui huge form" action="/register" method="post" style="padding-top: 5em">
                <div class="field">
                    <label class="label" for="email">Username:</label>

                    <div class="ui input left icon">
                        <i class="user icon"></i>
                        <input type="text" name="username" id="email" placeholder="Enter username">
                    </div>


                </div>
                <div class="field">
                    <label class="label" for="pwd">Password:</label>
                    <span class="ui input left icon">
                            <i class="icon lock"></i>
                             <input type="password" name="password" id="pwd" placeholder="Enter password">
                        </span>


                </div>
                <div class="field">
                    <label class="label">Client/
                        Grossiste</label>

                    <select name="type" class="ui dropdown" id="user_type">
                        <option value="client">Client</option>
                        <option value="grossiste">Grossiste</option>
                    </select>

                </div>
                <div class="field">
                    <button type="submit" class="ui yellow button">Register</button>
                </div>
            </form>
        </div>
    <button href="#" id="scrollToTop" class="circular ui icon button">
        <i class="orange huge angle up icon"></i>
    </button>


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
</script>
<script>
    $(document).ready(function(){

        //Check to see if the window is top if not then display button
        $(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                $('#scrollToTop').fadeIn();
            } else {
                $('#scrollToTop').fadeOut();
            }
        });

        //Click event to scroll to top
        $('#scrollToTop').click(function(){
            $('html, body').animate({scrollTop : 0},800);
            return false;
        });

    });
</script>
</body>
</html>
