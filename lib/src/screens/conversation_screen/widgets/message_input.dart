import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/conversation_screen/widgets/gift_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart' as audio;
import 'dart:async';

class MessageInput extends StatefulWidget {
  final Function(String) onSendMessage;
  final Function(String) onSendVoice;

  const MessageInput({required this.onSendMessage, required this.onSendVoice});

  @override
  State<StatefulWidget> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput>
    with SingleTickerProviderStateMixin {
  bool _showGiftList = false;
  bool _isRecording = false;
  FlutterSoundRecorder? _recorder;
  String _recordingPath = '';
  final TextEditingController _controller = TextEditingController();
  Timer? _timer;
  int _recordDuration = 0;
  AnimationController? _animationController;
  Animation<double>? _animation;
  late AudioPlayer audioPlayer;
  late Duration maxDuration;
  late Duration elapsedDuration;
  late List<double> samples;
  bool _recordFinish = false;

  @override
  void initState() {
    super.initState();
    _recorder = FlutterSoundRecorder();
    requestPermissions();
    audioPlayer = AudioPlayer();
    maxDuration = const Duration(milliseconds: 1000);
    elapsedDuration = const Duration();
    loadSamples();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation =
        Tween<double>(begin: 0, end: 10).animate(_animationController!);
  }

  Future<void> loadSamples() async {
    try {
      List<double> jsonSamples = [
        0.7,
        0.9,
        0.4,
        0.6,
        0.4,
        0.9,
        0.4,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.4,
        0.4,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.6,
        0.8,
        0.3,
        0.5,
        0.7,
        0.9,
        0.4,
        0.6,
        0.8,
        0.9,
        0.4,
        0.6,
        0.8,
        0.5,
        0.7,
        0.9,
      ];
      samples = jsonSamples.map((sample) => sample.toDouble()).toList();
      setState(() {});
    } catch (e) {
      // print('Erreur lors du chargement de l\'audio: $e');
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  Future<void> requestPermissions() async {
    await Permission.microphone.request();
  }

  Future<void> startRecording() async {
    try {
      await _recorder!.openRecorder();
      if (await _recorder!.isEncoderSupported(Codec.aacMP4)) {
        _recordingPath = 'voice_${DateTime.now().millisecondsSinceEpoch}';

        await _recorder!.startRecorder(toFile: _recordingPath);
      }
      setState(() {
        _isRecording = true;
        _recordDuration = 0;
      });
      _startTimer();
    } catch (e) {
      //  print('Erreur lors du démarrage de l\'enregistrement: $e');
    }
  }

  Future<void> stopRecording() async {
    await _recorder!.stopRecorder();
    await _recorder!.closeRecorder();
    setState(() {
      _isRecording = false;
      _recordFinish = true;
    });
    _stopTimer();
    widget.onSendVoice(_recordingPath);
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _recordDuration++;
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  String _formatDuration(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }

  @override
  Widget build(BuildContext context) {
    final minHeight = MediaQuery.of(context).size.height * 0.070;
    final maxHeight = 4 * minHeight;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_recordFinish)
          Container(
            color: AppColors.myWhite,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Logique pour supprimer l'enregistrement
                    setState(() {
                      _recordFinish = false;
                      _recordingPath = '';
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (audioPlayer.state == audio.PlayerState.playing) {
                      audioPlayer.pause();
                    } else {
                      audioPlayer.resume();
                    }
                    setState(() {});
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.myGray600,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Icon(
                        audioPlayer.state == audio.PlayerState.playing
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: 15,
                        color: AppColors.myWhite,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: RectangleWaveform(
                    maxDuration: maxDuration,
                    elapsedDuration: elapsedDuration,
                    samples: samples,
                    borderWidth: 0,
                    height: 30,
                    isRoundedRectangle: true,
                    inactiveColor: AppColors.myGray600,
                    isCentered: true,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.onSendVoice(_recordingPath);
                    setState(() {
                      _recordFinish = false;
                      _recordingPath = '';
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Icon(
                      Icons.send,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.add_circle, color: AppColors.myDark),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  minHeight: minHeight,
                  maxHeight: maxHeight,
                ),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: AppColors.myGray),
                ),
                child: TextFormField(
                  controller: _controller,
                  minLines: 1,
                  maxLines: 6,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: LocaleKeys.conversation_your_message.tr(),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 20.0,
                    ),
                    suffixIcon: const IconButton(
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: AppColors.myDark,
                      ),
                      onPressed: null,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                MaterialCommunityIcons.gift,
                color: Color(0xFF35332C),
              ),
              onPressed: () {
                setState(() {
                  _showGiftList = !_showGiftList;
                });
              },
            ),
            GestureDetector(
              onLongPress: () {
                startRecording();
              },
              onTap: () {
                widget.onSendMessage(_controller.text);
                _controller.clear();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(_isRecording ? Icons.mic : Icons.send, color: AppColors.primary),
              ),
            ),
          ],
        ),
        if (_isRecording)
          Container(
            color: AppColors.myWhite,
            padding: const EdgeInsets.all(0.8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: stopRecording,
                    icon: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade200,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _formatDuration(_recordDuration),
                        style: const TextStyle(color: Colors.red, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_isRecording) {
                            stopRecording();
                          } else {
                            startRecording();
                          }
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AnimatedBuilder(
                              animation: _animationController!,
                              builder: (context, child) {
                                return Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red.withOpacity(0.3),
                                      width: _animation!.value,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.5),
                                    spreadRadius: 10,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.mic,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        if (_showGiftList)
          GiftPicker(
            onGiftPicked: (_) => setState(() => _showGiftList = false),
          ),
      ],
    );
  }
}