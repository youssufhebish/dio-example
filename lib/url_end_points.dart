
///this is the full url
String urlAll = 'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=7c03327d3f8f400ab9f217febf03f604';

///this is the base url
String baseUrl = 'https://newsapi.org/';

///this is headlineUrl
String headlineUrl = 'v2/top-headlines';

/*
بتقطعي اللينك من عند أول جزء مشترك ف ال api
ده لينك الهيد لايند وبعديه لينك البحث وشوفي منهم المُشترك ايه
https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=7c03327d3f8f400ab9f217febf03f604
https://newsapi.org/v2/everything?q=tesla&from=2021-10-21&sortBy=publishedAt&apiKey=7c03327d3f8f400ab9f217febf03f604
لو اخدتي بالك هتلاقي ان الجزء المُشترك هو  ده https://newsapi.org/v2
ف أسهل طريقة إني اخليه ال baseUrl بتاعي
baseUrl = 'https://newsapi.org/v2';
وأي حاجة تانية هعوزها من ال api باخدها من بعده
headlineUrl = '/top-headlines';
searchUrl = '/everything';
الموضوع مرن يعني لو خليت ال baseUrl بتاعي كده
baseUrl = 'https://newsapi.org/';
هكمل بقيت ال api من مكان ما وقفت
headlineUrl = 'v2/top-headlines';
الموضوع مرن وكل حد بيمشيه بالشكل اللي هو يحبه

*** ملحوظة بس بقيت ال url بيبقى حاجة اسمها endpoint ودي اللي باخد منها الداتا ال baseurl واحد و ال endpoint بتتغير
ده
baseUrl = 'https://newsapi.org/v2';
ودي اسمها endpoint
headlineUrl = '/top-headlines';
سميها زي ما تحبي باسمها وبعدها url او باسمها وبعدها endpoint زي ما تحبي

/////////////////////////////
?country=eg&category=business&
الحاجات دي اسمها queries ودي اللي بتهندل ال api ودي بتختلف من api لغيره طبعا
يعني ال queries اللي فوق دي بتخليني اجيب من api بتاع ال news اجيب الأخبار اللي ف مصر اللي ليها علاقة بالبيزنيس ممكن تغيريها لأي دولة تانية ال api موفرها وأي تصنيف تاني ال api موفرة
زي مثلًا
?country=uk&category=sports&
ده يجيب الأخبار من انجلترا المملكة المتحدة اللي ليها علاقة بالرياضة
/////
هعرفك ازاي تهندليها ف ال dio برده وازاي تهندلي ال endpoint
///
apiKey=7c03327d3f8f400ab9f217febf03f604
صحيح ده اسمه المفتاح بتاع ال api كل مُبرمج بيكون له مفتاح خاص بيه عشان الصلاحيات والحماية وكده
هتدخلي على الموقع وتسجلي وهيديلك لينك عادي
 */

