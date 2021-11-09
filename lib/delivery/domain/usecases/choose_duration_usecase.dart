import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/theme.dart';

@Injectable()
class ChooseDurationUseCase {
  Future<void> call({
    required TextEditingController controller,
    required BuildContext context,
  }) async {
    final pickedTime = await getTime(context);
    if (pickedTime != null) {
      final date = DateTime.now();
      final time = DateTime(
        date.year,
        date.month,
        date.day,
        pickedTime.hour,
        pickedTime.minute,
      );
      final duration = time.difference(date).inMinutes;
      controller.text = (duration / 60).ceil().toString() + " hours";
    }
  }

  Future<TimeOfDay?> getTime(BuildContext context) async {
    return (await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: GlobalTheme.primaryColor,
              background: Colors.white,
              onSurface: GlobalTheme.primaryColor,
            ),
          ),
          child: child!,
        );
      },
    ));
  }
}
