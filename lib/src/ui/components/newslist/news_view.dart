import 'package:checkin/src/blocs/news/news_bloc.dart';
import 'package:checkin/src/blocs/profile/bloc.dart';
import 'package:checkin/src/localization/localization.dart';
import 'package:checkin/src/models/author.dart';
import 'package:checkin/src/models/grade.dart';
import 'package:checkin/src/ui/components/empty_widget.dart';
import 'package:checkin/src/ui/components/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform/platform.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'action_modal/news_action_modal.dart';

class NewsView extends StatelessWidget {
  static const String beltColor = '%s Belt';

  final Author author;
  final String content;
  final int timestamp;
  final String newsId;

  const NewsView({
    Key key,
    @required this.author,
    @required this.content,
    @required this.timestamp,
    @required this.newsId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedImage(
          width: 50,
          height: 50,
          url: author.imageUrl,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 2.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      author.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .apply(fontWeightDelta: 2),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "• ${_timeAgo()}",
                      style: Theme.of(context).textTheme.bodyText1.apply(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .color
                              .withAlpha(90)),
                    ),
                    Expanded(
                        child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: NewsActionMenu(newsId: newsId),
                    )),
                  ],
                ),
                if (author.grade != null)
                  Column(
                    children: [
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(beltColor.i18n.fill([author.grade.name.i18n]),
                          key: Key("authorGrade"),
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                SizedBox(
                  height: 7.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    content,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _timeAgo() {
    var localeShort =
        LocalPlatform().localeName.replaceAll(RegExp(r'_.*'), "_short");
    return timeago.format(DateTime.fromMillisecondsSinceEpoch(timestamp),
        locale: localeShort);
  }
}

class NewsActionMenu extends StatelessWidget {
  final String newsId;

  const NewsActionMenu({
    Key key,
    @required this.newsId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.map(
          initialProfileState: (initialProfileState) => EmptyWidget(),
          profileLoaded: (state) => state.profileUser.isOwner ? Transform.scale(
              scale: 0.8,
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: Icon(
                  Icons.more_vert,
                  color:
                      Theme.of(context).textTheme.bodyText1.color.withAlpha(90),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => BlocProvider.value(
                          value:  context.read<NewsBloc>(),
                          child: NewsActionModal(newsId: newsId)));
                },
              )) : EmptyWidget(),
        );
      },
    );
  }
}