import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression = "";
  String result = "0";

  void onButtonPress(String value) {
    setState(() {
      if (value == "C") {
        expression = "";
        result = "0";
      } else if (value == "DEL") {
        expression = expression.isNotEmpty ? expression.substring(0, expression.length - 1) : "";
      } else if (value == "=") {
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression.replaceAll("×", "*").replaceAll("÷", "/"));
          ContextModel cm = ContextModel();
          result = exp.evaluate(EvaluationType.REAL, cm).toString();
        } catch (e) {
          result = "Error";
        }
      } else {
        expression += value;
      }
    });
  }

  Widget button(String text, {Color? bg, Color? textColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bg ?? Colors.grey[200],
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          onPressed: () => onButtonPress(text),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: textColor ?? Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator", style: GoogleFonts.poppins())),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              color: Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(expression,
                      style: GoogleFonts.robotoMono(fontSize: 28, color: Colors.white70)),
                  const SizedBox(height: 10),
                  Text(result,
                      style: GoogleFonts.robotoMono(
                          fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),

          // Buttons
          Row(children: [
            button("C", bg: Colors.redAccent, textColor: Colors.white),
            button("DEL", bg: Colors.orange, textColor: Colors.white),
            button("÷", bg: Colors.blue, textColor: Colors.white),
            button("×", bg: Colors.blue, textColor: Colors.white),
          ]),
          Row(children: [button("7"), button("8"), button("9"), button("-")]),
          Row(children: [button("4"), button("5"), button("6"), button("+")]),
          Row(children: [button("1"), button("2"), button("3"), button("=")]),
          Row(children: [button("0"), button("."), button("%"), button("")]),
        ],
      ),
    );
  }
}
