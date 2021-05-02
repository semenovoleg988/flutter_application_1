import 'package:flutter_application_1/domain/unit.dart';

class Units {
  final units = [
    {
      'Непозиційні системи числення': [],
      'Позиційні системи числення': [
        Unit(
          name: '/1/Позиційні системи числення/0',
          type: "TypeTask",
        ),
        Unit(
          name: '/1/Позиційні системи числення/1',
          type: "TypeTask",
        ),
        Unit(name: '/1/Позиційні системи числення/2', type: "TypeTask"),
      ],
      'Переведення чисел з однієї системи числення в іншу': [],
      'Двійкова система числення': [],
      'Задачі з натуральними числами в різних системах числення': [],
    },
    {
      'Прості і складені числа': [
        Unit(name: '/2/Прості і складені числа/0', type: "TypeTask"),
        Unit(name: '/2/Прості і складені числа/1', type: "TypeTask"),
      ],
      'Ознаки подільності': [],
      'НСД і НСК': [],
      'Властивості подільності': [],
      'Розкладання на прості множники': [],
    },
    {
      'Частки і поділи': [],
      'Переливання рідини': [],
      'Зважування на терезах': [],
    },
    {
      'Фокуси із числами та арифметичними діями ': [],
      'Математичні фокуси з геометричними фігурами': [],
      'Математичні фокуси з предметами': [],
    },
    {
      'Симетрія': [],
      'Розрізання фігур': [],
      'Задачі на розфарбування': [],
    }
  ];

  Units();

  List<dynamic> getUnits(int topicNumber, String subtopicName) {
    return units[topicNumber][subtopicName];
  }

  getUnit(int topicNumber, String subtopicName, int unitNumber) {
    return units[topicNumber][subtopicName][unitNumber];
  }
}
