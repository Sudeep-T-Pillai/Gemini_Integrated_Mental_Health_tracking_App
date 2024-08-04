import 'package:flutter/material.dart';

class ChatMessage {
  final String message;
  final bool isUserMessage;

  ChatMessage({required this.message, required this.isUserMessage});
}


class Chatui extends StatefulWidget {
  const Chatui({super.key});

  @override
  State<Chatui> createState() => _ChatuiState();
}

class _ChatuiState extends State<Chatui> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isEmpty) return;
    setState(() {
      _messages.add(ChatMessage(message: _controller.text, isUserMessage: true));
      // Here you would send the message to your backend and get the response
      _messages.add(ChatMessage(message: "This is a response from AI", isUserMessage: false));
    });
    _controller.clear();
  }

  Widget _buildMessage(ChatMessage message) {
    return Align(
      alignment: message.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: message.isUserMessage ? Color.fromRGBO(253, 232, 211, 1) : Color.fromRGBO(243, 195, 178, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message.message,
          style: TextStyle(color: message.isUserMessage ? Colors.black : Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mendy :)"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    minLines: 1,
                    maxLines: 7,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(153, 205, 216, 1),
                  onPressed: _sendMessage,
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
