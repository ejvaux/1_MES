$('#loginform').on('submit', function (e) {
    /* var formdata = $('#loginform').serialize(); */
     e.preventDefault();
     
     $.ajax({
       type: 'POST',
       url: '/1_mes/_php/checklogin.php',
       data: $('#loginform').serialize(),
       success: function (data) {     

         if(data=="success"){
           /* alert("Login Successful!"); */

          $.ajax({
            type: 'POST',
            url: '/1_mes/_query/inserttoken.php',
            success: function (data2) {
              if(data2=="success"){
                /* alert("Session Saved"); */
                /* window.location.href="/1_MES/_php/portal.php"; */

                /* $.notify({
                  icon: 'fas fa-info-circle',
                  title: 'System Notification: ',
                  message: "Login Successful!",
                },{
                  type:'info',
                  placement:{
                    align: 'center'
                  },
                  onClose: redirect,            
                  delay: 1500,                        
                }); */

                redirect();
              }
              else{
                alert(data2);
              }         
            }
          }); 
                     
         }
         else{
           /* alert(data); */
           $.notify({
            icon: 'fas fa-exclamation-triangle',
            title: 'System Notification: ',
            message: data,
          },{
            type:'danger',
            placement:{
              align: 'center'
            },           
            delay: 3000,                        
          });
         }

       }
     });            
   });

   $('#lgout').on('click', function (e) {           
    /* if(confirm('Are you sure? You want to log-out?')){
     $.ajax({
       type: 'POST',
       url: '/1_mes/_php/logout.php',
       success: function (data) {

        if(data=="success"){ */
          /* alert("Logout Successful!"); */          
         
          /* $.notify({
            icon: 'fas fa-info-circle',
            title: 'System Notification: ',
            message: "Logout Successful!",
          },{
            type:'info',
            placement:{
              align: 'center'
            },
            onClose: redirect,            
            delay: 1500,                        
          }); */
          /* redirect();
        }
        else{
          alert(data);
        }                
       }
     });               
    } */

    swal({
      title: 'Are you sure?',
      text: "You want to logout?!",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Proceed',
      cancelButtonText: 'Cancel'
    }).then((result) => {
      if (result.value) {

        $.ajax({
          type: 'POST',
          url: '/1_mes/_php/logout.php',
          success: function (data) {
   
           if(data=="success"){
             /* alert("Logout Successful!"); */          
            
             /* $.notify({
               icon: 'fas fa-info-circle',
               title: 'System Notification: ',
               message: "Logout Successful!",
             },{
               type:'info',
               placement:{
                 align: 'center'
               },
               onClose: redirect,            
               delay: 1500,                        
             }); */
             redirect();
           }
           else{
             alert(data);
           }                
          }
        });        
      }
    })

   });

   function redirect(){
    window.location.href='/1_mes/';
   }