import 'package:challange_store/container/circular_icon.dart';
import 'package:challange_store/screens/widgets/report_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 1,
          title: const Center(
            child: Text(
              'Maybelline Fit Me',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/card4.jpeg',
                width: 500,
                height: 300,
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Maybelline Fit Me Bronzer',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Bronzer',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            RatingBarIndicator(
                              rating: 3.5,
                              itemSize: 20,
                              unratedColor: Colors.grey,
                              itemBuilder: (_, __) => const Icon(
                                Iconsax.star1,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                            "Why You'll Love Itin\nLightweight pigments blend easily and wear evenlyInProvides a natural, fade-proof bronzed color that leaves skin the way it was meant to be...fresh, breathing and natural ninFor Best Requits: For soft, natura look, brush along cheekbone, sweeping upward."),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              '\$14.99',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Row(
                              children: [
                                CircularIcon(
                                  icon: Iconsax.minus,
                                  backgroundColor: Colors.white,
                                  width: 40,
                                  height: 30,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircularIcon(
                                  icon: Iconsax.add,
                                  backgroundColor: Colors.black,
                                  width: 40,
                                  height: 30,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ReportScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(16),
                                backgroundColor:
                                    const Color.fromARGB(255, 5, 183, 207),
                                side: const BorderSide(color: Colors.white),
                              ),
                              child: const Text(
                                'Cart',
                              ),
                            ),
                          ],
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
