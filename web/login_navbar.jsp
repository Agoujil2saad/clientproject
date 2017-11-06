<div class="row">
<div class="ui menu">



            <% if ( session.getAttribute("type").equals("grossiste") ){ %>
            <a  class="item active" href="grossisteMenu.jsp">Dashboard</a>
            <% } else{  %>
            <a  class="item active" href="clientMenu.jsp">Dashboard</a>
            <% } %>

                <div class="ui dropdown item">
                    <% out.print(session.getAttribute("username"));  %>
                    <a class="dropdown-item" href="/logout">LOGOUT</a>
                </div>

</div>
    </div>
