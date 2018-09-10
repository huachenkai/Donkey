/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
  $("#showuser").click(function(){
  ShowAll=$.ajax({url:"user/showAllUsers",async:false});
  $("#page4").jsp(ShowAll.responseText);
  });
});


