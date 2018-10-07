function AppointmentActionCtrl(){
  var ctrl = this;

  ctrl.submit = function(){
    ctrl.onSubmit();
  }

}

app.component ('appointmentAction', {
    templateUrl : 'views/components/appointmentAction.html',
    controller : AppointmentActionCtrl,
    bindings : {
        type : '<',
        onSubmit : '&'
    }
});
