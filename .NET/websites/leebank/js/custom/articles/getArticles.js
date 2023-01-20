var settingsGetArticles = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/artigos-completos",
    "method": "GET",
    "timeout": 0,
    "headers": {
        "Content-Type": "application/json"
    }
};

$.ajax(settingsGetArticles).done(function (data) {
    data = JSON.parse(data);
    setArticlesData(data);
});