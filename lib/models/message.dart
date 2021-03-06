class Message {
  int id;
  String quotes;
  int catId;

  Message({
    this.id,
    this.quotes,
    this.catId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quotes': quotes,
      'catId': catId,
    };
  }
  Map<String, dynamic> toMap1() {
    return {
      'id': id,
      'quotes': quotes,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'],
      quotes: map['quotes'],
      catId: map['catId'],
    );
  }

  factory Message.fromMap1(Map<String, dynamic> map) {
    return Message(
      id: map['id'],
      quotes: map['quotes'],
    );
}

}



List<Message> ListOfMessages = [
  Message(
    quotes:
        '''أسأل مالك المُلك . . الذي يهب مُلكه لمن يشاء أن يغمرك بنعيم الإيمان وعافية الأبدان ورضا الرحمن وبركات الإحسان وأن يسكنك أعلى الجنان.''',
    catId: 1,
  ),
  Message(
      quotes:
          '''أتى العيد يحمل في نسماته ذكرياتي الجميلة معكم، أغلى وأطيب الأصدقاء كل عام وأنتم بألف خير، أعاده الله علينا وعليكم باليمن والبركات والمسرات''',
      catId: 2),
  Message(
    quotes:
        '''مع اقتراب هذا الوقت من كل عام الذي نستعد فيه للتوبة من الآثام والذنوب التي نقترفها في هذا العام، نرجو من الله -عز وجل- أن نجد السلام الذي نريده في هذا العام.. كل عام وأنتم بخير، ورمضان كريم.''',
    catId: 3,
  ),
  Message(
    quotes:
        '''يا رب في يوم الجمعة وعدت عبادك بقبول دعواتهم فيه لذلك سأدعوا لقلب قريب لقلبي: اللهم ارزقه ما يريد، وارزق قلبه ما يريد، واجعله لك كما تريد، اللهم قدِّر له ذلك قبل أن تأذن لشمس الجمعة بالمغيب.''',
    catId: 4,
  ),
  Message(
    quotes:
        '''لا تجعلي قلبي وحيداً، فلو كنت بعيدة عن نظر العيون فطيفك لا يفارق القلب والعقل، وذكريات الحياة الجميلة نُحتت في القلب ولن تمحى.''',
    catId: 5,
  ),

  Message(
    quotes: '''ثمّ يرمي الله على جرحك وردة على هيئة صديق، يرسم لك في وسط الحزن ضحكة.''',
    catId: 6,
  ),

  Message(
    quotes: '''هي أمي و أمني وأماني وإيماني وأمتي واطمئنان اهدااء لأعظم وأجمل وأغلى امرأة في عيني بالوجود''',
    catId: 7,
  ),
  Message(
    quotes: '''في كل مرة اشتاق اليك فيها اتكلم نفس كلماتك واغني الاغاني التي اعتدت ان تغنيها واتصرف مثلك ، كل ذلك من اجل ان اشعر بانك معي.''',
    catId: 8,
  ),

  Message(
    quotes: '''لو كان للموت طفل، لأدرك ما هو موت البنين. - نزار قباني''',
    catId: 9
  ),
];
