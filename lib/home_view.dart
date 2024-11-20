import 'package:bmi_calculator/slider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

double sliderValue = 140;
int weight = 50;
int age = 18;
bool gender = true;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          setState(() {
                            gender = true;
                          });
                        });
                      },
                      child: Container(
                        width: size.width * 0.44,
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                            color: gender ? Color(0xffF10606) : Color(0xff1A1F38),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: size.height * 0.25 * 0.5,
                            ),
                            const Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          gender = false;
                        });
                      },
                      child: Container(
                        width: size.width * 0.44,
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                            color: gender ? Color(0xff1A1F38) : Color(0xffF10606),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: size.height * 0.25 * 0.5,
                            ),
                            const Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(16),
                  width: size.width * 0.92,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                      color: Color(0xff1A1F38), borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                            "Height",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                           Text(
                            " CM",

                            style: TextStyle(
                             // textBaseline: TextBaseline.alphabetic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: CustomSliderThumbCircle(
                        thumbRadius: 20,
                        value: sliderValue,
                      ),
                    ),
                    child: Slider(
                      value: sliderValue,
                      min: 100,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                         sliderValue = value;
                        });
                      },
                    ),
                  ),

                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: size.width * 0.44,
                      height: size.height * 0.25,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff1A1F38),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(Icons.minimize_outlined),
                                backgroundColor: Colors.white,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                backgroundColor: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Container(
                      width: size.width * 0.44,
                      height: size.height * 0.25,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff1A1F38),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Colors.white,
                                child: const Icon(Icons.minimize_outlined),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
             SizedBox(
               height: size.height*0.03,
             ),


              ],
            ),
          ),
          Expanded(
            child: Container(
                height: size.height*0.051,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Calculator",style: TextStyle(
                      fontSize: 22
                  ),),
                  color: Color(0xffF10606),
                  textColor: Colors.white,

                )),
          )
        ],
      ),
    );
  }
}
