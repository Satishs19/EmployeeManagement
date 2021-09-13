function loginvalidate() {
    var uname=document.loginform.username.value;
    if(uname=="") {
       alert( "Name cannot be blank" );
       document.loginform.username.focus() ;
    }
}
function passvalidate() {
    var pass=document.loginform.pass.value;
    if(  pass=="") {
       alert( "Password cannot be blank");
       document.loginform.pass.focus();
    }
}

function idvalidate() {
    var id=document.getElementById("eid").value;
    if(id=="") {
       alert( "Employee ID cannot be blank" );
       document.loginform.username.focus() ;
    }
}
function namevalidate() {
    var uname=document.getElementById("name").value;
    if(uname=="") {
       alert( "Name cannot be blank" );
       document.loginform.username.focus() ;
    }
}
function deptvalidate() {
    var dname=document.getElementById("dept").value;
    if(dname=="") {
       alert( "Department field cannot be blank" );
       document.loginform.username.focus() ;
    }
}
function fieldvalidate() {
    var sal=document.getElementById("sal").value;
    if(sal=="") {
       alert( "Salary cannot be blank" );
       document.loginform.username.focus() ;
    }
}