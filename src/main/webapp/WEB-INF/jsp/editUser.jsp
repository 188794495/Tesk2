<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <div style="width:500px;margin:0px auto;text-align:center">
	
	
	<div style="text-align:center;margin-top:40px">
		
		<form method="post" action="/listUsers/${c.id}">
            <input type="hidden" name="_method" value="PUT">
			<%--name    ： <input name="name"     value="${c.name}"     type="text"> <br><br>--%>
			<%--qq      ： <input name="qq"       value="${c.qq}"       type="text"> <br><br>--%>
			<%--job     ： <input name="job"      value="${c.job}"      type="text"> <br><br>--%>
			<%--college ： <input name="college"  value="${c.college}"  type="text"> <br><br>--%>
			<%--number  ： <input name="number"   value="${c.number}"   type="text"> <br><br>--%>
			<%--dailyUrl： <input name="dailyUrl" value="${c.dailyUrl}" type="text"> <br><br>--%>
			<%--wish    ： <input name="wish"     value="${c.wish}"     type="text"> <br><br>--%>
			<%--brother ： <input name="brother"  value="${c.brother}"  type="text"> <br><br>--%>
			<%--referee ： <input name="referee"  value="${c.referee}"  type="text"> <br><br>--%>
			<%--city    ： <input name="city"     value="${c.city}"     type="text"> <br><br>--%>
			<%--review  ： <input name="review"   value="${c.review}"   type="text"> <br><br>--%>
			name    ：  <input name="name"      value="${c.name}"      type="text"> <br><br>
			qq      ：  <input name="qq"      value="${c.qq}"      type="text"> <br><br>
			job     ：  <input name="job"      value="${c.job}"      type="text"> <br><br>
			college ：  <input name="college"      value="${c.college}"      type="text"> <br><br>
			number  ：  <input name="number"      value="${c.number}"      type="text"> <br><br>
			dailyUrl：  <input name="dailyUrl"      value="${c.dailyUrl}"      type="text"> <br><br>
			wish    ：  <input name="wish"      value="${c.wish}"      type="text"> <br><br>
			brother ：  <input name="brother"      value="${c.brother}"      type="text"> <br><br>
			referee ：  <input name="referee"      value="${c.referee}"      type="text"> <br><br>
			city    ：  <input name="city"      value="${c.city}"      type="text"> <br><br>
			review  ：  <input name="review"      value="${c.review}"      type="text"> <br><br>


			<input type="submit" value="修改分类">
		</form>
	</div>	
 </div>
