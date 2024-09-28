import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:audioplayers/audioplayers.dart';

class MessageBubble extends StatefulWidget {
  final String message;
  final bool isSentByMe;
  final String time;
  final bool? file;
  final bool? isVideo;
  final Image? gift;
  final String? voice;

  const MessageBubble({
    required this.message,
    required this.isSentByMe,
    required this.time,
    this.file,
    this.isVideo,
    this.gift,
    this.voice,
    super.key,
  });

  @override
  MessageBubbleState createState() => MessageBubbleState();
}

class MessageBubbleState extends State<MessageBubble> {
  late AudioPlayer audioPlayer;
  late Duration maxDuration;
  late Duration elapsedDuration;
  late List<double> samples;

  Future<void> loadSamples() async {
    if (widget.voice != null) {
      try {
        List<double> jsonSamples = [
          0.7,
          0.9,
          0.4,
          0.6,
          0.4,
          0.3,
          0.2,
          0.7,
          0.9,
          0.4,
          0.6,
          0.8,
          0.3,
          0.5,
          0.7,
          0.9,
          0.4,
          0.6,
          0.8,
          0.3,
          0.5,
          0.7,
          0.9,
          0.4,
          0.6,
          0.8,
          0.3,
          0.5,
          0.7,
          0.9,
          0.4,
          0.6,
          0.8,
          0.3,
          0.5,
          0.7,
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
  }

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    maxDuration = const Duration(milliseconds: 1000);
    elapsedDuration = const Duration();
    samples = [];
    loadSamples();

    if (widget.voice != null) {
      try {
        audioPlayer
            .setSource(AssetSource(widget.voice!, mimeType: 'audio/mp3'))
            .then((_) {
          audioPlayer.onDurationChanged.listen((duration) {
            setState(() {
              maxDuration = duration;
            });
          });

          audioPlayer.onPositionChanged.listen((duration) {
            setState(() {
              elapsedDuration = duration;
            });
          });
        }).catchError((error) {
          //  print('Erreur lors du chargement de l\'audio: $error');
        });
      } catch (e) {
        // print('Erreur lors du chargement de l\'audio: $e');
      }
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onLongPress: () {
          final RenderBox overlay =
              Overlay.of(context).context.findRenderObject() as RenderBox;
          final RenderBox renderBox = context.findRenderObject() as RenderBox;
          final position =
              renderBox.localToGlobal(Offset.zero, ancestor: overlay);

          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
              position.dx,
              position.dy - renderBox.size.height,
              position.dx + renderBox.size.width,
              position.dy,
            ),
            items: [
              PopupMenuItem(
                value: 'copy',
                child: Text(LocaleKeys.conversation_copy_message.tr()),
              ),
              PopupMenuItem(
                value: 'reply',
                child: Text(LocaleKeys.conversation_reply_message.tr()),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Text(LocaleKeys.conversation_delete_message.tr()),
              ),
            ],
          ).then((value) {
            if (value == 'copy') {
              // Copier le message
            } else if (value == 'reply') {
              // Répondre au message
            } else if (value == 'delete') {
              // Supprimer le message
            }
          });
        },
        child: Row(
          crossAxisAlignment: widget.isSentByMe
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          mainAxisAlignment: widget.isSentByMe
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (!widget.isSentByMe)
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CircleAvatar(
                  backgroundImage: const NetworkImage(
                    '',
                  ),
                  onBackgroundImageError: (exception, stackTrace) {},
                  radius: 20.0,
                ),
              ),
            const SizedBox(width: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: widget.isSentByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  ChatBubble(
                    clipper: widget.isSentByMe
                        ? ChatBubbleClipper5(type: BubbleType.sendBubble)
                        : ChatBubbleClipper2(type: BubbleType.receiverBubble),
                    alignment: widget.isSentByMe
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    backGroundColor: widget.isSentByMe
                        ? AppColors.primary
                        : Colors.blue.shade100,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: widget.voice != null
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (audioPlayer.state ==
                                        PlayerState.playing) {
                                      audioPlayer.pause();
                                    } else {
                                      audioPlayer.resume();
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: widget.isSentByMe
                                          ? AppColors.myWhite
                                          : AppColors.myGray600,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        audioPlayer.state == PlayerState.playing
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: widget.isSentByMe
                                            ? AppColors.primary
                                            : AppColors.myWhite,
                                      ),
                                    ),
                                  ),
                                ),
                                RectangleWaveform(
                                  maxDuration: maxDuration,
                                  elapsedDuration: elapsedDuration,
                                  samples: samples,
                                  borderWidth: 0,
                                  height: 30,
                                  isRoundedRectangle: true,
                                  inactiveColor: AppColors.myGray600,
                                  isCentered: true,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                ),
                              ],
                            )
                          : widget.isSentByMe
                              ? Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        widget.message,
                                        style: TextStyle(
                                          color: widget.isSentByMe
                                              ? AppColors.myWhite
                                              : AppColors.myDark,
                                        ),
                                      ),
                                    ),
                                    if (widget.gift != null)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: widget.gift!,
                                      ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    if (widget.gift != null)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(),
                                        child: widget.gift!,
                                      ),
                                    Flexible(
                                      child: Text(
                                        widget.message,
                                        style: TextStyle(
                                          color: widget.isSentByMe
                                              ? AppColors.myWhite
                                              : AppColors.myDark,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 2),
                    child: Row(
                      mainAxisAlignment: widget.isSentByMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        widget.isSentByMe
                            ? const Icon(
                                Icons.check,
                                color: AppColors.primary,
                                size: 15,
                              )
                            : const SizedBox(),
                        const SizedBox(width: 6),
                        Text(
                          widget.time,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 185, 185, 185),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            if (widget.isSentByMe)
              CircleAvatar(
                backgroundImage: const NetworkImage(
                  '',
                ),
                onBackgroundImageError: (exception, stackTrace) {},
                radius: 20.0,
              ),
          ],
        ),
      ),
    );
  }
}