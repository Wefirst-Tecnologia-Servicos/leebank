var settingsGetArticles = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/artigos",
    "method": "GET",
    "timeout": 0,
    "headers": {
        "Content-Type": "application/json"
    }
};

$.ajax(settisettingsGetArticlesngs).done(function (data) {
    data = JSON.parse(data);
    setArticlesData(data);
});