module.exports =
    exchange-rate:
        title: "Получение текущих цен"
        method: \post
        need-key: no
        params: <[ ]>
        query: \exchange_rate
        example: 
              "rates": [
                {
                  "pair": "USDT_EUR",
                  "price": 1.12035185
                },
                {
                  "pair": "BTC_USD",
                  "price": 5039.54
                },
                ],
              "status": "success"
    create-user:
        title: "Создание аккаунта"
        method: \post
        need-key: no
        params: <[ password email username ]>
        param-exmaples:
          email: "a****@gmail.com"
          password: "theStrongPassW00rd"
          username: "exadmin"
        query: \user/create
        example:
          "username": "1@gmail.com"
          "email": "1@gmail.com"
    obtain-token: 
        title: "Авторизация через АПИ"
        desc: "Используйте для создания API `const api = KauriSDK(token)`"
        method: \post
        need-key: no
        params: <[ password email ]>
        param-exmaples:
          email: "a****@gmail.com"
          password: "theStrongPassW00rd"
        query: \user/obtain_token
        example:
            "username": "Свят",
            "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzg5NDIsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzgzNDIsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.cEqgi0bchlbKkObZtkFryPdmcmzWoTZ_CQlXA6k3gSM"
    refresh-token: 
        title: "Обновление токена"
        desc: "Используйте для создания API `const api = KauriSDK(token)`"
        method: \post
        need-key: no
        params: <[ token ]>
        param-exmaples:
          token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzg5NDIsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzgzNDIsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.cEqgi0bchlbKkObZtkFryPdmcmzWoTZ_CQlXA6k3gSM"
        query: \user/refresh_token
        example:
            "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTUxMzkxMjEsInVzZXJuYW1lIjoiXHUwNDIxXHUwNDMyXHUwNDRmXHUwNDQyIiwib3JpZ19pYXQiOjE1NTUxMzgzNDIsInVzZXJfaWQiOjUsIm90cF9kZXZpY2VfaWQiOm51bGx9.AkqWizMnApa9MNfs1qdmsJuDJrUiu2B7c2-gQ0Q0a5M"
    get-balance: 
        title: "Получение баланса и адресов для пополнения"
        method: \get
        need-key: yes
        params: <[ ]>
        query: \user/balance 
        example:
            {'balance': {
              'ETH': {
                'ETH': {
                  'total': 0
                  'reserved': 0
                }
                'UAH': {
                  'total': 0
                  'reserved': 0
                }
                'EUR': {
                  'total': 0
                  'reserved': 0
                }
                'USD': {
                  'total': 0
                  'reserved': 0
                }
                'currency': 'ETH'
                'USDT': {
                  'total': 0
                  'reserved': 0
                }
                'BTC': {
                  'total': 0
                  'reserved': 0
                }
              }
              'wallets': {
                'ETH': {
                  'qr_file_data': '<base64_qr_code>'
                  'qr': 'https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=0xb7dab9bcfe1ccddf34e35e1f8ffdb23d08a97284&choe=UTF-8'
                  'address': '0xb7dab9bcfe1ccddf34e35e1f8ffdb23d08a97284'
                }
                'USDT': {
                  'qr_file_data': '<base64_qr_code>'
                  'qr': 'https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx&choe=UTF-8'
                  'address': '1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx'
                }
                'BTC': {
                  'qr_file_data': '<base64_qr_code>'
                  'qr': 'https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx&choe=UTF-8'
                  'address': '1BJs6ffzjKEMsKzdQEk2SnLUcEzfNn84kx'
                }
              }
            }}
    account-info: 
        title: "Получение лимитов, фии и и.т.д. По операциям"
        desc: "Этот АПИ колл возвращает информацию по лимитам на обмен для каждой пары, возвращает лимиты на ввод, вывод, какие фии будут применены для ввода или вывода. У каждой операции ввода, вывода есть подтип операции, который может быть доступен человеку или нет."
        method: \get
        need-key: yes
        params: <[ ]>
        query: \user/account_info
        example:
            {
              'name': 'Свят'
              'email': 'svyatoslavkravchenko@gmail.com'
              'account_type': 'VERIFIED'
              'is_email_verified': true
              'is_2fa_enabled': false
              'exchange_order_limits': {
                'BTC_UAH': {
                  'currency_to_spend': 'UAH'
                  'min_amount': 100
                  'max_amount': 250000
                }
                'exchange_order_processing_rules': {
                  'BTC_UAH': {
                    'is_market_exchange_enabled': true
                    'is_cancel_enabled_for_limit_exchange': true
                    'is_limit_exchange_enabled': true
                    'is_repeat_enabled_for_limit_exchange': true
                  }
                  'deposit_order_processing_rules': {
                    'UAH': {
                      'CASHBOX': {
                        'is_deposit_enabled': true
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                      }
                      'COINPAY_CODE': {
                        'is_deposit_enabled': true
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                      }
                      'BANK_COLLECTION': {
                        'is_deposit_enabled': true
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                      }
                      'GATEWAY': {
                        'is_deposit_enabled': true
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                      }
                      'SALE_POINT': {
                        'is_deposit_enabled': true
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                      }
                    }
                    'BTC': {'GATEWAY': {
                      'is_deposit_enabled': true
                      'is_cancel_enabled': false
                      'is_repeat_enabled': false
                    }}
                  }
                  'deposit_order_fees': {
                    'UAH': {
                      'CASHBOX': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'COINPAY_CODE': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                      'BANK_COLLECTION': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'GATEWAY': {
                        'static_fee': null
                        'percent_fee': 3
                      }
                      'SALE_POINT': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                    }
                    'BTC': {'GATEWAY': {
                      'static_fee': null
                      'percent_fee': 0
                    }}
                  }
                  'withdrawal_order_fees': {'ETH': {
                    'GATEWAY': {
                      'static_fee': 0.01
                      'percent_fee': null
                    }
                    'UAH': {
                      'CASHBOX': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'BANK_COLLECTION': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'GATEWAY': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                      'COINPAY_CODE': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                    }
                    'EUR': {
                      'CASHBOX': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'BANK_COLLECTION': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'GATEWAY': {
                        'static_fee': null
                        'percent_fee': 3
                      }
                      'COINPAY_CODE': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                    }
                    'USD': {
                      'CASHBOX': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'BANK_COLLECTION': {
                        'static_fee': null
                        'percent_fee': 1
                      }
                      'GATEWAY': {
                        'static_fee': null
                        'percent_fee': 3
                      }
                      'COINPAY_CODE': {
                        'static_fee': null
                        'percent_fee': 0
                      }
                    }
                    'USDT': {
                      'GATEWAY': {
                        'static_fee': 5
                        'percent_fee': null
                      }
                      'BTC': {'GATEWAY': {
                        'static_fee': 0.001
                        'percent_fee': null
                      }}
                    }
                  }}
                  'withdrawal_order_processing_rules': {
                    'UAH': {
                      'CASHBOX': {
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                        'is_withdrawal_enabled': true
                      }
                      'BANK_COLLECTION': {
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                        'is_withdrawal_enabled': true
                      }
                      'GATEWAY': {
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                        'is_withdrawal_enabled': true
                      }
                      'COINPAY_CODE': {
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                        'is_withdrawal_enabled': true
                      }
                      'BTC': {'GATEWAY': {
                        'is_cancel_enabled': true
                        'is_repeat_enabled': true
                        'is_withdrawal_enabled': true
                      }}
                    }
                    'withdrawal_order_limits': {
                      'UAH': {
                        'CASHBOX': {
                          'min_amount': 100
                          'max_amount': 14500
                        }
                        'BANK_COLLECTION': {
                          'min_amount': 100
                          'max_amount': 14500
                        }
                        'GATEWAY': {
                          'min_amount': 10
                          'max_amount': 10000
                        }
                        'COINPAY_CODE': {
                          'min_amount': 10
                          'max_amount': 14000
                        }
                      }
                      'BTC': {'GATEWAY': {
                        'min_amount': 0.002
                        'max_amount': 10
                      }}
                    }
                  }
                }
              }
            }
    withdrawal: 
        title: "Создание заявки на вывод через шлюз(блокчейн или на счёт/карту)"
        method: \post
        need-key: yes
        params: <[ withdrawal_type wallet_to comment amount currency ]>
        param-exmaples:
          withdrawal_type: "GATEWAY"
          wallet_to: "<destination_wallet>"
          comment: "Withdraw Funds"
          amount: "1"
          currency: "UAH"
        query: \withdrawal
        example: 
            {
              "order_id": "840e166e-86ad-47cf-8cbc-7c1840b20103",
              "status": "success"
            }

    cancel-withdrawal: 
        title: "Отмена заявки на вывод"
        desc: "Есть возможность отмены заявки на вывод если она активна, и если в данный момент не обрабатывается."
        method: \post
        need-key: yes
        params: <[ order_id ]>
        param-exmaples:
          order_id: "840e166e-86ad-47cf-8cbc-7c1840b2010"
        query: \withdrawal/cancel
    repeat-withdrawal: 
        title: "Повторение заявки на вывод"
        desc: "Есть возможность повтора заявки на вывод если она завершена"
        method: \post
        need-key: yes
        params: <[ order_id ]>
        param-exmaples:
          order_id: "840e166e-86ad-47cf-8cbc-7c1840b2010"
        query: \withdrawal/repeat
    exchange: 
        title: "Создание заявки на обмен по рынку"
        method: \post
        need-key: yes
        params: <[ currency_to_get_amount currency_to_spend currency_to_get ]>
        param-examples:
          currency_to_get_amount : "100"
          currency_to_spend : "BTC"
          currency_to_get : "UAH"
        query: \exchange
        example:
          "order_id": "840e166e-86ad-47cf-8cbc-7c1840b20103",
          "status": "success"
    exchange-calculate: 
        title: "Рассчитать коммиссию перед обменом"
        method: \get
        need-key: yes
        params: <[ currency_to_get_amount currency_to_spend currency_to_get ]>
        param-examples:
          currency_to_get_amount : "100"
          currency_to_spend : "BTC"
          currency_to_get : "UAH"
        query: \exchange/calculate
    order-history: 
        title: "Получении истории по заявкам"
        desc: "У этого функционала есть пагинация, фильтр по типу заявок, и подтипу. Пример ответа по истории, где есть одна заявка на вывод гривны.На каждой странице выводиться по 10 заявок"
        method: \get
        need-key: yes
        params: <[ ]>
        query: \orders/history
        example:
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
    order-details: 
        title: "Получение деталей по заявкам"
        method: \get
        need-key: yes
        params: <[ order_id ]>
        param-exmaples:
          order_id: "840e166e-86ad-47cf-8cbc-7c1840b2010"
        query: \orders/details
        example:
            {
              "order_details": {},
              "status": "success",
              "order_id": "order_external_id"
            }
