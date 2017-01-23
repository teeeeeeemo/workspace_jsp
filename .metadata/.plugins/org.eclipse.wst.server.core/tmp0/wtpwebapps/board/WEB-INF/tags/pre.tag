<%@ tag body-content="empty" pageEncoding="utf-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="value" type="java.lang.String" required="true" %>

<%
	
	value = value.replace("&", "&amp;");
	value = value.replace("<", "&lt;");
	value = value.replace("\n", "\n<br>"); //"<br"은 "<" 후에 와야한당
	value = value.replace(" ", "&nbsp;");
	
%>

<%= value %>

