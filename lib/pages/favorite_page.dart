import 'package:flutter/material.dart';
import 'package:my_awesome_namer_app/state/my_app_state.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No Favorites yet.'),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text('You have "${appState.favorites.length} favorites:"'),
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400, childAspectRatio: 400 / 80),
            children: [
              for (var pair in appState.favorites)
                ListTile(
                  leading: IconButton(
                    onPressed: () {
                      appState.removeFavorite(pair);
                    },
                    icon: const Icon(
                      Icons.delete_outline,
                      semanticLabel: 'Delete',
                    ),
                    color: theme.colorScheme.primary,
                  ),
                  title: Text(
                    pair.asLowerCase,
                    semanticsLabel: pair.asPascalCase,
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
