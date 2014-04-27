<%-- 
    Document   : index
    Created on : 24/04/2014, 19:33:29
    Author     : Luiz
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%
        String pushStatus = "";
        Object pushStatusObj = request.getAttribute("pushStatus");

        if (pushStatusObj != null) {
            pushStatus = pushStatusObj.toString();
        }
    %>
    <head>
        <title>Servidor Cloud Messaging (GCM)</title>
    </head>
    <body>

        <h1>Servidor Google Cloud Messaging (GCM)</h1>

        <form action="NotificacaoGCM" method="post">

            <div>
                <textarea rows="3" name="message" cols="100"
                          placeholder="Mensagem para transmitir via GCM"></textarea>
            </div>
            <div>
                <input type="submit" value="Enviar Notificação via GCM" />
            </div>
        </form>
        <p>
            <h3>
                <%=pushStatus%>
            </h3>
        </p>
    </body>
</html>