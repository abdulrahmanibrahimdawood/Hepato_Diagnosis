import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liver_diagnosis/features/home/cubit/home_cubit/home_cubit.dart';
import 'package:liver_diagnosis/features/home/cubit/home_cubit/home_state.dart';
import 'package:liver_diagnosis/features/home/presentation/views/widgets/advice_card.dart';

class AdvicesListView extends StatelessWidget {
  const AdvicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeFailure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 50.sp,
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    state.errMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 14.h),
                  SizedBox(
                    height: 35.h,
                    width: 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<HomeCubit>().fetchAdvices();
                      },
                      child: Text(
                        'Try Again',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (state is HomeSuccess) {
            return ListView.builder(
              itemCount: state.advices.length,
              physics: const BouncingScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: AdviceCard(
                    advice: state.advices[index],
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text(
                "No advice available.",
                style: TextStyle(fontSize: 12.sp),
              ),
            );
          }
        },
      ),
    );
  }
}
