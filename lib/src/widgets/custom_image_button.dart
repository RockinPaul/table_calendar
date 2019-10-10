//  Copyright (c) 2019 Aleksander Woźniak
//  Licensed under Apache License v2.0

part of table_calendar;

class _CustomImageButton extends StatelessWidget {
  final Image image;
  final VoidCallback onTap;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const _CustomImageButton({
    Key key,
    @required this.image,
    @required this.onTap,
    this.margin,
    this.padding,
  })  : assert(image != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100.0),
        child: Padding(
          padding: padding,
          child: image,
        ),
      ),
    );
  }
}
