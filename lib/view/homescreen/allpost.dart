import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task1/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:task1/services/services.dart';

class AllPost extends StatefulWidget {
  const AllPost({super.key});

  @override
  State<AllPost> createState() => _AllPostState();
}

String id =
    'sunt aut facere repellat provident occaecati excepturi optio reprehenderit';

class _AllPostState extends State<AllPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: ((context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.separated(
                          itemCount: postList.length,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ListTile(
                                title: Text(
                                  'Title',
                                ),
                                subtitle: Text(
                                  postList[index].title.toString(),
                                ));
                          }),
                          separatorBuilder: ((context, index) {
                            return const Divider(
                              thickness: 1.5,
                            );
                          }));
                    }
                  }))),
        ),
      ),
    );
  }
}
