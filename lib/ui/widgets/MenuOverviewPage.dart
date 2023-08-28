part of 'widgets.dart';

class MenuOverview extends StatelessWidget {
  const MenuOverview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gambar = [
      'assets/topup.png',
      'assets/send.png',
      'assets/wd.png',
      'assets/more.png'
    ];
    List<String> namamenu = ['Top Up', 'Send', 'Withdraw', 'More'];
    return LayoutBuilder(
      builder: (context, p1) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: textpoppins.copyWith(
                fontWeight: FontWeight.bold, fontSize: p1.maxHeight * 0.1),
          ),
          SizedBox(
            height: p1.maxHeight * 0.05,
          ),
          SizedBox(
            width: p1.maxWidth,
            height: p1.maxHeight * 0.6,
            child: GridView.builder(
              itemCount: namamenu.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 7.0,
                  crossAxisSpacing: 1.0,
                  crossAxisCount: 1,
                  childAspectRatio: (9 / 6)),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (index == 3) {
                    Navigator.of(context).push(HeroDialogRoute(
                      builder: (context) {
                        return _AddTodoPopupCard();
                      },
                    ));
                  }
                },
                child: ContainerMenuOverview(
                    gambar: gambar[index], text: namamenu[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

const String _heroAddTodo = 'add-todo-hero';

class _AddTodoPopupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> gambar = [
      'assets/Data.png',
      'assets/Water.png',
      'assets/twitch.png',
      'assets/tv.png',
      'assets/food.png',
      'assets/globe.png'
    ];
    List<String> namamenu = [
      'Data',
      'Water',
      'Stream',
      'Movie',
      'Food',
      'Travel'
    ];
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 20),
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Material(
            color: backgroudcolor,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Do More With Us",
                          style:
                              textpoppins.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.32,
                          child: GridView.builder(
                            itemCount: namamenu.length,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 7.0,
                                    crossAxisCount: 2,
                                    childAspectRatio: (8 / 6)),
                            itemBuilder: (context, index) =>
                                ContainerMenuOverview(
                                    gambar: gambar[index],
                                    text: namamenu[index]),
                          ),
                        ),
                      ])),
            ),
          ),
        ),
      ),
    );
  }
}
