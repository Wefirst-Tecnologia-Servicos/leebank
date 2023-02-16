var currentArticleid = 1;

function setArticlesData(data){
    if(data.length > 0){
        currentArticleid = data[data.length-1].articleid + 1;
    }
}