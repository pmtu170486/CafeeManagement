<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

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
<h1>Header</h1>
<p><b>Navigation</b></p>
<hr/>
<decorator:body/>
<hr/>
<h1>Footer</b></h1>
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