import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class CategoryWidget extends StatelessWidget {
  final String cate;
  final Function function;
  const CategoryWidget({
    Key key,
    this.cate,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color(0xffa3ffe7),
      onTap: function,
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffa3ffe7),
            borderRadius: BorderRadius.circular(5),
          ),
          
          child: Center(
            child: Text(
              cate,
              style: TextStyle(color: Components.componenet),
            ),
          ),
        ),
      ),
    );
  }
}
