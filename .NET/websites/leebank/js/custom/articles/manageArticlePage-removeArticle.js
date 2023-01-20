
function deletarArtigo(articleid){
    var dados = {articleid: articleid}
    var settings = {
        "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/delete/artigo",
        "method": "DELETE",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(dados)
    };
    
    $.ajax(settings).done(function (data) {
        alert("artigo removido!")
        location.reload()
    })
}