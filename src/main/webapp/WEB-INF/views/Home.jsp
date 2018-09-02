<div align="center" class="h3 mb-3 font-weight-normal">Appointments for Today</div>
<div class="row">
    <div class="col-md-4"></div>

    <div class="list-group appointments-list col-md-4">
        <c:forEach items="${appointments}" var="appointment">
            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-between">
                  <h5 class="mb-1">${appointment.firstName} ${appointment.lastName}</h5>
                  <small>${appointment.bookingId}</small>
                </div>
                <p class="mb-1">
                    <fmt:formatDate value="${appointment.requestSubmittedOn}" pattern="dd-MMM-yyyy hh:mm a"></fmt:formatDate>
                </p>
                <small>Has booked the appointment</small>
              </a>
        </c:forEach>
    <!--
      <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1">List group item heading</h5>
          <small class="text-muted">3 days ago</small>
        </div>
        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
        <small class="text-muted">Donec id elit non mi porta.</small>
      </a>
      <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1">List group item heading</h5>
          <small class="text-muted">3 days ago</small>
        </div>
        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
        <small class="text-muted">Donec id elit non mi porta.</small>
      </a> -->
    </div>
</div>