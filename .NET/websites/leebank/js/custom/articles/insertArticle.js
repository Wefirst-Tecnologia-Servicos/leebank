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
        alert("Artigo incluído com sucesso")
        window.location.href = "manage-article.html"
    })
}

function getFormData() {

    var dados = {
        artigo: {
            "articleid": currentArticleid,
            "title": document.getElementById('article-title').value,
            "subtitle": document.getElementById('article-subtitle').value,
            "theme": document.getElementById('article-theme').value,
            "content": tinymce.activeEditor.getContent(),
            "image": "no-picture.jpg",
            "author": document.getElementById('article-author').value,
            "articleDate": document.getElementById('article-date').value,
            "createdby": "sistema",
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