import 'package:flutter/material.dart';

import '../firebase/auth_firebase.dart';
import '../theme/colors.dart';
import '../theme/get_drawer_heade_style.dart';



final AuthFirebase _authFirebase = AuthFirebase();

Widget getDrawer(BuildContext context) {
  return Drawer(
      width: 270,
      backgroundColor: kColorTextPrimary,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        )),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: getStyleDrawer,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ScreenPerfil');
                },
                child: const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/200'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mateus Augsuto',
                          style: TextStyle(
                              color: kColorTextTertiary,
                              fontSize: 15,
                              fontFamily: 'Kadwa'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              'Configura perfil',
                              style: TextStyle(
                                  color: kColorTextTertiary,
                                  fontFamily: 'Kadwa',
                                  fontSize: 11),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.edit_note_rounded,
                              color: kColorTextTertiary,
                              size: 24,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ScreenHome');
              },
              title: const Text(
                'Inicio',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    color: kColorTextTertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              leading: const Icon(
                Icons.home_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            const ListTile(
              onTap: null,
              title: Row(
                children: [
                  Text(
                    'Categorias',
                    style: TextStyle(
                        fontFamily: 'Kadwa',
                        color: kColorTextTertiary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 44,
                  ),
                  Icon(
                    Icons.arrow_right_rounded,
                    color: kColorTextTertiary,
                    size: 35,
                  )
                ],
              ),
              leading: Icon(
                Icons.category_outlined,
                color: kColorTextTertiary,
                size: 30,
              ),
            ),
             ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ScreenFavoritos');
              },
              title: const Text(
                'Favoritos',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    color: kColorTextTertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              leading: const Icon(
                Icons.favorite_outline_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ScreenCarrinho');
              },
              title: const Text(
                'Carrinho',
                style: TextStyle(
                    color: kColorTextTertiary,
                    fontFamily: 'Kadwa',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              leading: const Icon(Icons.shopping_cart_outlined,
                  color: Colors.white, size: 30),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/ScreenCompras');
              },
              title: const Text(
                'Compras',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    color: kColorTextTertiary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ScreenAnuncio');
              },
              title: const Text(
                'Aúncios',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    color: kColorTextTertiary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.sell_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            const ListTile(
              onTap: null,
              title: Text(
                'Rastrear Pedido',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    color: kColorTextTertiary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.local_shipping_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
             ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/ScreenEntrada');
              },
              title: const Text(
                'Sair',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kColorTextTertiary),
              ),
              leading: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ));
}

logout(){
  _authFirebase.logout();
}
