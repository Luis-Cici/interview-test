import 'package:challange_store/container/product_container.dart';
import 'package:challange_store/screens/widgets/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetail()),
        );
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.white.withOpacity(0.2)),
          ],
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/card4.jpeg',
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.heart5,
                          color: Colors.red,
                          size: 19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Maybelline Fit Me...',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Text(
                        'bronzer',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Iconsax.verify5, color: Colors.blue, size: 12),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$14.99',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 6, 232, 232),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: const SizedBox(
                          width: 32,
                          height: 32,
                          child: Icon(
                            Iconsax.add,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
