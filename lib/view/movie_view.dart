import 'package:flutter/material.dart';
import 'package:ukl_tedii/widget/button_nav.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

final List<String> cities = ['Malang', 'Surabaya', 'Jakarta', 'Bandung'];
final ValueNotifier<String> selectedCity = ValueNotifier<String>('Malang');

class _MovieViewState extends State<MovieView> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 40,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              ValueListenableBuilder<String>(
                valueListenable: selectedCity,
                builder: (context, value, child) {
                  return DropdownButton<String>(
                    value: value,
                    underline: SizedBox(),
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
                    items: cities.map<DropdownMenuItem<String>>((String city) {
                      return DropdownMenuItem<String>(
                        value: city,
                        child: Text(city),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      selectedCity.value = newValue!;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Movie / Cinema',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            // Tombol "Movie" dan "Cinema"
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Tombol Movie
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // Tetap di halaman Movie
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromRGBO(23, 41, 116, 1),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      child: Column(
                        children: [
                          Text('Movie', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 2),
                          Container(
                            height: 2,
                            color: Color.fromRGBO(23, 41, 116,
                                1), // Garis bawah untuk tombol aktif
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Tombol Cinema
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/cinema'); // Pindah ke halaman Cinema
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          Text('Cinema', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 2),
                          Container(
                            height: 2,
                            color: Colors
                                .transparent, // Tidak ada garis bawah untuk tombol tidak aktif
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 40, 50, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'ibuPoster.png',
                          scale: 4 / 3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Bila Besok Ibu Tiada  (13+)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(23, 41, 116, 1),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '');
                                },
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'WickedPoster1.png',
                        scale: 4 / 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'WICKED  (SU)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(23, 41, 116, 1),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '');
                              },
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'Gladiator2.png',
                        scale: 4 / 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Gladiator II  (17+)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(23, 41, 116, 1),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '');
                              },
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'SegoroPoster.png',
                        scale: 4 / 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Santet Segoro Pitu  (18+)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(23, 41, 116, 1),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '');
                              },
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(2),
    );
  }
}
