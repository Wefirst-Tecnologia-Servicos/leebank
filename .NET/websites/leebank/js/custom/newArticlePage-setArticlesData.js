var CurrentArticleid = 1;

function setArticlesData(data){
    if(data.length > 0){
        var lastArticle = data.slice(-1);
        CurrentArticleid = lastArticle.articleid + 1;
    }
    
}