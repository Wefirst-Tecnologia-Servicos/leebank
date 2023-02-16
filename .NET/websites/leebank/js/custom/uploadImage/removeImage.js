function removeImage(filePath) {

    var fd = new FormData();
    fd.append('filePath', filePath);

    $.ajax({
        url: 'removeProfilePicture.php',
        type: 'post',
        data: fd,
        contentType: false,
        processData: false,
        success: function (response) {
        },
    });
}