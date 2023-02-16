var image

function cadastrarArtigo() {
    var dados = getFormData();
    console.log(dados)

    var emptyFields = [];

    for(var property in dados.artigo){
        if(dados.artigo[property] == ""){
            emptyFields.push(property)
        }
    }

    if(dados.topico.length == 0){
        emptyFields.push("tag")
    }

    if(emptyFields.length>0){
        alert("Os seguintes campos estão vazios: " + emptyFields);
        return
    }

    var settings = {
        "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/insert/artigo",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(dados)
    };
    
    $.ajax(settings).done(function (data) {
        if(image!="no-image.jpg"){
            uploadImage(image,(response)=>{
                if (response != 0) {
                    alert(response);
                }
            })
        }
        alert("Artigo incluído com sucesso")
        window.location.href = "manage-article.html"
    })
}

function getFormData() {
    var personid;

    if (sessionStorage.getItem("personid") != null) {
        personid = sessionStorage.getItem("personid");
    } else if (localStorage.getItem("personid") != null) {
        personid = localStorage.getItem("personid");
    }
    
    if (document.getElementById('image').files[0]) {
        var fileExtension = document.getElementById('image').files[0].name.split(".");
        var validExtensions = ["jpg","png","jpeg","jfif"]
        if (validExtensions.includes(fileExtension[fileExtension.length - 1].toLowerCase())) {
            image = "artigo" + currentArticleid + "." + fileExtension[fileExtension.length - 1];
        } else {
            alert("A imagem escolhida possui uma extensão inválida, portanto não foi carregada")
            image = "no-image.jpg";
        }
    } else {
        image = "no-image.jpg";
    }

    var dados = {
        artigo: {
            "articleid": currentArticleid,
            "title": document.getElementById('article-title').value,
            "subtitle": document.getElementById('article-subtitle').value,
            "theme": document.getElementById('article-theme').value,
            "content": tinymce.activeEditor.getContent(),
            "image": image,
            "author": document.getElementById('article-author').value,
            "articleDate": document.getElementById('article-date').value,
            "createdby": personid,
        },
        topico: []
    }

    

    if(tags.length>0){
        tags.forEach(element => {
            dados.topico.push([currentArticleid,element,"sistema",null,null,null])
        });
    }    

    return dados
}