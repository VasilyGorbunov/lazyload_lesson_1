import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  List<MenuRowData> firstMenuRows = [
    MenuRowData(Icons.bookmark_border_outlined, 'Избранное'),
    MenuRowData(Icons.call_outlined, 'Звонки'),
    MenuRowData(Icons.computer_outlined, 'Устройства'),
    MenuRowData(Icons.chat_bubble_outline, 'Папка с чатами'),
  ];

  List<MenuRowData> secondMenuRows = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip_outlined, 'Конфиденциальность'),
    MenuRowData(Icons.date_range_outlined, 'Данные и память'),
    MenuRowData(Icons.brush_outlined, 'Оформление'),
    MenuRowData(Icons.language_outlined, 'Язык'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const _UserInfo(),
            const SizedBox(height: 30),
            _MenuWidget(menuRows: firstMenuRows,),
            const SizedBox(height: 30),
            _MenuWidget(menuRows: secondMenuRows,),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key, required this.menuRows});

  final List<MenuRowData> menuRows;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRows.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class MenuRowData {
  MenuRowData(this.icon, this.text);

  final IconData icon;
  final String text;
}

class _MenuWidgetRow extends StatelessWidget {
  const _MenuWidgetRow({
    super.key, required this.data,
  });

  final MenuRowData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(data.text),
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: const Column(
        children: [
          SizedBox(height: 30),
          _Avatar(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNicknameWidget(),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Vasily <Madhead> Gorbunov',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7(123)123-45-67',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNicknameWidget extends StatelessWidget {
  const _UserNicknameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@Madhead',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    );
  }
}
