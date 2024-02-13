var cssSelector = anime({
  targets: '#cssSelector .el',
  translateX: 250
});

function loginfirst()
{
	alert("Please login first");
	return false;
}

function validateForm(inputf,inputl,inputp)
{
	 // var x =  document.forms["signup"]["fname"].value;

	 var letters = /^[A-Za-z]+$/;
   	if(!inputf.value.match(letters))
     { 
      	alert("First name should have only alphabets");
      	return false;

     }
    
    if(!inputl.value.match(letters))
     { 
        alert("Last name should have only alphabets");
        return false;

     }

     var field = inputp.value; 

    if(field.length< 3 || field.length> 10)
    { 
        alert("Please enter the password between 3 and 10 characters");
        return false;
    }

 //     var inputtxt
	// var phoneno = /^\d{10}$/;
 //    if(!inputtxt.value.match(phoneno))
 //    {
 //        alert("Not a valid Phone Number");
 //        return false;
 //    }
    return true;
}

function validateLogin(inputp)
{
  var field = inputp.value; 

    if(field.length< 3 || field.length> 10)
    { 
        alert("Invalid Password");
        return false;
    }
    return true;
}

function validateEvent(inputtxt,Contact)
{
   var letters = /^[A-Za-z]+$/;
    if(!inputtxt.value.match(letters))
     { 
        alert("Name of Organizer should have only alphabets");
        return false;

     }

  var phoneno = /^\d{10}$/;
   if(!Contact.value.match(phoneno))
   {
     alert("Not a valid Phone Number");
         return false;
   }
    return true;
}

function validateForm1(inputo,inputtxt)
{
  var letters = /^[A-Za-z]+$/;
    if(!inputo.value.match(letters))
     { 
        alert("Name of owner should have only alphabets");
        return false;

     }

  var phoneno = /^\d{10}$/;
   if(!inputtxt.value.match(phoneno))
   {
     alert("Not a valid Phone Number");
         return false;
   }
    return true;
}










