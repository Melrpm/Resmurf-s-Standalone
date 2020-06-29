const cfname = document.getElementById("fname");
const clname = document.getElementById("lname");
const cage = document.getElementById("age");
const fnameError = document.getElementById("fnameError");
const lnameError = document.getElementById("lnameError");
const AgeError = document.getElementById("ageError");
const nextButton = document.getElementById("submit");

nextButton.addEventListener("click", ()=>{
    if(cfname.value===""){
       fnameError.innerHTML="Please Enter First Name";
       setTimeout(()=>{
        fnameError.innerHTML="";
       }, 2000);
    }
    else if(clname.value===""){
        lnameError.innerHTML="Please Enter Last Name";
        setTimeout(()=>{
            lnameError.innerHTML="";
           }, 2000);
    }
    else if(cage.value===""){
        AgeError.innerHTML="Please Enter Age";
        setTimeout(()=>{
            AgeError.innerHTML="";
           }, 2000);
    }
});

function RemoveError(errorName){
    errorName.innerHTML="";
}














