import 'dart:math';
class CalculatorBrain {
 final int height;
 final int weight;

 CalculatorBrain({required this.height, required this.weight});

 //bmi = mass/height^2 (height in meter)
  double _bmi=0;
  String CalculateBMI(){
    double height_m = height/100;
    _bmi = weight/pow(height_m, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi>=25) {
      return 'Overweight';
    } else if(_bmi >18.5) {
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi>=25){
      return "You are in overweight. Consider lifestyle changes and consult a healthcare provider for support.";
    } else if(_bmi>18.5) {
      return "Your BMI is normal. Maintain your healthy lifestyle!";
    } else {
      return 'You are underweight. Consider a balanced diet and consult with a healthcare provider for advice.';
    }
  }

}