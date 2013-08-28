
<%@ page errorPage="errorpage.jsp" %>

<html>
  <head>
    <title>UseSession</title>
  </head>
  <body>
    <%
      Integer count = (Integer)session.getAttribute("COUNT");
      // If COUNT is not found, create it and add it to the session
      if ( count == null ) {
      
        count = new Integer(1);
        session.setAttribute("COUNT", count);
      }
      else {
        count = new Integer(count.intValue() + 1);
        session.setAttribute("COUNT", count);
      }  
      out.println("<b>Hello you have visited this site: "
        + count + " times.</b>");
    %>
  </body>
</html>
          