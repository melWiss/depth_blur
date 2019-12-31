import 'package:flutter/material.dart';
import 'package:image_picker_saver/image_picker_saver.dart' as imagePicker;
import 'dart:io';
import 'package:simple_permissions/simple_permissions.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image/image.dart' as img;
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File image1, image2;
  img.Image depthMap, resultPhoto;

  Widget _getPictures(File img) {
    return img == null
        ? FlatButton(
            child: Text("Image"),
            onPressed: () {
              SimplePermissions.checkPermission(Permission.ReadExternalStorage)
                  .then((checkedPermission) async {
                if (!checkedPermission)
                  SimplePermissions.requestPermission(
                          Permission.ReadExternalStorage)
                      .then((requestedPermission) {
                    if (requestedPermission == PermissionStatus.authorized)
                      imagePicker.ImagePickerSaver.pickImage(
                              source: imagePicker.ImageSource.gallery)
                          .then((image) {
                        setState(() {
                          img = image;
                        });
                      });
                  });
                else
                  imagePicker.ImagePickerSaver.pickImage(
                          source: imagePicker.ImageSource.gallery)
                      .then((image) {
                    setState(() {
                      img = image;
                    });
                  });
              });
            },
          )
        : GestureDetector(
            child: Image.file(img),
            onTap: () {
              /*SimplePermissions.checkPermission(
                            Permission.WriteExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        await SimplePermissions.requestPermission(
                            Permission.WriteExternalStorage);
                    });*/
              SimplePermissions.checkPermission(Permission.ReadExternalStorage)
                  .then((checkedPermission) async {
                if (!checkedPermission)
                  SimplePermissions.requestPermission(
                          Permission.ReadExternalStorage)
                      .then((requestedPermission) {
                    if (requestedPermission == PermissionStatus.authorized)
                      imagePicker.ImagePickerSaver.pickImage(
                              source: imagePicker.ImageSource.gallery)
                          .then((image) {
                        setState(() {
                          img = image;
                        });
                      });
                  });
                else
                  imagePicker.ImagePickerSaver.pickImage(
                          source: imagePicker.ImageSource.gallery)
                      .then((image) {
                    setState(() {
                      img = image;
                    });
                  });
              });
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          image1 == null
              ? FlatButton(
                  child: Text("Image 1"),
                  onPressed: () {
                    SimplePermissions.checkPermission(
                            Permission.ReadExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        SimplePermissions.requestPermission(
                                Permission.ReadExternalStorage)
                            .then((requestedPermission) {
                          if (requestedPermission ==
                              PermissionStatus.authorized)
                            imagePicker.ImagePickerSaver.pickImage(
                                    source: imagePicker.ImageSource.gallery)
                                .then((image) {
                              setState(() {
                                image1 = image;
                              });
                            });
                        });
                      else
                        imagePicker.ImagePickerSaver.pickImage(
                                source: imagePicker.ImageSource.gallery)
                            .then((image) {
                          setState(() {
                            image1 = image;
                          });
                        });
                    });
                  },
                )
              : GestureDetector(
                  child: Image.file(image1),
                  onTap: () {
                    /*SimplePermissions.checkPermission(
                            Permission.WriteExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        await SimplePermissions.requestPermission(
                            Permission.WriteExternalStorage);
                    });*/
                    setState(() {
                      image1 = null;
                    });
                    SimplePermissions.checkPermission(
                            Permission.ReadExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        SimplePermissions.requestPermission(
                                Permission.ReadExternalStorage)
                            .then((requestedPermission) {
                          if (requestedPermission ==
                              PermissionStatus.authorized)
                            imagePicker.ImagePickerSaver.pickImage(
                                    source: imagePicker.ImageSource.gallery)
                                .then((image) {
                              setState(() {
                                image1 = image;
                              });
                            });
                        });
                      else
                        imagePicker.ImagePickerSaver.pickImage(
                                source: imagePicker.ImageSource.gallery)
                            .then((image) {
                          setState(() {
                            image1 = image;
                          });
                        });
                    });
                  },
                ),
          image2 == null
              ? FlatButton(
                  child: Text("Image 2"),
                  onPressed: () {
                    SimplePermissions.checkPermission(
                            Permission.ReadExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        SimplePermissions.requestPermission(
                                Permission.ReadExternalStorage)
                            .then((requestedPermission) {
                          if (requestedPermission ==
                              PermissionStatus.authorized)
                            imagePicker.ImagePickerSaver.pickImage(
                                    source: imagePicker.ImageSource.gallery)
                                .then((image) {
                              setState(() {
                                image2 = image;
                              });
                            });
                        });
                      else
                        imagePicker.ImagePickerSaver.pickImage(
                                source: imagePicker.ImageSource.gallery)
                            .then((image) {
                          setState(() {
                            image2 = image;
                          });
                        });
                    });
                  },
                )
              : GestureDetector(
                  child: Image.file(image2),
                  onTap: () {
                    /*SimplePermissions.checkPermission(
                            Permission.WriteExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        await SimplePermissions.requestPermission(
                            Permission.WriteExternalStorage);
                    });*/

                    setState(() {
                      image2 = null;
                    });
                    SimplePermissions.checkPermission(
                            Permission.ReadExternalStorage)
                        .then((checkedPermission) async {
                      if (!checkedPermission)
                        SimplePermissions.requestPermission(
                                Permission.ReadExternalStorage)
                            .then((requestedPermission) {
                          if (requestedPermission ==
                              PermissionStatus.authorized)
                            imagePicker.ImagePickerSaver.pickImage(
                                    source: imagePicker.ImageSource.gallery)
                                .then((image) {
                              setState(() {
                                image2 = image;
                              });
                            });
                        });
                      else
                        imagePicker.ImagePickerSaver.pickImage(
                                source: imagePicker.ImageSource.gallery)
                            .then((image) {
                          setState(() {
                            image2 = image;
                          });
                        });
                    });
                  },
                ),
          depthMap == null
              ? FlatButton(
                  child: Text("Depth it!"),
                  onPressed: () {
                    print("start depthing");
                    var imageMap = img.copyRotate(
                        img.decodeImage(image1.readAsBytesSync()), 0);
                    var resultImage = img.copyRotate(
                        img.decodeImage(image1.readAsBytesSync()), 0);
                    var background = img.gaussianBlur(
                        img.copyRotate(
                            img.decodeImage(image1.readAsBytesSync()), 0),
                        30);
                    var img1 = img.adjustColor(
                        img.grayscale(img.copyRotate(
                            img.decodeImage(image1.readAsBytesSync()), 0)),
                        gamma: 15);
                    var img2 = img.adjustColor(
                        img.grayscale(img.copyRotate(
                            img.decodeImage(image2.readAsBytesSync()), 0)),
                        gamma: 15);
                    for (var x = 0; x < resultImage.width; x++) {
                      for (var y = 0; y < resultImage.height; y++) {
                        if (img1.getPixel(x, y) != img2.getPixel(x, y)) {
                          imageMap.setPixel(x, y, 0);
                        } else {
                          imageMap.setPixel(x, y, 4294967295);
                        }
                      }
                    }
                    for (var y = 0; y < imageMap.height - 1; y++) {
                      for (var x = 0; x < imageMap.width - 1; x++) {
                        var avgPixel = ((imageMap.getPixel(x, y) +
                                    imageMap.getPixel(x, y + 1) +
                                    imageMap.getPixel(x + 1, y) +
                                    imageMap.getPixel(x + 1, y + 1)) /
                                4)
                            .floor();
                        imageMap.setPixel(x, y, avgPixel);
                        imageMap.setPixel(x, y + 1, avgPixel);
                        imageMap.setPixel(x + 1, y, avgPixel);
                        imageMap.setPixel(x + 1, y + 1, avgPixel);
                        x++;
                      }
                    }

                    for (var x = 0; x < resultImage.width; x++) {
                      for (var y = 0; y < resultImage.height; y++) {
                        if ((imageMap.getPixel(x, y) >= 4294967295) ||
                            (imageMap.getPixel(x, y) <= 4294967285)) {
                          resultImage.setPixel(x, y, background.getPixel(x, y));
                          imageMap.setPixel(x, y, 4294967295);
                        } else {
                          imageMap.setPixel(x, y, 0);
                        }
                      }
                    }
                    imagePicker.ImagePickerSaver.saveFile(
                        fileData: img.encodeJpg(imageMap), title: "depthMap");
                    imagePicker.ImagePickerSaver.saveFile(
                        fileData: img.encodeJpg(resultImage),
                        title: "resultPhoto");

                    setState(() {
                      depthMap = imageMap;
                      resultPhoto = resultImage;
                      print("depth ready");
                    });
                  },
                )
              : GestureDetector(
                  child: Column(
                    children: <Widget>[
                      Image.memory(img.encodeJpg(depthMap)),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red,
                      ),
                      Image.memory(img.encodeJpg(resultPhoto)),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      depthMap = null;
                      resultPhoto = null;
                      print("deleted depth");
                    });
                  },
                ),
        ],
      ),
    );
  }
}
