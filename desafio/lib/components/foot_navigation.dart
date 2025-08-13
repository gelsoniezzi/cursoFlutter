import 'package:flutter/material.dart';

class FootNavigation extends StatelessWidget {
  const FootNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    Widget gerarFootNavegation(int pages, int atual) {
      if (atual < pages) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.close),
                    Text('Cancelar'),
                  ],
                )),
            FilledButton.icon(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              icon: Icon(Icons.chevron_right),
              label: Text('Próximo'),
              )
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.close),
                    Text('Cancelar'),
                  ],
                )),
            FilledButton.icon(
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.check),
              onPressed: () {},
              label: Text('Concluir'),
            )
          ],
        );
      }
    }

    return gerarFootNavegation(6, 1);
  }
}
