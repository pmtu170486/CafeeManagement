<%--
  Created by IntelliJ IDEA.
  User: pmtu
  Date: 5/1/2017
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>

<html>
<head>
    <title>Title</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">


    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/plugins/datatables/dataTables.bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/dist/css/AdminLTE.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/dist/css/skins/_all-skins.min.css" />" rel="stylesheet">
</head>
<body>
<decorator:body/>

<script src="<c:url value="/resources/plugins/jQuery/jquery-2.2.3.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/plugins/datatables/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/resources/plugins/slimScroll/jquery.slimscroll.min.js" />"></script>
<script src="<c:url value="/resources/plugins/fastclick/fastclick.js" />"></script>
<script src="<c:url value="/resources/dist/js/app.min.js" />"></script>
<script src="<c:url value="/resources/dist/js/demo.js" />"></script>

<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>


</body>

</html>
