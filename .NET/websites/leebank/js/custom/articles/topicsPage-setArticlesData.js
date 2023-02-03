function setArticlesData(data) {
    const fatherAppends = document.getElementById('article-appender');

    if (data.length > 0) {
        data.forEach(element => {
            
            var cardBox = document.createElement('div')
            cardBox.setAttribute("class", "cards__box")

            var cardBoxImage = document.createElement('div')
            cardBoxImage.setAttribute("class", "cards__image")
            cardBoxImage.style.backgroundImage = "url(img/"+element.image+")"

            var cardBoxTheme = document.createElement('div')
            cardBoxTheme.setAttribute("class", "cards__info")

            var cardBoxThemeP = document.createElement('p')
            cardBoxThemeP.innerText = element.theme

            cardBoxTheme.appendChild(cardBoxThemeP)

            var cardBoxCreationDate = document.createElement('div')
            cardBoxCreationDate.setAttribute("class", "cards__info")

            var cardBoxCreationDateP = document.createElement('p')
            cardBoxCreationDateP.innerText = new Date(element.articleDate).toLocaleDateString('pt-BR')

            cardBoxCreationDate.appendChild(cardBoxCreationDateP)

            cardBoxImage.appendChild(cardBoxTheme)
            cardBoxImage.appendChild(cardBoxCreationDate)

            var cardBoxText = document.createElement('div')
            cardBoxText.setAttribute("class", "cards__text")

            var cardBoxTextP = document.createElement('p')
            cardBoxTextP.innerText = element.subtitle

            cardBoxText.appendChild(cardBoxTextP)

            cardBox.append(cardBoxImage)
            cardBox.append(cardBoxText)

            fatherAppends.append(cardBox)
        });
    }
}