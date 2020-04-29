import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getBitCoinData(String currency) async {
    String url =
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=BTC&convert=$currency';
    String apiKey = '4001a6bd-56c4-4361-8521-7623800e5e02';

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'X-CMC_PRO_API_KEY': '$apiKey'
    };

    var response = await http.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print(response.body);
    }
  }

  Future getLiteCoinData(String currency) async {
    String url =
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=LTC&convert=$currency';
    String apiKey = '4001a6bd-56c4-4361-8521-7623800e5e02';

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'X-CMC_PRO_API_KEY': '$apiKey'
    };

    var response = await http.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print(response.body);
    }
  }

  Future getEthCoinData(String currency) async {
    String url =
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=ETH&convert=$currency';
    String apiKey = 'ENTER_APIKEY_HERE';

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'X-CMC_PRO_API_KEY': '$apiKey'
    };

    var response = await http.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print(response.body);
    }
  }
}
