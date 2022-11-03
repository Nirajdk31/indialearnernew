import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:india_learner_app/Category_IL/categories_il_list.dart';
import 'package:india_learner_app/signup/signup.dart';
import 'package:india_learner_app/splash/splashscreen.dart';
import 'package:india_learner_app/tests/freetest/freetest.dart';
import 'package:india_learner_app/tests/freetest/mcqpage.dart';
import 'package:india_learner_app/tests/freetest/testseries.dart';
import 'package:india_learner_app/tests/paidtest/paidtestpage.dart';
import 'package:india_learner_app/tests/quiz/quizpage.dart';
import 'package:india_learner_app/tests/testpage.dart';
import 'package:india_learner_app/tests/written/writtenpage.dart';
import 'package:india_learner_app/thankyou/orderprovider.dart';
import 'package:india_learner_app/thankyou/orderstatusscreen.dart';
import 'package:india_learner_app/videolist/all_videos.dart';
import 'package:india_learner_app/videoplayer/videoplayer.dart';
import 'package:india_learner_app/wishlist/wishlist.dart';
import 'package:provider/provider.dart';
import 'Updates/updatespage.dart';
import 'audiolist/all_audios.dart';
import 'audioplayer/screens/music/music_screen.dart';
import 'billing/billingaddresslist.dart';
import 'billing/billingdetailspage.dart';
import 'billing/newaddresslist.dart';
import 'billing/paymentmode.dart';
import 'browsemenu/browsepage.dart';
import 'creditcard/creditcardpage.dart';
import 'drawer/drawer_layout.dart';
import 'flipcard/flipcarddemo.dart';
import 'home/homepageprovider.dart';
import 'image_gallery/all_images.dart';
import 'login/loginscreen.dart';
import 'mypurchase/mypurchasescreen.dart';
import 'mypurchase/showdetailspage.dart';
import 'mywallet/mywalletscreen.dart';
import 'onboardingscreens/liquidswipescreen.dart';
import 'otp/otpscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MobileHomePageProvider()),
        ChangeNotifierProvider.value(value: OrderProvider())
      ],
      child: MaterialApp(
        title: 'Education App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const SplashScreen(),
        routes: {
          LoginScreen.tag: (context) =>const  LoginScreen(),
          OTPScreen.tag: (context) =>const  OTPScreen(),
          PaymentStatusPage.tag: (context) =>const  PaymentStatusPage(),
          BillingDetailsPage.tag: (context) =>const  BillingDetailsPage(),
          AddressList.tag:(context) => const AddressList(),
          PaymentMode.tag:(context) => const PaymentMode(),
          AllAudios.tag: (context) => const AllAudios(status: true,),
          AllImages.tag: (context) => const AllImages(status: true,),
          AllVideos.tag: (context) => const AllVideos(status: true,),
          DrawerLayout.tag : (context) => const DrawerLayout(),
          FlipCardDemo.tag: (context) => const FlipCardDemo(),
          VideoPlayerUi.tag: (context) => const VideoPlayerUi(),
          MusicScreen.tag: (context) => MusicScreen(),
          MyPurchase.tag: (context) => const MyPurchase(status: true,),
          MyAddress.tag: (context) => const MyAddress(),
          CreditCard.tag: (context) => const CreditCard(),
          ShowDetails.tag: (context) => const ShowDetails(),
          //LiquidSwipeScreen.tag: (context) => LiquidSwipeScreen(),
          MyWalletScreen.tag: (context) => const MyWalletScreen(),
          CategoriesILPage.tag: (context) => const CategoriesILPage(status: true,),
          TestPage.tag: (context) => const TestPage(),
          FreeTestPage.tag: (context) => const FreeTestPage(),
          PaidTestPage.tag: (context) => const PaidTestPage(),
          QuizPage.tag: (context) => const QuizPage(),
          WrittenPage.tag: (context) => const WrittenPage(),
          BrowsePage.tag: (context) => const BrowsePage(),
          UpdatesPage.tag: (context) => const UpdatesPage(),
          WishlistPage.tag: (context) => const WishlistPage(),
          TestSeries.tag: (context) => const TestSeries(),
          McqPage.tag: (context) => const McqPage(),
          SignupPage.tag: (context) => const SignupPage(),
        },
      ),
    );
  }
}

