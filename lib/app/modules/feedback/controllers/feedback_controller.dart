import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:user_app/app/app_controller.dart';
import 'package:user_app/app/utils/constants.dart';

class FeedbackController extends GetxController {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;
  
  final isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> submitFeedback()async{
    
    String title = titleController.text.trim();
    String description = descriptionController.text.trim();

    if (title.isEmpty || description.isEmpty){
      showSnackbar("All fields are required!", isError: true);
      return;
    } 

    isLoading(true);
    CollectionReference feedbacks = FirebaseFirestore.instance.collection("feedback");
    await feedbacks.add({
      "user": Get.find<AppController>().user?.email, 
      "description": description, 
      "title": title,
      "created": DateTime.now().millisecondsSinceEpoch
    }).then((value){
      isLoading(false);
      Get.back();
      showSnackbar("Feedback sent!");

    }).catchError((error){
      isLoading(false);
      showSnackbar(error.toString(), isError: true);
    });
    
  }
  

  @override
  void onClose() {
    super.onClose();
  }


}
