import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/images.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.4),
                ])),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "What kind of hotel you \n need?",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search fo hotels...',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/images_2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/images_3.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/images_4.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/images_5.jpeg", title: "Hotel5"),
                        makeItem(image: "assets/images/images_6.jpg", title: "Hotel6"),
                        makeItem(image: "assets/images/images_7.jpg", title: "Hotel7"),
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel8"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Airport Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/images_2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/images_3.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/images_4.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/images_5.jpeg", title: "Hotel5"),
                        makeItem(image: "assets/images/images_6.jpg", title: "Hotel6"),
                        makeItem(image: "assets/images/images_7.jpg", title: "Hotel7"),
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel8"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Resort Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/images_2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/images_3.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/images_4.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/images_5.jpeg", title: "Hotel5"),
                        makeItem(image: "assets/images/images_6.jpg", title: "Hotel6"),
                        makeItem(image: "assets/images/images_7.jpg", title: "Hotel7"),
                        makeItem(image: "assets/images/images_1.jpg", title: "Hotel8"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({
    image,
    title,
  }) {
    return AspectRatio(
      aspectRatio: 1.8 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              color: Colors.red,
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
                colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ])
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: const TextStyle(fontSize: 20,color: Colors.white),),
              const Icon(Icons.favorite,color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}
