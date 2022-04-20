part of 'pages.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  late ShowBloc showBloc;

  @override
  Widget build(BuildContext context) {
    showBloc = BlocProvider.of<ShowBloc>(context)..add(FetchShow());
    
    return ListView(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: BlocBuilder<ShowBloc, ShowState>(
            builder: (context, state) {
              if (state is ShowInitial) {
                return Container(
                  child: const Center(
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              } else if (state is ShowFailLoaded) {
                return const Center(child: Text("Error"));
              } else {
                ShowLoaded showLoaded = state as ShowLoaded;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: (showLoaded.listShowModel!.isNotEmpty)
                      ? showLoaded.listShowModel!.length
                      : 0,
                  itemBuilder: (context, int index) {
                    return Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.02,
                            bottom:
                            MediaQuery.of(context).size.height * 0.02),
                        child: ShowCardWidget(
                            showModel: showLoaded.listShowModel![index]));
                  },
                );
              }
            },
          ),
        )
      ],
    );
  }
}
