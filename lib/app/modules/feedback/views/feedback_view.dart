import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/app/widgets/primary_button.dart';
import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  const FeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Give a feedback'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: controller.titleController,
                  decoration: InputDecoration(
                      labelText: "Title", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  maxLines: 7,
                  controller: controller.descriptionController,
                  decoration: InputDecoration(
                      labelText: "Description", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                Obx(() => controller.isLoading.isTrue? CircularProgressIndicator(): PrimaryButton(text: "Submit", onPress: () {
                  controller.submitFeedback();
                }))
              ],
            ),
          ),
        ));
  }
}
