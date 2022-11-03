import 'package:flutter/material.dart';

class VideoMeetingScreen extends StatelessWidget {
  static const String tag ='/videoMeetingScreen.tag';
  const VideoMeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill, opacity: 0.7,
          ),),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                    const Text("Meetings",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 0),
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black26),
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(5),),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Children's Day Event", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                          Chip(
                            label: Row(
                              children: const [
                                Icon(Icons.circle, size: 10, color: Colors.white,),
                                Text(" Live", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Text("Click to join the meeting !",
                          style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),),
                        onTap: () {},
                      ),
                      const Text("Date & Time:- 14/11/21 at 5:00 pm IST", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Host:- Mukesh Ambani", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Expected time:- 2 Hrs", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("People attending:- 1500", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(5),),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Get Pass",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black26),
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(5),),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Christmas Event", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                          Chip(
                            label: Text("Upcoming", style: TextStyle(color: Colors.white),),
                            backgroundColor: Colors.blue.shade300,
                          ),
                        ],
                      ),
                      const Text("Date & Time:- 25/12/21 at 5:00 pm IST", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Host:- Ratan Tata", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Expected time:- 1.5 Hrs", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("People Registered:- 500", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      Container(
                        alignment: Alignment.center,
                        width: 360,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(5),),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black26),
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(5),),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gandhi Jayanti Event", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                          Chip(
                            label: Text("Recorded", style: TextStyle(color: Colors.white),),
                            backgroundColor: Colors.red.shade300,
                          ),
                        ],
                      ),
                      const Text("Date & Time:- 02/10/21 at 5:00 pm IST", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Host:- Nitin Gadkari", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("Expected time:- 2.5 Hrs", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      const Text("People attended:- 2000+", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                      Container(
                        alignment: Alignment.center,
                        width: 360,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(5),),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Get Pass",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
