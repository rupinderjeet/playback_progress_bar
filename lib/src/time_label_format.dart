import 'package:playback_progress_bar/playback_progress_bar.dart';

/// Defines how to show time label on left and right hand side
/// of the progress bar.
///
/// For location of time label, see [TimeLabelLocation].
///
class TimeLabelFormat {
  TimeLabelFormat({
    this.leftTimeLabelType = LeftTimeLabelType.elapsedTime,
    this.rightTimeLabelType = RightTimeLabelType.totalTime,
    this.leftTimeLabelText,
    this.rightTimeLabelText,
  });

  /// How do we display left hand side of time label?
  /// Default value is [LeftTimeLabelType.elapsedTime]
  /// which shows elapsed / progress time.
  final LeftTimeLabelType leftTimeLabelType;

  /// How do we display right hand side of time label?
  /// Default value is [RightTimeLabelType.totalTime]
  /// which shows total time.
  final RightTimeLabelType rightTimeLabelType;

  /// Custom text to be shown on left hand side of time label
  /// when [leftTimeLabelType] is [LeftTimeLabelType.custom].
  final String? leftTimeLabelText;

  /// Custom text to be shown on right hand side of time label
  /// when [rightTimeLabelType] is [RightTimeLabelType.custom].
  final String? rightTimeLabelText;
}

/// The time label on the left hand side can be shown as the
/// [elapsedTime] or [custom] with text. It can be hidden
/// using [custom] value with empty text.
///
///
enum LeftTimeLabelType {
  /// The time label on the left shows the elapsed time.
  ///
  /// | -------O---------------- |
  /// | 05:00                    |
  elapsedTime,

  /// The time label on the left shows custom text.
  ///
  /// | -------O---------------- |
  /// | custom                   |
  custom,
}

/// The time label on the right hand side can be shown as the
/// [totalTime], [remainingTime], or a custom text. It can be hidden
/// using [custom] value with empty text.
///
/// If the choice is [remainingTime] then this will be
/// shown as a negative number.
///
///
enum RightTimeLabelType {
  /// The time label on the right shows the total time.
  ///
  /// | -------O---------------- |
  /// |                    05:00 |
  totalTime,

  /// The time label on the right shows the remaining time as a
  /// negative number.
  ///
  /// | -------O---------------- |
  /// |                   -03:37 |
  remainingTime,

  /// The time label on the right shows custom text.
  ///
  /// | -------O---------------- |
  /// |                   custom |
  custom,
}
