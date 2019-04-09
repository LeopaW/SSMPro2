<%--
  Created by IntelliJ IDEA.
  User: Leopa
  Date: 2019/4/9
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="${ctx}/entry/update" method="post">
        <input type="hidden" name="categoryId" value="${categoryId}"/>
        <input type="hidden" name="id" value="${entry.id}"/>
        <table>
            <thead>
                <tr>
                    <th colspan="2">
                        <h2>更新电子文档</h2>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>文档编号:</td>
                    <td>
                        ${entry.id}
                    </td>
                </tr>
                <tr>
                    <td>文档名称:<span>(*)</span></td>
                    <td>
                        <input type="text" name="title" value="${entry.title}"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        文档摘要
                    </td>
                    <td>
                        <textarea name="summary">
                            ${entry.summary}
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        上传人
                    </td>
                    <td>
                        <input type="text" name="uploadUser" value="${entry.uploadUser}"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        上传时间<span>()*</span>
                    </td>
                    <td>

                        <input type="text" name="createDate" value="<fmt:formatDate value="${entry.createDate}"></fmt:formatDate>"/>(yyyy-MM-dd)
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="提交"/>
                        <input type="button" value="返回"/>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>

</body>
</html>
