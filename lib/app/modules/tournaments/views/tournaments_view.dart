import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../tournament_details/views/tournament_details_view.dart';
import '../controllers/tournaments_controller.dart';

class TournamentsView extends GetView<TournamentsController> {
   TournamentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot<Map<String, dynamic>>> _tournamentStream = FirebaseFirestore.instance.collection("tournament").orderBy("created").snapshots();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournaments'),
        centerTitle: true,
      ),
      body:StreamBuilder<QuerySnapshot>(stream: _tournamentStream, builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
        if(snapshot.hasError){
          return Center(child: Text("Something went wrong!"),); 
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.data!.docs.isEmpty){
          return Center(child: Text("No tournaments!"),);
        }
        return ListView(children: snapshot.data!.docs.map((DocumentSnapshot document){
          Map<String,dynamic> data = document.data() as Map<String,dynamic>;
          return InkWell(
            onTap: () {
            Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  TournamentDetailsView()),
  );
            },
            child: Card(
            margin: EdgeInsets.all(5),
            child: ListTile(leading: Icon(Icons.event),
              title: Text(data["name"]),
              subtitle: Text('Entry Fee: Rs ${data["entryFee"]}'),
            ),),
          );
        }).toList());
      },)
    );
  }
}


/*where('isAvailable', isEqualTo: true).*/