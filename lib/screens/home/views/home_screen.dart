import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        title: Row(
          children: [
            Image.asset(
                'assets/8.png',
                scale: 14
            ),
            const SizedBox(width: 8,),
            const Text(
              'PIZZA',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(CupertinoIcons.cart),
          ),
          IconButton(
            onPressed: () {
              context.read<SignInBloc>().add(SignOutRequired());
            },
            icon: const Icon(CupertinoIcons.arrow_right_to_line),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 9 / 16
            ),
            itemCount: 4,
            itemBuilder: (context, int i) {
              return Container(
                color: Colors.red,
              );
            }
        ),
      ),
    );
  }
}