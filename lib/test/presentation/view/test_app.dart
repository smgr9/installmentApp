import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:first_temp/test/presentation/widget/add_word_dialog.dart';
import 'package:first_temp/test/presentation/widget/hive_test_body.dart';
import 'package:flutter/gestures.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/rendering/viewport_offset.dart';

class TestApp extends StatelessWidget {
  static String id = "/test_app";
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _getFloatingActionButton(context),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const HiveTestBody(),
    );
  }

  FloatingActionButton _getFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorManger.white,
      onPressed: () => showDialog(
        context: context,
        builder: (context) {
          return const AddWordDialog();
        },
      ),
      child: const Icon(
        Icons.add,
        color: ColorManger.black,
      ),
    );
  }
}

// class TwoDimensionalGridView extends TwoDimensionalScrollView {
//   const TwoDimensionalGridView({
//     super.key,
//     // required super.delegate,
//     super.verticalDetails = const ScrollableDetails.vertical(),
//     super.horizontalDetails = const ScrollableDetails.horizontal(),
//     super.primary,
//     super.mainAxis = Axis.vertical,
//     super.cacheExtent,
//     super.dragStartBehavior = DragStartBehavior.start,
//     super.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
//     super.clipBehavior = Clip.hardEdge,
//     super.diagonalDragBehavior = DiagonalDragBehavior.none,
//     required TwoDimensionalChildBuilderDelegate delegate,
//   }) : super(delegate: delegate);

//   // Widget buildViewPort(
//   //   BuildContext context,
//   //   ViewportOffset verticalOffset,
//   //   ViewportOffset horizontalOffset,
//   // ) {
//   //   return Container();
//   // }

//   @override
//   Widget buildViewport(BuildContext context, ViewportOffset verticalOffset,
//       ViewportOffset horizontalOffset) {
//     return Container();
//   }
// }

// class TwoDimensionalGridViewViewPoint extends TwoDimensionalViewport {
//   const TwoDimensionalGridViewViewPoint({
//     super.key,
//     required super.verticalOffset,
//     required super.verticalAxisDirection,
//     required super.horizontalOffset,
//     required super.horizontalAxisDirection,
//     required super.mainAxis,

//     // required super.delegate,
//     required TwoDimensionalChildBuilderDelegate super.delegate,
//     super.cacheExtent,
//     super.clipBehavior = Clip.hardEdge,
//   });

//   @override
//   RenderTwoDimensionalGridViewport createRenderObject(BuildContext context) {
//     return RenderTwoDimensionalGridViewPort();
//   }
// }

class TestApp2 extends StatelessWidget {
  static String id = "/test_app2";
  const TestApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: TwoDimensionalGridView(
        diagonalDragBehavior: DiagonalDragBehavior.free,
        delegate: TwoDimensionalChildBuilderDelegate(
            maxXIndex: 9,
            maxYIndex: 9,
            builder: (BuildContext context, ChildVicinity vicinity) {
              return Container(
                color: vicinity.xIndex.isEven && vicinity.yIndex.isEven
                    ? Colors.amber[50]
                    : (vicinity.xIndex.isOdd && vicinity.yIndex.isOdd
                        ? Colors.purple[50]
                        : null),
                height: 200,
                width: 200,
                child: Center(
                    child: Text(
                        'Row ${vicinity.yIndex}: Column ${vicinity.xIndex}')),
              );
            }),
      ),
    );
  }
}

class TwoDimensionalGridView extends TwoDimensionalScrollView {
  const TwoDimensionalGridView({
    super.key,
    super.primary,
    super.mainAxis = Axis.vertical,
    super.verticalDetails = const ScrollableDetails.vertical(),
    super.horizontalDetails = const ScrollableDetails.horizontal(),
    required TwoDimensionalChildBuilderDelegate delegate,
    super.cacheExtent,
    super.diagonalDragBehavior = DiagonalDragBehavior.none,
    super.dragStartBehavior = DragStartBehavior.start,
    super.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    super.clipBehavior = Clip.hardEdge,
  }) : super(delegate: delegate);

  @override
  Widget buildViewport(
    BuildContext context,
    ViewportOffset verticalOffset,
    ViewportOffset horizontalOffset,
  ) {
    return TwoDimensionalGridViewport(
      horizontalOffset: horizontalOffset,
      horizontalAxisDirection: horizontalDetails.direction,
      verticalOffset: verticalOffset,
      verticalAxisDirection: verticalDetails.direction,
      mainAxis: mainAxis,
      delegate: delegate as TwoDimensionalChildBuilderDelegate,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
    );
  }
}

class TwoDimensionalGridViewport extends TwoDimensionalViewport {
  const TwoDimensionalGridViewport({
    super.key,
    required super.verticalOffset,
    required super.verticalAxisDirection,
    required super.horizontalOffset,
    required super.horizontalAxisDirection,
    required TwoDimensionalChildBuilderDelegate super.delegate,
    required super.mainAxis,
    super.cacheExtent,
    super.clipBehavior = Clip.hardEdge,
  });

  @override
  RenderTwoDimensionalViewport createRenderObject(BuildContext context) {
    return RenderTwoDimensionalGridViewport(
      horizontalOffset: horizontalOffset,
      horizontalAxisDirection: horizontalAxisDirection,
      verticalOffset: verticalOffset,
      verticalAxisDirection: verticalAxisDirection,
      mainAxis: mainAxis,
      delegate: delegate as TwoDimensionalChildBuilderDelegate,
      childManager: context as TwoDimensionalChildManager,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    RenderTwoDimensionalGridViewport renderObject,
  ) {
    renderObject
      ..horizontalOffset = horizontalOffset
      ..horizontalAxisDirection = horizontalAxisDirection
      ..verticalOffset = verticalOffset
      ..verticalAxisDirection = verticalAxisDirection
      ..mainAxis = mainAxis
      ..delegate = delegate
      ..cacheExtent = cacheExtent
      ..clipBehavior = clipBehavior;
  }
}

class RenderTwoDimensionalGridViewport extends RenderTwoDimensionalViewport {
  RenderTwoDimensionalGridViewport({
    required super.horizontalOffset,
    required super.horizontalAxisDirection,
    required super.verticalOffset,
    required super.verticalAxisDirection,
    required TwoDimensionalChildBuilderDelegate delegate,
    required super.mainAxis,
    required super.childManager,
    super.cacheExtent,
    super.clipBehavior = Clip.hardEdge,
  }) : super(delegate: delegate);

  @override
  void layoutChildSequence() {
    final double horizontalPixels = horizontalOffset.pixels;
    final double verticalPixels = verticalOffset.pixels;
    final double viewportWidth = viewportDimension.width + cacheExtent;
    final double viewportHeight = viewportDimension.height + cacheExtent;
    final TwoDimensionalChildBuilderDelegate builderDelegate =
        delegate as TwoDimensionalChildBuilderDelegate;

    final int maxRowIndex = builderDelegate.maxYIndex!;
    final int maxColumnIndex = builderDelegate.maxXIndex!;

    final int leadingColumn = math.max((horizontalPixels / 200).floor(), 0);
    final int leadingRow = math.max((verticalPixels / 200).floor(), 0);
    final int trailingColumn = math.min(
      ((horizontalPixels + viewportWidth) / 200).ceil(),
      maxColumnIndex,
    );
    final int trailingRow = math.min(
      ((verticalPixels + viewportHeight) / 200).ceil(),
      maxRowIndex,
    );

    double xLayoutOffset = (leadingColumn * 200) - horizontalOffset.pixels;
    for (int column = leadingColumn; column <= trailingColumn; column++) {
      double yLayoutOffset = (leadingRow * 200) - verticalOffset.pixels;
      for (int row = leadingRow; row <= trailingRow; row++) {
        final ChildVicinity vicinity =
            ChildVicinity(xIndex: column, yIndex: row);
        final RenderBox child = buildOrObtainChildFor(vicinity)!;
        child.layout(constraints.loosen());

        // Subclasses only need to set the normalized layout offset. The super
        // class adjusts for reversed axes.
        parentDataOf(child).layoutOffset = Offset(xLayoutOffset, yLayoutOffset);
        yLayoutOffset += 200;
      }
      xLayoutOffset += 200;
    }

    // Set the min and max scroll extents for each axis.
    final double verticalExtent = 200 * (maxRowIndex + 1);
    verticalOffset.applyContentDimensions(
      0.0,
      clampDouble(
          verticalExtent - viewportDimension.height, 0.0, double.infinity),
    );
    final double horizontalExtent = 200 * (maxColumnIndex + 1);
    horizontalOffset.applyContentDimensions(
      0.0,
      clampDouble(
          horizontalExtent - viewportDimension.width, 0.0, double.infinity),
    );
    // Super class handles garbage collection too!
  }
}
