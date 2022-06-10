import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  int currentIdx = 0;
  RxString error = ''.obs;
  RxString selectedType = 'Lamp'.obs;

  void changeIdx(int c) => currentIdx = c;
  void changeSelectedType(String c) => selectedType.value = c;

  DatabaseReference dbref = FirebaseDatabase.instance.ref();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Stream<DataSnapshot> getAllrooms() {
    FirebaseDatabase dbref = FirebaseDatabase.instance;
    return dbref.ref().get().asStream();
  }

  void createRoom(String name) async {
    FirebaseDatabase dbref = FirebaseDatabase.instance;
    int roomslength = await dbref.ref().get().then((v) => v.children.length);
    await dbref.ref('${roomslength}').set({"name": name}).catchError(
        (onError) => print("Error : " + onError.toString()));
  }

  void createRoomDevice(String name, String room) async {
    FirebaseDatabase dbref = FirebaseDatabase.instance;
    int deviceLength =
        await dbref.ref("$room/devices").get().then((v) => v.children.length);
    await dbref.ref('$room/devices/${deviceLength}').set({
      "name": name,
      "type": selectedType.value,
      "status": false
    }).catchError((onError) => print("Error : " + onError.toString()));
  }
}
