var image;

function editarArtigo() {
    var dados = getFormData();

    var emptyFields = [];

    for (var property in dados.dados) {
        if (dados.dados[property] == "") {
            emptyFields.push(property)
            delete dados.dados[property]
        }
    }

    if (dados.topico == "") {
        delete dados.topico
    }

    if (dados.dados == {}) {
        alert("Nenhum campo preenchido, portanto não será feita nenhuma alteração.")
        return
    }else if (emptyFields.length > 0) {
        alert("Os seguintes campos não serão alterados, pois estão vazios: " + emptyFields);
    }

    if (sessionStorage.getItem("personid") != null) {
        dados.dados.modifiedby = sessionStorage.getItem("personid");
    } else if (localStorage.getItem("personid") != null) {
        dados.dados.modifiedby = localStorage.getItem("personid");
    }
    dados.dados.modifiedon = new Date().toISOString().split('T')[0]

    
    if(image!=""){
        uploadImage(image,(response)=>{
            if (response != 0) {
                delete dados.image
                alert(response);
            }else{
                if(oldImage!="no-picture.jpg" && oldImage != image){
                    removeImage("img/articleImages/" + oldImage)
                }
            }
        })
    }

    console.log(dados)

    var settings = {
        "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/update/artigo",
        "method": "PUT",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(dados)
    };

    $.ajax(settings).done(function (data) {
        alert("Artigo alterado com sucesso")
        window.location.href = "manage-article.html"
    })

}

function getFormData() {

    var articleid;

    var urlString = window.location.href;
    var url = new URL(urlString)

    articleid = url.searchParams.get("articleid").toString();

    if (document.getElementById('image').files[0]) {
        var fileExtension = document.getElementById('image').files[0].name.split(".");
        var validExtensions = ["jpg","png","jpeg","jfif"]
        if (validExtensions.includes(fileExtension[fileExtension.length - 1].toLowerCase())) {
            image = "artigo" + articleid + "." + fileExtension[fileExtension.length - 1];
        } else {
            alert("A imagem escolhida possui uma extensão inválida, portanto não ira aletrar a imagem atual do artigo")
            image = "";
        }
    } else {
        image = "";
    }

    var dados = {
        "articleid": articleid,
        dados: {
            "title": document.getElementById('article-title').value,
            "subtitle": document.getElementById('article-subtitle').value,
            "theme": document.getElementById('article-theme').value,
            "content": tinymce.activeEditor.getContent(),
            "image": image,
            "author": document.getElementById('article-author').value,
            "articleDate": document.getElementById('article-date').value,
        },
        topico: ""
    }

    if (tags.length > 0) {
        dados.topico = []
        tags.forEach(element => {
            dados.topico.push([articleid, element, "sistema", null, null, new Date().toISOString().split('T')[0]])
        });
    }

    return dados
}