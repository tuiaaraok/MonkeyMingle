import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/widgets/btn_widget.dart';
import 'package:monkeq/presentation/widgets/widget.dart';

class NewFeedingModePage extends StatefulWidget {
  final String petId;
  const NewFeedingModePage({super.key, required this.petId});

  @override
  State<NewFeedingModePage> createState() => _NewFeedingModePageState();
}

class _NewFeedingModePageState extends State<NewFeedingModePage> {
  final _formKey = GlobalKey<FormState>();
  final List<MealEntry> _meals = [
    MealEntry(
      timeController: TextEditingController(),
      foodController: TextEditingController(),
      type: "Breakfast",
    ),
    MealEntry(
      timeController: TextEditingController(),
      foodController: TextEditingController(),
      type: "Lunch",
    ),
    MealEntry(
      timeController: TextEditingController(),
      foodController: TextEditingController(),
      type: "Dinner",
    ),
  ];

  @override
  void dispose() {
    for (var meal in _meals) {
      meal.timeController.dispose();
      meal.foodController.dispose();
    }
    super.dispose();
  }

  bool get _isValid {
    return _meals.every(
      (meal) =>
          meal.timeController.text.isNotEmpty &&
          meal.foodController.text.isNotEmpty,
    );
  }

  void _addAdditionalMeal() {
    setState(() {
      _meals.add(
        MealEntry(
          timeController: TextEditingController(),
          foodController: TextEditingController(),
          type: "Meal ${_meals.length - 2}",
        ),
      );
    });
  }

  Future<void> _saveFeedingMode() async {
    if (!_formKey.currentState!.validate()) return;

    final feedingMode = PetNewFeedingModeEntity(
      meal: {
        for (var meal in _meals)
          meal.timeController.text: meal.foodController.text,
      },
    );

    try {
      context.read<PetCubit>().updateFeedingModeEvent(
        widget.petId,
        feedingMode,
      );
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Feeding mode saved successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save feeding mode: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: containerMainColor,
              title: Text(
                "New feeding mode",
                textAlign: TextAlign.center,
                style: textStyleAppBar,
              ),
              leading: GestureDetector(
                onTap: () {
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
                  SizedBox(height: 35.h),
                  ..._meals.map((meal) => _buildMealRow(meal)),
                  SizedBox(height: 20.h),
                  TextButton(
                    onPressed: _addAdditionalMeal,
                    child: Text(
                      "+Add meal",
                      style: TextStyle(
                        color: const Color(0xFF834A4A),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
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
                    isValid: _isValid,
                    onTap: () => _saveFeedingMode(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealRow(MealEntry meal) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: FormWidget.textFieldForm(
              FormFieldConfig(
                title: meal.type,
                controller: meal.timeController,
                keyboardType: TextInputType.datetime,
                hint: "Time",
                width: 165,

                inputFormat: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9:]')),
                  TimeTextInputFormatter(), // Custom formatter for time
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: FormWidget.textFieldForm(
              FormFieldConfig(
                title: "",
                controller: meal.foodController,
                hint: "Food",
                width: 165,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MealEntry {
  final TextEditingController timeController;
  final TextEditingController foodController;
  final String type;

  MealEntry({
    required this.timeController,
    required this.foodController,
    required this.type,
  });
}

class TimeTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    if (text.length > 2) {
      text = '${text.substring(0, 2)}:${text.substring(2)}';
    }
    if (text.length > 5) {
      text = text.substring(0, 5);
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
