var currentArticleid = 1;

function setArticlesData(data){
    console.log(data)
    if(data.length > 0){
        currentArticleid = data[data.length-1].articleid + 1;
    }
}