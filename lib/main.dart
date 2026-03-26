import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFDDE4ED),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Weather Dashboard',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 500,
                    height: 450,
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
                      padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 40),
                              Image.asset(
                                'media/w04d.png',
                                width: 130,
                                height: 120,
                              ),
                              const SizedBox(width: 24),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 12),
                                  Text(
                                    '25°C',
                                    style: GoogleFonts.inter(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 1),
                                  const Text(
                                    'Cloudy with a chance of sunshine',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'London, UK',
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Container(
                            height: 270,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFC7D1DD),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: GridView.count(
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 13,
                              crossAxisSpacing: 15,
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
                                      Text(hour, style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.grey[700])),
                                      const SizedBox(height: 2),
                                      if (index == 0 || index == 1 || index == 4)
                                        Image.asset(
                                          'media/sun.png',
                                          width: 24,
                                          height: 24,
                                        )
                                      else if (index == 2)
                                        Image.asset(
                                          'media/weather.png',
                                          width: 24,
                                          height: 24,
                                        )
                                      else if (index == 3)
                                        Image.asset(
                                          'media/two.png',
                                          width: 24,
                                          height: 24,
                                            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                                      else if (index == 5)
                                        Image.asset(
                                          'media/rainy-day.png',
                                          width: 24,
                                          height: 24,
                                        )
                                      else if (index == 6)
                                        Image.asset(
                                          'media/cloud.png',
                                          width: 24,
                                          height: 24,
                                        )
                                      else if (index == 7)
                                        Image.asset(
                                          'media/thunderstorm.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                      const SizedBox(height: 8),
                                      Text(temp, style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20)),
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
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF2196F3),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(7),
                              child: const Icon(Icons.home, color: Colors.white, size: 24),
                            ),
                            Text('Home', style: GoogleFonts.inter(color: const Color(0xFF2196F3), fontWeight: FontWeight.w600, fontSize: 17, letterSpacing: 0.1)),
                          ],
                        ),
                        const SizedBox(width: 35),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF7B8A99),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(7),
                              child: const Icon(Icons.search, color: Colors.white, size: 24),
                            ),
                            Text('Search', style: GoogleFonts.inter(color: const Color(0xFF757575), fontWeight: FontWeight.w500, fontSize: 17, letterSpacing: 0.1)),
                          ],
                        ),
                        const SizedBox(width: 35),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF7B8A99),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(7),
                              child: const Icon(Icons.person, color: Colors.white, size: 24),
                            ),
                            Text('Profile', style: GoogleFonts.inter(color: const Color(0xFF757575), fontWeight: FontWeight.w500, fontSize: 17, letterSpacing: 0.1)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}