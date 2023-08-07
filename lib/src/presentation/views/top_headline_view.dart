import 'package:auto_route/annotations.dart';
import 'package:clean_arch/src/presentation/cubits/remote_articles_cubit.dart';
import 'package:clean_arch/src/util/extensions/scroll_controller_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';
import '../../util/constants/strings.dart';

@RoutePage(name: "breakingNews")
class BreakingNewsView extends HookWidget {
  const BreakingNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final remoteArticlesCubit = BlocProvider.of<RemoteArticlesCubit>(context);
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.onScrollEndsListener(() {
        remoteArticlesCubit.getHeadlineNewsArticles();
      });
      return scrollController.dispose;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: BlocBuilder<RemoteArticlesCubit,RemoteArticlesState>(builder: (context, state) {
        switch(state.runtimeType){
          case RemoteArticlesLoading:
            return const Center(child: CupertinoActivityIndicator(),);
          case RemoteArticlesFailed:
            return const Center(child: Icon(Ionicons.refresh),);
          case RemoteArticlesSuccess:
            return  Center(child: Text("Articles Length::${state.articles.length}"),);
          default:
            return const SizedBox();
        }
      },)
    );
  }
}
