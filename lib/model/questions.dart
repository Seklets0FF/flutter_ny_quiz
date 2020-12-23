class Questions {
  final String imgUrl;
  final String txt;
  final Map<String, bool> answers;

  Questions({this.imgUrl, this.txt, this.answers});
}

final questions = [
  Questions(
    imgUrl: 'assets/img/1.jpg',
    txt: 'В какой стране 1 января делают заплыв в море, чтобы смыть все грехи?',
    answers: {
      'В Швейцарии': false,
      'В Нидерландах': true,
      'В Италии': false
    }
  ),
  Questions(
    imgUrl: 'assets/img/2.jpg',
    txt: 'В каком костюме Дед Мороз приходит в канун нового года в Монголии?',
    answers: {
      'Скотовода': true,
      'Охотника': false,
      'Оленя': false
    }
  ),
  Questions(
    imgUrl: 'assets/img/3.jpeg',
    txt: 'Какой из народов встречает новый год в темноте?',
    answers: {
      'Индийцы': false,
      'Вьетнамцы': true,
      'Китайцы': false
    }
  ),
  Questions(
      imgUrl: 'assets/img/4.jpg',
      txt: 'Какое блюдо обязательно должно быть на праздничном новогоднем столе в Израиле?',
      answers: {
        'Яблоко в меду': true,
        'Селёдка под шубой': false,
        'Индейка': false
      }
  ),
  Questions(
      imgUrl: 'assets/img/5.jpg',
      txt: 'В какой стране в праздничный новогодний пирог кладут различные сюрпризы?',
      answers: {
        'В Румынии': true,
        'В Турции': false,
        'В Белоруссии': false
      }
  ),
  Questions(
      imgUrl: 'assets/img/6.jpeg',
      txt: 'В какой стране в канун нового года обливают друг друга водой с пожеланиями счастья?',
      answers: {
        'В Новой Зеландии': false,
        'В Тайланде': true,
        'В Китае': false
      }
  ),
  Questions(
      imgUrl: 'assets/img/7.jpg',
      txt: 'Какое дерево обычно наряжают на новый год в Африке?',
      answers: {
        'Пальму': false,
        'Баобаб': true,
        'Эвкалипт': false
      }
  ),
  Questions(
      imgUrl: 'assets/img/8.jpg',
      txt: 'В новый год сколько раз пробивают часы на Кубе?',
      answers: {
        '13 раз': false,
        '12 раз': false,
        '11 раз': true
      }
  ),
  Questions(
      imgUrl: 'assets/img/9.jpg',
      txt: 'Какой основной символ польского нового года?',
      answers: {
        'Звезда': true,
        'Будильник': false,
        'Яблоко': true
      }
  ),
  Questions(
      imgUrl: 'assets/img/10.jpg',
      txt: 'В какой стране в канун нового года выбрасывают старую мебель?',
      answers: {
        'В Италии': true,
        'В Германии': false,
        'Во Франции': false
      }
  ),
];