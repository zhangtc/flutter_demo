import 'package:flutter/material.dart';

//自定义缓存组件
class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper(
      {super.key, required this.child, this.keepAlive = true});

  final Widget? child;
  final bool keepAlive;

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {

    if (oldWidget.keepAlive != widget.keepAlive) {
      //keepAlive状态需要更新
      updateKeepAlive();
      
    }
    super.didUpdateWidget(oldWidget);
    
  }
}
