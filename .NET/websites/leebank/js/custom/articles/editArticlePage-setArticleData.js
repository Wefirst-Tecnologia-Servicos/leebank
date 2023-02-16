var oldImage;

function setArticleData(data) {
    console.log(data)

    document.getElementById('article-title').value=data.title
    document.getElementById('article-subtitle').value=data.subtitle
    document.getElementById('article-theme').value=data.theme
    document.getElementById('article-author').value=data.author
    document.getElementById('article-date').value=new Date(data.articleDate).toISOString().split('T')[0]
    oldImage = data.image

    if(data.modifiedon){
        var fatherAppends = document.getElementById('article-inputs')

        var inputDiv = document.createElement('div')
        
        var input = document.createElement('input')
        input.setAttribute("class","pins__input")
        input.setAttribute("type","date")
        input.setAttribute("id","article-modifiedon")
        input.setAttribute("disabled","true")

        input.value = new Date(data.modifiedon).toISOString().split('T')[0]

        inputDiv.appendChild(input)

        fatherAppends.appendChild(inputDiv)
    }

    criarTagsSetArticleData(data.topic)

    $(document).ready(
        tinymce.activeEditor.setContent(data.content)
    )        
}

function criarTagsSetArticleData(data) {
    tags = data
    var fatherAppends = document.getElementById('tags-results')

    tags.forEach(element => {
        var resultBox = document.createElement('div')
        resultBox.setAttribute("class", "pins__tag")
        resultBox.setAttribute("id", "tag-selected-" + element.replace(/ /g, ''))

        var resultBoxtext = document.createElement('p')
        resultBoxtext.innerHTML = "<b>" + element + "</b>"

        var resultBoxImage = document.createElement('img')
        resultBoxImage.setAttribute("src", "img/x-button.svg")
        resultBoxImage.setAttribute("onclick", "removeTag('" + element + "')")

        resultBox.appendChild(resultBoxtext)
        resultBox.appendChild(resultBoxImage)

        fatherAppends.appendChild(resultBox)
    });

}