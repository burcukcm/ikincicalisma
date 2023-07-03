import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var ekranbilgisi =MediaQuery.of(context);
    final double ekranyuksekligi=ekranbilgisi.size.height;
    final double ekrangenisligi=ekranbilgisi.size.width;


    return Scaffold(
     backgroundColor: Colors.lightGreen,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
      Padding(
          padding: EdgeInsets.only(bottom: ekranyuksekligi/20),
          child: SizedBox(
            width: ekrangenisligi/4,
             height: ekranyuksekligi/6,
              child: Image.asset("resimler/images.png")
          ),
      ),
      Padding(
          padding: EdgeInsets.all(ekranyuksekligi/30),
          child: TextField(
            decoration: InputDecoration(
            hintText:"Kulllanıcı Adı",
            filled: true,
            fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
      ),
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi/30),
                child: TextField(
                  obscureText: true,// girdiğin karakteri saklar
                  decoration: InputDecoration(
                    hintText:"Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranyuksekligi/30),
                child: SizedBox(
                  width: ekrangenisligi/1.2,
                  height: ekranyuksekligi/12,
                  child: ElevatedButton(
                    child: Text("Giriş yap" ,style:TextStyle(color: Colors.teal)),
                    onPressed: (){
                   print("Giriş Yapıldı");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("yardım seçildi");
                },
                child: Text(
                    "Yardım?",
                    style: TextStyle(
                       color:Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/30,
                    ),
              ),
              ),
                ],
          ),
        ),
      ),

    );
  }
}
