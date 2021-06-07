import 'package:flutter/material.dart';
import 'package:medihere_patient/src/widgets/custom_base_view.dart';
import 'package:medihere_ui/components/common/common.dart';
import 'package:medihere_ui/constants/constants.dart';

class PasswordRegisterScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBaseView(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios_outlined, color: MTextColors.primary,),
            title: Text('회원가입', style: MTextStyles.bold[16]!.copyWith(color: MTextColors.primary),
            )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16,24,16,16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('비밀번호를 입력해 주세요.', style: MTextStyles.bold[24],),
              Text('로그인에 필요합니다.', style: MTextStyles.medium[14]!.copyWith(color: MTextColors.teriary,)),
              SizedBox(
                height: 16,
              ),
              MTextFieldBorder.vertical(
                focusNode: FocusNode(),
                controller: TextEditingController(),
                label: '비밀번호',
                placeholder: 'email@address.com',
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: MSolidButton.blue(size: ButtonSize.xl, child: Text('다음', style: MTextStyles.bold[21],)),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
