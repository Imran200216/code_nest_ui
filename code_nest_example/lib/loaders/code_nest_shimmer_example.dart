import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestShimmerExample extends StatelessWidget {
  const CodeNestShimmerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeNestContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const CodeNestVerticalSpacer(10),
          itemCount: 10,
          itemBuilder: (context, index) {
            return CodeNestShimmerLoader(
              key: ValueKey("shimmer_item_$index"),
              width: double.infinity,
              height: 80,
              isCircle: false,
              borderRadius: BorderRadius.circular(12),
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Row(
                children: [
                  // Shimmer Circle Avatar
                  CodeNestShimmerLoader(
                    width: 50,
                    height: 50,
                    isCircle: true,
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                  ),
                  const SizedBox(width: 12),
                  // Shimmer Text Block
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CodeNestShimmerLoader(
                          width: double.infinity,
                          height: 14,
                          borderRadius: BorderRadius.circular(6),
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                        ),
                        const SizedBox(height: 8),
                        CodeNestShimmerLoader(
                          width: 200,
                          height: 12,
                          borderRadius: BorderRadius.circular(6),
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
