import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/colours.dart';
import 'package:flutter_whatsapp/widgets/common/chat_list.dart';
import 'package:flutter_whatsapp/widgets/common/contacts_list.dart';
import 'package:flutter_whatsapp/widgets/web/web_chat_appbar.dart';
import 'package:flutter_whatsapp/widgets/web/web_profile_bar.dart';
import 'package:flutter_whatsapp/widgets/web/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList()
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const WebChatAppBar(),
                  const Expanded(
                    child: ChatList(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: dividerColor),
                      ),
                      color: chatBarMessage,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
