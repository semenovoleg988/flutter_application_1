import 'package:flutter_application_1/domain/topic.dart';

class Topics {
  List topics = [
    [
      Topic(title: 'ЦИФРИ ТА СИСТЕМИ ЧИСЛЕННЯ'),
      Topic(title: 'ПОДІЛЬНІСТЬ ЧИСЕЛ'),
      Topic(title: 'ЗАДАЧІ НА ПОДІЛИ, ЗВАЖУВАННЯ І ПЕРЕЛИВАННЯ'),
      Topic(title: 'МАТЕМАТИЧНІ ІГРИ'),
      Topic(title: 'МАТЕМАТИЧНІ КОНСТРУКЦІЇ'),
    ],
    [
      Topic(title: 'Непозиційні системи числення'),
      Topic(title: 'Позиційні системи числення'),
      Topic(title: 'Переведення чисел з однієї системи числення в іншу'),
      Topic(title: 'Двійкова система числення'),
      Topic(title: 'Задачі з натуральними числами в різних системах числення'),
    ],
    [
      Topic(title: 'Прості і складені числа'),
      Topic(title: 'Ознаки подільності'),
      Topic(title: 'НСД і НСК'),
      Topic(title: 'Властивості подільності'),
      Topic(title: 'Розкладання на прості множники'),
    ],
    [
      Topic(title: 'Частки і поділи'),
      Topic(title: 'Переливання рідини'),
      Topic(title: 'Зважування на терезах'),
    ],
    [
      Topic(title: 'Фокуси із числами та арифметичними діями '),
      Topic(title: 'Математичні фокуси з геометричними фігурами'),
      Topic(title: 'Математичні фокуси з предметами'),
    ],
    [
      Topic(title: 'Симетрія'),
      Topic(title: 'Розрізання фігур'),
      Topic(title: 'Задачі на розфарбування'),
    ],
  ];

  Topics();

  List<dynamic> getTopic(int topicNumber) {
    return topics[topicNumber];
  }
}
