# KAURI SDK

The NodeJS module for Kauri/Coinpay API

## Install

```bash
npm i kauri-sdk
```

### Documentation

[Is here](https://docs.google.com/document/d/1v6ROBYBfAlKukoa2qzpREmD0IJgL4ZABxIHbMe7dBAM/edit?usp=sharing)

## Import 

```Javascript 
const kauriSDK = require('kauri-sdk');

```

## Available Methods

### Получение текущих цен



```Javascript

const params = {

}

kauriSDK.exchangeRate(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/exchange_rate'

```

### Return Example

HTTP Status: 200

```JSON
{
    "rates": [
        {
            "pair": "USDT_EUR",
            "price": 1.12035185
        },
        {
            "pair": "BTC_USD",
            "price": 5039.54
        }
    ],
    "status": "success"
}
```
------

### Создание аккаунта



```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.createUser(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/user/create'

```

### Return Example

HTTP Status: 200

```JSON
{
    "username": "1@gmail.com",
    "email": "1@gmail.com"
}
```
------

### Авторизация через АПИ

Используйте для создания API `const api = KauriSDK(token)`

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.obtainToken(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/user/obtain_token'

```

### Return Example

HTTP Status: 200

```JSON
{
    "username": "Свят",
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzg5NDIsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzgzNDIsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.cEqgi0bchlbKkObZtkFryPdmcmzWoTZ_CQlXA6k3gSM"
}
```
------

### Обновление токена

Используйте для создания API `const api = KauriSDK(token)`

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.refreshToken(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/user/refresh_token'

```

### Return Example

HTTP Status: 200

```JSON
{
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkxMjEsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzgzNDIsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.AkqWizMnApa9MNfs1qdmsJuDJrUiu2B7c2-gQ0Q0a5M"
}
```
------

### Получение баланса и адресов для пополнения



```Javascript

const params = {

}

kauriSDK.getBalance(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X GET --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/user/balance'

```

### Return Example

HTTP Status: 200

```JSON
{
    "balance": {
        "ETH": {
            "ETH": {
                "total": 0,
                "reserved": 0
            },
            "UAH": {
                "total": 0,
                "reserved": 0
            },
            "EUR": {
                "total": 0,
                "reserved": 0
            },
            "USD": {
                "total": 0,
                "reserved": 0
            },
            "currency": "ETH",
            "USDT": {
                "total": 0,
                "reserved": 0
            },
            "BTC": {
                "total": 0,
                "reserved": 0
            }
        },
        "wallets": {
            "ETH": {
                "qr_file_data": "<base64_qr_code>",
                "qr": "https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=0xb7dab9bcfe1ccddf34e35e1f8ffdb23d08a97284&choe=UTF-8",
                "address": "0xb7dab9bcfe1ccddf34e35e1f8ffdb23d08a97284"
            },
            "USDT": {
                "qr_file_data": "<base64_qr_code>",
                "qr": "https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx&choe=UTF-8",
                "address": "1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx"
            },
            "BTC": {
                "qr_file_data": "<base64_qr_code>",
                "qr": "https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx&choe=UTF-8",
                "address": "1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx"
            }
        }
    }
}
```
------

### Получение лимитов, фии и и.т.д. По операциям

Этот АПИ колл возвращает информацию по лимитам на обмен для каждой пары, возвращает лимиты на ввод, вывод, какие фии будут применены для ввода или вывода. У каждой операции ввода, вывода есть подтип операции, который может быть доступен человеку или нет.

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.accountInfo(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X GET --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/user/account_info'

```

### Return Example

HTTP Status: 200

```JSON
{
    "name": "Свят",
    "email": "svyatoslavkravchenko@gmail.com",
    "account_type": "VERIFIED",
    "is_email_verified": true,
    "is_2fa_enabled": false,
    "exchange_order_limits": {
        "BTC_UAH": {
            "currency_to_spend": "UAH",
            "min_amount": 100,
            "max_amount": 250000
        },
        "exchange_order_processing_rules": {
            "BTC_UAH": {
                "is_market_exchange_enabled": true,
                "is_cancel_enabled_for_limit_exchange": true,
                "is_limit_exchange_enabled": true,
                "is_repeat_enabled_for_limit_exchange": true
            },
            "deposit_order_processing_rules": {
                "UAH": {
                    "CASHBOX": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true
                    },
                    "COINPAY_CODE": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true
                    },
                    "BANK_COLLECTION": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true
                    },
                    "GATEWAY": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true
                    },
                    "SALE_POINT": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true
                    }
                },
                "BTC": {
                    "GATEWAY": {
                        "is_deposit_enabled": true,
                        "is_cancel_enabled": false,
                        "is_repeat_enabled": false
                    }
                }
            },
            "deposit_order_fees": {
                "UAH": {
                    "CASHBOX": {
                        "static_fee": null,
                        "percent_fee": 1
                    },
                    "COINPAY_CODE": {
                        "static_fee": null,
                        "percent_fee": 0
                    },
                    "BANK_COLLECTION": {
                        "static_fee": null,
                        "percent_fee": 1
                    },
                    "GATEWAY": {
                        "static_fee": null,
                        "percent_fee": 3
                    },
                    "SALE_POINT": {
                        "static_fee": null,
                        "percent_fee": 0
                    }
                },
                "BTC": {
                    "GATEWAY": {
                        "static_fee": null,
                        "percent_fee": 0
                    }
                }
            },
            "withdrawal_order_fees": {
                "ETH": {
                    "GATEWAY": {
                        "static_fee": 0.01,
                        "percent_fee": null
                    },
                    "UAH": {
                        "CASHBOX": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "BANK_COLLECTION": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "GATEWAY": {
                            "static_fee": null,
                            "percent_fee": 0
                        },
                        "COINPAY_CODE": {
                            "static_fee": null,
                            "percent_fee": 0
                        }
                    },
                    "EUR": {
                        "CASHBOX": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "BANK_COLLECTION": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "GATEWAY": {
                            "static_fee": null,
                            "percent_fee": 3
                        },
                        "COINPAY_CODE": {
                            "static_fee": null,
                            "percent_fee": 0
                        }
                    },
                    "USD": {
                        "CASHBOX": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "BANK_COLLECTION": {
                            "static_fee": null,
                            "percent_fee": 1
                        },
                        "GATEWAY": {
                            "static_fee": null,
                            "percent_fee": 3
                        },
                        "COINPAY_CODE": {
                            "static_fee": null,
                            "percent_fee": 0
                        }
                    },
                    "USDT": {
                        "GATEWAY": {
                            "static_fee": 5,
                            "percent_fee": null
                        },
                        "BTC": {
                            "GATEWAY": {
                                "static_fee": 0.001,
                                "percent_fee": null
                            }
                        }
                    }
                }
            },
            "withdrawal_order_processing_rules": {
                "UAH": {
                    "CASHBOX": {
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true,
                        "is_withdrawal_enabled": true
                    },
                    "BANK_COLLECTION": {
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true,
                        "is_withdrawal_enabled": true
                    },
                    "GATEWAY": {
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true,
                        "is_withdrawal_enabled": true
                    },
                    "COINPAY_CODE": {
                        "is_cancel_enabled": true,
                        "is_repeat_enabled": true,
                        "is_withdrawal_enabled": true
                    },
                    "BTC": {
                        "GATEWAY": {
                            "is_cancel_enabled": true,
                            "is_repeat_enabled": true,
                            "is_withdrawal_enabled": true
                        }
                    }
                },
                "withdrawal_order_limits": {
                    "UAH": {
                        "CASHBOX": {
                            "min_amount": 100,
                            "max_amount": 14500
                        },
                        "BANK_COLLECTION": {
                            "min_amount": 100,
                            "max_amount": 14500
                        },
                        "GATEWAY": {
                            "min_amount": 10,
                            "max_amount": 10000
                        },
                        "COINPAY_CODE": {
                            "min_amount": 10,
                            "max_amount": 14000
                        }
                    },
                    "BTC": {
                        "GATEWAY": {
                            "min_amount": 0.002,
                            "max_amount": 10
                        }
                    }
                }
            }
        }
    }
}
```
------

### Создание заявки на вывод через шлюз(блокчейн или на счёт/карту)



```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.withdrawal(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/withdrawal'

```

### Return Example

HTTP Status: 200

```JSON
{
    "order_id": "840e166e-86ad-47cf-8cbc-7c1840b20103",
    "status": "success"
}
```
------

### Отмена заявки на вывод

Есть возможность отмены заявки на вывод если она активна, и если в данный момент не обрабатывается.

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.cancelWithdrawal(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/withdrawal/cancel'

```

### Return Example

HTTP Status: 200

```JSON

```
------

### Повторение заявки на вывод

Есть возможность повтора заявки на вывод если она завершена

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.repeatWithdrawal(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/withdrawal/repeat'

```

### Return Example

HTTP Status: 200

```JSON

```
------

### Создание заявки на обмен по рынку



```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.exchange(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X POST --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/exchange'

```

### Return Example

HTTP Status: 200

```JSON
{
    "order_id": "840e166e-86ad-47cf-8cbc-7c1840b20103",
    "status": "success"
}
```
------

### Рассчитать коммиссию перед обменом



```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.exchangeCalculate(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X GET --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/exchange/calculate'

```

### Return Example

HTTP Status: 200

```JSON

```
------

### Получении истории по заявкам

У этого функционала есть пагинация, фильтр по типу заявок, и подтипу. Пример ответа по истории, где есть одна заявка на вывод гривны.На каждой странице выводиться по 10 заявок

```Javascript

const params = {
    password: '',
    email: '',
    username: '',
}

kauriSDK.orderHistory(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X GET --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/orders/history'

```

### Return Example

HTTP Status: 200

```JSON
{
    "status": "success",
    "pages_count": 1,
    "orders": [
        {
            "external_id": "840e166e-86ad-47cf-8cbc-7c1840b20103",
            "amount": 100.5,
            "status": "ERROR",
            "currency": "UAH",
            "address": "2345",
            "order_sub_type": "GATEWAY",
            "fee": 0.5,
            "dt": "2019-04-13T11:09:01.366566",
            "order_type": "WITHDRAWAL",
            "details": {
                "comment": null
            }
        }
    ]
}
```
------

### Получение деталей по заявкам



```Javascript

const params = {
    order_id: '',
}

kauriSDK.orderDetails(params, function(err, data) {
    
    if (err) {
        console.log(err);
    }
    
    console.log(data);
});

```


#### Try it manually

```bash

curl -X GET --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkzNzYsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzg3NzYsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.UblqfvW7Lav7igoOACWhmnA1jwxBq6yVuTMNPmE7tEs' 'https://coinpay.org.ua/api/v1/orders/details'

```

### Return Example

HTTP Status: 200

```JSON
{
    "order_details": {},
    "status": "success",
    "order_id": "order_external_id"
}
```
------

