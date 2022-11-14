const button = document.getElementById('button');
const password = document.getElementById('password');
const passwordConfirm = document.getElementById('passwordConfirm');
const text = document.getElementById('textArea');
const form = document.getElementById('form');
const name = document.getElementById('name');
const surname = document.getElementById('surname');
const email = document.getElementById('email');
const date = document.getElementById('date');
const container = document.getElementById('createAccContainer');

button.addEventListener('click', () =>{
    if(password.value != passwordConfirm.value){
        text.innerHTML = "Senhas não conferem"
    }
    else if(password.value, passwordConfirm.value, surname.value,email.value,date.value == ""){     
        alert('Todos os campos devem ser preenchidos!');            
    }
    else{
        form.submit();  
    }

});

function inputFocus(element){
    element.style.border = "solid #6C63FF";
    element.style.borderRadius = "5px"
}

function inputBlur(element){
    element.style.border = "none";
}