import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, dynamic>> items = [
    {
      'label': 'Water',
      'icon': Icons.water_drop_rounded,
      'bg_color': Colors.blue[300],
    },
    {
      'label': 'Electricity',
      'icon': Icons.lightbulb,
      'bg_color': Colors.yellow[300],
    },
    {
      'label': 'Gas',
      'icon': Icons.local_fire_department_rounded,
      'bg_color': Colors.red[300],
    },
    {
      'label': 'Shopping',
      'icon': Icons.shopping_bag_rounded,
      'bg_color': Colors.pink[200],
    },
    {
      'label': 'Phone',
      'icon': Icons.phone_android_rounded,
      'bg_color': Colors.indigo[700],
    },
    {
      'label': 'Credit Card',
      'icon': Icons.credit_card_rounded,
      'bg_color': Colors.green[300],
    },
    {
      'label': 'Insurance',
      'icon': Icons.shield,
      'bg_color': Colors.greenAccent[400],
    },
    {
      'label': 'Mortgage',
      'icon': Icons.home_rounded,
      'bg_color': Colors.deepPurple[300],
    },
    {
      'label': 'Other Bills',
      'icon': Icons.newspaper_rounded,
      'bg_color': Colors.blueGrey[300],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        title: Row(
          children: [
            Text(
              "Payment",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ],
        ),
        actions: [Icon(Icons.settings, color: Colors.white)],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colors.indigo[600],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo[600],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.indigo[600],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(fontSize: 20, color: Colors.indigo[200]),
                    ),
                    Text(
                      "\$4,180.00",
                      style: TextStyle(fontSize: 38, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 450,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Jumlah kolom
                        crossAxisSpacing: 10, // Jarak antar kolom
                        mainAxisSpacing: 10, // Jarak antar baris
                        childAspectRatio: 1, // Rasio lebar-tinggi (persegi)
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return SizedBox(
                          width: 50,
                          height: 50,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: item['bg_color'],
                                radius: 40,
                                child: Icon(
                                  item['icon'],
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(item['label']),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More >>",
                          style: TextStyle(color: Colors.blue[300]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // body: ,
    );
  }
}
