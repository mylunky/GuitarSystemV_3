<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <title>GuitarSystem-V3.0</title>
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
<center><h1>Guitar销售系统-V3.0</h1></center> 
 <hr/>
 <div><strong>查询Guitar</strong>&nbsp;&nbsp;需要添加请点击<a href="GuitarAdd.jsp">添加</a>！</div>
<hr/>
        <form action="searchGuitar" method="post" class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-id">序列号</th>
                <th class="table-title">制作人</th>
                <th class="table-type">模型</th>
                <th class="table-author">类型</th>
                <th class="table-set">背部材质</th>
                <th class="table-set">顶部材质</th>
                <th class="table-set">价格</th>
                <th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
	          <c:forEach items="${guitars }" var="guitar">
	         	<tr>
	                <td class="table-id">${guitar.serialNumber }</td>
	                <td class="table-title">${guitar.spec.builder }</td>
                	<td class="table-set">${guitar.spec.model }</td>
	                <td class="table-type">${guitar.spec.type }</td>
	                <td class="table-author">${guitar.spec.backWood }</td>
	                <td class="table-set">${guitar.spec.topWood }</td>
	                <td class="table-set">${guitar.price }</td>
	                <td class="table-set"><a href="delGuitar?guitar.serialNumber=${guitar.serialNumber }">删除</a></td>
	              </tr>
	          </c:forEach>
          </tbody>
        </table>
         <input type="submit" id="submit" value="查询"/>
        </form>
</body>
</html>
