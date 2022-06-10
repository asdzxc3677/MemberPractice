<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오전 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/resources/js/jquery.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        .container{
            max-width: 500px;
        }
    </style>
</head>
<body>

<div class="container">
<h1 class="display-4 fw-normal">회원가입 save.jsp</h1>
<div class="py-5 text-center">

    <from action ="/member/save" method="post">
        <input type="text" class="form-control mb-2" onclick="duplicateCheck()" id="memberId" name="memberId" placeholder="아이디"><br>
        <p id="dup-check-result"></p>
        <input type="password" class="form-control mb-2" id="memberPassword" name="memberPassword" placeholder="비번"><br>
        <input type="text" class="form-control mb-2" id="memberName" name="memberName" placeholder="이름"><br>
        <input type="text" class="form-control mb-2" id="memberAge" name="memberAge" placeholder="나이"><br>
        <input type="text" class="form-control mb-2" id="memberPhone" name="memberPhone" placeholder="핸드폰"><br>
            <input type="submit" value="회원가입">
    </from>
</div>
</div>
</body>

<script> <%-- 중복체크 --%>
    const duplicateCheck = () =>{
        const memberId = document.getElementById("memberId").value;
        const checkResult = document.getElementById("dup-check-result");
        $.ajax({
            type:"post", <%-- get,post 선택 --%>
            url:"/member/duplicate-check", <%-- 리턴값을 받을 Mapping이름 --%>
            data:{"memberId":memberId},
            dataType:"text", <%-- 데이타타입 : text --%>
            success:function (result){
                if (result == "ok"){
                    checkResult.innerHTML = "사용가능한 아이디입니다."
                    checkResult.style.color = "blue";
                }else {
                    checkResult.innerHTML = "중복된 아이디 입니다."
                    checkResult.style.color = "red";
                }
            },
            error:function (){
                alert("오타체크");
            }
        });
    }
</script>
</html>
