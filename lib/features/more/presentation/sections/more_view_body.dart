import 'package:chateo_app/features/more/data/model/more_items_model.dart';
import 'package:chateo_app/features/more/presentation/components/header_more_view.dart';
import 'package:chateo_app/features/more/presentation/components/more_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            const HeaderMoreView(),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return MoreListViewItem(model:moreData[index],);
                },
                itemCount: moreData.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}



