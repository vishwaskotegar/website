import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //stories that inspire
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //stories that inspire
              Text(
                "Stories that inpire",
                style: GoogleFonts.comicNeue(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: const Color.fromARGB(255, 128, 127, 127)),
              ),
              SizedBox(
                height: 50,
              ),
              // row 2 container
              SizedBox(
                // height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //main video
                    Container(
                      child: Stack(alignment: Alignment.center, children: [
                        Image.network("https://picsum.photos/800/400"),
                        const Icon(
                          Icons.play_arrow_rounded,
                          color: Color(0xffe1a767),
                        )
                      ]),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    //more testimonials
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "More Testimonials",
                              style: GoogleFonts.comicNeue(
                                  color: const Color(0xffbababa),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 400,
                              width: width * .2,
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          // color: Colors.amber,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                SizedBox(
                                                    height: 80,
                                                    child: Image.network(
                                                        "https://picsum.photos/600/300")),
                                                Container(
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: const Center(
                                                      child: Text(
                                                    "48:30",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )),
                                                )
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Parent Testimonial",
                                              style: GoogleFonts.comicNeue(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            Text(
                                              "Parent Name",
                                              style: GoogleFonts.comicNeue(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(),
                                  itemCount: 6),
                            )
                          ]),
                    )
                  ],
                ),
              ),

              // book a free screening
              const SizedBox(
                height: 100,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.amber,
                          border: Border.all(color: const Color(0xffeca45a))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BOOK A FREE SCREENING",
                          style: GoogleFonts.comicNeue(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffeca45a)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "BOOK A FREE SCREENING",
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),

              //our rockstars Container

              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff7e8d6),
                  ),
                  child: Column(
                    //column
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      //our rockstars
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Text(
                            "Our Rockstars",
                            style: GoogleFonts.comicNeue(
                                fontWeight: FontWeight.w900,
                                fontSize: 60,
                                color: const Color(0xff707070)),
                          ),
                          const Positioned(
                            top: -10,
                            left: -50,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.amber,
                            ),
                          ),
                          const Positioned(
                            top: 60,
                            left: 40,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.amber,
                            ),
                          ),
                          const Positioned(
                            bottom: -10,
                            right: -50,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.blue,
                            ),
                          ),
                          const Positioned(
                            bottom: 60,
                            right: 40,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "From 5 members in 2014,We are 82 today.",
                        style: GoogleFonts.comicNeue(
                            color: const Color(0xff707070)),
                      ),
                      //listview
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            height: 400,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.blue, width: 3)),
                                        child: ClipOval(
                                          child: Image.network(
                                              "https://picsum.photos/200"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Jharna Khatri",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Master Enabler",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.blue, width: 3)),
                                        child: ClipOval(
                                          child: Image.network(
                                              "https://picsum.photos/200"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Jharna Khatri",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Master Enabler",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.blue, width: 3)),
                                        child: ClipOval(
                                          child: Image.network(
                                              "https://picsum.photos/200"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Jharna Khatri",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Master Enabler",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.blue, width: 3)),
                                        child: ClipOval(
                                          child: Image.network(
                                              "https://picsum.photos/200"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Jharna Khatri",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Master Enabler",
                                        style: GoogleFonts.comicNeue(
                                            color: const Color(0xff707070),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), //pagination
                      SmoothPageIndicator(
                        controller: PageController(),
                        count: 4,
                        effect: const SwapEffect(
                            activeDotColor: Color(0xffd8a971),
                            dotColor: Color(0xffe4caa7)),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),

              //out latest blogs
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Our latest blog posts",
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: const Color(0xff707070)),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: SizedBox(
                          width: width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 400,
                                decoration: BoxDecoration(boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(10, 10),
                                      color: Color(0xffd8d8d8))
                                ], border: Border.all(color: Colors.black)),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/web1.png"),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Dyslexia : A Different Way Of Thinking That Can Be A Strength",
                                              style: GoogleFonts.comicNeue(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Text("5 min Read")
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(10, 10),
                                      color: Color(0xffd8d8d8))
                                ], border: Border.all(color: Colors.black)),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/web1.png"),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Dyslexia : A Different Way Of Thinking That Can Be A Strength",
                                              style: GoogleFonts.comicNeue(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Text("5 min Read")
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(10, 10),
                                      color: Color(0xffd8d8d8))
                                ], border: Border.all(color: Colors.black)),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/web1.png"),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Dyslexia : A Different Way Of Thinking That Can Be A Strength",
                                              style: GoogleFonts.comicNeue(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Text("5 min Read")
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  // color: Colors.amber,
                                  border: Border.all(
                                      color: const Color(0xffeca45a))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "BOOK A FREE SCREENING",
                                  style: GoogleFonts.comicNeue(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffeca45a)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BOOK A FREE SCREENING",
                                style: GoogleFonts.comicNeue(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
