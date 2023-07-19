import 'package:flutter/material.dart'; 
class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});
  static String pageName = '/privacyPolicyPage';
  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - kToolbarHeight;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.black,
          title: const Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          SizedBox(height: height * 0.1),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              height: height * 0.9,
              width: width,
              child: const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.justify,
                    'We may reject requests that are unreasonable or not required by law, including those that would be extremely impractical, could require disproportionate technical effort, or could expose us to operational risks such as enabling fraud. Retention of information: We may retain information   required or permitted by applicable laws and regulations, including to honor your choices, for our billing or records purposes and to fulfill the purposes described in this Privacy Statement. Specifically, we retain information for our legitimate interests and essential business purposes, such as operating, maintaining and improving our services; complying with our legal obligations; and exercising our legal rights and remedies, including enforcing our terms of use. Our retention of information is based on many factors such as your relationship with Netflix (for example, are you a Netflix current member); the nature of the information; compliance with our legal obligations; defending or resolving actual or anticipated legal claims. We take reasonable measures to destroy or de-identify personal information in a secure manner when it is no longer required. For information about deletion, removal and retention of information, please reference this help article: help.netflix.com/node/100625.Security We use reasonable administrative, logical, physical and managerial measures to safeguard your personal information against loss, theft and unauthorized access, use and modification. These measures are designed to provide a level of security appropriate to the risks of processing your personal information.Other Websites, Platforms and Applications.The Netflix service may be provided through and/or utilize features (such as the display of social media content, or the provision of voice controls) operated by third party platforms, or contain links to sites operated by third parties whose policies regarding the handling of information may differ from ours. For example, you may be able to access the Netflix service through platforms such as gaming systems, smart TVs, mobile devices, set top boxes and a number of other Internet connected devices. These websites and platforms have separate and independent privacy or data policies, privacy statements, notices and terms of use, which we recommend you read carefully. In addition, you may encounter third party applications that interact with the Netflix service.Children You must be at least 18 years of age or older to subscribe to the Netflix service. Minors may only use the service with the involvement, supervision, and approval of a parent or legal guardian.Changes to This Privacy Statement.We will update this Privacy Statement from time to time in response to changing legal, regulatory or operational requirements. We will provide notice of any such changes (including when they will take effect) in accordance with law. Your continued use of the Netflix service after any such updates take effect will constitute acknowledgement and (as applicable) acceptance of those changes. If you do not wish to acknowledge or accept any updates to this Privacy Statement, you may cancel your use of the Netflix service. To see when this Privacy Statement was last updated, please see the "Last Updated" section below.To see the prior version of this document, please go to netflix.com/privacyupdates.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
