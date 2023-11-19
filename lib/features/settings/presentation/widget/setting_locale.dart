import 'package:first_temp/features/settings/presentation/manger/locale/locale_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/app_color.dart';
import '../../../../generated/l10n.dart';

class CustomLocaleDropDown extends StatelessWidget {
  const CustomLocaleDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          S.of(context).select_Language,
          style: TextStyle(
            fontSize: 18,
            color: primaryColor(context),
          ),
        ),
        trailing: BlocBuilder<LocaleMangerCubit, LocaleMangerState>(
          builder: (context, state) {
            return DropdownButton(
                value: state.locale.languageCode,
                items: [
                  "ar",
                  "en",
                  "hi",
                  "ja",
                ].map<DropdownMenuItem<String>>((String value) {
                  String languageName = "";

                  switch (value) {
                    case "ar":
                      languageName = "اللغة العربية";
                      break;
                    case "en":
                      languageName = "English";
                      break;
                    case "hi":
                      languageName = "हिन्दी";
                      break;
                    case "ja":
                      languageName = "日本語";
                      break;
                  }

                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      languageName,
                      style: TextStyle(color: primaryColor(context)),
                    ),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) {
                    // context.read<LocaleMangerCubit>().setCachLocal(val);
                    BlocProvider.of<LocaleMangerCubit>(context)
                        .setCachLocal(val);
                  }
                });
          },
        ));
  }
}

// class CustomListTileSetting extends StatelessWidget {
//   const CustomListTileSetting({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         S.of(context).select_Language,
//         style: TextStyle(
//           fontSize: 18,
//           color: primaryColor(context),
//         ),
//       ),
//       trailing: BlocBuilder<LocaleMangerCubit, LocaleMangerState>(
//         builder: (context, state) {
//           return DropdownButton<String>(
//             value: state.locale.languageCode,
//             onChanged: (String? newValue) {
//               if (newValue != null) {
//                 context.read<LocaleMangerCubit>().setCachLocal(newValue);
//               }
//             },
//             items: [
//               DropdownMenuItem<String>(
//                 value: "en",
//                 child: Text(
//                   'en',
//                   style: TextStyle(
//                     color: primaryColor(context),
//                   ),
//                 ),
//               ),
//               DropdownMenuItem<String>(
//                 value: "ar",
//                 child: Text(
//                   'العربية',
//                   style: TextStyle(
//                     color: primaryColor(context),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
