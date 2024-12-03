import 'package:flutter/material.dart';
import 'package:ukl_tedii/widget/button_nav.dart';

class CinemaView extends StatefulWidget {
  const CinemaView({super.key});

  @override
  State<CinemaView> createState() => _CinemaViewState();
}

final List<String> cities = ['Malang', 'Surabaya', 'Jakarta', 'Bandung'];
final ValueNotifier<String> selectedCity = ValueNotifier<String>('Malang');

class _CinemaViewState extends State<CinemaView> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredCities = cities.where((city) {
      return city.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

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
      body: Column(
        children: [
          // TextField untuk pencarian
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
                      Navigator.pushNamed(context, '/movie');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        Text('Movie', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 2),
                        Container(
                          height: 2,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
                // Tombol Cinema
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color.fromRGBO(23, 41, 116, 1),
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    child: Column(
                      children: [
                        Text('Cinema', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 2),
                        Container(
                          height: 2,
                          color: Color.fromRGBO(23, 41, 116, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 96, 96, 96),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Malang Town Square',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          ' 8.03 km  away',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_movies_outlined),
                        Text(
                          ' REGURAL©LUXE',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 96, 96, 96),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Lippo Plaza Batu',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          ' 11.23 km  away',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_movies_outlined),
                        Text(
                          ' REGURAL',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(3),
    );
  }
}
