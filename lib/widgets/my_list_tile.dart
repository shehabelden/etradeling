import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {Key? key,
      required this.title,
      required this.count,
      this.iconImage,
      this.onTap})
      : super(key: key);
  final String title;
  final int count;
  final String? iconImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: count == 0 ? null : onTap,
          title: Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(count.toString()),
              count == 0
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.05)
                  : Icon(Icons.arrow_forward_ios)
            ],
          ),
          leading: iconImage == null
              ? null
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.12,
                  child: Image.network(iconImage!),
                ),
        ),
        Divider(
          color: Colors.black,
        ), // THIS
      ],
    );
  }
}
//https://drive.google.com/uc?export=view&id=1SVXNgYjWidATdPpPfswlWtS31DnhjB-2
