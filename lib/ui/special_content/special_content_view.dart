import 'package:finance_app/ui/special_content/special_content_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SpecialContent extends StatelessWidget {
  const SpecialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SpecialContentViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF94B9FF), Color(0xFFF4F1F1)],
          ),
        ),
        child: viewModel.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            :SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.topics.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  viewModel.topics[index].image,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                viewModel.topics[index].title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Text(
                                viewModel.topics[index].content,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat-Regular',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
