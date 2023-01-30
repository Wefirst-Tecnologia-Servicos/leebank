function setTopicsData(data){
    var fatherAppends = document.getElementById('pesquisa-por-topicos')
    if(data.length>0){
        data.forEach(element => {
            var linkWrapper = document.createElement('a')
            linkWrapper.setAttribute("href","topics.html?topico="+element.topic)

            var innerDiv = document.createElement('div')
            innerDiv.setAttribute("class","topics__item")
            innerDiv.style.backgroundImage = "url(img/topico1.png)" //"background-image: url(img/"+ element.topico.toLowercase() +".png)"

            var divP = document.createElement('p')
            divP.innerHTML = element.topic

            innerDiv.appendChild(divP)
            linkWrapper.appendChild(innerDiv)

            fatherAppends.appendChild(linkWrapper)            
        });
    }else{
        alert('Não foi possível buscar nenhum tópico')
    }
}