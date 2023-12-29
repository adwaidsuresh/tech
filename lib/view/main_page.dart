import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec/components/items.dart';
import 'package:tec/extension/responsive.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: context.width(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.width(60),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.orange,
                  ),
                  Text(
                    'office',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: context.width(16),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff9F9F9F),
                  )
                ],
              ),
              SizedBox(
                width: context.width(210),
                height: context.width(16),
                child: const Text(
                  '38/A, 3rd Floor, 18th Main, 22nd.. Cross Rd, Sector 3, HSR Layout, Bengaluru, Karnataka 560102',
                  style: TextStyle(
                    color: Color(0xff666464),
                  ),
                ),
              ),
              SizedBox(
                height: context.width(16),
              ),
              Stack(
                children: [
                  Container(
                    width: context.width(370),
                    height: context.width(170),
                    decoration: BoxDecoration(
                      color: const Color(0xff111E24),
                      borderRadius: BorderRadius.circular(
                        context.width(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: context.width(32),
                            ),
                            Text(
                              'Get 50% off on your\nfirst order.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: context.width(16),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: context.width(16),
                            ),
                            Container(
                              width: context.width(95),
                              height: context.width(32),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(
                                  0xffFA6A02,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(
                            height: context.width(150),
                            child: Image.asset(
                              'asset/image 5.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.width(16),
              ),
              SizedBox(
                width: context.width(370),
                height: context.width(52),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(
                        context.width(12),
                      ),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.orange,
                    suffixIcon: const Icon(Icons.tune),
                    hintText: 'Restaurant name or a dish...',
                    suffixStyle: const TextStyle(
                      color: Color(0xFF9F9F9F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.width(24),
              ),
              const Options(
                images: [
                  'asset/pizza 7.png',
                  'asset/burger.png',
                  'asset/healthy 7.png',
                  'asset/noodles7.png'
                ],
                items: ['Pizza', 'Burger', 'Healthy', 'Noodles'],
              ),
              SizedBox(
                height: context.width(24),
              ),
              Text(
                'Restaurant near you',
                style: TextStyle(
                    fontSize: context.width(16), fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: context.width(24),
              ),
              SizedBox(
                width: context.width(370),
                height: context.width(157),
                // color: Colors.amber,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: context.width(140),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'asset/domino.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: context.width(21),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: context.width(37),
                        ),
                        Text(
                          'Domino’s Pizza',
                          style: TextStyle(
                              fontSize: context.width(16),
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text(
                              '  4.2 ',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                              size: context.width(12),
                            ),
                            Text(
                              '  (10k+)',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '  25 mins',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.width(5),
                        ),
                        Text(
                          'Pizzas, Italian, Pastas\nPimple Saudagar',
                          style: TextStyle(
                              color: const Color(0xff666464),
                              fontSize: context.width(14),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: context.width(12),
                        ),
                        Text(
                          'FREE DELIVERY',
                          style: TextStyle(
                              color: const Color(0xff11CF24),
                              fontSize: context.width(12),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: context.width(12),
              ),
              SizedBox(
                width: context.width(370),
                height: context.width(157),
                // color: Colors.amber,
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: context.width(140),
                      child: Image.asset(
                        'asset/domino.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: context.width(21),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: context.width(37),
                        ),
                        Text(
                          'Domino’s Pizza',
                          style: TextStyle(
                              fontSize: context.width(16),
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text(
                              '  4.2 ',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                              size: context.width(12),
                            ),
                            Text(
                              '  (10k+)',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '  25 mins',
                              style: TextStyle(
                                  fontSize: context.width(12),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.width(5),
                        ),
                        Text(
                          'Pizzas, Italian, Pastas\nPimple Saudagar',
                          style: TextStyle(
                              color: const Color(0xff666464),
                              fontSize: context.width(14),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: context.width(12),
                        ),
                        Text(
                          'FREE DELIVERY',
                          style: TextStyle(
                              color: const Color(0xff11CF24),
                              fontSize: context.width(12),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
     
    );
  }
}
