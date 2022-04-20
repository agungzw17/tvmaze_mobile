part of 'widgets.dart';

class ShowCardWidget extends StatefulWidget {
  final ShowModel? showModel;
  final Function? onTap;

  const ShowCardWidget({Key? key, this.showModel, this.onTap}) : super(key: key);

  @override
  _ShowCardWidgetState createState() => _ShowCardWidgetState();
}

class _ShowCardWidgetState extends State<ShowCardWidget> {
  late DateTime yearReleased;
  final translator = GoogleTranslator();
  String language = "";

  Future<void> setVariablesOnAsync() async {
    yearReleased =
        DateTime.parse('${widget.showModel?.premiered} 00:00:00.000');
    Translation translationLanguage =
        await translator.translate(widget.showModel!.language!, to: 'id');

    language = translationLanguage.text;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    setVariablesOnAsync();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          widget.showModel!.imageModel!.original!.toString()),
                      fit: BoxFit.cover)),
              child: Container(
                height: 140,
                width: 210,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.61),
                          Colors.black.withOpacity(0)
                        ])),
              )),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      child: AutoSizeText(
                        widget.showModel!.name!,
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )),
                  (widget.showModel!.ratingModel!.average != "null")
                      ? Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.015),
                        child: RatingStarsWidget(
                        voteAverage: double.tryParse(
                            widget.showModel!.ratingModel!.average!) ?? 0.0),
                      )
                      : Container(),
                  (language != "")
                      ? Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.009),
                          child: AutoSizeText(language))
                      : Container(),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.009),
                      child: AutoSizeText(
                          "Tahun " + yearReleased.year.toString())),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.009),
                    child: AutoSizeText(widget.showModel!.genres!.join(", ")),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
