<%@ page contentType="text/html; charset=ISO-8859-1" language="java" %>
<%@page import="org.owasp.webgoat.plugin.sqlinjection.*" %>
<%@ page import="org.owasp.webgoat.session.*" %>
<style>
<jsp:include page="SQLInjection.css" />
</style>
<%
	WebSession webSession = ((WebSession)session.getAttribute("websession"));
	SQLInjection currentLesson = (SQLInjection) webSession.getCurrentLesson();
%>
<div id="lesson_wrapper">
	<div id="lesson_header"></div>
	<div class="lesson_workspace">
	<%
	String subViewPage = currentLesson.getPage(webSession);
	if (subViewPage != null)
	{
		//System.out.println("Including sub view page: " + subViewPage);
	%>
	<jsp:include page="<%=subViewPage%>" />
	<%
	}
	%>

	</div>
</div>