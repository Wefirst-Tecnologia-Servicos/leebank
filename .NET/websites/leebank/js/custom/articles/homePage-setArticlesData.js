
function setArticlesData(data) {
    var maxArticles = 5;
    var appendedArticles = 0;
    var appendedArticlesId = [];

    var fatherAppend = document.getElementById('append-recentArticles');

    var bigCardAppender = document.createElement('div')
    bigCardAppender.setAttribute("class", "recent__cards")

    var smallCardAppender = document.createElement('div')
    smallCardAppender.setAttribute("class", "recent__cards")

    fatherAppend.appendChild(bigCardAppender)
    fatherAppend.appendChild(smallCardAppender)

    data.sort((a, b) => {
        { return new Date(b.articleDate) - new Date(a.articleDate) }
    })

    data.forEach(element => {
        element.articleDate = new Date(element.articleDate);

        if (maxArticles > appendedArticles && appendedArticlesId.includes(element.articleid) == false) {

            if (appendedArticles == 0) {
                var container = document.createElement('div')
                container.setAttribute("class", "recent__big-card")
                container.setAttribute("onclick", "window.location.href='article.html?articleid=" + element.articleid + "'")
                container.style.backgroundImage = " url(img/recent-img.jpg"

                var containerWrapper = document.createElement('div')

                var containerHeader = document.createElement('div')
                containerHeader.setAttribute("class", "recent__big-info")

                var containerHeaderTitle = document.createElement('p')
                containerHeaderTitle.innerHTML = "<b>" + element.theme + "</b>"

                var containerHeaderDate = document.createElement('p')
                containerHeaderDate.innerHTML = element.articleDate.toLocaleString('pt-br')

                containerHeader.appendChild(containerHeaderTitle)
                containerHeader.appendChild(containerHeaderDate)

                var containerTitleWrapper = document.createElement('div')

                var containerTitle = document.createElement('h2')
                containerTitle.innerHTML = "<b>" + element.title + "</b>"

                containerTitleWrapper.appendChild(containerTitle)

                containerWrapper.appendChild(containerHeader)
                containerWrapper.appendChild(containerTitleWrapper)

                container.appendChild(containerWrapper)

                bigCardAppender.appendChild(container)

            } else {

                var container = document.createElement('div')
                container.setAttribute("onclick", "window.location.href='article.html?articleid=" + element.articleid + "'")
                container.setAttribute("class", "recent__tiny-card")

                var tinyCardThemeWrapper = document.createElement('div')
                tinyCardThemeWrapper.setAttribute("class", "recent__tiny-info")

                var tinyCardThemeP = document.createElement('p')
                tinyCardThemeP.innerHTML = "<b>" + element.theme + "</b>"

                var tinyCardThemeLine = document.createElement('img')
                tinyCardThemeLine.setAttribute("src", "img/Line 8.svg")

                tinyCardThemeWrapper.appendChild(tinyCardThemeP)
                tinyCardThemeWrapper.appendChild(tinyCardThemeLine)

                var tinyCardTitleWrapper = document.createElement('div')

                var tinyCardTitleP = document.createElement('p')
                tinyCardTitleP.innerText = element.title

                tinyCardTitleWrapper.appendChild(tinyCardTitleP)

                container.appendChild(tinyCardThemeWrapper)
                container.appendChild(tinyCardTitleWrapper)

                smallCardAppender.appendChild(container)

            }

            appendedArticlesId.push(element.articleid);
            appendedArticles++;
        }

    });
}