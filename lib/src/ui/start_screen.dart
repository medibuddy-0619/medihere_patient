import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medihere_ui/medihere_ui.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 107),
              child: Text('반갑습니다\n건강을 스타일링하는\n메디버디입니다 :)',
              style: MTextStyles.bold[24],),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 8),
              child: MSolidButton.blue(
                size: ButtonSize.xl,
                child: Text(
                  '로그인',
                  style: MTextStyles.bold[21],
                ),
                onPressed: () {
                  print('aaa');
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 8),
              child: MSolidButton.yellow(
                size: ButtonSize.xl,
                child: Text(
                  '카카오로 가입하기',
                  style: MTextStyles.bold[21]!
                      .copyWith(color: MTextColors.primary),
                ),
                onPressed: () {
                  print('aaa');
                },
              ),
            ),
            InkWell(
              onTap: (){
                print('aaaaa');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text('다른 방법으로 가입하기',style: MTextStyles.bold[14],)
              ),
            ),
            Divider(),
            RichText(
                textAlign: TextAlign.center,
              text: TextSpan(
                style: MTextStyles.regular[12]!
                    .copyWith(color: MTextColors.secondary),
                children: [
                  TextSpan(text: '매디코디를 가입하게 되면 '),
                  TextSpan(
                      text: '이용약관',
                      style: MTextStyles.bold[12]!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('aaa');
                        }),
                  TextSpan(text: '과 \n'),
                  TextSpan(
                      text: '개인정보처리방침 ',
                      style: MTextStyles.bold[12]!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('aaa');
                        }),
                  TextSpan(text: '및 '),
                  TextSpan(
                      text: '마케팅 수신',
                      style: MTextStyles.bold[12]!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('aaa');
                        }),
                  TextSpan(text: '에 동의하게 됩니다.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
