import 'package:finance_app/app/app.router.dart';
import 'package:finance_app/core/models/topic.dart';
import 'package:finance_app/ui/financial_dictionary/financial_dictionary_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FinancialDictionary extends StatefulWidget {
  final String courseTitle;
  final List<Topic> topics;

  const FinancialDictionary(
      {super.key, required this.courseTitle, required this.topics});

  @override
  State<FinancialDictionary> createState() => _FinancialDictionaryState();
}

class _FinancialDictionaryState extends State<FinancialDictionary> {
  late List<bool> _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = List<bool>.filled(widget.topics.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => FinancialDictionaryViewModel(),
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
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(widget.courseTitle),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.topics.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () =>
                          setState(() => _expanded[index] = !_expanded[index]),
                      child: AnimatedContainer(
                        height: _expanded[index]
                            ? MediaQuery.of(context).size.height / 1.7
                            : null,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: Card(
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
                                        widget.topics[index].image,
                                        height: 150,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.thumb_up),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.thumb_down),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.bookmark),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Text(
                                      widget.topics[index].title,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Montserrat',
                                          ),
                                    ),
                                    _expanded[index]
                                        ? Text(widget.topics[index].content, style: const TextStyle(fontFamily: 'Montserrat-Regular'))
                                        : Text(
                                            "${widget.topics[index].content.substring(0, 75)}...", style: const TextStyle(fontFamily: 'Montserrat-Regular')),
                                  ],
                                ),
                                _expanded[index]
                                    ? SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ElevatedButton(
                                          onPressed: () => viewModel
                                              .navigationService
                                              .navigateToPilotGPT(
                                                  initialMessage:
                                                      "${widget.topics[index].content} daha basit bir şekilde bir örnek ile açıklar mısın?"),
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color.fromRGBO(33, 33, 33, 1),
                                            ),
                                          ),
                                          child: const Text(
                                            "Anlamadın mı? Yapay Zeka Sor",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  245, 245, 245, 1),
                                              fontFamily: 'Montserrat-Regular',
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
