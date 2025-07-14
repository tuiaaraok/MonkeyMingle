import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_state.dart';
import 'package:monkeq/presentation/pages/menu_page.dart';
import 'package:monkeq/presentation/pages/new_feeding_mode_page.dart';
import 'package:monkeq/presentation/pages/new_procedure_page.dart';
import 'package:monkeq/presentation/widgets/widget.dart';
import 'package:monkeq/presentation/widgets/pet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_state.dart';
import 'package:monkeq/presentation/pages/new_feeding_mode_page.dart';
import 'package:monkeq/presentation/pages/new_procedure_page.dart';
import 'package:monkeq/presentation/widgets/widget.dart';
import 'package:monkeq/presentation/widgets/pet_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PetCubit, PetState>(
        builder: (context, state) {
          if (state is PetGet && state.myPet != null) {
            return _buildPetDetailContent(context, state.myPet!);
          }

          return const Center(child: Text('No pet data available'));
        },
      ),
    );
  }

  Widget _buildPetDetailContent(BuildContext context, PetsEntity pet) {
    return BacgroundWidget(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: containerMainColor,
            title: Text(
              pet.animalName,
              textAlign: TextAlign.center,
              style: textStyleAppBar,
            ),
            pinned: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: iconColorApp, size: 30.w),
              onPressed: () {
                context.read<PetCubit>().getPetsList();
                Navigator.pop(context);
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 16.h),
                PetCard(pet: pet),
                SizedBox(height: 24.h),
                _buildProceduresSection(context, pet),
                SizedBox(height: 16.h),
                _buildFeedingRoutineSection(context, pet),
                SizedBox(height: 32.h),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProceduresSection(BuildContext context, PetsEntity pet) {
    return _buildCardContainer(
      title: "Procedures",
      onAddPressed: () => _navigateToNewProcedurePage(context, pet),
      content:
          pet.petProcedureEntity?.isNotEmpty ?? false
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    pet.petProcedureEntity!
                        .map((procedure) => _buildProcedureItem(procedure))
                        .toList(),
              )
              : Text(
                "No procedures added yet",
                style: textStyleInformationSubTitle,
              ),
    );
  }

  Widget _buildProcedureItem(PetProcedureEntity procedure) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: DateFormat("dd/MM/yy").format(procedure.date),
          style: textStyleInformationSubTitle,
          children: [
            TextSpan(
              text: " ${procedure.type}",
              style: textStyleInformationSubTitle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeedingRoutineSection(BuildContext context, PetsEntity pet) {
    return _buildCardContainer(
      title: "FEEDING ROUTINE",
      onAddPressed: () => _navigateToNewFeedingPage(context, pet),
      content:
          pet.petNewFeedingModeEntity != null
              ? _buildFeedingRoutineItems(pet.petNewFeedingModeEntity!)
              : Text(
                "No feeding routine set",
                style: textStyleInformationSubTitle,
              ),
    );
  }

  Widget _buildFeedingRoutineItems(PetNewFeedingModeEntity feedingMode) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          feedingMode.meal.entries.map((entry) {
            return _buildFeedingItem(entry.key, entry.value);
          }).toList(),
    );
  }

  Widget _buildFeedingItem(String time, String description) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: "$time - ",
          style: textStyleInformationSubTitle,
          children: [
            TextSpan(text: description, style: textStyleInformationSubTitle),
          ],
        ),
      ),
    );
  }

  Widget _buildCardContainer({
    required String title,
    required VoidCallback onAddPressed,
    required Widget content,
  }) {
    return Container(
      width: 338.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 21.h),
      margin: EdgeInsets.only(top: 18.h),
      decoration: cardConainerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: textStyleInformationTitle),
              GestureDetector(
                onTap: onAddPressed,
                child: Text("+Add", style: textStyleInformationTitle),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          content,
        ],
      ),
    );
  }

  void _navigateToNewProcedurePage(BuildContext context, PetsEntity pet) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewProcedurePage(petId: pet.id)),
    );
  }

  void _navigateToNewFeedingPage(BuildContext context, PetsEntity pet) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewFeedingModePage(petId: pet.id),
      ),
    );
  }
}
