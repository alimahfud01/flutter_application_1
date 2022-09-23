import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter_application_1/provider/money.dart';
import 'package:provider/provider.dart';

//tambah provider pubsyaml

class Screen21 extends StatefulWidget {
  const Screen21({Key? key}) : super(key: key);

  @override
  State<Screen21> createState() => _Screen21State();
}

class _Screen21State extends State<Screen21> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(create: (context) => Money()),
          ChangeNotifierProvider<Cart>(create: (context) => Cart())
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          appBar:
              AppBar(backgroundColor: Colors.purple, title: Text("App Bar")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                            builder: (context, money, _) =>
                                Text(money.balance.toString())),
                      ),
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple.shade100,
                          border: Border.all(color: Colors.purple, width: 2)),
                    )
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: ((context, value, _) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Apple (500) x " + value.quantity.toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text((500 * value.quantity).toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ])),
                    ),
                  ),
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
