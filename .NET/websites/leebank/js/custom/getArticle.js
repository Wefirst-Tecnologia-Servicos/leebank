var urlStringGetArticle = window.location.href;
var urlGetArticle = new URL(urlStringGetArticle);
var articleid;
var topics = [];

if(urlGetArticle.searchParams.get("articleid")){
    articleid = url.searchParams.get("articleid");
}else{
    alert("Não foi possível achar o ID de nenhum artigo")
}


var settingsGetArticle = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/artigo-completo?articleid="+articleid,
    "method": "GET",
    "timeout": 0,
    "headers": {
        "Content-Type": "application/json"
    }
};

$.ajax(settingsGetArticle).done(function (data) {
    data = JSON.parse(data);
    if(data.length>0){
        setArticleData(data[0]);
    }else{
        alert("Não foi possível encontrar o artigo");
    }    
});