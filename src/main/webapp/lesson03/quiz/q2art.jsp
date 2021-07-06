<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg");
%>

<article class="d-flex ml-3">
	<div class="m-2">
		<img alt="아이유" src="<%=artistInfo.get("photo")%>" width="100px"
			height="100px">
	</div>
	<div class="m-2">
		<h5 class="font-weight-bold"><%=artistInfo.get("name")%></h5>
		<div><%=artistInfo.get("agency")%></div>
		<div><%=artistInfo.get("debute")%> 데뷔</div>
	</div>

</article>