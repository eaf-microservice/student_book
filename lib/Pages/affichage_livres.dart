// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/Pages/matiere.dart';

class BooksA1 extends StatelessWidget {
  const BooksA1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الأولى - الكتب المرجعية',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Livre(
                  'العقيدة \n كتاب إتحاف ذوي العقول الرشيدة بشرح البداية في العقيدة',
                  '1pFW6zrUy4IblV1PaH548FzQkuwJiXgtw',
                  'couvreBooks/Annee1/akida.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'التجويد \n كتاب البداية في علم التجويد',
                  '1d_bnsJCZIst7x8lqxS-L6HUZwM-I2N6U',
                  'couvreBooks/Annee1/tajwid.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الحديث \n كتاب عمدة الأحكام من كلام خير الأنام',
                  '1X9b0iMudnwrcNWF6qwNYJnjgUNp3mBTM',
                  'couvreBooks/Annee1/hadith.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'اللغة العربية \n كتاب المختصر في النحو',
                  '1z4QKW7FH1Rua5a2a0XBSjWzwo5lVIOp4',
                  'couvreBooks/Annee1/arabic.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه \n كتاب التوثيق لبداية المتفقه',
                  '1PRJElbM5j4tJgiRPWbHJwbWLDLty5OnU',
                  'couvreBooks/Annee1/fiqh.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'أصول الفقه\n كتاب غاية المأمول في شرح البداية في الأصول',
                  '1Ya8dGLkyLHHeY2cLb3ipi1ajLE5195vd',
                  'couvreBooks/Annee1/osol_fiqh.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الآداب الإسلامية \n كتاب اللآلئ البهية شرح صحيح الآداب الإسلامية',
                  '1syOLFnAOw8xeQqAeFQ_cBPJkUf28nxs0',
                  'couvreBooks/Annee1/tarbiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'مصطلح الحديث \n كتاب متن البداية في مصطلح الحديث',
                  '1tb1DGFD8yL7qeRy9JmLWHwYg6YBtK208',
                  'couvreBooks/Annee1/mostala7_7adit.png'),
            ],
          ),
        ) //
        );
  }
}

class BooksA2 extends StatelessWidget {
  const BooksA2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الثانية - الكتب المرجعية',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Livre(
                  'تاريخ التشريع الفصل الأول \n كتاب المذهب عند الحنفية والمالكية والشافعية والحنابلة',
                  '1kLB6IBCmDnJ069ooQ-XsmNUosQ4s9VcL',
                  'couvreBooks/Annee2/tarikh_tachri3.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'المواريث الفصل الثاني \n كتاب هداية الوريث شرح بداية المواريث',
                  '1Qt4kFDXul94KiGvdtYPbvTKL3lPQiL2g',
                  'couvreBooks/Annee2/bidaya_mawarit.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'اللغة العربية الفصل الأول \n كتاب البناية في شرح البداية في علوم البلاغة',
                  '19F6tcnKigTinxiFhHXLOK9BMSCVAHJva',
                  'couvreBooks/Annee2/arabic_balagha.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'اللغة العربية الفصل الثاني \n كتاب شرح البداية في الصرف',
                  '1U-HBkF0g9E2HSp2XThbu_lA27Zgq93g0',
                  'couvreBooks/Annee2/arabic_sarf.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'التربية والسلوك \n كتاب البداية في علم الرقائق',
                  '1bSqoG9Egc_EtPHHQleqGJupGujfv002f',
                  'couvreBooks/Annee2/tarbiya_w_solok.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'العقيدة \n كتاب حصول المنة بشرح أصول السنة للإمام أحمد',
                  '1yNeQoFOspB2AY__wCvqgBeyjcoC_7DxE',
                  'couvreBooks/Annee2/akida.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'التفسير \n كتاب تفسير القرآن العظيم للحافظ ابن كثير',
                  '1yNeQoFOspB2AY__wCvqgBeyjcoC_7DxE',
                  'couvreBooks/Annee2/tafsir.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'علوم القرآن \n كتاب هداية المنان شرح البداية في علوم القرآن',
                  '1Ye5VR-ywZfxRhe438blizO2F0bTbbKYD',
                  'couvreBooks/Annee2/quran_science.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'السيرة النبوية \n كتاب الخلاصة البهية في ترتيب أحداث السيرة النبوية',
                  '1eAVrjxZVo7qYwzQVh0l5amvAUZtNLsy0',
                  'couvreBooks/Annee2/sira_nabawiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه المالكي \n كتاب الكافي في فقه أهل المدينة المالكي',
                  '1-1HXlfAdaeWeDuaYBUcDfr3-N6FbJbms',
                  'couvreBooks/Annee2/fiqh_maliki.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الشافعي \n كتاب الإقناع في حل ألفاظ أبي شجاع',
                  '1iko2MaH2TOXAtv2jX1dAohX2B84EnBV4',
                  'couvreBooks/Annee2/fiqh_chafi3i.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الحنفي \n كتاب اللباب في شرح الكتاب',
                  '1CpR7PBZF6rLGEaj2J-wEZmvUTIp7hqz1',
                  'couvreBooks/Annee2/fiqh_hanafi.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الحنبلي \n كتاب فتح وهاب المآرب على دليل الطالب لنيل المطالب',
                  '1-WtKey9nCMejfjyJ4EOFn4zQNCn9MZHM',
                  'couvreBooks/Annee2/fiqh_hanbali.png'),
            ],
          ),
        ) //
        );
  }
}

class BooksA3 extends StatelessWidget {
  const BooksA3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الثالثة - الكتب المرجعية',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Livre(
                  'التربية والسلوك \n كتاب البداية في علم الرقائق',
                  '1bSqoG9Egc_EtPHHQleqGJupGujfv002f',
                  'couvreBooks/Annee2/tarbiya_w_solok.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الحنبلي \n كتاب فتح وهاب المآرب على دليل الطالب لنيل المطالب',
                  '1-WtKey9nCMejfjyJ4EOFn4zQNCn9MZHM',
                  'couvreBooks/Annee3/fiqh_hanbali.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه المالكي \n كتاب الكافي في فقه أهل المدينة المالكي',
                  '1-1HXlfAdaeWeDuaYBUcDfr3-N6FbJbms',
                  'couvreBooks/Annee2/fiqh_maliki.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الشافعي \n كتاب الإقناع في حل ألفاظ أبي شجاع',
                  '1iko2MaH2TOXAtv2jX1dAohX2B84EnBV4',
                  'couvreBooks/Annee3/fiqh_chafi3i.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'الفقه الحنفي \n كتاب اللباب في شرح الكتاب',
                  '1CpR7PBZF6rLGEaj2J-wEZmvUTIp7hqz1',
                  'couvreBooks/Annee3/fiqh_hanafi.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'العقيدة 1 \n كتاب الجامع لمسائل العقيدة الطحاوية',
                  '1zlcTNaRBIhdj5jZmbWv1NiZc_YLpwnhi',
                  'couvreBooks/Annee3/akida_ta7awiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'العقيدة 2 \n كتاب الجامع لمسائل العقيدة الواسطية',
                  '1A6mJOTKp6A8qMTv9vPMNb-JpzM-ikvQS',
                  'couvreBooks/Annee3/akida_wastiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'فقه عام \n كتاب الإبداع في شرح الإجماع',
                  '1fjgfKo671xrURVfnD8w00CYkIy2m6qoJ',
                  'couvreBooks/Annee3/char7_ijma3.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'مصطلح الحديث \n كتاب نزهة النظر في توضيح نخبة الفكر',
                  '1bJltTVdRalOazdG2fpiWYtdema09ymyR',
                  'couvreBooks/Annee3/nozhat_nadar.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'قواعد فقهية \n كتاب القواعد الفقهية وتطبيقاتها في المذاهب الأربعة',
                  '1IngOivlMO1k6P2w8o8HLw2jDhJ1nmVhX',
                  'couvreBooks/Annee3/qawa3id_fiqhiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'التفسير \n كتاب نيل المرام من تفسير آيات الأحكام',
                  '1fufXcH1K833JV1Mb4WMiQ9COiLMwmwhq',
                  'couvreBooks/Annee3/tafsir_ayat.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'التجويد \n كتاب السلسبيل الشافي في تجويد القرآن',
                  '1MoJ91cp7VKEAg9EdTWyPswrxfjMVSijM',
                  'couvreBooks/Annee3/salsabil_chafi.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'أصول فقه \n كتاب تيسير الوصول إلى قواعد الأصول ومعاقد الفصول',
                  '1fX67YgLuwfQmEBegMEsTU5lvDPXD_mli',
                  'couvreBooks/Annee3/taysir_wosol_osol.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'فرق و مذاهب \n كتاب الموسوعة الميسرة في الأديان والمذاهب والأحزاب المعاصرة',
                  '1ERP4nfTKqhQnEnqgJaR6hgGVwcblRpOJ',
                  'couvreBooks/Annee3/adyan_madahib.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'اللغة العربية 1 \n كتاب الإعراب التطبيقي لجزء عم',
                  '1gu1YHy9mOYawTNdGv2V2kmN31WnuIeQS',
                  'couvreBooks/Annee3/i3rab_3ama.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  ' اللغة العربية 2 \n كتاب ضوابط الكتابة الصحيحة',
                  '1xNpfXHo7hGa5ZZLCbmprTLHP5dQAyQPj',
                  'couvreBooks/Annee3/dawabit_kitaba.png'),
            ],
          ),
        ) //
        );
  }
}

class BooksA4 extends StatelessWidget {
  const BooksA4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الرابعة - الكتب المرجعية',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Livre('مهارات البحث العلمي', '1coHeLKwOUVaUwt4sR-dRmy0LbpTSj87t',
                  'couvreBooks/Annee4/ba7t_3ilmi.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'منهجية إثبات صحة الإسلام',
                  '1uE_OZm07ZkqjbtXcTmtHVw3_V-P7p2Uj',
                  'couvreBooks/Annee4/manhajiya.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre('قضايا فقهية معاصرة', '1hs2kNlj0kVMJ_iQqVm47FqlynIOn0Mw5',
                  'couvreBooks/Annee4/qadaya_mo3asira.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'فتح الرب الحميد في_شرح كتاب التوحيد',
                  '1jk45nTA4SkFakGjKxgsRqILM64SPruIa',
                  'couvreBooks/Annee4/tawhid.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre(
                  'تاريخ الدولة العباسية ',
                  '1aoapUSHe5h46OHcoNVzCXTjwYgBlNGkT',
                  'couvreBooks/Annee4/tarikh.png'),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Livre('المحرر في الحديث', '1KkSbAJGF7hWufEnz0EBvV9WgKl_fT7OZ',
                  'couvreBooks/Annee4/hadith.png'),
            ],
          ),
        ) //
        );
  }
}
