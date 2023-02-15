var logado, actualGroupVerifier, statusVerifier;


if(sessionStorage.getItem("actualGroup") != null){
    logado = 1;
    actualGroupVerifier = sessionStorage.getItem("actualGroup");
    statusVerifier = sessionStorage.getItem("status");
}else if (localStorage.getItem("actualGroup") != null){
    logado = 1;
    actualGroupVerifier = localStorage.getItem("actualGroup");
    statusVerifier = localStorage.getItem("status");
}else{
    logado = 0;
}

     