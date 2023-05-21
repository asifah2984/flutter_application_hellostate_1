import 'package:flutter/material.dart';
import 'package:flutter_application_hellostate_1/halamankedua.dart';

void main() {
  runApp(const MaterialApp(
    home: Myswift(),
  ));
}

class Myswift extends StatefulWidget {
  const Myswift({super.key});
  @override
  State<Myswift> createState() => _MyswiftState();
}

class _MyswiftState extends State<Myswift> {
  var judul = "Log in State For Ahmad"; //"Hello State For Ahmad";
  var body = "This is content For Ahmad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Text("Drawer Header"),
            ),

            ListTile(
              title: Text("Utama"),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text("Bagian Awal"),
              onTap: () {
                Navigator.of(context).push(    //pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyWidget(
                      parameter: "Ahmad",
                      parameter2: "Asif",
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Bagian Tengah"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Bagian Akhir"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(judul),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Ini Judul Tampilan yang berubah untuk ahmad";
          body = "Ini Isi Tampilan yang berubah untuk ahmad ";
        });

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "Ahmad",
              parameter2: "Asif",
            ),
          ),
        );
      }),
      body: Text(body),
    ); // const Text("Hello Ahmad"); //Placeholder();
  }
}





// Statefull

// Set state untuk berubah judul atas

// Navigator
// menggunakan tombol push maka bisa kembali kemudian penyimpanan pada memori hp
// menggunakan tombol pop maka bisa kembali kemudian menghapus penyimpanan pada memori hp
// menggunakan tombol pushReplacement maka masuk dan tidak kembali pada awal. meskipun bisa maka halaman terhapus


