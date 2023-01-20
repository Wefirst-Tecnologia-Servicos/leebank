function setTopicsData(data){
    var fatherAppends = document.getElementById('tag-filter')
    if(data.length>0){
        data.forEach(element => {
            var option = document.createElement('option')
            option.setAttribute("value",element.topic)
            option.innerText = element.topic

            fatherAppends.appendChild(option);
        });
    }else{
        fatherAppends.innerHTML = "<option value='' disabled>Não foi possível pegar as tags</option>"
    }
}