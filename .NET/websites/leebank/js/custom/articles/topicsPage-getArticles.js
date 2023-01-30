var urlStringGetArticlesBytopic = window.location.href;
var urlGetArticlesBytopic = new URL(urlStringGetArticlesBytopic);
var filtroTopico = {}

if(urlGetArticlesBytopic.searchParams.get("topico")){
    filtroTopico.topic=[decodeURI(urlGetArticlesBytopic.searchParams.get("topico"))]
}else{
    alert("Não foi possível achar nenhum tópico para realizar a pesquisa")
    window.location.href = 'lee-learn.html'
}

var settingsGetArticles = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/filtro-artigos-completos",
    "method": "POST",
    "timeout": 0,
    "headers": {
        "Content-Type": "application/json"
    },
    "data": JSON.stringify(filtroTopico)
};

$.ajax(settingsGetArticles).done(function (data) {
    data = JSON.parse(data);
    console.log(data)
    setArticlesData(data);
});