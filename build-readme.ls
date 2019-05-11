require! {
    \./config.ls
    \prelude-ls : { map, obj-to-pairs, join } 
    \fs : { write-file-sync }
}

build-param = (config, name)-->
    "    #{name}: '#{config.param-examples?[name] ? ''}'"

build-section = ([name, config])->
    params = 
        config.params |> map build-param config
    """
    # #{name}
    #### #{config.title}
    
    #{config.desc ? ""}
    
    ```Javascript
    
    const params = {
    #{params |> join ",\n"}
    }
    
    api.#{name}(params, function(err, data) {
        
        if (err) {
            console.log(err);
        }
        
        console.log(data);
    });
    
    ```
    
    Need Token: #{if config.need-key then 'yes' else 'no' }
    
    #### Try it manually
    
    ```bash
    
    curl -X #{config.method.to-upper-case!} --header 'Accept: application/json' --header 'Authorization: Bearer {token}' --d "{ #{params |> map (-> it.replace(/ +/, ' ')) |> join ','} }" 'https://coinpay.org.ua/api/v1/#{config.query}'
    
    ```
    
    #### Return Example
    
    HTTP Status: 200
    
    ```JSON
    #{if config.example? then JSON.stringify(config.example, null, 4) else ''}
    ```
    
    ------
    ------
    ------
    
    
    
    
    """
    
method-list =
    config
        |> obj-to-pairs 
        |> map -> " * [api.#{it.0}(params, cb)](##{it.0})"
        |> join "\n"

available-methods =
    config 
        |> obj-to-pairs
        |> map build-section 
        |> join "\n"

content =
 """
 # KAURI SDK
 
 ![Kauri Finance](https://res.cloudinary.com/nixar-work/image/upload/v1557528990/Screen_Shot_2019-05-11_at_01.56.00.png)
 
 The NodeJS module for Kauri/Coinpay API
 
 ## Install
 
 ```bash
 npm i kauri-sdk
 ```
 
 ## Import 
 
 ```Javascript 
 const kauriSDK = require('kauri-sdk');
 
 const token = '....'; // get token from api.obtainToken
 
 const api = kauriSDK(token);
 
 ```
 
 ## Available Methods
 
 #{method-list}
 
 ## Method Descriptions
 
 #{available-methods}
 
 """
 
 
write-file-sync "./README.md", content


