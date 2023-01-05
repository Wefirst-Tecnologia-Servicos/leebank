var settingsGetTopics = {
    "url": "https://61i4yuf829.execute-api.us-east-1.amazonaws.com/read/topicos",
    "method": "GET",
    "timeout": 0,
    "headers": {
        "Content-Type": "application/json"
    }
};

$.ajax(settingsGetTopics).done(function (data) {
    data = JSON.parse(data);
    setTopicsData(data);
});