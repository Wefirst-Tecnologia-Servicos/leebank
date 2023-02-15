function login() {

  var dados = getFormData();

  var emptyFields = []

  for(var property in dados){
    if(dados[property] == ""){
      delete dados[property]
      emptyFields.push(property)
    }
  }

  if(emptyFields.length>0){
    var message = "Preencha os seguintes campos: "
    emptyFields.forEach((element,index)=>{
      message += index==0 ? document.getElementById(element).name : ", " + document.getElementById(element).name
    })
    alert(message);
    return
  }

  var settings = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/login",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(dados),
  };

  $.ajax(settings).done(function (data) {
    data = JSON.parse(data);
    if (data.length>0) {
      criarSessao(data[0], sessionStorage, "manage-article.html")
    } else {
      alert('usuário ou senha incorretos');
    }
  });
}

function getFormData() {

  var data = {
    "username": document.getElementById('username').value.replace(/[^a-zA-Z0-9 ]/g, ''),
    "password": document.getElementById('password').value,
  };

  return data;
}