part of 'widgets.dart';

class RatingStarsWidget extends StatelessWidget {
  final double voteAverage;
  final double starSize;
  final double fontSize;
  final Color? color;
  final MainAxisAlignment alignment;

  const RatingStarsWidget(
      {Key? key,
      this.voteAverage = 0,
      this.starSize = 22,
      this.fontSize = 15,
      this.color,
      this.alignment = MainAxisAlignment.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int n = voteAverage ~/ 2.round();

    List<Widget> widgets = List.generate(
        5,
        (index) => Icon(
              index < n ? MdiIcons.star : MdiIcons.starOutline,
              color: const Color(0xfffbd460),
              size: starSize,
            ));

    widgets.add(const SizedBox(
      width: 10,
    ));
    widgets.add(AutoSizeText(
      "$voteAverage/10",
      style: GoogleFonts.openSans().copyWith(
          fontWeight: FontWeight.w300,
          color: color ?? Colors.black,
          fontSize: fontSize),
    ));
    return Row(mainAxisAlignment: alignment, children: widgets);
  }
}
