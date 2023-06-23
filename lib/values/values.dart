import 'package:chapter_6_practical/model/navigation_item_data.dart';
import 'package:chapter_6_practical/model/news_articles.dart';

import 'strings/app_strings.dart';

class AppValues {
  static List<NavigationItemData> navItems = [
    NavigationItemData(AppStrings.homeUrl, AppStrings.home),
    NavigationItemData(AppStrings.cartUrl, AppStrings.store, height: 24),
    NavigationItemData(AppStrings.favoriteUrl, AppStrings.favorite),
    NavigationItemData(AppStrings.settingUrl, AppStrings.setting),
    NavigationItemData(AppStrings.arrowUrl, AppStrings.increment, height: 18),
  ];

  static const List options = [
    'Drinks & Smoothies',
    'Fruits & Veggies',
    'Drinks & Smoothies',
    'Fruits & Veggies',
    'Drinks & Smoothies',
    'Fruits & Veggies'
  ];

  static List<NewsArticles> articles = [
    NewsArticles(
      title: "Back US scrambles F-16 jets, sonic boom heard across Washington, Capitol Hill on elevated alert; All you need to know",
      details:
      "US F-16 fighter jets on Sunday scrambled to reach unresponsive aircraft that crashed in Virginia, said officials, adding that it created a sonic boom across the Washington, DC region. However, a US official clarified that the fighter jets did not shoot the aircraft, according to a report published by CNN.\n In an official statement, the Continental US North American Aerospace Defense Command Region informed that the pilot of the civilian aircraft was unresponsive when the F-16 fighter jets tried to make contact.\nThe report also stated that the fighter jets were authorized to travel at supersonic speeds when someone is flying unsafely. Later, it resulted in a sonic boom sound in the Washington DC area as the aircraft crashed.\nNORAD jets intercepted the civilian aircraft, a Cessna 560 Citation V in which four people were onboard, around 3.20 pm, which ultimately crashed near the George Washington National Forest, CNN reported.\nTaking to Twitter, DC Homeland Security & Emergency Management said, “We are aware of reports from communities throughout the National Capital Region of a loud ‘boom’ this afternoon. There is no threat at this time.",
      imageUrl: "assets/images/fighter.jpg",
      time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 2),
      tag: 'Defence',
    ),
    NewsArticles(
      title: "Byju's faces deadline for \$40 million payment today",
      details: "Byju's firm is expected to pay the \$40 million instalment of its highest unrated loan of \$1.2 billion on Monday. "
          "The ed-tech startup needs to make the quarterly interest payment on June 5, which is also the deadline for the instalment.\nIf the company fails to make the quarterly interest payment, then the loan, which is at the centre of the beleaguered firm's financial troubles, will default.\nThe \$40 million payment is expected to be made on June 5, reported Bloomberg citing anonymous sources. The information is not available in the public domain. The situation is still fluid and the Byju's payment plan can change as well, reported Bloomberg.BYJU'S refutes claims of hiding \$500 million through US-based subsidiary BYJU Alpha. Byju's firm didn't respond to requests for comment about the coupon payment. Moreover, there were no comments on the issue by the representatives for Houlihan Lokey Inc. The company was hired by creditors to advise them on the loan.\n The loan is the largest unrated debt by a startup ever. Byju's laurels changed after the reopening of schools post-pandemic. The company's profit jumped significantly after the company's boom during the pandemic. After the decline of the pandemic-era boom in online tutoring, the company's profit crashed significantly. That's why Byjus has been trying to strike a deal with creditors to restructure the loan. But creditors demanding an accelerated payment scrapped the long-term negotiations, according to a Bloomberg report. The lender consortium signed a cooperation agreement that binds them to act together in negotiations.Earlier the mega loan accounted for 64.5 cents a dollar in September. But now, has increased to 78 cents, reported Bloomberg.",
      imageUrl: 'assets/images/Byjus.jpeg',
      time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 2),
      tag: 'Money',
    ),
    NewsArticles(
      title: "Back US scrambles F-16 jets, sonic boom heard across Washington, Capitol Hill on elevated alert; All you need to know",
      details:
      "US F-16 fighter jets on Sunday scrambled to reach unresponsive aircraft that crashed in Virginia, said officials, adding that it created a sonic boom across the Washington, DC region. However, a US official clarified that the fighter jets did not shoot the aircraft, according to a report published by CNN.\n In an official statement, the Continental US North American Aerospace Defense Command Region informed that the pilot of the civilian aircraft was unresponsive when the F-16 fighter jets tried to make contact.\nThe report also stated that the fighter jets were authorized to travel at supersonic speeds when someone is flying unsafely. Later, it resulted in a sonic boom sound in the Washington DC area as the aircraft crashed.\nNORAD jets intercepted the civilian aircraft, a Cessna 560 Citation V in which four people were onboard, around 3.20 pm, which ultimately crashed near the George Washington National Forest, CNN reported.\nTaking to Twitter, DC Homeland Security & Emergency Management said, “We are aware of reports from communities throughout the National Capital Region of a loud ‘boom’ this afternoon. There is no threat at this time.",
      imageUrl: "assets/images/fighter.jpg",
      time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 2),
      tag: 'Defence',
    ),
    NewsArticles(
      title: "Byju's faces deadline for \$40 million payment today",
      details: "Byju's firm is expected to pay the \$40 million instalment of its highest unrated loan of \$1.2 billion on Monday. "
          "The ed-tech startup needs to make the quarterly interest payment on June 5, which is also the deadline for the instalment.\nIf the company fails to make the quarterly interest payment, then the loan, which is at the centre of the beleaguered firm's financial troubles, will default.\nThe \$40 million payment is expected to be made on June 5, reported Bloomberg citing anonymous sources. The information is not available in the public domain. The situation is still fluid and the Byju's payment plan can change as well, reported Bloomberg.BYJU'S refutes claims of hiding \$500 million through US-based subsidiary BYJU Alpha. Byju's firm didn't respond to requests for comment about the coupon payment. Moreover, there were no comments on the issue by the representatives for Houlihan Lokey Inc. The company was hired by creditors to advise them on the loan.\n The loan is the largest unrated debt by a startup ever. Byju's laurels changed after the reopening of schools post-pandemic. The company's profit jumped significantly after the company's boom during the pandemic. After the decline of the pandemic-era boom in online tutoring, the company's profit crashed significantly. That's why Byjus has been trying to strike a deal with creditors to restructure the loan. But creditors demanding an accelerated payment scrapped the long-term negotiations, according to a Bloomberg report. The lender consortium signed a cooperation agreement that binds them to act together in negotiations.Earlier the mega loan accounted for 64.5 cents a dollar in September. But now, has increased to 78 cents, reported Bloomberg.",
      imageUrl: 'assets/images/Byjus.jpeg',
      time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 2),
      tag: 'Money',
    ),
  ];
}
