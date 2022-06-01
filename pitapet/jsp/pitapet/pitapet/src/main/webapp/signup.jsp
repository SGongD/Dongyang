<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/signup.css">
  <title>회원가입 폼 페이지</title>
  <script src="jquery-3.4.1.js"></script>
</head>
<body>
  <header></header>
  <section class = "login-form">
      <h1>Sign Up</h1>
      <form action="">
        <div class="int-area">
          <input type="text" name="id" id="id" autocomplete="off" required>
          <label for="id">ID</label>
        </div>
        <div class="int-area">
          <input type="password" name="pw" id="pw" autocomplete="off" required>
          <label for="pw">PASSWORD</label>
        </div>
        <div class="int-area">
          <input type="text" name="email" id="email" autocomplete="off" required>
          <label for="email">EMAIL</label>
        </div>
        <div class="int-area">
          <input type="text" name="name" id="name" autocomplete="off" required>
          <label for="name">NAME</label>
        </div>
        <div class="int-area">
          <input type="text" name="gender" id="gender" autocomplete="off" required>
          <label for="gender">GENDER</label>
        </div>
        <div class="btn-area">
          <button id="btn" type="submit">SIGN UP</button>
          <!-- <button type="submit">SIGN UP</button>  -->
        </div>
      </form>
  </section>
  <%-- <footer>
  	<jsp:include page="footer.jsp" flush="false"/>
  </footer> --%>
</body>
</html>