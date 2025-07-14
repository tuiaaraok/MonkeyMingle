import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/widgets/form_widget.dart';
import 'package:monkeq/them/them.dart';

import '../../domain/entities/pet_entity.dart';
import '../manager/cubit/pets_cubit/pets_state.dart';
import '../widgets/btn_widget.dart';
import '../widgets/drop_menu_widget.dart';

class NewPetsPage extends StatefulWidget {
  const NewPetsPage({super.key});

  @override
  State<NewPetsPage> createState() => _NewPetsPageState();
}

class _NewPetsPageState extends State<NewPetsPage> {
  late FormFieldConfig animalNameConfig;
  late FormFieldConfig animalSpeciesConfig;
  late FormFieldConfig dateOfBirthConfig;
  late FormFieldConfig heightConfig;
  late FormFieldConfig weightConfig;
  MenuElem selectedGender = MenuElem(listElements: ["Boy", "Girl"]);

  @override
  void initState() {
    super.initState();

    animalNameConfig = FormFieldConfig(
      title: "Animal name",
      controller: TextEditingController(),
      hint: "",
      width: 338,
    );

    animalSpeciesConfig = FormFieldConfig(
      title: "Animal species",
      controller: TextEditingController(),
      hint: "",
      width: 338,
    );

    dateOfBirthConfig = FormFieldConfig(
      title: "Date of birth",
      controller: TextEditingController(),
      keyboardType: TextInputType.datetime,
      hint: "",
      width: 338,
      icon: Icon(Icons.calendar_month, color: iconColor),
      inputFormat: [MaskTextInputFormatter(mask: "##/##/####")],
    );

    heightConfig = FormFieldConfig(
      title: "Height",
      controller: TextEditingController(),
      keyboardType: TextInputType.number,
      focusNode: FocusNode(),
      hint: "",
      width: 338,
    );

    weightConfig = FormFieldConfig(
      title: "Weight",
      controller: TextEditingController(),
      keyboardType: TextInputType.number,
      focusNode: FocusNode(),
      width: 338,
    );
  }

  @override
  void dispose() {
    animalNameConfig.controller.dispose();
    animalSpeciesConfig.controller.dispose();
    dateOfBirthConfig.controller.dispose();
    heightConfig.controller.dispose();
    heightConfig.focusNode?.dispose();
    weightConfig.controller.dispose();
    weightConfig.focusNode?.dispose();
    super.dispose();
  }

  bool _validateForm(Uint8List? image) {
    return animalNameConfig.controller.text.isNotEmpty &&
        animalSpeciesConfig.controller.text.isNotEmpty &&
        selectedGender.selectedElem.isNotEmpty &&
        dateOfBirthConfig.controller.text.isNotEmpty &&
        weightConfig.controller.text.isNotEmpty &&
        heightConfig.controller.text.isNotEmpty &&
        image != null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetCubit, PetState>(
      builder: (context, state) {
        final image = state is PetImageUpdated ? state.image : null;

        return Scaffold(
          body: KeyboardActions(
            config: KeyboardActionsConfig(
              keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
              nextFocus: false,
              actions: [
                KeyboardActionsItem(focusNode: heightConfig.focusNode!),
                KeyboardActionsItem(focusNode: weightConfig.focusNode!),
              ],
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: containerMainColor,
                  title: Text(
                    "A new pets",
                    textAlign: TextAlign.center,
                    style: textStyleAppBar,
                  ),
                  leading: GestureDetector(
                    onTap: () {
                      context.read<PetCubit>().getPetsList();
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: iconColorApp,
                      size: 30.w,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(height: 16.h),
                      FormWidget.textFieldForm(animalNameConfig),
                      SizedBox(height: 15.h),
                      FormWidget.textFieldForm(animalSpeciesConfig),
                      SizedBox(height: 15.h),
                      Center(
                        child: DropMenuWidget(
                          title: "Gender",
                          menu: selectedGender,
                          hint: "",
                        ),
                      ),
                      SizedBox(height: 15.h),
                      FormWidget.textFieldIcon(dateOfBirthConfig),
                      SizedBox(height: 15.h),
                      TextButton(
                        onPressed: () => context.read<PetCubit>().getLostData(),
                        child: Text(
                          "+Add photo",
                          style: TextStyle(
                            color: const Color(0xFF834A4A),
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      if (image != null)
                        Container(
                          width: 338.w,
                          height: 120.h,
                          margin: EdgeInsets.symmetric(vertical: 15.h),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: MemoryImage(image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: containerBorderColor,
                              width: 2.w,
                            ),
                            color: containerTextField,
                          ),
                        ),
                      FormWidget.textFieldForm(weightConfig),
                      SizedBox(height: 15.h),
                      FormWidget.textFieldForm(heightConfig),
                      SizedBox(height: 32.h),
                    ]),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CreateBtnWidget(
                        isValid: _validateForm(image),
                        onTap: () => _trySavePet(context, image),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _trySavePet(BuildContext context, Uint8List? image) async {
    if (!_validateForm(image)) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    try {
      final date = DateFormat(
        'dd/MM/yyyy',
      ).parse(dateOfBirthConfig.controller.text);
      final pet = PetsEntity(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        animalName: animalNameConfig.controller.text,
        animalSpecies: animalSpeciesConfig.controller.text,
        gender: selectedGender.selectedElem,
        dateOfBirth: date,
        imageFriend: image!,
        weight: weightConfig.controller.text,
        height: heightConfig.controller.text,
      );

      context.read<PetCubit>().saveMyPet(pet);
      if (mounted) Navigator.pop(context);
    } on FormatException {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid date format (use DD/MM/YYYY)')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving pet: ${e.toString()}')),
      );
    }
  }
}
