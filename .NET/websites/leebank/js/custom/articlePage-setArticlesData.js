function setArticlesData(data){
    console.log(data);
    var maxArticles = 3;
    var appendedArticles = 0
    data.forEach(element => {
        if(element.articleid != articleid){
            element.articleDate = new Date(element.articleDate);
            data.topic.forEach((item,index)=>{
                if(topics.includes(item) && maxArticles > appendedArticles){
                    var fatherAppend = document.getElementById('append-relatedArticles');

                    if(appendedArticles == 0){
                        var container = document.createElement('div');
                        container.setAttribute("class","related__big-card");
                        container.setAttribute("style","background-image: url(img/related-article-card.jpg);");

                        var innerContent = document.createElement('div');
                        innerContent.setAttribute("class","related__big-info");

                        var themeP = document.createElement('p');
                        themeP.innerHTML = element.theme;

                        var dateP = document.createElement('p');
                        dateP.innerHTML = element.articleDate.getDate() + "/" + element.articleDate.getMonth() + "/" + element.articleDate.GetFullYear();

                        innerContent.appendChild(themeP);
                        innerContent.appendChild(dateP);

                        var titleDiv = document.createElement('div');
                        
                        var titleH2 = document.createElement('h2');
                        titleH2.innerHTML = element.title;

                        titleDiv.appendChild(titleH2);

                        innerContent.appendChild(titleDiv);

                        container.appendChild(innerContent);

                        fatherAppend.append(container);
                    }else{
                        if(appendedArticles==1){
                            var tinyArticlesAppender = document.createElement('div')
                            tinyArticlesAppender.setAttribute("class","related__tiny-card")
                            tinyArticlesAppender.setAttribute("id","append-relatedArticles-tiny")
                        }

                    }
                }
            });
        }
    });
}