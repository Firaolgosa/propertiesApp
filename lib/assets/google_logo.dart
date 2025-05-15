import 'package:flutter/material.dart';

class GoogleLogo extends StatelessWidget {
  final double size;

  const GoogleLogo({Key? key, this.size = 24.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _GoogleLogoPainter(),
      ),
    );
  }
}

class _GoogleLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;
    
    // Colors
    final Paint redPaint = Paint()..color = const Color(0xFFEA4335);
    final Paint bluePaint = Paint()..color = const Color(0xFF4285F4);
    final Paint greenPaint = Paint()..color = const Color(0xFF34A853);
    final Paint yellowPaint = Paint()..color = const Color(0xFFFBBC05);
    
    // Draw the Google 'G'
    final Path path = Path();
    
    // Blue arc
    path.moveTo(width * 0.75, height * 0.5);
    path.arcToPoint(
      Offset(width * 0.5, height * 0.75),
      radius: Radius.circular(width * 0.5),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(width * 0.25, height * 0.5),
      radius: Radius.circular(width * 0.25),
      clockwise: false,
    );
    canvas.drawPath(path, bluePaint);
    
    // Red arc
    path.reset();
    path.moveTo(width * 0.75, height * 0.5);
    path.arcToPoint(
      Offset(width * 0.5, height * 0.25),
      radius: Radius.circular(width * 0.5),
      clockwise: true,
    );
    path.arcToPoint(
      Offset(width * 0.25, height * 0.5),
      radius: Radius.circular(width * 0.25),
      clockwise: true,
    );
    canvas.drawPath(path, redPaint);
    
    // Yellow arc
    path.reset();
    path.moveTo(width * 0.25, height * 0.5);
    path.lineTo(width * 0.5, height * 0.5);
    path.lineTo(width * 0.5, height * 0.75);
    path.arcToPoint(
      Offset(width * 0.25, height * 0.5),
      radius: Radius.circular(width * 0.25),
      clockwise: true,
    );
    canvas.drawPath(path, yellowPaint);
    
    // Green arc
    path.reset();
    path.moveTo(width * 0.5, height * 0.5);
    path.lineTo(width * 0.75, height * 0.5);
    path.arcToPoint(
      Offset(width * 0.5, height * 0.75),
      radius: Radius.circular(width * 0.25),
      clockwise: false,
    );
    canvas.drawPath(path, greenPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
