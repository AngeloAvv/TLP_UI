import 'package:flutter/material.dart';
import 'package:yaru_widgets/widgets.dart';

class FileCard extends StatelessWidget {
  final String path;
  final bool selected;
  final GestureTapCallback? onTap;

  const FileCard(
    this.path, {
    super.key,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => YaruSelectableContainer(
        selected: selected,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.folder,
              size: 128,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                text: path
                    .split('/')
                    .takeWhile((value) => value != _name)
                    .join('/'),
                children: [
                  const TextSpan(text: '/'),
                  TextSpan(
                    text: _name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  String get _name => path.split('/').last;
}
