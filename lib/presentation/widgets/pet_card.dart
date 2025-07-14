import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';

import '../../them/them.dart';

class PetCard extends StatelessWidget {
  final PetsEntity pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.h),
      width: 338.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 21.h),
      decoration: cardConainerDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildPetImage(), SizedBox(width: 13.w), _buildPetInfo()],
      ),
    );
  }

  Widget _buildPetImage() {
    return Container(
      width: 78.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: MemoryImage(pet.imageFriend),
        ),
        border: Border.all(color: containerBorderColor, width: 2.w),
        color: backgroundColor,
      ),
    );
  }

  Widget _buildPetInfo() {
    return SizedBox(
      width: 220.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${pet.animalSpecies} ${pet.animalName}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: textStyleInformationTitle,
                ),
              ),
              SvgPicture.asset("assets/icons/${pet.gender.toLowerCase()}.svg"),
            ],
          ),
          _buildInfoRow(
            "Date of birth:",
            "${DateTime.now().year - pet.dateOfBirth.year} years old",
          ),
          _buildInfoRow("Weight:", "${pet.weight} kg"),
          _buildInfoRow("Height:", "${pet.height} cm"),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return RichText(
      text: TextSpan(
        text: label,
        style: textStyleInformationSubTitle,
        children: [
          TextSpan(text: " $value", style: textStyleInformationSubTitle),
        ],
      ),
    );
  }
}
