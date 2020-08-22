<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="tasklists" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${tasklists.id}">
                        <c:out value="${tasklists.id}" />
                    </a>
                    ：<c:out value="${tasklists.title}"></c:out> &gt; <c:out value="${tasklists.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新しいタスクを追加</a></p>

    </c:param>
</c:import>