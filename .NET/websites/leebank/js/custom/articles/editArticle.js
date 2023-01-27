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
    }

    if (emptyFields.length > 0) {
        alert("Os seguintes campos não serão alterados, pois estão vazios: " + emptyFields);
    }

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
        alert("Artigo incluído com sucesso")
        window.location.href = "manage-article.html"
    })

}

function getFormData() {

    var articleid;

    var urlString = window.location.href;
    var url = new URL(urlString)

    articleid = url.searchParams.get("articleid").toString();

    var dados = {
        "articleid": articleid,
        dados: {
            "title": document.getElementById('article-title').value,
            "subtitle": document.getElementById('article-subtitle').value,
            "theme": document.getElementById('article-theme').value,
            "content": tinymce.activeEditor.getContent(),
            "image": "no-picture.jpg",
            "author": document.getElementById('article-author').value,
            "articleDate": document.getElementById('article-date').value,
            "modifiedby": "sistema",
            "modifiedon": new Date().toISOString().split('T')[0]
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