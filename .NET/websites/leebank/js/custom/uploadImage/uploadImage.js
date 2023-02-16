function uploadImage(imageName, result, path = null) {

    var fd = new FormData();
    var files = $('#image')[0].files;
    var fileName = imageName;
    var pathPost;

    if(path == null){
        pathPost = "img/articleImages/";
    }else{
        pathPost = path;
    }


    // Check file selected or not
    if (files.length > 0) {
        fd.append('file', files[0]);
        fd.append('fileName', fileName);
        fd.append('pathPost', pathPost);

        $.ajax({
            url: 'uploadProfilePicture.php',
            type: 'post',
            data: fd,
            contentType: false,
            processData: false,
            success: function (response) {
                result(response);
            },
        });
    }
}