import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          Row(
            children: [
              Icon(Icons.bookmark),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text('Избранное'),
              ),
              Icon(Icons.chevron_right),
            ],
          )
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
