function filtrarArtigos(){

    var dados = getFiltersData();

    var settings = {
        "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/filtro-artigos-completos",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(dados)
    };
    
    $.ajax(settings).done(function (data) {
        data = JSON.parse(data);
        setArticlesData(data);
    });
}

function getFiltersData(){
    var filtro = {}

    if(document.getElementById('categoria-filtro').value != ""){
        filtro.theme = [document.getElementById('categoria-filtro').value]
    }

    if(tags.length>0){
        filtro.topic = tags
    }

    if(document.getElementById('date-filter').value != ""){
        filtro.articleDate = [document.getElementById('date-filter').value]
        filtro.modifiedon = [document.getElementById('date-filter').value]
    }

    return filtro;
}

