import 'package:flutter/material.dart';

import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';

class ChatGroupPage extends StatelessWidget {
  final Group group;
  final Color color;

  const ChatGroupPage({
    Key key,
    this.group,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${group.name}'),
        backgroundColor: color,
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 40,
                itemBuilder: (context, index) => ListTile(
                  title: Text('teste', textAlign: index %2 == 0 ? TextAlign.end : null),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: color,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      child: Icon(Icons.send),
                      radius: 28,
                      backgroundColor: color,
                    ),
                  )
                ],
              ),
            )
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 200,
            //   child: Row(
            //     children: <Widget>[TextFormField()],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
