function criarSessao(data, sessionStorageMethod, destination = null) {

    for(var property in data){
        sessionStorageMethod.setItem(property,data[property])
    }

    if(destination != null){
        window.location.href = destination
    } 
}
