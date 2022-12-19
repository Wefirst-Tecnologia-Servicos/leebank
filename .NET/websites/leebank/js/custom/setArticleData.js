function setArticleData(data){
    document.getElementById('article-theme').innerHTML = data.theme;
    data.articleDate = new Date(data.articleDate);
    document.getElementById('article-date').innerHTML = data.articleDate.getDate() + "/" + data.articleDate.getMonth() + "/" + data.articleDate.getFullYear();
    if(data.modifiedon != null){

        data.modifiedon = new Date(data.modifiedon);

        var fatherAppend = document.getElementById('article-date-area');

        var articleLI = document.createElement("li")
        articleLI.setAttribute("class","article__item");

        var articleP = document.createElement('p');
        articleP.innerHTML = data.modifiedon.getDate() + "/" + data.modifiedon.getMonth() + "/" + data.modifiedon.getFullYear();

        articleLI.appendChild(articleP);
        fatherAppend.appendChild(articleLI);
    }
    //document.getElementById('article-image').setAttribute("style","background-image: url(img/"+data.image+");")
    document.getElementById('article-title').innerHTML = data.title
    document.getElementById('article-author').innerHTML = data.author
    document.getElementById('article-subtitle').innerHTML = data.subtitle

    data.topic.forEach(element => {

        var fatherAppend = document.getElementById('article-topics');

        var tagDiv = document.createElement('div');
        tagDiv.setAttribute("class","article__tag");

        var content = document.createElement('p');
        content.innerHTML = element;

        tagDiv.appendChild(content)
        fatherAppend.appendChild(tagDiv)
    });
    
    
    console.log(data);
}