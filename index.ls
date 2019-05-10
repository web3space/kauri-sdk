require! {
    \superagent
    \prelude-ls : { map, find, split, map, filter, obj-to-pairs, pairs-to-obj }
    \require-ls
    \moment
    \./config.ls
}
base-url = \https://coinpay.org.ua/api/v1
build-request = (private-key, cb)->
    #return cb "private key is required", {} if not private-key?
    post = (url, data, cb)->
        #.set(\X-CSRFToken , \sbo79kBAedsRgp1BgPFJUrkqgklYaybnVXB4hxHa8iZXqojg7Vt3JBMBMZ3LjcMw)
        err, res <- superagent.post("#{base-url}/#{url}", data).set(\Authorization , "Bearer #{private-key}").end
        return cb err if err?
        return cb res.data if res.status > 300
        cb null, res.data
    get = (url, data, cb)->
        err, res <- superagent.get("#{base-url}/#{url}").set(\Authorization , "Bearer #{private-key}").end
        return cb err if err?
        return cb res.data if res.status > 300
        cb null, res.data
    cb null, { post, get }

check-field = (data, item)-->
    return yes if item.index-of('|') is -1 and typeof! data[item] isnt \String
    found =
        item |> split('|')
             |> find (-> typeof! data[it] is \String)
    return yes if not found?
    no
is-missing-error = (arr, data)->
    arr
        |> filter check-field data 
        |> join ","
        |> -> if it is "" then null else it

        
build-api = (private-key)-> ([name, config])->
    func = (data, cb)->
            err = is-missing-error config.params, data
            return cb err if err?
            err, http <- build-request private-key
            return cb err if err?
            http[config.method](config.query, data, cb)
    [name, func]

module.exports = (private-key)->
    config 
        |> obj-to-pairs 
        |> map build-api private-key 
        |> pairs-to-obj