function setArticlesData(data){
    var maxArticles = 3;
    var appendedArticles = 0;
    var appendedArticlesId = [];
    data.forEach(element => {
        if(element.articleid != articleid){
            element.articleDate = new Date(element.articleDate);
            element.topic.forEach((item,index)=>{
                if(topics.includes(item) && maxArticles > appendedArticles && appendedArticlesId.includes(element.articleid) == false){
                    console.log(element)
                    var fatherAppend = document.getElementById('append-relatedArticles');

                    if(appendedArticles == 0){

                        var container = document.createElement('div');
                        container.setAttribute("class","related__big-card");
                        container.setAttribute("style","background-image: url(img/"+element.image+");");
                        container.setAttribute("onclick","window.location.href = 'article.html?articleid="+element.articleid+"'");

                        var innerContent = document.createElement('div');
                        innerContent.setAttribute("class","related__big-info");

                        var themeP = document.createElement('p');
                        themeP.innerHTML = element.theme;

                        var dateP = document.createElement('p');
                        dateP.innerHTML = element.articleDate.getDate() + "/" + element.articleDate.getMonth() + "/" + element.articleDate.getFullYear();

                        innerContent.appendChild(themeP);
                        innerContent.appendChild(dateP);

                        var titleDiv = document.createElement('div');
                        
                        var titleH2 = document.createElement('h2');
                        titleH2.innerHTML = element.title;

                        titleDiv.appendChild(titleH2);

                        container.appendChild(innerContent);
                        container.appendChild(titleDiv);

                        fatherAppend.append(container);
                    }else{
                        if(appendedArticles==1){
                            var tinyArticlesAppender = document.createElement('div');
                            tinyArticlesAppender.setAttribute("class","related__tiny-card");
                            tinyArticlesAppender.setAttribute("id","append-relatedArticles-tiny");

                            fatherAppend.appendChild(tinyArticlesAppender);
                        }

                        var container = document.createElement('div');
                        container.setAttribute("class","related__tiny-cards");
                        container.setAttribute("onclick","window.location.href = 'article.html?articleid="+element.articleid+"'");

                        var headerCard = document.createElement('div');
                        headerCard.setAttribute("class","related__tiny-info");

                        var headerText = document.createElement('p');
                        headerText.innerHTML = element.title;

                        var headerLine = document.createElement('img');
                        headerLine.setAttribute("src","img/Line 8.svg");

                        headerCard.appendChild(headerText);
                        headerCard.appendChild(headerLine);

                        var subtitleCard = document.createElement('div');

                        var subtitleText = document.createElement('p');
                        subtitleText.innerHTML = element.subtitle;

                        subtitleCard.appendChild(subtitleText);

                        container.appendChild(headerCard);
                        container.appendChild(subtitleCard);

                        document.getElementById("append-relatedArticles-tiny").appendChild(container);
                    }
                    appendedArticlesId.push(element.articleid);
                    appendedArticles++;
                }
            });
        }
    });
}