import 'package:flutter/material.dart';

void main() {
  runApp(PecelApp());
}

class PecelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PecelHomePage(),
    );
  }
}

class PecelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pecel App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
        ],
      ),
      body: SingleChildScrollView(
  child: Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Image.network(
              'https://i.ibb.co.com/s1RpfXD/pecel.jpg',
              width: 150, // Lebar gambar dalam piksel
              height: 400, // Tinggi gambar dalam piksel
              fit: BoxFit.cover, // Opsi penyesuaian gambar
            ), 
          ),
          Expanded(
            child: Image.network(
              'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
              width: 100,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0), // Bentuk menjadi persegi dengan radius sudut 10
        ),
                    fixedSize: Size(711, 200),
                  ),
                  onPressed: () {},
                  child: Text('Menu Spesial'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0), // Bentuk menjadi persegi dengan radius sudut 10
        ),
                    fixedSize: Size(411, 200),
                  ),
                  onPressed: () {},
                  child: Text('Menu Terlaris'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0), // Bentuk menjadi persegi dengan radius sudut 10
        ),
                    fixedSize: Size(411, 200),
                  ),
                  onPressed: () {},
                  child: Text('Minuman'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu Pilihan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MenuItem(
                    imageUrl: 'https://i.ibb.co.com/s1RpfXD/pecel.jpg',
                    title: 'Pecel Sambel Tumpang',
                    description:
                        'Pecel, Sambel Tumpang, Telur Bali, Sate Usus...',
                    rating: 4.5,
                  ),
                  MenuItem(
                    imageUrl: 'https://i.ibb.co.com/Smfw2R0/pecel2.jpg',
                    title: 'Pecel Sambel Tumpang',
                    description:
                        'Pecel, Sambel Tumpang, Telur Bali, Sate Usus...',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double rating;

  MenuItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
        subtitle: Text(description),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.white, size: 20),
              SizedBox(width: 5),
              Text(
                rating.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}