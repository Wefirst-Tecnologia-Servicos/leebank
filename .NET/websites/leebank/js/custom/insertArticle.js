function cadastrarArtigo() {
    var dados = getFormData();

}

function getFormData() {

    var dados = {
        artigo: {
            "articleid": CurrentArticleid,
            "title": document.getElementById('article-title').value,
            "subtitle": document.getElementById('article-theme').value,
            "theme": document.getElementById('article-theme').value,
            "content": document.getElementById('article-content').value,
            "image": document.getElementById('article-theme').value,
            "articleDate": document.getElementById('article-theme').value,
            "createdby": document.getElementById('article-theme').value,
        },
        topico: [

        ]
    }

    var tags = []

    tags.forEach((item, index) => {
        dados.topico.push([CurrentArticleid,item,"","",null,null]);
    });

    return dados
}