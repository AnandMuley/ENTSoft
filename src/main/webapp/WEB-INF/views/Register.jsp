<form class="form-signin" method="POST" action="user/create">
      <img class="mb-4" src="https://getbootstrap.com/docs/4.1/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">ENTSoft</h1>
      <div class="row">
          <div class="col-sm-6">
              <label for="inputForename" class="sr-only">First Name</label>
              <input type="text" id="inputForename" class="form-control" name="firstName" placeholder="First Name" required="" autofocus="">
          </div>
          <div class="col-sm-6">
              <label for="inputLastname" class="sr-only">Last Name</label>
              <input type="text" id="inputLastname" class="form-control" name="lastName" placeholder="Last Name" required="" autofocus="">
          </div>
      </div>
      <br/>

      <div class="row">
          <div class="col-sm-6">
              <label for="inputEmail" class="sr-only">Email Address</label>
              <input type="email" id="inputEmail" class="form-control" name="emailId" placeholder="Email Address" required="" autofocus="">
          </div>
          <div class="col-sm-6">
              <label for="inputContactNo" class="sr-only">ContactNo</label>
              <input type="phone" id="inputContactNo" class="form-control" name="contactNo" placeholder="ContactNo" required="">
          </div>
      </div>
      <br/>

      <div class="row">
          <div class="col-sm-6">
              <label for="inputUsername" class="sr-only">Username</label>
              <input type="text" id="inputUsername" class="form-control" name="username" placeholder="Username" required="" autofocus="">
          </div>
          <div class="col-sm-6">
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required="">
          </div>
      </div>
      <br/>

      

      <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>

      <c:if test="${not empty message}">
        ${message}
      </c:if>

</form>