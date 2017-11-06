<%--
  Created by IntelliJ IDEA.
  User: agoujilsaad
  Date: 6/11/17
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%if (session.getAttribute("Auth") == "s") {%>


<div class="row">
    <div class="ui success message">
        <i class="close icon"></i>
        <div class="header">
            welcome Dear  <% out.print(session.getAttribute("username"));  %>

        </div>
        <p>This is a special notification which you can dismiss if you're bored with it.</p>
    </div>
</div>
<%}else if (session.getAttribute("Auth") == "e"){%>
<div class="row">
    <div class="ui negative message">
        <i class="close icon"></i>
        <div class="header">
            We're sorry we can't apply that request
        </div>
    </div>
</div>
<%}%>
<%session.setAttribute("Auth","");%>
