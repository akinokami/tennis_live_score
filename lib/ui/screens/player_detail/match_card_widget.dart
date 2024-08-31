import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

import '../../../models/player_match.dart';
import '../../../utils/function.dart';
import '../../custom_widgets/custom_card.dart';

class MatchCardWidget extends StatelessWidget {
  final Sections? sections;

  const MatchCardWidget({
    super.key,
    this.sections,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: sections?.data?.games?.length,
        itemBuilder: (context, index) {
          Competitions? competition;
          Seasons? season;
          Stages? stage;
          if ((sections?.data?.competitions ?? [])
              .where(
                  (element) => element.iD == sections?.data?.games?[index].comp)
              .toList()
              .isNotEmpty) {
            competition = (sections?.data?.competitions ?? [])
                .where((element) =>
                    element.iD == sections?.data?.games?[index].comp)
                .toList()
                .first;
            if ((competition.seasons ?? [])
                .where((element) =>
                    element.num == sections?.data?.games?[index].season)
                .toList()
                .isNotEmpty) {
              season = (competition.seasons ?? [])
                  .where((element) =>
                      element.num == sections?.data?.games?[index].season)
                  .toList()
                  .first;
              if ((season.stages ?? [])
                  .where((element) =>
                      element.num == sections?.data?.games?[index].stage)
                  .toList()
                  .isNotEmpty) {
                stage = (season.stages ?? [])
                    .where((element) =>
                        element.num == sections?.data?.games?[index].stage)
                    .toList()
                    .first;
              }
            }
          }

          return Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: CustomCard(
                widget: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: competition?.name ?? '',
                        ),
                        kSizedBoxW5,
                        CustomText(
                          text: "(${stage?.name ?? ''})",
                        ),
                      ],
                    ),
                    CustomText(
                        text: subStringBeforeSpace(
                            sections?.data?.games?[index].sTime ?? ''))
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: Colors.grey,
                ),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1.sw * 0.30,
                      child: CustomText(
                        text: ((sections?.data?.games?[index].comps ?? [])
                                .isNotEmpty)
                            ? (sections?.data?.games?[index].comps?[0].name ??
                                '')
                            : '',
                        maxLines: 2,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    sections?.data?.games?[index].winner == -1
                        ? CustomText(
                            text: subStringAfterSpace(
                                sections?.data?.games?[index].sTime ?? ''))
                        : Row(
                            children: [
                              CustomText(
                                text: ((sections?.data?.games?[index].scrs ??
                                            [])
                                        .isNotEmpty)
                                    ? "${sections?.data?.games?[index].scrs?[0].toStringAsFixed(0) ?? 0}"
                                    : '',
                              ),
                              const CustomText(text: ' - '),
                              CustomText(
                                text: ((sections?.data?.games?[index].scrs ??
                                                [])
                                            .length >
                                        1)
                                    ? "${sections?.data?.games?[index].scrs?[1].toStringAsFixed(0) ?? 0}"
                                    : '',
                              )
                            ],
                          ),
                    SizedBox(
                      width: 1.sw * 0.30,
                      child: CustomText(
                        text: ((sections?.data?.games?[index].comps ?? [])
                                    .length >
                                1)
                            ? (sections?.data?.games?[index].comps?[1].name ??
                                '')
                            : '',
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
                kSizedBoxH10,
              ],
            )),
          );
        });
  }
}
