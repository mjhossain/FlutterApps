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
  String bitCoinSymbol = 'BTC';
  int bitCoinPrice;
  String liteCoinSymbol = 'LTC';
  int liteCoinPrice;
  String ethCoinSymbol = 'ETH';
  int ethCoinPrice;

  void updateUI(String currency) async {
    var bitCoinData = await cData.getBitCoinData(currency);
    var ltcCoinData = await cData.getLiteCoinData(currency);
    var ethCoinData = await cData.getEthCoinData(currency);

    setState(() {
      if (bitCoinData == null || ltcCoinData == null || ethCoinData == null) {
        bitCoinSymbol = 'NULL';
        bitCoinPrice = 0000;
        liteCoinPrice = 0000;
        liteCoinSymbol = 'NULL';
        ethCoinPrice = 0000;
        ethCoinSymbol = 'NULL';
      }
      selectedCurrency = currency;
      double cPrice =
          bitCoinData['data'][bitCoinSymbol]['quote'][currency]['price'];
      bitCoinPrice = cPrice.floor();

      double lPrice =
          ltcCoinData['data'][liteCoinSymbol]['quote'][currency]['price'];
      liteCoinPrice = lPrice.floor();

      double ePrice =
          ethCoinData['data'][ethCoinSymbol]['quote'][currency]['price'];
      ethCoinPrice = ePrice.floor();
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
            CoinDataCard(
                coinPrice: bitCoinPrice,
                selectedCurrency: selectedCurrency,
                coinSymbol: bitCoinSymbol),
            CoinDataCard(
                coinPrice: liteCoinPrice,
                selectedCurrency: selectedCurrency,
                coinSymbol: liteCoinSymbol),
            CoinDataCard(
                coinPrice: ethCoinPrice,
                selectedCurrency: selectedCurrency,
                coinSymbol: ethCoinSymbol),
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

class CoinDataCard extends StatelessWidget {
  const CoinDataCard({
    @required this.coinPrice,
    @required this.selectedCurrency,
    @required this.coinSymbol,
  });

  final int coinPrice;
  final String selectedCurrency;
  final String coinSymbol;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 12.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $coinSymbol = ${coinPrice.toString()} $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
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
