import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:transparent_image/transparent_image.dart';


void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
            "Filmes muito bons que eu recomendo",
            style: TextStyle(
                fontFamily: "Alkatra",
                color: Color.fromARGB(225, 20, 47, 21),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:"https://fastly.picsum.photos/id/78/1584/2376.jpg?hmac=80UVSwpa9Nfcq7sQ5kxb9Z5sD2oLsbd5zkFO5ybMC4E",
            fadeInDuration: const Duration(milliseconds: 500),
            fadeInCurve: Curves.linear,
            //fadeInCurve: Curves.easeIn,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(150, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Redline",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 60,
                          ),
                        ),
                        const Text(
                          "Nascido para Matar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 55,
                          ),
                        ),
                        const Text(
                          "O Auto da Compadecida",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 50,
                          ),
                        ),
                        const Text(
                          "Medo e Delírio em Las Vegas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 45,
                          ),
                        ),
                        const Text(
                          "A Vida Secreta de Walter Mitty",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 40,
                          ),
                        ),
                        const Text(
                          "O Grande Hotel Budapeste",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 35,
                          ),
                        ),
                        const Text(
                          "Duologia Kill Bill",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 90, 219, 81),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () => launch('https://google.com'),
              icon: const Icon(Icons.anchor),
              label: const Text("Diego",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(150, 20, 47, 21),
                onPrimary: Colors.green,
                shadowColor: Colors.black,
                elevation: 7,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => launch('https://youtube.com'),
              icon: const Icon(Icons.star),
              label: const Text("Alves",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(150, 20, 47, 21),
                onPrimary: Colors.green,
                shadowColor: Colors.black,
                elevation: 7,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => launch('https://flutter.dev'),
              icon: const Icon(Icons.favorite),
              label: const Text("Araújo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(150, 20, 47, 21),
                onPrimary: Colors.green,
                shadowColor: Colors.black,
                elevation: 7,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  runApp(app);
}

//Flutter Styled Text
//Flutter Row Example
//Flutter Elevated Button
//Flutter Icon Button
