
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
    <c:if test="${to.beginlinenum - to.perline > 0}">
<<<<<<< HEAD:HomePageT/WebContent/page2.jsp
    	<a href="list.do?curpage=${to.beginlinenum - to.perline}">&laquo;</a>
    </c:if>
    
    <c:if test="${to.curpage > 1}">
    	<a href="list.do?curpage=${to.curpage - 1}">&lt;</a>
    </c:if>	
    
    <c:forEach var="j" end="${to.stoplinenum}" begin="${to.beginlinenum}">
    	<a class="${to.curpage == j?'itsme':''}" href="list.do?curpage=${j}"> ${j} </a>
    </c:forEach>
    
    <c:if test="${to.curpage < to.totalpage}">
    	<a href="list.do?curpage=${to.curpage + 1}">&gt;</a>
    </c:if>
    
    <c:if test="${to.totalpage > to.stoplinenum}">
    	<a href="list.do?curpage=${to.beginlinenum + to.perline}">&raquo;</a>
=======
    	<a href="freenotice.do?curpage=${to.beginlinenum - to.perline}">&laquo;</a>
    </c:if>
    
    <c:if test="${to.curpage > 1}">
    	<a href="freenotice.do?curpage=${to.curpage - 1}">&lt;</a>
    </c:if>	
    
    <c:forEach var="i" end="${to.stoplinenum}" begin="${to.beginlinenum}">
    	<a class="${to.curpage == j?'itsme':''}" href="freenotice.do?curpage=${i}"> ${i} </a>
    </c:forEach>
    
    <c:if test="${to.curpage < to.totalpage}">
    	<a href="freenotice.do?curpage=${to.curpage + 1}">&gt;</a>
    </c:if>
    
    <c:if test="${to.totalpage > to.stoplinenum}">
    	<a href="freenotice.do?curpage=${to.beginlinenum + to.perline}">&raquo;</a>
>>>>>>> dd12497d2519de215581d21910539e05897e5f32:HomePageT1/WebContent/page2.jsp

    </c:if>