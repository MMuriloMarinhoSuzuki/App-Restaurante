import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Restaurant()));
}

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _Restaurant();
}

class _Restaurant extends State<Restaurant> {
    int cont = 0;
    String msg = "Pode entrar";
  void increment(){
      if(cont < 10){
        setState(() {
          cont++;
        });
      }else {
        msg = "lotado!";
      } 
    }
  }

  void decrement(){
      setState() {
        if(cont > 0){
              cont--;
        }  
    };
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("imagem/restaurant.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cont == 10 ? "Lotado": "pode entrar",
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 101, 101, 101),
                ),
              ),
              Text(
                cont.toString() ,
                style: TextStyle(
                  fontSize: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: increment,
                    child: Text("Entrou"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: decrement,
                    child: Text("Saiu"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }

}

 



