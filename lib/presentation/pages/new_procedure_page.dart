import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/widgets/btn_widget.dart';
import 'package:monkeq/presentation/widgets/widget.dart';

class NewProcedurePage extends StatefulWidget {
  final String petId;
  const NewProcedurePage({super.key, required this.petId});

  @override
  State<NewProcedurePage> createState() => _NewProcedurePageState();
}

class _NewProcedurePageState extends State<NewProcedurePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _dateController;
  late TextEditingController _typeController;
  final List<String> _procedureTypes = [
    "Vaccination",
    "Deworming",
    "Grooming",
    "Check-up",
    "Surgery",
    "Other",
  ];
  String _selectedProcedure = '';

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
    _typeController = TextEditingController();
  }

  @override
  void dispose() {
    _dateController.dispose();
    _typeController.dispose();
    super.dispose();
  }

  bool get _isValid {
    return _dateController.text.isNotEmpty &&
        (_selectedProcedure.isNotEmpty || _typeController.text.isNotEmpty);
  }

  Future<void> _saveProcedure() async {
    if (!_isValid) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    try {
      final procedure = PetProcedureEntity(
        date: DateFormat('dd/MM/yyyy').parse(_dateController.text),
        type: _selectedProcedure,
      );

      context.read<PetCubit>().updateProcedurevent(widget.petId, procedure);
      if (mounted) Navigator.pop(context);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: containerMainColor,
            title: Text(
              "New procedure",
              textAlign: TextAlign.center,
              style: textStyleAppBar,
            ),
            pinned: true,
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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            sliver: SliverToBoxAdapter(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    FormWidget.textFieldIcon(
                      FormFieldConfig(
                        title: "Date",
                        controller: _dateController,
                        keyboardType: TextInputType.datetime,
                        hint: "",
                        width: 338,
                        icon: Icon(Icons.calendar_month, color: iconColor),
                        inputFormat: [
                          MaskTextInputFormatter(mask: "##/##/####"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    DropMenuWidget(
                      title: "Type",
                      menu: MenuElem(listElements: _procedureTypes),
                      hint: "",
                      controller: _typeController,
                      onChanged: (value) {
                        setState(() {
                          _selectedProcedure = value;
                          _typeController.text = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CreateBtnWidget(
                  onTap: _saveProcedure,
                  isValid: _isValid,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
