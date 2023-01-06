import 'package:flutter/material.dart';

class AppMore extends StatelessWidget {
  const AppMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: deviceSize.height * 0.06,
          width: deviceSize.width * 0.58,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Tìm kiếm sản phẩm',
            ),
          ),
        ),
        Container(
          height: deviceSize.height * 0.06,
          width: deviceSize.width * 0.12,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
        PopupMenuButton(
          icon: const Icon(
            Icons.more_vert,
          ),
          itemBuilder: (_) => [
            const PopupMenuItem(
              child: Text('Cải thiện chỉ số Chat'),
            ),
            const PopupMenuItem(
              child: Text('Xu hướng TMĐT 2023'),
            ),
            const PopupMenuItem(
              child: Text('ASTRA+'),
            ),
            const PopupMenuItem(
              child: Text('Cài đặt ngày giờ làm việc'),
            ),
            const PopupMenuItem(
              child: Text('Bảo hộ nhãn hiệu'),
            ),
          ],
        ),
      ],
    );
  }
}
