import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  CoinData cData = CoinData();
  String coinSymbol = 'BTC';
  int coinPrice;

  void updateUI(String currency) async {
    var coinData = await cData.getBitCoinData('BTC', currency);
    setState(() {
      if (coinData == null) {
        coinSymbol = 'NULL';
        coinPrice = 0000;
      }
      selectedCurrency = currency;
      double cPrice = coinData['data'][coinSymbol]['quote'][currency]['price'];
      coinPrice = cPrice.floor();
    });
  }

  Widget getDropdown() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String item in currenciesList) {
      var dropDownItem = DropdownMenuItem(
        child: Text(item),
        value: item,
      );
      dropDownItems.add(dropDownItem);
    }

    return DropdownButton(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          updateUI(value);
        });
      },
    );
  }

  Widget getPicker() {
    List<Widget> pickerItems = [];
    for (String item in currenciesList) {
      var textItem = Text(item);
      pickerItems.add(textItem);
    }

    return CupertinoPicker(
        itemExtent: 34.0,
        onSelectedItemChanged: (index) {
          updateUI(currenciesList[index]);
        },
        children: pickerItems);
  }

  Widget getCoins() {
    List<Widget> coins = [];
    // TODO : Create the list of Coin Widgets
    Card(
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding:
        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
        child: Text(
          '1 BTC = ${coinPrice.toString()} $selectedCurrency',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  }

  @override
  void initState() {
    super.initState();
    updateUI(selectedCurrency);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('🤑 Coin Ticker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 BTC = ${coinPrice.toString()} $selectedCurrency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: Platform.isIOS ? getPicker() : getDropdown(),
            )
          ],
        ));
  }
}

/*

currenciesList.map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList()
 */

/*
Andorid DropdownMenuItem


 */
