function setArticleData(data){
    topics = data.topic;

    document.getElementById('article-theme').innerHTML = data.theme;
    data.articleDate = new Date(data.articleDate);
    document.getElementById('article-date').innerHTML = data.articleDate.toLocaleString('pt-br').split(" ")[0];
    if(data.modifiedon != null){

        data.modifiedon = new Date(data.modifiedon);

        var fatherAppend = document.getElementById('article-date-area');

        var articleLI = document.createElement("li")
        articleLI.setAttribute("class","article__item");

        var articleP = document.createElement('p');
        articleP.innerHTML = data.modifiedon.toLocaleString('pt-br').split(" ")[0];

        articleLI.appendChild(articleP);
        fatherAppend.appendChild(articleLI);
    }
    document.getElementById('article-image').setAttribute("style","background-image: url(img/"+data.image+");")
    document.getElementById('article-title').innerHTML = data.title
    document.getElementById('article-author').innerHTML = data.author
    document.getElementById('article-subtitle').innerHTML = data.subtitle

    document.getElementById('article-text-append').innerHTML = data.content

    var topicArea = document.createElement('div')
    topicArea.setAttribute("class","article__tags")

    data.topic.forEach(element => {

        var tagDiv = document.createElement('div');
        tagDiv.setAttribute("class","article__tag");

        var content = document.createElement('p');
        content.innerHTML = element;

        tagDiv.appendChild(content);
        topicArea.appendChild(tagDiv);
    });

    document.getElementById('article-text-append').appendChild(topicArea);
}