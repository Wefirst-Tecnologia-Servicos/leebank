
function setStaredArticlesData(data) {
    console.log(data)
    var maxArticles = 3;
    var appendedArticles = 0;
    var appendedArticlesId = [];

    var fatherAppend = document.getElementById('highlith-appends');

    data.forEach(element => {
        element.articleDate = new Date(element.articleDate);

        if (maxArticles > appendedArticles && appendedArticlesId.includes(element.articleid) == false) {

            if (appendedArticles == 0) {

                var container = document.createElement('div')
                container.setAttribute("class","highlights__first")

                var containerImage = document.createElement('div')
                containerImage.setAttribute("class","highlights__image")
                containerImage.setAttribute("style","background-image: url(img/"+element.image+");")

                var containerHeaderTextArea = document.createElement('div')
                containerHeaderTextArea.setAttribute("class","highlights__card-info")

                var containerheaderTitle = document.createElement('p')
                containerheaderTitle.innerHTML = "<b>"+element.theme+"</b>"

                var containerheaderDate= document.createElement('p')
                containerheaderDate.innerHTML = element.articleDate.toLocaleString('pt-br').split(" ")[0]

                containerHeaderTextArea.appendChild(containerheaderTitle)
                containerHeaderTextArea.appendChild(containerheaderDate)

                var containerTextArea = document.createElement('div')
                containerTextArea.setAttribute("class","highlights__text")

                var containerSubtitleDiv = document.createElement('div')

                var containerSubtitle = document.createElement('h2')
                containerSubtitle.innerHTML = element.subtitle

                containerSubtitleDiv.appendChild(containerSubtitle)

                var containerContinuarDiv = document.createElement('div')

                var containerContinuar = document.createElement('a')
                containerContinuar.setAttribute("href","")
                containerContinuar.innerHTML = "Continue lendo <img src='img/Arrow 2.svg' />"

                containerContinuarDiv.appendChild(containerContinuar)

                containerTextArea.appendChild(containerSubtitleDiv)
                containerTextArea.appendChild(containerContinuarDiv)

                containerImage.appendChild(containerHeaderTextArea)
                containerImage.appendChild(containerTextArea)

                container.appendChild(containerImage)

                fatherAppend.appendChild(container)

            } else {
                if(appendedArticles == 1){
                    var apppendSmallArticles = document.createElement('div')
                    apppendSmallArticles.setAttribute("id","apppendSmallArticles-highligth")
                    apppendSmallArticles.setAttribute("class","highlights__cards")

                    fatherAppend.appendChild(apppendSmallArticles)
                }

                var container = document.createElement('div')
                container.setAttribute("class","highlights__card")

                var containerImage = document.createElement('div')
                containerImage.setAttribute("class","highlights__card-image")
                containerImage.setAttribute("style","background-image: url(img/"+element.image+");")

                var containerHeaderTextArea = document.createElement('div')
                containerHeaderTextArea.setAttribute("class","highlights__card-info")

                var containerheaderTitle = document.createElement('p')
                containerheaderTitle.innerHTML = "<b>"+element.theme+"</b>"

                var containerheaderDate= document.createElement('p')
                containerheaderDate.innerHTML = element.articleDate.toLocaleString('pt-br').split(" ")[0]

                containerHeaderTextArea.appendChild(containerheaderTitle)
                containerHeaderTextArea.appendChild(containerheaderDate)

                containerImage.appendChild(containerHeaderTextArea)

                var containerTextDiv = document.createElement('div')
                containerTextDiv.setAttribute("class","highlights__card-text")

                var containerText = document.createElement('p')
                containerText.innerHTML = element.subtitle

                containerTextDiv.appendChild(containerText)

                container.appendChild(containerImage)
                container.appendChild(containerTextDiv)

                document.getElementById('apppendSmallArticles-highligth').appendChild(container)
            }

            appendedArticlesId.push(element.articleid);
            appendedArticles++;
        }

    });
}