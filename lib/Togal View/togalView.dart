import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Random quote/random_quote.dart';
import '../utils/Global.dart';
import '../utils/Model.dart';
import '../utils/quoteList.dart';

class TogalView extends StatefulWidget {
  const TogalView({super.key});

  @override
  State<TogalView> createState() => _TogalViewState();
}

class _TogalViewState extends State<TogalView> {
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffBBE1FA),
        ),
        backgroundColor: Color(0xff3282B8),
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text(
          'Toggle View',
          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  IconView = !IconView;
                });
              },
              child: Icon(
                IconView?  CupertinoIcons.list_bullet : Icons.grid_view_outlined,color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: IconView ? buildListView() : buildGridView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Card(
        color: cardColors[index % cardColors.length],
        child: ListTile(
          title: Text(
            quoteModel!.quoteModelList[index].quote!,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 18.5),
          ),
          subtitle: Text(
            quoteModel!.quoteModelList[index].author!,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:19.2),
          ),
        ),
      ),
    );
  }
  Widget buildGridView() {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Card(
        color: cardColors[index % cardColors.length],
        child: ListTile(
          title: Text(
            quoteModel!.quoteModelList[index].quote!,
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 18.5),
          ),
          subtitle: Text(
            quoteModel!.quoteModelList[index].author!,
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:19.2),
          ),
        ),
      ),
    );
  }
}

bool IconView = false;