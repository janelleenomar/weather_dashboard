import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFDDE4ED),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Weather Dashboard',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 600,
                height: 550,
                decoration: BoxDecoration(
                  color: const Color(0xFFDDE4ED),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      spreadRadius: 10,
                      blurRadius: 15,
                      offset: const Offset(5, 10),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 48, 24, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 70),
                          Image.asset(
                            'media/w04d.png',
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(width: 24),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '25°C',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Cloudy with a chance of sunshine',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'London, UK',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Container(
                        height: 320,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFC7D1DD),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: GridView.count(
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          children: List.generate(8, (index) {
                            final hour = ['10:00', '11:00', '13:00', '13:00', '10:00', '14:00', '14:00', '15:00'][index];
                            final temp = ['26°C', '27°C', '25°C', '24°C', '25°C', '24°C', '23°C', '22°C'][index];
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(hour, style: TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height: 8),
                                  if (index == 0 || index == 1 || index == 4)
                                    Image.asset(
                                      'media/sun.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  else if (index == 2)
                                    Image.asset(
                                      'media/weather.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  else if (index == 3)
                                    Image.asset(
                                      'media/two.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  else if (index == 5)
                                    Image.asset(
                                      'media/rainy-day.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  else if (index == 6)
                                    Image.asset(
                                      'media/cloud.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  else if (index == 7)
                                    Image.asset(
                                      'media/thunderstorm.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                  SizedBox(height: 8),
                                  Text(temp, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
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