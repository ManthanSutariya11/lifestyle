import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavBar(),
      floatingActionButton: floatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'My Goal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/profile.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '2 Big Challenges',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Ambitious person aren\'t you?',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  horizontalCard(
                    svgPath: 'assets/Timer.svg',
                    title: 'Life  Style',
                    subtitle: 'Become a morning \nperson',
                    reminder: 'Everyday',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  horizontalCard(
                    svgPath: 'assets/Heartbeat.svg',
                    title: 'Healthy life',
                    subtitle: 'Because your health is the most important',
                    reminder: 'Everyday',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Today’s Planning',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'You have 3 actions to do',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 75,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F8FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/Back.svg',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Learn new skill',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Complete  prototyping course',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset('assets/option.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              goalRow(
                title: 'New Design',
                description: 'Create new app or web design',
                deadline: '06 January 2022',
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 75,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F8FF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/Back.svg',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Learn new skill',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Complete  prototyping course',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset('assets/option.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container horizontalCard({
    required String svgPath,
    required String title,
    required String subtitle,
    required String reminder,
  }) {
    return Container(
      height: 200,
      width: 171,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F8FF),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svgPath,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            'Reminder',
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 12),
          ),
          Text(
            reminder,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

GestureDetector floatingButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NewGoal(),
        ),
      );
    },
    child: Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.all(7),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF7B61FF),
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Container bottomNavBar() {
  return Container(
    height: 80,
    width: double.infinity,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.home,
            color: Color(0xFF7B61FF),
            size: 35,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.settings,
            color: Color(0xFF7B61FF),
            size: 35,
          ),
        ),
      ],
    ),
  );
}

Container goalRow(
    {required String title,
    required String description,
    required String deadline}) {
  return Container(
    height: 130,
    width: 358,
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
      color: Color(0xFFF5F8FF),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/bag.svg'),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 53,
              child: SvgPicture.asset('assets/Clock.svg'),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Deadline     ' + deadline,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class NewGoal extends StatefulWidget {
  const NewGoal({Key? key}) : super(key: key);

  @override
  State<NewGoal> createState() => _NewGoalState();
}

class _NewGoalState extends State<NewGoal> {
  TextEditingController titleController = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController reminder = TextEditingController();
  TextEditingController maturity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: floatingButton(context),
      bottomNavigationBar: bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Goal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 53,
                      width: 53,
                      color: const Color(0xFFF5F8FF),
                      child: const Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 49,
              ),
              textField(controller: titleController, title: 'Title'),
              const SizedBox(
                height: 16,
              ),
              textField(controller: description, title: 'Description'),
              const SizedBox(
                height: 16,
              ),
              textField(controller: reminder, title: 'Reminder'),
              const SizedBox(
                height: 16,
              ),
              textField(controller: maturity, title: 'Maturity Date'),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Goal Preview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              goalRow(
                title: titleController.text,
                description: description.text,
                deadline: maturity.text,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container textField(
      {required String title, required TextEditingController controller}) {
    return Container(
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F8FF),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          onChanged: (e) {
            setState(() {});
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              title,
            ),
          ),
        ),
      ),
    );
  }
}
