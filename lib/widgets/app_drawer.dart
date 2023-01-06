import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Tiki University'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            title: const Text('Trang chủ'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Hướng dẫn bán hàng'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Bí quyết bán hàng'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Liên hệ'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Cross-bolder Sellers'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
