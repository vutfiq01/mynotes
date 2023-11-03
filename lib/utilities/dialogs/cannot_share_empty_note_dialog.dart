import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: 'Share',
    content: 'Cannot share empty note!',
    optionsBuilder: () => {
      'OK': null,
    },
  );
}
