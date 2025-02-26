import 'package:e_commerce/features/home/cubit/cubit/home_cubit.dart';
import 'package:e_commerce/features/home/cubit/cubit/home_state.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/advice_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicesListView extends StatelessWidget {
  const AdvicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else if (state is HomeSuccess) {
            return ListView.builder(
              itemCount: state.advices.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AdviceCard(
                  advice: state.advices[index],
                );
              },
            );
          } else {
            return const Center(
              child: Text("No advice available."),
            );
          }
        },
      ),
    );
  }
}
