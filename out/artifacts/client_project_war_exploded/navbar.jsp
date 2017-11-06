<div class="row orange middle aligned">

    <div class=" sixteen wide  column">
        <div class="ui inverted secondary menu">
            <div class="item">
                <img src="/assets/img/brand.png" alt="" class="ui mini  image" >
            </div>

            <% if (session.getAttribute("username") != null) {
                String type = (String) session.getAttribute("type");
                if (type.equalsIgnoreCase("client")) {
            %>


            <a class="item" href="clientMenu.jsp">Dashboard</a>
            <a class="item" href="/logout">Log out</a>


            <% } else if (type.equalsIgnoreCase("grossiste")) { %>


            <a class="item active" href="grossisteMenu.jsp">Dashboard</a>
            <a class="item" href="/logout">Log out</a>


            <% }
            } %>

            <% if (session.getAttribute("username") == null) { %>


            <a id="home_nav" class="item" href="/">Home</a>
            <a id="login_nav" class="item" href="#login">LOGIN</a>
            <a id="signup_nav" class="item" href="#signup">SIGN UP</a>


            <% } %>
        </div>

    </div>
</div>

