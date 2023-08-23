<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path =  request.getContextPath();
    String sid = (String) session.getAttribute("sid");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>404 Error</title>
    <%@ include file="/layout/head.jsp" %>
    <link rel="stylesheet" href="<%=path %>/css/sub.css">
</head>
<body class="join">
<div class="join_wrap">
    <header class="join_header">
        <a href="<%=path %>/" class="logo"><img src="<%=path %>/image/common/logo.png" alt="플러스앤플러스에듀 로고"><p><span class="mainCol">Plus</span> & <span class="subCol">Plus</span> Edu</p></a>
    </header>
    <section class="join_content error">
        <h2>죄송합니다.<br>요청하신 페이지를 찾을수가 없습니다.</h2>
        <p>
            방문하시려는 페이지의 주소가 잘못 입력되었거나,<br>
            페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br>
            입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.
        </p>

        <% if(sid != null) { %>
        <p>관련 문의사항은 <a href="<%=path %>/qna/addQna.jsp">문의하기</a>에 알려주시면 친절하게 안내해 드리겠습니다.</p>
        <% } %>

        <p>감사합니다.</p>
        <div class="btn_group txt_center">
            <a href="<%=path %>/" class="inBtn inBtn1" >홈으로 이동하기</a>
        </div>
    </section>
    <footer class="join_footer">
        <p>COPYRIGHT ©2023 Plus&PlusEdu. ALL RIGHTS RESERVED.</p>
    </footer>
</div>
</body>
</html>
