<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Leopa
  Date: 2019/4/9
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div>
    <form action="${ctx}/category/query/categoryId" method="post">
        <span>分类文档:</span>
        <select name="id" id="">
            <option value="0">全部</option>
            <c:forEach items="${categories}" var="obj">
                <option value="${obj.id}" <c:if test="${categoryId eq obj.id}">
                    selected
                </c:if>>${obj.name}</option>

            </c:forEach>
        </select>
        <input type="submit" value="查询"/>
        <a href="${ctx}/entry/addTo">新增电子文档</a>
        <input type="button" value="新增电子文档" id="addBtn"/>
    </form>

</div>
<div>
    <table>
        <thead>
            <tr><th colspan="6"><h2>电子文档列表</h2></th></tr>
            <tr>
                <th>文档编号</th>
                <th>文档名称</th>
                <th>文档摘要</th>
                <th>上传人</th>
                <th>上传时间</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items='${entries}' var="obj">
                <tr>
                    <th>${obj.id}</th>
                    <th>${obj.title}</th>
                    <th>${obj.summary}</th>
                    <th>${obj.uploadUser}</th>
                    <th><fmt:formatDate value="${obj.createDate}"></fmt:formatDate></th>
                    <th>
                        <a href="${ctx}/entry/updateTo/${obj.id}">修改</a>
                        <a href="${ctx}/entry/delete/${obj.id}">删除</a>
                    </th>
                </tr>

            </c:forEach>
            <tr>
                <td colspan="6">
                    <c:if test="${updateSucFlag eq true}">
                        <span style="background-color: red">
                            修改成功
                        </span>
                    </c:if>
                    <c:if test="${deleteSucFlag eq true}">
                        <span style="background-color: red">
                            删除成功
                        </span>
                    </c:if>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<script type="text/javascript" src="${ctx}/static/jquery/jquery-2.1.0.min.js">

</script>
<script>
    $(function () {
        $('#addBtn').click(function () {
            //获取当前的参数
            var id = $('form select').val();
            if(id == 0){
                alert('请先选择分类信息');
                return false;
            }
            window.location = '${ctx}/entry/addTo/'+id;
        })
    })
</script>

</body>
</html>
