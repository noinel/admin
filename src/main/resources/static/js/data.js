function test(){
    let url = "/admin/ "
    let data
    fetch(url,{
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            // 'Content-Type': 'application/x-www-form-urlencoded',
            
        },
        dataType:"json",
        body: JSON.stringify(data),
    }).then(function(res){
        return res.text();
        //return res.json();
    }).then(function(result){
        if(result){
            console.log("test");
        }else{
            console.log("test2")
        }
    })
}