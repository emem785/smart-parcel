import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

const heading = "SMARTPARCEL LIMITED - TERMS OF USE";
const introduction =
    "The following terms and conditions govern your use of SMARTPARCEL.NG and the SMARTPARCEL APP. Your viewing or use of this site will constitute your agreement, on behalf of yourself and the entity you represent (hereinafter collectively “You” Or “Your”), to all of the terms and conditions provided below.\nSMARTPARCEL Limited (“SMARTPARCEL”) may make future changes or modifications to such terms and conditions at any time without notice, and your subsequent viewing or use of SMARTPARCEL.NG and the SMARTPARCEL APP will constitute your agreement to the changes and modifications. There may be additional terms and conditions provided throughout SMARTPARCEL.NG and the SMARTPARCEL APP governing your use of particular functions, features, information and applications available through SMARTPARCEL.NG and the SMARTPARCEL APP.";

const section1 = "SECTION 1. DEFINITIONS";
const section1Sub =
    "Smart Parcel: Smart Parcel Limited, its parent and its parent's subsidiary companies.";

const section2 = "SECTION 2. USE OF SMARTPARCEL.NG";
const section2Sub =
    "SMARTPARCEL.NG is provided solely for the use of current and potential Smart Parcel customers to interact with Smart Parcel and may not be used by any other person or entity, or for any other purpose.\nThe use of non-authorized scripting technologies to obtain information from SMARTPARCEL.NG or submit information through Smart Parcel.ng is strictly prohibited.Smart Parcel does not accept ideas, concepts, or techniques for new services or products through Smart Parcel.ng. If such information is received, it will not be considered confidential and Smart Parcel will be deemed free to use, communicate and exploit such information in any manner it chooses.";

const section3 = "SECTION 3. SMARTPARCEL.NG LOGIN REGISTRATION";
const section3Sub =
    "You may choose to register on Smart Parcel.ng to access interactive features on Smart Parcel.ng.\nBy registering on Smart Parcel.ng, You agree to provide accurate and current information about Yourself as prompted by the Smart Parcel.ng Login Registration pages and maintain and promptly update Your online profile information to keep it accurate and current.\nWhen you register using Smart Parcel.ng Login Registration, you will select a user ID and password. You are responsible for maintaining the confidentiality of the password and user ID, and you are responsible for all activities that occur under Your password and user ID. You agree to (a) immediately notify Smart Parcel of any unauthorized use of Your user ID and password, and (b) ensure that You exit from Your Smart Parcel.ng session at the end of each visit.\nYou acknowledge and agree that it may be necessary from time to time for Smart Parcel to confirm the validity of the credit/debit card information you provided to open your Smart Parcel account. When this occurs, Smart Parcel may request a temporary authorization hold for a nominal amount on your card. This authorization hold does not result in actual charges to your card. These authorizations will automatically expire based on guidelines established by your card issuer.";

const section4 = "SECTION 4. CHANGES TO SMARTPARCEL.NG AND THE SMARTPARCEL APP";
const section4Sub =
    "Smart Parcel.ng, the Smart Parcel App and its Content, may be changed, deleted or updated at any time.";

const section5 = "SECTION 5. TERMINATION OF USE";
const section5Sub =
    "Smart Parcel may discontinue, suspend or modify Smart Parcel.ng and the Smart Parcel App at any time without notice, and Smart Parcel may block, terminate or suspend Your and any user's access to Smart Parcel.ng and the Smart Parcel App at any time for any reason in its sole discretion, even if access continues to be allowed to others.";
const section6 = "SECTION 6. OWNERSHIP";
const section6Sub =
    "Smart Parcel.ng, the Smart Parcel App and their Contents are protected by the Nigerians and international copyright, trademark and other laws... All rights reserved. Specifically, Smart Parcel does not convey to anyone, through allowing access to Smart Parcel.ng and the Smart Parcel App, any ownership rights in Smart Parcel.ng and the Smart Parcel App or in any Content appearing on or made available through Smart Parcel.ng and the Smart Parcel App. Customer may not copy, modify, translate, transmit, distribute, adapt, reproduce, decompile, reverse engineer or disassemble any part of Smart Parcel.ng, and the Smart Parcel App or its Content.";

const section7 = "SECTION 7. DISCLAIMER OF WARRANTY";
const section7Sub =
    "Smartparcel.ng, the Smart Parcel App and its content are provided 'as is'. Smart Parcel and its licensors disclaim any and all warranties, express or implied, including without limitation, the implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, regarding any such content and Your ability or inability to use Smart Parcel.ng, the Smart Parcel App and its content.\nSmart Parcel expressly disclaims and excludes all warranties regarding SMARTPARCEL.ng, Smart Parcel App and the functioning of the internet whether express or implied, including but not limited to, the implied warranties of merchantability and fitness for a particular purpose. Smart Parcel does not warrant that the Smart Parcel App will meet all of customer's requirements or that its operations will be uninterrupted or error free, or that any defect within the Smart Parcel App will be corrected. Furthermore, Smart Parcel does not warrant nor make any representation regarding the results of customer's use of the Smart Parcel App in terms of capability, correctness, accuracy, reliability or otherwise. No oral or written information, representation or advice given by Smart Parcel or an authorized representative of Smart Parcel shall create a warranty.";

const section8 = "SECTION 8. LIMITATION OF LIABILITY";
const section8Sub =
    "Use of Smartparcel.ng, the Smart Parcel App and its content is at Your sole risk. Smart Parcel will in no event be liable to You or any person or entity claiming through You for any direct, indirect, consequential, incidental or other damages under any theory of law for any errors in or the use of or inability to use Smartparcel.ng, the Smart Parcel App and its content including without limitation, damages for lost profits, business, data, or damage to any computer systems, even if You have advised Smart Parcel of the possibility of such damages.";

const section9 = "SECTION 9. INDEMNITY";
const section9Sub =
    "You agree to defend, indemnify and hold harmless Smart Parcel, its parent and affiliate companies and their respective officers, directors, employees, agents and representatives from any and all claims (i) arising out of Your breach of any of these terms and conditions, and any of Your activities conducted in connection with Smartparcel.ng, the Smart Parcel App.";

const section10 = "SECTION 10. LINKS TO OTHER WEB SITES";
const section10Sub =
    "There are links on the Smart Parcel.ng site and the Smart Parcel App that allow You to visit the sites of third parties. Neither these sites nor the companies to whom they belong are controlled by Smart Parcel. Smart Parcel makes no representations concerning the information provided or made available on such sites nor the quality or acceptability of the products or services offered by any persons or entities referenced in any such sites.\nSmart Parcel has not tested and makes no representations regarding the correctness, performance or quality of any software found at any such sites. You should research and assess the risks which may be involved in accessing and using any software on the Internet before using it.";

const section11 = "SECTION 11. PRIVACY STATEMENT";
const section11Sub =
    "The Smart Parcel Privacy Statement governs the use of information acquired from You through Smart Parcel.ng and the Smart Parcel App.";

const section12 = "SECTION 12. GOVERNING LAW AND SEVERABILITY";
const section12Sub =
    "This Agreement and Your use of Smart Parcel.ng and the Smart Parcel App is governed by and construed in accordance with the laws of the Federal Republic of Nigeria. If for any reason a court of competent jurisdiction finds any provision of this Agreement, or a portion thereof, to be unenforceable, that provision shall be enforced to the maximum extent permissible.\nAny cause of action with respect to Smart Parcel.ng or this Agreement must be instituted within three (3) months after the claim or cause of action has risen or be barred and must be brought in a court of competent jurisdiction. This Agreement may not be changed or modified without the written consent of Smart Parcel.";
const section13 = "SECTION 13. SMARTPARCEL ALERT";
const section13Sub =
    "Smart Parcel provides You with the opportunity, via the Smart Parcel App, to use Smart Parcel Alert to send a message to the recipient informing him/her of Your shipment. This feature is provided free of charge. Smart Parcel may modify or terminate the use of Smart Parcel Alert at any time.\nSmart Parcel does not commit to keeping Your message private or confidential. By using Smart Parcel Alert You acknowledge that Smart Parcel is providing the technical functionality only, and that You are solely responsible for the content of Your messages. Smart Parcel undertakes no duty to monitor any messages sent by You. However, Smart Parcel, in its sole discretion, may elect, but is not obligated, to look at Your messages to protect itself.\nDo not use Smart Parcel Alert for anything other than to communicate information about Your parcel. You may not use Smart Parcel Alert to disseminate inflammatory, infringing, obscene, or other unlawful information, or to threaten, harass, abuse or otherwise violate the legal rights of others or perform any act contrary to law. If Smart Parcel sees or hears about messages sent via Smart Parcel Alert that violate these provisions, or that may damage Smart Parcel, it may take all actions necessary to protect itself, including disclosing any messages to the authorities. Smart Parcel will not be liable for any failure or delay, for any reason, in the transmission, receipt, or acknowledgment of any messages sent by or to You.";

const section14 = "SECTION 14. ADDRESS BOOK";
const section14Sub =
    "Subject to the terms listed here, addresses will remain in Your Address Book as long as You use the Smart Parcel App. If You do not use the Smart Parcel for a period of 6 months, Smart Parcel will delete Your addresses.\nHowever, Smart Parcel will not delete Your Smart Parcel account. If You have any concerns, please email Smart Parcel at [•]. The Address Book is a feature provided free of charge by Smart Parcel. You should maintain a back-up copy of Your addresses as Smart Parcel will not be responsible for the loss of addresses contained in the Address Book. Smart Parcel may modify or terminate this feature at any time for any reason.";

class TermsAndConditonsPage extends StatelessWidget {
  const TermsAndConditonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Terms and Conditions",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Theme(
          data: GlobalTheme.getGlobalTheme().copyWith(
            textTheme: GlobalTheme.textTheme(context).copyWith(
              headline6: GlobalTheme.textTheme(context)
                  .headline6
                  ?.copyWith(fontSize: 15),
              bodyText1: GlobalTheme.textTheme(context).bodyText1?.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          child: ListView(
            children: const [
              Section(heading: heading, body: introduction),
              Section(heading: section1, body: section1Sub),
              Section(heading: section2, body: section2Sub),
              Section(heading: section3, body: section3Sub),
              Section(heading: section4, body: section4Sub),
              Section(heading: section5, body: section5Sub),
              Section(heading: section6, body: section6Sub),
              Section(heading: section7, body: section7Sub),
              Section(heading: section8, body: section8Sub),
              Section(heading: section9, body: section9Sub),
              Section(heading: section10, body: section10Sub),
              Section(heading: section11, body: section11Sub),
              Section(heading: section12, body: section12Sub),
              Section(heading: section13, body: section13Sub),
              Section(heading: section14, body: section14Sub),
            ],
          ),
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String heading;
  final String body;
  const Section({
    Key? key,
    required this.heading,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heading6 = GlobalTheme.textTheme(context).headline6;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: heading6),
          LayoutConstants.sizeBox(context, 8),
          Text(
            body,
            style: GlobalTheme.textTheme(context).bodyText1,
          ),
        ],
      ),
    );
  }
}
