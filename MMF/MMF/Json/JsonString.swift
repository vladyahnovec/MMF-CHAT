//
//  JsonString.swift
//  MMF
//
//  Created by Круглич Влад on 31.03.24.
//

import Foundation
let jsonString = """
[
      {
        "name": "Ботогова Марина Георгиевна",
        "email": "Batahova1@bsu.by",
        "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/botogova.jpg"
      },
      {
        "name": "Чигарев Анатолий Власович",
        "email": "chigarev@bsu.by, chigarev@rambler.ru",
        "img": "https://mmf.bsu.by/wp-content/uploads/2021/09/CHigarev_2.jpg"
      },
      {
        "name": "Босяков Сергей Михайлович",
        "email": "Bosiakov1@bsu.by",
        "img": "https://mmf.bsu.by/wp-content/uploads/2020/02/ULM7XWxDuHI1-e1581153702500.jpg"
      },
      {
        "name": "Чигарев Виталий Анатольевич",
        "email": "chigarevva@bsu.by",
        "img": "https://mmf.bsu.by/wp-content/uploads/2024/01/chigarev.jpg"
      }
]

"""


//{
//  "name": "Никитин Андрей Викторович",
//  "email": "Nikitsin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/05/Andy-e1652889597296.jpg"
//},
//{
//  "name": "Нагорный Юрий Евгеньевич",
//  "email": "nagorny@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/nagorny-yuri-evgenievich.jpg"
//},
//{
//  "name": "Гранковская Юлия Леоновна",
//  "email": "hrankovskaya@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/IMG_6572.jpg"
//},
//{
//  "name": "Игнатенко Марина Викторовна",
//  "email": "ignatenkomv@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Ignatenko-MV.jpg"
//},
//{
//  "name": "Абламейко Сергей Владимирович",
//  "email": "ablameyko@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/10/Ablameyko-e1507061910297.jpg"
//},
//{
//  "name": "Волков Василий Михайлович",
//  "email": "volkovvm@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/volkov.jpg"
//},
//{
//  "name": "Романчик Валерий Станиславович",
//  "email": "romanchik@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/romanchik-1.jpg"
//},
//{
//  "name": "Азаров Алексей Иванович",
//  "email": "azarov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/azarov.jpg"
//},
//{
//  "name": "Барвенов Сергей Александрович",
//  "email": "bars@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/barvenov.jpg"
//},
//{
//  "name": "Блинов Игорь Николаевич",
//  "email": "blinov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/blinov.jpg"
//},
//{
//  "name": "Галкин Игорь Михайлович",
//  "email": "galkin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Galkin-Igor-Mihajlovich.jpg"
//},
//{
//  "name": "Дерюшев Андрей Анатольевич",
//  "email": "deryushev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/Deryushev.jpg"
//},
//{
//  "name": "Дубров Борис Михайлович",
//  "email": "doubrov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/dubrov.jpg"
//},
//{
//  "name": "Кравчук Анжелика Ивановна",
//  "email": "anzhelika.kravchuk@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/kravchuk-ai.jpg"
//},
//{
//  "name": "Кремень Елена Васильевна",
//  "email": "kremenev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/kremen-ev.jpg"
//},
//{
//  "name": "Кремень Юрий Алексеевич",
//  "email": "kremen@bsu.by, kremenya@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/kremen-ua.jpg"
//},
//{
//  "name": "Перез Чернов Александр Хуанович",
//  "email": "pereztchernov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/perez_tchernov.jpg"
//},
//{
//  "name": "Люлькин Аркадий Ефимович",
//  "email": "lulkin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Lulkin.jpg"
//},
//{
//  "name": "Позняк Юрий Викторович",
//  "email": "pazniak@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/pazniak-1.jpg"
//},
//{
//  "name": "Якименко Татьяна Семёновна",
//  "email": "yakimenkot@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/yakimenko.jpg"
//},
//{
//  "name": "Расолько Галина Алексеевна",
//  "email": "rasolka@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/PBK_1274-scaled.jpg"
//},
//{
//  "name": "Суздаль Станислав Валерьевич",
//  "email": "suzdal@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/10/suzdal-e1484074595600.png"
//},
//{
//  "name": "Лукьянович Инна Робертовна",
//  "email": "lukianinna12345@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/lukianovich.jpg"
//},
//{
//  "name": "Девицын Антон Сергеевич",
//  "email": "dziavitsyn@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/01/Devicin.jpg"
//},
//{
//  "name": "Аленский Николай Алексеевич",
//  "email": "alensky@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/alenski.jpg"
//},
//{
//  "name": "Вельченко Сергей Александрович",
//  "email": "velchenkosa@bsu.by, semmi.vall@gimal.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/velchenko.jpg"
//},
//{
//  "name": "Политаев Дмитрий Николаевич",
//  "email": "politaev@bsu.by, dima112003@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Politaev-Dmitrij-Nikalaevich.jpg"
//},
//{
//  "name": "Шиманский Евгений Витальевич",
//  "email": "yauheni_shymanski@epam.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/shimanski.png"
//},
//{
//  "name": "Филимон Наталья Дмитриевна",
//  "email": "nata.filimon@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/filimon.jpg"
//},
//{
//  "name": "Листопад Галина Ивановна",
//  "email": "listopadgi@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/listopad.png"
//},
//{
//  "name": "Зинченко Денис Николаевич",
//  "email": "ZinchDN@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/photo_2023-09-04_07-41-20.jpg"
//},
//{
//  "name": "Архипенко Ольга Александровна",
//  "email": "ArhipenkoOA@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/aoa.png"
//},
//{
//  "name": "Филимонов Дмитрий Васильевич",
//  "email": "FilimonovDV@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/01/filimonov-1.jpg"
//},
//{
//  "name": "Носевич Ирина Викторовна",
//  "email": "nasevichIV@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2024/02/Nos1.jpg"
//},
//{
//  "name": "Барауля Ольга Анатольевна",
//  "email": "chmp@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/baraulya.jpg"
//},
//{
//  "name": "Манько Надежда Ивановна",
//  "email": "NupreichikNI@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/manko.png"
//},
//{
//  "name": "Бусова Виктория Михайловна",
//  "email": "busavavm@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2024/01/busavavm.jpg"
//},
//{
//  "name": "Тихонов Сергей Викторович",
//  "email": "tikhonovsv@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/10/tikhonov.jpg"
//},
//{
//  "name": "Беняш-Кривец Валерий Вацлавович",
//  "email": "benyash@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/benyash-krivets.jpg"
//},
//{
//  "name": "Курсов Валерий Владимирович",
//  "email": "kursov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/IMG_5757.jpg"
//},
//{
//  "name": "Воронович Игорь Иванович",
//  "email": "voronovich@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Voronovich-Igor-Ivanovich.jpg"
//},
//{
//  "name": "Каскевич Виктор Иванович",
//  "email": "kaskevich@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/kaskevich.jpg"
//},
//{
//  "name": "Сафонова Инна Николаевна",
//  "email": "safonova@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2024/01/Foto-Safonova.jpg"
//},
//{
//  "name": "Иванов Константин Александрович",
//  "email": "ivanovka@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/ivanov.jpg"
//},
//{
//  "name": "Адмиралова Александра Николаевна",
//  "email": "al.admiralova@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/09/Admiralova.jpg"
//},
//{
//  "name": "Новикова Виктория Юрьевна",
//  "email": "victoria.novikova256@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/11/Novikova_V_Yu.jpg"
//},
//{
//  "name": "Абрамчук Дарья Сергеевна",
//  "email": "null",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/12/Abramchuk.jpg"
//},
//{
//  "name": "Базылев Дмитрий Фёдорович",
//  "email": "bazylev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2018/09/IMG_1055.jpg"
//},
//{
//  "name": "Янчевский Вячеслав Иванович",
//  "email": "yanchevskiivi@bsu.by, yanch@im.bas-net.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/yanchevsky.jpg"
//},
//{
//  "name": "Балащенко Виталий Владимирович",
//  "email": "balashchenko@bsu.by, vitbal@tut.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/PBK_1293-scaled-e1643841524586.jpg"
//},
//{
//  "name": "Вылегжанин Денис Владимирович",
//  "email": "vylegzhanin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/vylegzhanin.jpg"
//},
//{
//  "name": "Кононов Сергей Гаврилович",
//  "email": "kononovsg@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/kononov.jpg"
//},
//{
//  "name": "Суворов Владимир Васильевич",
//  "email": "suvorov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/suvorov.jpg"
//},
//{
//  "name": "Тимохович Владимир Леонидович",
//  "email": "timokhvl@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/timokhovich.jpg"
//},
//{
//  "name": "Кукрак Глеб Олегович",
//  "email": "kukrak@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/kukrak.jpg"
//},
//{
//  "name": "Карневич Оксана Николаевна",
//  "email": "karnevich@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2019/09/karnevich-1-e1643371523752.jpg"
//},
//{
//  "name": "Куница Виктория Николаевна",
//  "email": "kunicaVikNik@bsu.by , vikakunica@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/01/unnamed.png"
//},
//{
//  "name": "Власова Валентина Васильевна",
//  "email": "vlasovavv@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/vlasova-1.jpg"
//},
//{
//  "name": "Туромша Ирина Александровна",
//  "email": "turomsia@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/01/Tur.jpg"
//},
//{
//  "name": "Голубева Лариса Леонидовна",
//  "email": "goloubeva@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/IMG_5794.jpg"
//},
//{
//  "name": "Громак Валерий Иванович",
//  "email": "grom@bsu.by, vgromak@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/gromak.jpg"
//},
//{
//  "name": "Садовский Антон Павлович",
//  "email": "sadovskii@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/sadovski.jpg"
//},
//{
//  "name": "Макаров Евгений Константинович",
//  "email": "jcm@im.bas-net.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/Makarov-Evgenij-Konstantinovich.jpg"
//},
//{
//  "name": "Малевич Александр Эрнестович",
//  "email": "malevich@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/malevich.jpg"
//},
//{
//  "name": "Василевич Михаил Николаевич",
//  "email": "vasilmn@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Vasilevich-Mihail-Nikolaevich.jpg"
//},
//{
//  "name": "Лаврова Ольга Анатольевна",
//  "email": "lavrovaolga@mail.ru, lavrovaoa@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/lavrova.jpg"
//},
//{
//  "name": "Руденок Александр Евгеньевич",
//  "email": "roudenok@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/rudenok.jpg"
//},
//{
//  "name": "Щеглова Наталья Леонидовна",
//  "email": "shcheglova@bsu.by, shcheglova@tut.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/shcheglova.jpg"
//},
//{
//  "name": "Красовский Сергей Геннадьевич",
//  "email": "krasovskii@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2024/03/krasovski.png"
//},
//{
//  "name": "Атрохов Кирилл Георгиевич",
//  "email": "atromail@tut.by, atrokhaukg@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/atrokhov.jpg"
//},
//{
//  "name": "Кушнеров Александр Викторович",
//  "email": "al.v.kushnerov@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/03/kushnerov.jpg"
//},
//{
//  "name": "Кухарев Андрей Леонидович",
//  "email": "KuharevAL@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/01/Kuharev-Andrej-Leonidovich.jpg"
//},
//{
//  "name": "Рапопорт Александр Леонидович",
//  "email": "mmf.rapoportAL@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/Rapoport-Aleksandr-Leonidovich.jpg"
//},
//{
//  "name": "Задорожнюк Анна Олеговна",
//  "email": "ZadarazhniukHA@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/Zadorozhnyuk-Anna-Olegovna.jpg"
//},
//{
//  "name": "Азаров Никита Андреевич",
//  "email": "n.azarov@gymn37.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/09/Azarov-Nikita-Andreevich.jpg"
//},
//{
//  "name": "Василюк Наталья Григорьевна",
//  "email": "VasiliukNG@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/01/Vasilyuk-Natalya-Grigorevna.jpg"
//},
//{
//  "name": "Синдаров Василий Рустамович",
//  "email": "vasiasind1@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/02/Sindarov_cropped.jpg"
//},
//{
//  "name": "Гордеева Елена Николаевна",
//  "email": "gordeeva@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/gordeeva.jpg"
//},
//{
//  "name": "Гладков Александр Львович",
//  "email": "gladkoval@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/gladkov.jpg"
//},
//{
//  "name": "Корзюк Виктор Иванович",
//  "email": "korzyuk@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/korzuk.jpg"
//},
//{
//  "name": "Ломовцев Фёдор Егорович",
//  "email": "lomovcev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/lomovtsev.jpg"
//},
//{
//  "name": "Бухтояров Сергей Евгеньевич",
//  "email": "bukhtoyarov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/bukhtoyarov.jpg"
//},
//{
//  "name": "Метельский Юрий Михайлович",
//  "email": "metelsky@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/metelski.jpg"
//},
//{
//  "name": "Ковнацкая Ольга Анатольевна",
//  "email": "kovnatskaya@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/06/Kovnatskaya.jpeg"
//},
//{
//  "name": "Трофимов Сергей Александрович",
//  "email": "trafimav@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/Trofim.jpg"
//},
//{
//  "name": "Таразевич Юрий Георгиевич",
//  "email": "tarazevichyg@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/tarazevich.jpg"
//},
//{
//  "name": "Сологубова Светлана Максимовна",
//  "email": "SologubovaSM@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/12/Sologubova.jpg"
//},
//{
//  "name": "Самаль Сергей Александрович",
//  "email": "samalsa@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/samal.jpg"
//},
//{
//  "name": "Коваленко Николай Семёнович",
//  "email": "kovalenkons@rambler.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/kovalenko.jpg"
//},
//{
//  "name": "Барановская Светлана Николаевна",
//  "email": "baransn@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/baranovskaya.jpg"
//},
//{
//  "name": "Кепчик Наталья Владимировна",
//  "email": "Kepchik@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/kepchik.jpg"
//},
//{
//  "name": "Матейко Олег Михайлович",
//  "email": "matseika@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/mateiko.jpg"
//},
//{
//  "name": "Плащинский Павел Валерьевич",
//  "email": "plaschinsky@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/plashchinski.jpg"
//},
//{
//  "name": "Мартон Марина Владимировна",
//  "email": "marton_m@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/marton.jpg"
//},
//{
//  "name": "Прокашева Вера Акимовна",
//  "email": "prover@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/prokasheva.jpg"
//},
//{
//  "name": "Широканова Наталья Ивановна",
//  "email": "shyrakni@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/shirokanova.jpg"
//},
//{
//  "name": "Яблонская Наталья Борисовна",
//  "email": "yabl_nb@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/08/ph_355223.jpg"
//},
//{
//  "name": "Яшкин Виктор Иванович",
//  "email": "yashkin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/yashkin.jpg"
//},
//{
//  "name": "Велько Оксана Александровна",
//  "email": "velko@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/velko.jpg"
//},
//{
//  "name": "Моисеева Наталья Александровна",
//  "email": "voronkinana@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Moiseeva-Natalya-Aleksandrovna.jpg"
//},
//{
//  "name": "Тимохович Олег Владимирович",
//  "email": "timokha71@tut.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/timokhovich-ov.jpg"
//},
//{
//  "name": "Сташевич Ольга Николаевна",
//  "email": "stachevicho@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/stashevich.jpg"
//},
//{
//  "name": "Шмат Людмила Александровна",
//  "email": "shmatla@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/SHmat-Lyudmila-Aleksandrovna.jpg"
//},
//{
//  "name": "Синдаров Василий Рустамович",
//  "email": "vasiasind1@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/02/Sindarov_cropped.jpg"
//},
//{
//  "name": "Журавков Михаил Анатольевич",
//  "email": "zhuravkov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/zhuravkov.jpg"
//},
//{
//  "name": "Богданович Александр Вальдемарович",
//  "email": "bogdanav@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Bogdanovich-Aleksandr-Valdemarovich.jpg"
//},
//{
//  "name": "Щербаков Сергей Сергеевич",
//  "email": "sherbakovss@mail.ru, sherbakov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/shcherbakov.jpg"
//},
//{
//  "name": "Докукова Наталия Анатольевна",
//  "email": "dokukov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Dokukova-Nataliya-Anatolevna.jpg"
//},
//{
//  "name": "Конон Павел Николаевич",
//  "email": "kononp@tut.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Konon-Pavel-Nikolaevich.jpg"
//},
//{
//  "name": "Мармыш Денис Евгеньевич",
//  "email": "marmyshdenis@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Marmysh.jpg"
//},
//{
//  "name": "Медведев Дмитрий Георгиевич",
//  "email": "medvedev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/09/medvedev.jpg"
//},
//{
//  "name": "Вярьвильская Ольга Николаевна",
//  "email": "vyarolga@yandex.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Vyarvilskaya-Olga-Nikolaevna.jpg"
//},
//{
//  "name": "Протопопов Борис Егорович",
//  "email": "protopopov@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/Protopopov-Boris-Egorovich.jpg"
//},
//{
//  "name": "Чорный Андрей Дмитриевич",
//  "email": "ChornyAD@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/Chornyi.jpg"
//},
//{
//  "name": "Чумак Наталия Георгиевна",
//  "email": "ChumakNG@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/CHumak.jpg"
//},
//{
//  "name": "Макаева Татьяна Александровна",
//  "email": "MakaevaTA@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/makaeva-TA.jpg"
//},
//{
//  "name": "Лопатин Сергей Николаевич",
//  "email": "lopatinsn@tut.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/05/lopatin.jpg"
//},
//{
//  "name": "Николайчик Михаил Александрович",
//  "email": "nikolaitchikMA@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/08/nikolaichik.jpg"
//},
//{
//  "name": "Авдейчик Евгений Валерьевич",
//  "email": "audzeichykyv@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/Foto_Avdeychik.jpg"
//},
//{
//  "name": "Климкович Никита Михайлович",
//  "email": "nikita.klimkovitch@yandex.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/11/klimkovich-nikita-mihailovich.jpg"
//},
//{
//  "name": "Голод Сергей Владимирович",
//  "email": "drakon51@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/DSC3502-1-scaled.jpg"
//},
//{
//  "name": "Блохина Маргарита Александровна",
//  "email": "blohinama@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/05/DSC_0496a.jpg"
//},
//{
//  "name": "Бровка Наталья Владимировна",
//  "email": "n_br@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/brovka_stock.jpg"
//},
//{
//  "name": "Кротов Вениамин Григорьевич",
//  "email": "krotov@bsu.by, vgkrotov@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/krotov.jpg"
//},
//{
//  "name": "Васильев Игорь Леонидович",
//  "email": "vassilyevi@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/vasilyev-il.jpg"
//},
//{
//  "name": "Долгополова Ольга Борисовна",
//  "email": "dolgopolova@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/dolgopolova.jpg"
//},
//{
//  "name": "Жоровина Тамара Николаевна",
//  "email": "zhorovina@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/zhorovina.jpg"
//},
//{
//  "name": "Мардвилко Татьяна Сергеевна",
//  "email": "mardvilko@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/12/Mardvilko.jpeg"
//},
//{
//  "name": "Громак Елена Валерьевна",
//  "email": "gromakev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/02/gromak-e-v.jpg"
//},
//{
//  "name": "Бондарев Сергей Александрович",
//  "email": "bondarevsa@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2021/12/me.jpeg"
//},
//{
//  "name": "Вопнярская Алла Георгиевна",
//  "email": "vapniarskaya@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/vopnyarskaya.jpg"
//},
//{
//  "name": "Карпова Анастасия Петровна",
//  "email": "karpovaap@bsu.by, karpova.a.p@yandex.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2021/12/IMG_7121.jpg"
//},
//{
//  "name": "Ляцкая Анастасия Викторовна",
//  "email": "anastasiya.lyackaya@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2019/10/Lyack-scaled-1.jpg"
//},
//{
//  "name": "Карпович Наталья Игоревна",
//  "email": "karpovichni@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/karp4.png"
//},
//{
//  "name": "Стриленко Артем Дмитриевич",
//  "email": "strilenko@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2022/12/photo_2022-12-29_11-34-13.jpg"
//},
//{
//  "name": "Павловский Владислав Андреевич",
//  "email": "paulouskiua@bsu.by; pavlad95@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2021/12/Pavlovskij_2.jpg"
//},
//{
//  "name": "Рябцева Валентина Петровна",
//  "email": "Rabtsava_vp@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/ryabtseva.jpg"
//},
//{
//  "name": "Лебедев Андрей Владимирович",
//  "email": "lebedev@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/lebedev.jpg"
//},
//{
//  "name": "Антоневич Анатолий Борисович",
//  "email": "antonevich@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/antonevich.jpg"
//},
//{
//  "name": "Бахтин Виктор Иванович",
//  "email": "bakhtin@tut.by, bakhtin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/bakhtin.jpg"
//},
//{
//  "name": "Кротов Вениамин Григорьевич",
//  "email": "krotov@bsu.by, vgkrotov@mail.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/krotov.jpg"
//},
//{
//  "name": "Лыков Константин Владимирович",
//  "email": "LykovKV@bsu.by, alkv@list.ru",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/10/IMG_8138_Lykov-rotated.jpg"
//},
//{
//  "name": "Ромащенко Галина Станиславовна",
//  "email": "RomashGS@bsu.by, gal.romash@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/11/romaschenko-1.jpg"
//},
//{
//  "name": "Сташуленок Сергей Павлович",
//  "email": "stashulionak@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/stashulenok.jpg"
//},
//{
//  "name": "Чесалин Владимир Иванович",
//  "email": "chesalin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/chesalin.jpg"
//},
//{
//  "name": "Штин Сергей Львович",
//  "email": "shtin@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2016/12/shtin.jpg"
//},
//{
//  "name": "Иванишко Ия Александровна",
//  "email": "ivanishko@bsu.by, iya.ivanishko@gmail.com",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2020/03/Ivan.jpg"
//},
//{
//  "name": "Спасков Сергей Александрович",
//  "email": "SpaskovS@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/Spaskov-scaled.jpg"
//},
//{
//  "name": "Гутор Алина Геннадьевна",
//  "email": "Goutor@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/2.jpg"
//},
//{
//  "name": "Борбут Владислав Андреевич",
//  "email": "borbut@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/3-na-4.jpg"
//},
//{
//  "name": "Бедрицкий Александр Сергеевич",
//  "email": "bedrickiAS@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/12/Bedricki.jpg"
//},
//{
//  "name": "Логиновская Мария Михайловна",
//  "email": "LoginovskayaMM@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2023/02/LoginovskayaM.jpeg"
//},
//{
//  "name": "Сороколетова Ольга Николаевна",
//  "email": "sorokoletova@bsu.by",
//  "img": "https://mmf.bsu.by/wp-content/uploads/2017/05/sorokoletova.jpg"
//}
