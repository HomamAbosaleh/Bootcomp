import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import 'package:finance_app/ui/pilotgpt/message_widget.dart';

class PilotGPT extends StatefulWidget {
  final String? initialMessage;
  const PilotGPT({super.key, this.initialMessage});

  final String apiKey = 'AIzaSyB9a2hhoxmPkSDR6_n1i8ZGpMb8-zF4BPo';

  @override
  State<PilotGPT> createState() => _PilotGPTState();
}

class _PilotGPTState extends State<PilotGPT> {
  late final GenerativeModel _model;
  late final ChatSession _chat;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode(debugLabel: 'TextField');
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: widget.apiKey,
    );
    _chat = _model.startChat();
    if (widget.initialMessage != null) {
      _sendChatMessage(widget.initialMessage!);
    }
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final history = _chat.history.toList();
    return Container(
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.initialMessage != null ? Row(
                  children: [
                    IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back_sharp),
                          ),
                    const SizedBox(width: 50),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Para',
                            style: TextStyle(
                              color: Color.fromRGBO(43, 71, 252, 1),
                              fontSize: 30,
                              fontFamily: "Righteous",
                            ),
                          ),
                          TextSpan(
                            text: "Pilot'a Sor",
                            style: TextStyle(
                              color: Color.fromRGBO(3, 0, 166, 1),
                              fontSize: 30,
                              fontFamily: "Righteous",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ) : RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Para',
                            style: TextStyle(
                              color: Color.fromRGBO(43, 71, 252, 1),
                              fontSize: 30,
                              fontFamily: "Righteous",
                            ),
                          ),
                          TextSpan(
                            text: "Pilot'a Sor",
                            style: TextStyle(
                              color: Color.fromRGBO(3, 0, 166, 1),
                              fontSize: 30,
                              fontFamily: "Righteous",
                            ),
                          ),
                        ],
                      ),
                    ),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemBuilder: (context, idx) {
                      final content = history[idx];
                      final text = content.parts
                          .whereType<TextPart>()
                          .map<String>((e) => e.text)
                          .join('');
                      return MessageWidget(
                        text: text,
                        isFromUser: content.role == 'user',
                      );
                    },
                    itemCount: history.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          focusNode: _textFieldFocus,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            hintText: 'Enter a prompt...',
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14),
                              ),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14),
                              ),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                          controller: _textController,
                          onSubmitted: (String value) {
                            _sendChatMessage(value);
                          },
                        ),
                      ),
                      const SizedBox.square(dimension: 15),
                      if (!_loading)
                        IconButton(
                          onPressed: () async {
                            _sendChatMessage(_textController.text);
                          },
                          icon: const Icon(
                            Icons.send,
                            color: Color.fromRGBO(3, 0, 166, 1),
                          ),
                        )
                      else
                        const CircularProgressIndicator(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    setState(() {
      _loading = true;
    });

    try {
      final response = await _chat.sendMessage(
        Content.text(message),
      );
      final text = response.text;

      if (text == null) {
        _showError('Empty response.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState() {
        _loading = false;
      }

      ;
      _textFieldFocus.requestFocus();
    }
  }

  void _showError(String message) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}
