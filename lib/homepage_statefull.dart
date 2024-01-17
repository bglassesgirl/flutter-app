import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/homepage.dart';

// tentar stf ou stl que ja cria as duas classes automaticamente

// classe principal que CHAMA os componentes
class HomePageStatefull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _HomePageStateFullState();
  }
}


class _HomePageStateFullState  extends State<HomePageStatefull>{
  String texto = 'Estou no StateLessWidgtFull';

  @override
  void initState() {
    super.initState();
    texto = 'texto alterado pelo initState';

    // permite chamarapenas quando a pagina estiver construida
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallBack');
       Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomePageStateless(), ));
    });
  }


  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(texto),
              TextButton(
                onPressed: (){
                setState(() {
                   texto = 'alterei o meu texto ;)';
                });
              }, child: Text('alterar texto'),
              ),
            ],
          ),
        ),

     );
  }
}