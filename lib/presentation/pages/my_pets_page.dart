import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_state.dart';
import 'package:monkeq/presentation/pages/detail_page.dart';
import 'package:monkeq/presentation/pages/menu_page.dart';
import 'package:monkeq/presentation/widgets/pet_card.dart';
import 'package:monkeq/presentation/widgets/widget.dart';

class MyPetsPage extends StatelessWidget {
  const MyPetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PetCubit, PetState>(
        listener: (context, state) {
          if (state is PetGet) {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => DetailPage(),
              ),
            );
          }
        },
        builder: (context, state) {
          return BacgroundWidget(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      AddMainAppBar(
                        title: "My pets",
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(height: 42.h),
                      if (state is PetsListState) ...[
                        ...state.petList.map((e) {
                          return GestureDetector(
                            onTap: () {
                              context.read<PetCubit>().getMyPet(e.id);
                            },
                            child: PetCard(pet: e),
                          );
                        }),
                      ],

                      // Consider adding more pets or action buttons here
                      // SizedBox(height: 16.h),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
