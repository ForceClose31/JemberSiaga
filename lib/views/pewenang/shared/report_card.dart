import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pewenang/report/update_cek_pelaporan.dart';

class ReportCard extends StatefulWidget {
  final String reportNumber;
  final String title;
  final String description;

  const ReportCard({
    Key? key,
    required this.reportNumber,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  String _acceptButtonText = 'Terima';
  String _rejectButtonText = 'Tolak';
  Color _acceptButtonColor = Colors.blue;
  Color _rejectButtonColor = Colors.red;
  bool _isAccepted = false;

  void _onAcceptPressed() {
    setState(() {
      _acceptButtonText = 'Diproses';
      _acceptButtonColor = Colors.purple;
      _rejectButtonText = 'Selesai';
      _rejectButtonColor = Colors.blue;
      _isAccepted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Text(
                widget.reportNumber,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                ElevatedButton(
                  onPressed: !_isAccepted ? _onAcceptPressed : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _acceptButtonColor,
                    minimumSize: const Size(80, 36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    _acceptButtonText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: _isAccepted
                      ? () {
                          Future.delayed(const Duration(seconds: 1), () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UpdateCekPelaporanView()),
                            );
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _rejectButtonColor,
                    minimumSize: const Size(80, 36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    _rejectButtonText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
