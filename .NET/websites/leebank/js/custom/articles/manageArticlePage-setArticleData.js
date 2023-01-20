
function setArticlesData(data){
    if(data.length > 0){
        console.log(data)

        var fatherAppends = document.getElementById('table-append')

        data.forEach(element => {
            var articleLinha = document.createElement('div');
            articleLinha.setAttribute("class","table__linha")

            var articleTitleWrapper = document.createElement('div');
            articleTitleWrapper.setAttribute("class","table__title")

            var articleTitleTitle = document.createElement('p');
            articleTitleTitle.innerHTML = "<b>" + element.title + "<b>"

            var articleTitleAuthor = document.createElement('p');
            articleTitleAuthor.innerHTML = element.author

            articleTitleWrapper.appendChild(articleTitleTitle)
            articleTitleWrapper.appendChild(articleTitleAuthor)



            var articleCategoriaWrapper = document.createElement('div');
            articleCategoriaWrapper.setAttribute("class","table__category")

            var articleCategoria = document.createElement('p');
            articleCategoria.innerHTML = element.theme

            articleCategoriaWrapper.appendChild(articleCategoria)



            var articleTagWrapper = document.createElement('div');
            articleTagWrapper.setAttribute("class","table__tag")

            var articleTag = document.createElement('p');
            articleTag.innerHTML = element.topic

            articleTagWrapper.appendChild(articleTag)



            var articleUpdateWrapper = document.createElement('div');
            articleUpdateWrapper.setAttribute("class","table__update")

            var articleUpdate = document.createElement('p');
            if(element.modifiedon != null){
                articleUpdate.innerHTML = element.modifiedon
            }else{
                articleUpdate.innerHTML = "Sem atualização"
            }            

            articleUpdateWrapper.appendChild(articleUpdate)



            var articleEditarWrapper = document.createElement('div');
            articleEditarWrapper.setAttribute("class","table__space-button")

            var articleEditar = document.createElement('button');
            articleEditar.setAttribute("class","table__button")
            articleEditar.setAttribute("onclick","window.location.href='edit-article.html?articleid="+element.articleid+"'")
            articleEditar.innerHTML = "Editar"

            articleEditarWrapper.appendChild(articleEditar)



            var articleDeletarWrapper = document.createElement('div');
            articleDeletarWrapper.setAttribute("class","table__space-button")

            var articleDeletar = document.createElement('button');
            articleDeletar.setAttribute("class","table__button")
            articleDeletar.setAttribute("onclick","deletarArtigo('"+element.articleid+"')")
            articleDeletar.innerHTML = "Deletar"

            articleDeletarWrapper.appendChild(articleDeletar)

            articleLinha.appendChild(articleTitleWrapper)
            articleLinha.appendChild(articleCategoriaWrapper)
            articleLinha.appendChild(articleTagWrapper)
            articleLinha.appendChild(articleUpdateWrapper)
            articleLinha.appendChild(articleEditarWrapper)
            articleLinha.appendChild(articleDeletarWrapper)

            fatherAppends.appendChild(articleLinha)            
        });
    }else{
        var result = document.createElement('div')
        result.setAttribute("style","width: 100%;")
        result.setAttribute("class","table__title")
        result.innerHTML = "<p><b>Não foi possível encontrar nenhum artigo</b></p>"

        fatherAppends.appendChild(result)        
    }
    
}