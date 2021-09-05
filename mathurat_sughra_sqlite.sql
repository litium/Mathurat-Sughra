CREATE TABLE IF NOT EXISTS "mathurat_sughra" ("id" integer primary key AUTOINCREMENT NOT NULL, "aya" integer NOT NULL, "page" integer NOT NULL, "repeat_count" integer NOT NULL, "text" TEXT NOT NULL, "name" varchar(200) NOT NULL, "recitation_time" integer NOT NULL);
CREATE UNIQUE INDEX IF NOT EXISTS[mathurat_sughra_key_idx] ON [mathurat_sughra]([aya],[page],[recitation_time]);
--recitation_time: 1:morning, 2:afternoon, 3:unspecified
CREATE TABLE IF NOT EXISTS "translation" ("id" integer primary key AUTOINCREMENT NOT NULL, "mathurat_sughra_id" integer NOT NULL, "language" varchar(2) NOT NULL, "text" TEXT NOT NULL);
CREATE UNIQUE INDEX IF NOT EXISTS[translation_key_idx] ON [translation]([mathurat_sughra_id], [language]);

INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (1,1,1,1,'اَعُوذُ بِٱللهِ السَّمِيْعِ الْعَلِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ','',3),
     (2,1,2,1,'بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ١','Al Fatihah (1-7)',3),
     (3,2,2,1,'ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ ٢','',3),
     (4,3,2,1,'ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ ٣','',3),
     (5,4,2,1,'مَٰلِكِ يَوۡمِ ٱلدِّينِ ٤','',3),
     (6,5,2,1,'إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ ٥','',3),
     (7,6,2,1,'ٱهۡدِنَا ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ ٦','',3),
     (8,7,2,1,'صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ وَلَا ٱلضَّآلِّينَ ٧','',3),
     (9,1,3,1,'الٓمٓ ١','Al Baqarah (1-5)',3),
     (10,2,3,1,'ذَٰلِكَ ٱلۡكِتَٰبُ لَا رَيۡبَۛ فِيهِۛ هُدٗى لِّلۡمُتَّقِينَ ٢','',3);
INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (11,3,3,1,'ٱلَّذِينَ يُؤۡمِنُونَ بِٱلۡغَيۡبِ وَيُقِيمُونَ ٱلصَّلَوٰةَ وَمِمَّا رَزَقۡنَٰهُمۡ يُنفِقُونَ ٣','',3),
     (12,4,3,1,'وَٱلَّذِينَ يُؤۡمِنُونَ بِمَآ أُنزِلَ إِلَيۡكَ وَمَآ أُنزِلَ مِن قَبۡلِكَ وَبِٱلۡأٓخِرَةِ هُمۡ يُوقِنُونَ ٤','',3),
     (13,5,3,1,'أُوْلَٰٓئِكَ عَلَىٰ هُدٗى مِّن رَّبِّهِمۡۖ وَأُوْلَٰٓئِكَ هُمُ ٱلۡمُفۡلِحُونَ ٥','',3),
     (14,1,4,1,'ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلۡحَيُّ ٱلۡقَيُّومُۚ لَا تَأۡخُذُهُۥ سِنَةٞ وَلَا نَوۡمٞۚ لَّهُۥ مَا فِي ٱلسَّمَٰوَٰتِ وَمَا فِي ٱلۡأَرۡضِۗ مَن ذَا ٱلَّذِي يَشۡفَعُ عِندَهُۥٓ إِلَّا بِإِذۡنِهِۦۚ يَعۡلَمُ مَا بَيۡنَ أَيۡدِيهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا يُحِيطُونَ بِشَيۡءٖ مِّنۡ عِلۡمِهِۦٓ إِلَّا بِمَا شَآءَۚ وَسِعَ كُرۡسِيُّهُ ٱلسَّمَٰوَٰتِ وَٱلۡأَرۡضَۖ وَلَا يَـُٔودُهُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِيُّ ٱلۡعَظِيمُ ٢٥٥','Al Baqarah (255)',3),
     (15,1,5,1,'لَآ إِكۡرَاهَ فِي ٱلدِّينِۖ قَد تَّبَيَّنَ ٱلرُّشۡدُ مِنَ ٱلۡغَيِّۚ فَمَن يَكۡفُرۡ بِٱلطَّٰغُوتِ وَيُؤۡمِنۢ بِٱللَّهِ فَقَدِ ٱسۡتَمۡسَكَ بِٱلۡعُرۡوَةِ ٱلۡوُثۡقَىٰ لَا ٱنفِصَامَ لَهَاۗ وَٱللَّهُ سَمِيعٌ عَلِيمٌ ٢٥٦','Al Baqarah (256)',3),
     (16,1,6,1,'ٱللَّهُ وَلِيُّ ٱلَّذِينَ ءَامَنُواْ يُخۡرِجُهُم مِّنَ ٱلظُّلُمَٰتِ إِلَى ٱلنُّورِۖ وَٱلَّذِينَ كَفَرُوٓاْ أَوۡلِيَآؤُهُمُ ٱلطَّٰغُوتُ يُخۡرِجُونَهُم مِّنَ ٱلنُّورِ إِلَى ٱلظُّلُمَٰتِۗ أُوْلَٰٓئِكَ أَصۡحَٰبُ ٱلنَّارِۖ هُمۡ فِيهَا خَٰلِدُونَ ٢٥٧','Al Baqarah (257)',3),
     (17,1,7,1,'لِّلَّهِ مَا فِي ٱلسَّمَٰوَٰتِ وَمَا فِي ٱلۡأَرۡضِۗ وَإِن تُبۡدُواْ مَا فِيٓ أَنفُسِكُمۡ أَوۡ تُخۡفُوهُ يُحَاسِبۡكُم بِهِ ٱللَّهُۖ فَيَغۡفِرُ لِمَن يَشَآءُ وَيُعَذِّبُ مَن يَشَآءُۗ وَٱللَّهُ عَلَىٰ كُلِّ شَيۡءٖ قَدِيرٌ ٢٨٤','Al Baqarah (284)',3),
     (18,1,8,1,'ءَامَنَ ٱلرَّسُولُ بِمَآ أُنزِلَ إِلَيۡهِ مِن رَّبِّهِۦ وَٱلۡمُؤۡمِنُونَۚ كُلٌّ ءَامَنَ بِٱللَّهِ وَمَلَـٰٓٮِٕكَتِهِۦ وَكُتُبِهِۦ وَرُسُلِهِۦ لَا نُفَرِّقُ بَيۡنَ أَحَدٖ مِّن رُّسُلِهِۦۚ وَقَالُواْ سَمِعۡنَا وَأَطَعۡنَاۖ غُفۡرَانَكَ رَبَّنَا وَإِلَيۡكَ ٱلۡمَصِيرُ ٢٨٥','Al Baqarah (285)',3),
     (19,1,9,1,'لَا يُكَلِّفُ ٱللَّهُ نَفۡسًا إِلَّا وُسۡعَهَاۚ لَهَا مَا كَسَبَتۡ وَعَلَيۡهَا مَا ٱكۡتَسَبَتۡۗ رَبَّنَا لَا تُؤَاخِذۡنَآ إِن نَّسِينَآ أَوۡ أَخۡطَأۡنَاۚ رَبَّنَا وَلَا تَحۡمِلۡ عَلَيۡنَآ إِِصۡرًا كَمَا حَمَلۡتَهُۥ عَلَى ٱلَّذِينَ مِن قَبۡلِنَاۚ رَبَّنَا وَلَا تُحَمِّلۡنَا مَا لَا طَاقَةَ لَنَا بِهِۦۖ وَٱعۡفُ عَنَّا وَٱغۡفِرۡ لَنَا وَٱرۡحَمۡنَآۚ أَنتَ مَوۡلَىٰنَا فَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡكَٰفِرِينَ ٢٨٦','Al Baqarah (286)',3),
     (20,1,10,3,'بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ
قُلۡ هُوَ ٱللَّهُ أَحَدٌ ١','Al Ikhlas (1-4)',3);
INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (21,2,10,3,'ٱللَّهُ ٱلصَّمَدُ ٢','',3),
     (22,3,10,3,'لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ ٣','',3),
     (23,4,10,3,'وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ ٤','',3),
     (24,1,11,3,'بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ
قُلۡ أَعُوذُ بِرَبِّ ٱلۡفَلَقِ ١','Al Falaq (1-5)',3),
     (25,2,11,3,'مِن شَرِّ مَا خَلَقَ ٢','',3),
     (26,3,11,3,'وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ ٣','',3),
     (27,4,11,3,'وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِي ٱلۡعُقَدِ ٤','',3),
     (28,5,11,3,'وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ ٥','',3),
     (29,1,12,3,'بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ
قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ ١','An Nas (1-6)',3),
     (30,2,12,3,'مَلِكِ ٱلنَّاسِ ٢','',3);
INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (31,3,12,3,'إِلَٰهِ ٱلنَّاسِ ٣','',3),
     (32,4,12,3,'مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ ٤','',3),
     (33,5,12,3,'ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ ٥','',3),
     (34,6,12,3,'مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ ٦','',3),
     (35,1,13,3,'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لاَشَرِيكَ لَهُ
لاَ إِلَهَ إِلاَّ هُوَ وَإِلَيْهِ النُّشُورُ','',1),
     (36,1,13,3,'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لاَشَرِيكَ لَهُ
لاَ إِلَهَ إِلاَّ هُوَ وَإِلَيْهِ الْمَصِيرُ','',2),
     (37,1,14,3,'أَصْبَحْنَا عَلَى فِطْرَةِ الإِسْلَامِ
وَكَلِمَةِ الإِخْلَاصِ
وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيهِ وَسَلَّمَ
وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ حَنِيفًا
وَمَا كَانَ مِنَ الْمُشْرِكِينَ','',1),
     (38,1,14,3,'أَمْسَيْنَا عَلَى فِطْرَةِ الإِسْلَامِ
وَكَلِمَةِ الإِخْلَاصِ
وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيهِ وَسَلَّمَ
وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ حَنِيفًا
وَمَا كَانَ مِنَ الْمُشْرِكِينَ','',2),
     (39,1,15,3,'اَللَّهُمَّ إِنِّي أَصْبَحْتُ مِنْكَ فِي نِعْمَةٍ
وَعَافِيَةٍ وَسِتْرٍ
فَأَتِمَّ عَلَيَّ نِعْمَتَكَ وَعَافِيَتَكَ وَسِتْرَكَ فِي الدُّنْيَا وَالآخِرَةِ','',1),
     (40,1,15,3,'اَللَّهُمَّ إِنِّي أَمْسَيْتُ مِنْكَ فِي نِعْمَةٍ
وَعَافِيَةٍ وَسِتْرٍ
فَأَتِمَّ عَلَيَّ نِعْمَتَكَ وَعَافِيَتَكَ وَسِتْرَكَ فِي الدُّنْيَا وَالآخِرَةِ','',2);
INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (41,1,16,3,'اَللَّهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ
لَا شَرِيكَ لَكَ
فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ','',1),
     (42,1,16,3,'اَللَّهُمَّ مَا أَمْسَى بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ
لَا شَرِيكَ لَكَ
فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ','',2),
     (43,1,17,3,'يَا رَبِّي لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ وَعَظِيمِ سُلطَانِكَ','',3),
     (44,1,18,3,'رَضِيتُ بِاللهِ رَبًّا وَبِالإِسْلَامِ دِينًا وَبِمُحَمَّدٍ نَبِيًا وَرَسُولًا','',3),
     (45,1,19,3,'سُبْحَانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ
وَرِضَا نَفْسِهِ
وَزِنَةَ عَرْشِهِ
وَمِدَادَ كَلِمَاتِهِ','',3),
     (46,1,20,3,'بِسْمِ اللهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ
وَلاَ فِي السَّمَاءِ
وَهُوَ السَّمِيعُ العَلِيمُ','',3),
     (47,1,21,3,'اَللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَن نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ
وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ','',3),
     (48,1,22,3,'أَعُوْذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ','',3),
     (49,1,23,3,'اَللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الهَمِّ وَالحَزَنِ
وَأَعُوذُ بِكَ مِنَ الْعَجْزِ وَالْكَسَلِ
وَأَعُوذُ بِكَ مِنَ الجُبْنِ وَالبُخْلِ
وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ وَقَهْرِ الرِّجَالِ','',3),
     (50,1,24,3,'اَللَّهُمَّ عَافِنِي فِي بَدَنِي
اَللَّهُمَّ عَافِنِي فِي سَمْعِي
اَللَّهُمَّ عَافِنِي فِي بَصَرِي','',3);
INSERT INTO mathurat_sughra (id,aya,page,repeat_count,"text",name,recitation_time) VALUES
     (53,1,25,3,'اَللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ
وَ أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ
لَا إِلَهَ إِلَّا أَنْتَ','',3),
     (55,1,26,3,'اَللَّهُمَّ أَنْتَ رَبِّي
لَا إِلَهَ إِلَّا أَنْتَ
خَلَقْتَنِي وَأَنَا عَبْدُكَ
وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ
أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ
أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ
وَأَبُوءُ بِذَنْبِي
فَاغْفِرْلِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ','',3),
     (56,1,27,3,'أَسْتَغْفِرُ اللهَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ وَأَتُوبُ إِلَيهِ','',3),
     (57,1,28,3,'سُبْحَانَكَ اللَّّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ
أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيكَ','',3),
     (58,1,29,1,'اَللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ
عَبْدِكَ وَنَبِيِّكَ وَرَسُولِكَ النَّبِيِّ اْلأُمِّيِّ
وَعَلَى آلِهِ وَصَحْبِهِ
وَسَلِّمْ تَسْلِيمًا عَدَدَ مَا أَحَاطَ بِهِ عِلْمُكَ وَخَطَّ بِهِ قَلَمُكَ
وَأَحْصَاهُ كِتَابُكَ','',3),
     (59,2,29,1,'وَارْضَ اللَّهُمَّ عَنْ سَادَاتِنَا أَبِي بَكْرٍ وَعُمَرَ وَعُثْمَانَ وَعَلِيٍّ
وَعَنِ الصَّحَابَةِ أَجْمَعِينَ
وَعَنِ التَّبِعِينَ تَابِعِيهِمْ بِإِحْسَانٍ إِلَى يَوْمِ الدِّينِ
سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُونَ
وَسَلآمٌ عَلَى الْمُرْسَلِينَ
وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ','',3),
     (60,1,30,1,'قُلِ اللَّهُمَّ مَالِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَنْ تَشَاءُ وَتَنْزِعُ الْمُلْكَ مِمَّنْ تَشَاءُ وَتُعِزُّ مَنْ تَشَاءُ وَتُذِلُّ مَنْ تَشَاءُ بِيَدِكَ الْخَيْرُ إِنَّكَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ٢٦','Al Imran (26)',3),
     (61,2,30,1,'تُولِجُ اللَّيْلَ فِي النَّهَارِ وَتُولِجُ النَّهَارَ فِي اللَّيْلِ وَتُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَتُخْرِجُ الْمَيِّتَ مِنْ الْحَيِّ وَتَرْزُقُ مَنْ تَشَاءُ بِغَيْرِ حِسَابٍ ٢٧','Al Imran (27)',3),
     (62,1,31,1,'اَللَّهُمَّ إِنَّا نَسْأَلُكَ لِسَانًا رَطِبًا بِذِكْرِكَ
وَقَلْبًا مُفْعُمًا بِشُكْرِكَ
وَبَدَنًا هَيِّنًا لَيِّنًا بِطَاعَتِكَ
اَللَّهُمَّ إِنَّا نَسْأَلُكَ إِيمَانًا كَامِلًا
وَنَسْـأَلُكَ قَلْبًا خَاشِعًا
وَنَسْـأَلُكَ عِلْمًا نَافِعًا
وَنَسْأَلُكَ يَقِينًا صَادِقًا
وَنَسْـأَلُكَ دِينًا قَيِّمًا
وَنَسْـأَلُكَ الْعَافِيَةَ مِنْ كُلِّ بَلِيَّةٍ
وَنَسْـأَلُكَ تَمَامَ الْغِنَى عَنِ النَّاسِ
وَهَبْ لَنَا حَقِيقَةَ الإِيمَانِ بِكَ
حَتَّى لَا نَخَافَ
وَلَا نَرْجُوَ غَيرَكَ
وَلَا نَعْبُدَ شَيْئًا سِوَاكَ
وَاجْعَلْ يَدَكَ مَبْسُوطَةً عَلَيْنَا
وَعَلَى أَهْلِينَا
وَأَوْلَادِنَا
وَمَنْ مَعَنَا بِرَحْمَتِكَ
وَلَا تَكِّلْنَا إِلَى أَنْفُسِنَا طَرْفَةَ عَيْنٍ
وَلَا أَقَلَّ مِنْ ذَلِكَ
يَا نِعْمَ الْمُجِيبُ

وَصَلَّ اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ النَّبِيِّ الْكَرِيمِ
وَعَلَى اَلِهِ وَصَحْبِهِ أَجْمَعِينَ','',3),
     (63,1,32,1,'اَللَّهُمَّ إِنَّ هَذَا إِقْبَالُ لَيْلِكَ وَإِدْبَارُ نَهَارِكَ وَأَصْوَاتُ دُعَاتِكَ فَاغْفِرْلِي
اَللَّهُمَّ إِنَّكَ تَعْلَمُ أَنَّ هَذِهِ الْقُلُوبَ
قَدِ اجْتَمَعَتْ عَلَى مَحَبَّتِكْ
وَالتَقَتْ عَلَى طَاعَتِكَ
وَتَوَحَّدَتْ عَلَى  دَعْوَتِكَ
وَتَعَاهَدَتْ عَلَى نَصْرَةِ شَرِيعَتِكَ
فَوَثِّقِ اللَّهُمَّ رَابِطَتَهَا
وَاَدِمْ وُدَّهَا
وَاهْدِهَا سُبُلَهَا
وَامْلَأهَا بِنُورِكَ الَّذِي لَا يَخْبُوا
وَاشْرَحْ صُدُورَهَا بِفَيضِ الإِيمَانِ بِكَ
وَجَمِيلِ التَّوَكُّلِ عَلَيكَ وَأَحْيِهَا بِمَعْرِفَتِكَ
وَأَمِتْهَا عَلَى الشَّهَادَةِ فِي سَبِيلِكَ
إِنَّكَ نِعْمَ الْمَوْلَى وَنِعْمَ النَّصِيرُ
وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ
وَعَلَى آلِهِ وَصَحْبِهِ وَسَلِّم','',2);
