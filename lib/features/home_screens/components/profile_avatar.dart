import 'package:flutter/material.dart';
import 'package:music/utils/constants.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key, this.onPress,
  }) : super(key: key);
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: height(size: 45),
        width: width(size: 48),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: NetworkImage('https://resize.prod.femina.ladmedia.fr/rblr/652,438/img/var/2015-09/comment-devenir-une-personne-solaire-0e95b16c5fefae293635ad5b6ce2b1198537e371.jpg'),
                fit: BoxFit.cover
            )
        ),
      ),
      onTap: onPress,
    );
  }
}
