import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MasterCook"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 196, 22, 22),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            margin: const EdgeInsets.fromLTRB(10, 60, 10, 20),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/coxinha.jpg'),
                fit: BoxFit.cover, // Ajusta a imagem ao container
              ),
              borderRadius: BorderRadius.circular(10), // Arredonda bordas
            ),
          ),
          Container(
            height: 250,
            margin: const EdgeInsets.fromLTRB(10, 60, 10, 20),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/receita1.jpg'),
                fit: BoxFit.cover, // Ajusta a imagem ao container
              ),
              borderRadius: BorderRadius.circular(10), // Arredonda bordas
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 196, 22, 22),
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Define o item selecionado (Início)
        onTap: (index) {
          // Adicione navegação ou lógica aqui
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            label: "Receitas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
