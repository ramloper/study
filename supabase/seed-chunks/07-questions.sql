-- 7
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c32667d3-aea5-1f6a-c372-4e7feb222e43','11111111-1111-1111-1111-111111111104','mcq','절연물의 절연계급을 최고허용온도가 낮은 온도에서 높은 온도 순으로 배치한 것은?',2,241)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2ba5ed18-4804-592e-3495-2e5f0ee5c96a','c32667d3-aea5-1f6a-c372-4e7feb222e43','Y종 — A종으 E종 — B종',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('70976341-7331-b472-7c92-1242247a9775','c32667d3-aea5-1f6a-c372-4e7feb222e43','A종 一 B종 一 E종—• Y종',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('030bd85a-31e0-97db-eba7-0dabe67f458c','c32667d3-aea5-1f6a-c372-4e7feb222e43','Y종 一 E종—♦ B종으 A종',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2fed380e-3344-dde3-588f-9a7783ceacf5','c32667d3-aea5-1f6a-c372-4e7feb222e43','B종 一 Y종一♦ A종一♦ E종',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c32667d3-aea5-1f6a-c372-4e7feb222e43','2ba5ed18-4804-592e-3495-2e5f0ee5c96a','① Y종 — A종으 E종 — B종','정답 ①. Y종 — A종으 E종 — B종',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('284d1ca1-94cd-3475-8a4d-1734c26871a0','11111111-1111-1111-1111-111111111104','mcq','메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?(단, Le Chatelier의 법칙을 이용한다.)',2,242)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('37e4903d-dba1-3d85-7bb6-65108145b59a','284d1ca1-94cd-3475-8a4d-1734c26871a0','메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('97b75fed-0372-a1a2-df04-d19cc9be0c9f','284d1ca1-94cd-3475-8a4d-1734c26871a0','메탄 30[vol%], 에탄 30[vol%], 프로판 40[vol%]의 혼',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7de40c4b-8b6b-6d74-f8da-36c68cfc9cde','284d1ca1-94cd-3475-8a4d-1734c26871a0','메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0c291caa-6432-e0b0-f429-99bf00455757','284d1ca1-94cd-3475-8a4d-1734c26871a0','메탄 50[vol%], 에탄 30[vol%], 프로판 20[vol%]의 혼',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('284d1ca1-94cd-3475-8a4d-1734c26871a0','37e4903d-dba1-3d85-7bb6-65108145b59a','① 메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼','정답 ①. 메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','11111111-1111-1111-1111-111111111104','mcq','펌프의 사용 시 공동현상(Cavitation)을 방지하고자 할 때의 조치사항으로 틀린 것은?',2,243)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ae0b97d-49a5-26e1-62a3-9c2ebdb441df','4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','펌프의 회전수를 높인다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5f9f1479-e6c7-e14b-96f5-8422b620c77d','4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','흡입비 속도를 작게 한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('30210f3f-b992-c23e-9808-d578ea831bd7','4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','펌프의 흡입관의 두(Head) 손실을 줄인다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0d6887d9-e4a8-69bb-f807-d5e3c903a0d0','4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9','1ae0b97d-49a5-26e1-62a3-9c2ebdb441df','① 펌프의 회전수를 높인다.','정답 ①. 공동현상은 유속이 빠를 경우 발생할 수 있으므로 공동현상을 예 방하려면 펌프의 회전수를 낮춰야 한다',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4e236c54-0651-addf-9d61-db906f86e746','11111111-1111-1111-1111-111111111104','mcq','추락재해에 대한 예방차원에서 고소작업의 감소를 위한 근 본적인 대책으로 옳은 것은?',2,244)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('248eb8be-adf4-be48-e8b8-f73a64653c55','4e236c54-0651-addf-9d61-db906f86e746','방망 설치',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b66cbf97-7579-2cbe-f07c-8ada0668f8fa','4e236c54-0651-addf-9d61-db906f86e746','지붕트러스의 일체화 또는 지상에서 조립',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4fc69cea-eee1-8d35-0401-319f11d23a6f','4e236c54-0651-addf-9d61-db906f86e746','안전대 사용',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('89a6ae06-a807-d090-555a-b4899db33c8d','4e236c54-0651-addf-9d61-db906f86e746','비계등에 의한 작업대 설치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4e236c54-0651-addf-9d61-db906f86e746','b66cbf97-7579-2cbe-f07c-8ada0668f8fa','② 지붕트러스의 일체화 또는 지상에서 조립','정답 ②. 지붕트러스의 일체화 또는 지상에서 조립하는 경우 고소작업을 최소화할 수 있다',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('00281e0e-ddd7-77ef-9184-187dce4eba53','11111111-1111-1111-1111-111111111104','mcq','건설업의 공사금액이 850억 원일 경우「산업안전보건법령」 에 따른 안전관리자의 수로 옳은 것은?（단, 전체 공사기간 을 100으로할 때 공사전 후 15에 해당하는 경우는고려 하지 않는다.）',2,245)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e341ee66-c034-d894-2232-24fd35cf79ec','00281e0e-ddd7-77ef-9184-187dce4eba53','1명이상',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7a4e835e-0a6d-d08e-8e65-333168eda4c7','00281e0e-ddd7-77ef-9184-187dce4eba53','2명이상',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8e2eac31-575a-e776-c96c-6065d09085f0','00281e0e-ddd7-77ef-9184-187dce4eba53','3명 이상',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3643db76-7330-7e3a-57eb-5918e48692f3','00281e0e-ddd7-77ef-9184-187dce4eba53','4명 이상',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('00281e0e-ddd7-77ef-9184-187dce4eba53','7a4e835e-0a6d-d08e-8e65-333168eda4c7','② 2명이상','정답 ②. 공사금액 800억 원 이상 1,500억 원 미만인 건설공사의 경우 안 전관리자는 2명 이상 배치하여야 한다. 다만. 전체 공사기간 중 전 • 후 15 에 해당하는 기간 동안은 1명 이상으로 한다.',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6b15c3f6-81a5-f073-5251-16b1439327dc','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에서 규정하고 있는 차량계 건설기계에 해당되지 않는 것은?',2,246)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('adf7e910-1211-f1df-5082-40ea6e5a3104','6b15c3f6-81a5-f073-5251-16b1439327dc','불도저',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e55c0a2b-bf57-80f0-681e-2110516d4b92','6b15c3f6-81a5-f073-5251-16b1439327dc','어스드릴',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('14bab536-afd3-0e25-3e28-a3d20f10d035','6b15c3f6-81a5-f073-5251-16b1439327dc','콘크리트펌프카',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5dab4880-7e1f-9377-87b8-e1feea568d12','6b15c3f6-81a5-f073-5251-16b1439327dc','105',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6b15c3f6-81a5-f073-5251-16b1439327dc','14bab536-afd3-0e25-3e28-a3d20f10d035','③ 콘크리트펌프카','정답 ③. 콘크리트펌프카',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5a5cbb42-390e-40e0-c59a-560e31600c0b','11111111-1111-1111-1111-111111111104','mcq','추락방호망의 그물코 크기의 기준으로 옳은 것은?',2,247)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ad3fd5cf-11a7-8868-3b16-0683398c6219','5a5cbb42-390e-40e0-c59a-560e31600c0b','5[cm] 이하',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc','5a5cbb42-390e-40e0-c59a-560e31600c0b','10[cm] 이하',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6d919531-d475-3b17-d6c6-1464391ca91d','5a5cbb42-390e-40e0-c59a-560e31600c0b','20[cm] 이하',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ba906ced-5f0e-3ab3-f2b8-b4f2a3479447','5a5cbb42-390e-40e0-c59a-560e31600c0b','3O[cm] 이하',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5a5cbb42-390e-40e0-c59a-560e31600c0b','dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc','② 10[cm] 이하','정답 ②. 1M 추락방호망의 그물코는 사각 또는 마름모로서 크기는 10[cm] 이 하이어야 한다. 1',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ab5d4880-33be-828a-9462-dad1b453fd26','11111111-1111-1111-1111-111111111104','mcq','건설현장에서 사용되는 작업발판 일체형 거푸집의 종류에 해당되지 않는 것은?',2,248)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d662e7b8-bc4c-1ad9-045b-dd6dab11ebd6','ab5d4880-33be-828a-9462-dad1b453fd26','갱 폼(gang form)',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aa388adc-8637-60ae-4c47-378597c9d796','ab5d4880-33be-828a-9462-dad1b453fd26','슬립 폼(slip form)',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4865e5ff-99d5-7d20-1837-630fe1e7e8bb','ab5d4880-33be-828a-9462-dad1b453fd26','클라이 밍 폼(climbing form)',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('92d28940-b19b-f5b4-8906-28949ba262f4','ab5d4880-33be-828a-9462-dad1b453fd26','유로 폼(euro form)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ab5d4880-33be-828a-9462-dad1b453fd26','92d28940-b19b-f5b4-8906-28949ba262f4','④ 유로 폼(euro form)','정답 ④. 유로 폼(euro form)',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('417d212a-a753-70b6-7343-8a8952b850a6','11111111-1111-1111-1111-111111111104','mcq','다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다. ( ) 안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도 ( ) 감기고 남을 수 있는 충분한 길이일 것',2,249)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('46a025e3-16bd-e4cc-12b6-66023baa1e97','417d212a-a753-70b6-7343-8a8952b850a6','1회',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5ce48df0-967e-3a48-af66-da07e4177851','417d212a-a753-70b6-7343-8a8952b850a6','2회',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('163fd12a-8fc9-4aab-4f60-9db8bd29da3c','417d212a-a753-70b6-7343-8a8952b850a6','4회',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c456f2b0-a2a5-32ba-53fc-71fab93a8537','417d212a-a753-70b6-7343-8a8952b850a6','6회',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('417d212a-a753-70b6-7343-8a8952b850a6','5ce48df0-967e-3a48-af66-da07e4177851','② 2회','정답 ②. 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또 는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼에 적어도 2회 감기고 남을 수 있는 충분한 길이여야 한다',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c3d36636-9a21-9ce1-6374-01dc9af228b7','11111111-1111-1111-1111-111111111104','mcq','터널공사 시 인화성 가스가 농도 이상으로 상승하는 것을 조기에 파악하기 위하여 자동경보장치를 설치하여야 하는 데 작업시작 전에 점검해야 할 사항이 아닌 것은?',2,250)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b2bf0bbe-b0df-e70e-088e-6fbbdca8c92c','c3d36636-9a21-9ce1-6374-01dc9af228b7','계기의이상유무',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a','c3d36636-9a21-9ce1-6374-01dc9af228b7','발열여부',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('00f87e92-d41c-583f-5fb9-ab0eddc03045','c3d36636-9a21-9ce1-6374-01dc9af228b7','검지부의 이상 유무',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('02895217-20ab-2b57-4bb0-9bab86af2727','c3d36636-9a21-9ce1-6374-01dc9af228b7','경보장치의 작동상태',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c3d36636-9a21-9ce1-6374-01dc9af228b7','7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a','② 발열여부','정답 ②. 자동경보장치의 작업시작 전 점검사항 • 계기의 이상 유무 • 검지부의 이상유무 • 경보장치의 작동상태 W1I',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('40dfd443-4399-7f39-f790-13471788d85d','11111111-1111-1111-1111-111111111104','mcq','점토질 지반의 침하 및 압밀 재해를 막기 위하여 실시하는 지반개량 탈수공법으로 적합하지 않은 것은?',2,251)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b9de8f9a-fc89-2940-8213-00ed8619c8f0','40dfd443-4399-7f39-f790-13471788d85d','샌드드레인공법',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ff443081-1789-d27b-1704-b248b6cdce1a','40dfd443-4399-7f39-f790-13471788d85d','생석회공법',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('06eb731b-5c45-b0d6-c821-ffd197205543','40dfd443-4399-7f39-f790-13471788d85d','진동공법',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('616ed395-0fb6-1cc8-5d54-ba8d550df469','40dfd443-4399-7f39-f790-13471788d85d','페이퍼드레인공법',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('40dfd443-4399-7f39-f790-13471788d85d','06eb731b-5c45-b0d6-c821-ffd197205543','③ 진동공법','정답 ③. 진동다짐 공법은 사질토 연약지반 개량공법이다. E <1',array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5006984a-b3dc-0b6a-24fd-ec462ce84606','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 산업안전보건위원회의 구성 • 운영에 관한 설명 중 틀린 것은?',2,252)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0648133b-1aba-19f3-1710-5305a5ae1481','5006984a-b3dc-0b6a-24fd-ec462ce84606','정기회의는 분기마다 소집한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('93e6576e-8dce-1c39-a978-495ce16f19ab','5006984a-b3dc-0b6a-24fd-ec462ce84606','위원장은 위원 중에서 호선（互選）한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('da135c7b-19ad-7dae-a556-45ffe4850b52','5006984a-b3dc-0b6a-24fd-ec462ce84606','근로자대표가 지명하는 명예산업안전감독관은 근로자',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c6277b84-2266-898e-6f80-65b8c987b57d','5006984a-b3dc-0b6a-24fd-ec462ce84606','공사금액 100억 원 이상의 건설업의 경우 산업안전보',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5006984a-b3dc-0b6a-24fd-ec462ce84606','c6277b84-2266-898e-6f80-65b8c987b57d','④ 공사금액 100억 원 이상의 건설업의 경우 산업안전보','정답 ④. 공사금액 100억 원 이상의 건설업의 경우 산업안전보',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4258d70d-b813-0e54-5df0-45ba2caebb40','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 잠함（潛函） 또는 잠수작업 등 높은 기압에서 작업하는 근로자의 근로시간 기준은?',2,253)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3abfa025-3428-1bc2-78f6-e6a658ede3fe','4258d70d-b813-0e54-5df0-45ba2caebb40','1일 6시간, 1주 32시간 초과금지',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b7a01876-09f5-d82d-d95b-6a6b003f75ee','4258d70d-b813-0e54-5df0-45ba2caebb40','1일 6시간. 1주 34시간 초과금지',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3cb0d7ed-f084-7a0b-ab4d-b79ab0dcc6e1','4258d70d-b813-0e54-5df0-45ba2caebb40','1일 8시간, 1주 32시간 초과금지',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('48d2b789-9208-aa43-e859-0eca7565844a','4258d70d-b813-0e54-5df0-45ba2caebb40','1일 8시간, 1주 34시간 초과금지',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4258d70d-b813-0e54-5df0-45ba2caebb40','b7a01876-09f5-d82d-d95b-6a6b003f75ee','② 1일 6시간. 1주 34시간 초과금지','정답 ②. 유해 • 위험작업에 대한 근로시간 제한 사업주는 잠함 또는 잠수작업 등 높은 기압에서 작업하는 근로자에게는 1 일 6시간. 1주 34시간을 초과하여 근로하게 해서는 아니 된다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ef854532-a3c5-df4b-91ce-8403cc8f74b9','11111111-1111-1111-1111-111111111104','mcq','산업현장에서 재해발생 시 조치순서로 옳은 것은?',2,254)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('db6ce75f-3cc0-968e-d463-9875aa207b72','ef854532-a3c5-df4b-91ce-8403cc8f74b9','긴급처리 一 재해조사一 원인분석 — 대책수립',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('396c39ad-e335-c237-9d2e-a62aaa87f129','ef854532-a3c5-df4b-91ce-8403cc8f74b9','긴급처리 一 원인분석 一 대책수립 一 재해조사',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('94863669-e054-494e-a40e-ecbb186df5ab','ef854532-a3c5-df4b-91ce-8403cc8f74b9','재해조사 一 원인분석 一 대책수립 一 긴급처리',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d18b98be-322f-17d1-12a3-949cbf4d35c3','ef854532-a3c5-df4b-91ce-8403cc8f74b9','재해조사 一 대책수립 ~ 원인분석 一 긴급처리',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ef854532-a3c5-df4b-91ce-8403cc8f74b9','db6ce75f-3cc0-968e-d463-9875aa207b72','① 긴급처리 一 재해조사一 원인분석 — 대책수립','정답 ①. 긴급처리 一 재해조사一 원인분석 — 대책수립',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('67676942-1d2a-3fee-0431-e6553fd47f8d','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 근로자 안전보건교육 대상에 따른 교육시간 기준 중 틀린 것은?（단, 상시작업이며, 일용근로 자 및 근로계약기간이 1개월 이하인 기간제근로자는 제외 한다.）',2,255)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('334dfe52-3bc1-810d-1368-d5bbaffcd118','67676942-1d2a-3fee-0431-e6553fd47f8d','특별교육 - 16시간 이상',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf909c4f-6e9b-666c-1d52-9ad704665fbf','67676942-1d2a-3fee-0431-e6553fd47f8d','채용 시 교육 - 8시간 이상',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('22fc0211-4d44-82a7-8a5f-0190eceb53f5','67676942-1d2a-3fee-0431-e6553fd47f8d','작업내용 변경 시 교육 - 2시간 이상',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fdd45fad-370d-e28b-f4d9-71a632bbf789','67676942-1d2a-3fee-0431-e6553fd47f8d','사무직 종사 근로자 정기교육 - 매반기 2시간 이상',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('67676942-1d2a-3fee-0431-e6553fd47f8d','fdd45fad-370d-e28b-f4d9-71a632bbf789','④ 사무직 종사 근로자 정기교육 - 매반기 2시간 이상','정답 ④. 사무직 종사 근로자 정기교육 - 매반기 2시간 이상',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','11111111-1111-1111-1111-111111111104','mcq','안전점검을 점검시기에 따라 구분할 때 다음에서 설명하는 안전점검은? 작업담당자 또는 해당 관리감독자가 맡고 있는 공정의 설비, 기계, 공구 등을 매일 작업 전 또는 작업 중에 일상적으로 실 시하는 안전점검',2,256)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('48843a29-2dca-fabd-e31c-c06c4cc2d1ee','6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','정기점검',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2bec1d49-2a0d-bca4-b50a-42465b2b36f6','6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','수시점검',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('adee9357-b688-2ad9-a38e-3acdc4c268b2','6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','특별점검',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('894781fb-2589-65b4-b87e-a4ba2d01d327','6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','임시점검',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465','2bec1d49-2a0d-bca4-b50a-42465b2b36f6','② 수시점검','정답 ②. 안전점검의 종류 종류 내용 일상점검 (수시점검) 작업 전 •중 •후 수시로 실시하는 점검 정기점검 정해진 기간에 정기적으로 실시하는 점검 기계 • 기구의 신설 및 변경 시 고장 수리 등에 의해 부정기 특별점검 적으로 실시하는 점검. 안전강조기간에 실시하는 점검 등 임시점검 이상 발견 시 또는 재해발생 시 임시로 실시하는 점검 SUBJECT 03 기계 • 기구 및 설비 안전관리',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('10e2702d-69a5-8610-2c8f-1f6c651a926b','11111111-1111-1111-1111-111111111104','mcq','위험예지훈련의 문제해결 4라운드에 해당하지 않는 것은?',2,257)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('12df432d-ecba-ce09-38f6-eb450a259a7d','10e2702d-69a5-8610-2c8f-1f6c651a926b','현상파악',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ac69f551-4218-ee90-c5ee-f95bbbe795b7','10e2702d-69a5-8610-2c8f-1f6c651a926b','본질추구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aaf1e3ab-6dbc-62d9-aee9-aa4c275191d2','10e2702d-69a5-8610-2c8f-1f6c651a926b','대책수립',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('683a9543-1f7f-7668-c192-d77288b5045e','10e2702d-69a5-8610-2c8f-1f6c651a926b','원인결정',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('10e2702d-69a5-8610-2c8f-1f6c651a926b','683a9543-1f7f-7668-c192-d77288b5045e','④ 원인결정','정답 ④. 원인결정',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f','11111111-1111-1111-1111-111111111104','mcq','서브시스템 분석에 사용되는 분석방법으로 시스템 수명주 기에서',2,258)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c6aa3d01-69d9-1b34-49e3-2b959d0a3aa5','2bf579fe-f0bd-15b4-8716-ed8c30c3360f','에 들어갈 위험분석기법은?',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ef362efd-50bf-c014-7b08-30dbafe625e0','2bf579fe-f0bd-15b4-8716-ed8c30c3360f','PHA',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2497fcca-bf82-73d9-cb5b-14573059b47f','2bf579fe-f0bd-15b4-8716-ed8c30c3360f','FTA',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6e8e6c21-7426-3391-f80b-e9155fa45b0c','2bf579fe-f0bd-15b4-8716-ed8c30c3360f','ETA',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f','ef362efd-50bf-c014-7b08-30dbafe625e0','② PHA','정답 ②. PHA',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b8230229-7467-3c0a-3aa5-dfdf7d079224','11111111-1111-1111-1111-111111111104','mcq','A사의 안전관리자는 자사 화학설비의 안전성 평가를 실시 하고 있다. 그중 제2단계인 정성적 평가를 진행하기 위하여 평가 항목을 설계관계 대상과 운전관계 대상으로 분류하였 을 때 설계관계 항목이 아닌 것은?',2,259)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c77e036f-3fba-7078-1b97-d28b35a7e0ff','b8230229-7467-3c0a-3aa5-dfdf7d079224','소방설비',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3461002f-a13c-b4e7-e3a7-4e2f0a5d3642','b8230229-7467-3c0a-3aa5-dfdf7d079224','공장 내 배치',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('77041d63-0bdf-1ae5-4a99-9ffdffa126e5','b8230229-7467-3c0a-3aa5-dfdf7d079224','입지조건',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('865a5bff-a1c5-2e1c-ed56-bc63c30be6bf','b8230229-7467-3c0a-3aa5-dfdf7d079224','원재료, 중간제품',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b8230229-7467-3c0a-3aa5-dfdf7d079224','865a5bff-a1c5-2e1c-ed56-bc63c30be6bf','④ 원재료, 중간제품','정답 ④. 안전성 평가 제2단계(정성적 평가) • 설계관계: 입지조건. 공장 내 배치, 건조물, 소방설비. 공정기기 등 • 운전관계: 원재료. 운송. 저장 등 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('78e2ed45-864d-6156-3e68-3b655887655d','11111111-1111-1111-1111-111111111104','mcq','양중기 과부하방지장치의 일반적인 공통사항에 대한 설명 중부적합한 것은?',2,260)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9b23730a-c177-fa1a-86aa-6cd300800243','78e2ed45-864d-6156-3e68-3b655887655d','과부하방지장치와 타 방호장치는 기능에 서로 장애를',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('524fb5cf-9f0e-db74-feb3-28243bc4c703','78e2ed45-864d-6156-3e68-3b655887655d','방호장치의 기능을 변형 또는 보수할 때 양중기의 기능',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('52464aea-a3e7-8a8a-c9cc-323f785f0378','78e2ed45-864d-6156-3e68-3b655887655d','과부하방지장치에는 정상동작상태의 녹색 램프와 과부',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e37cf900-f79a-2a6d-eaa8-e11fea4235e6','78e2ed45-864d-6156-3e68-3b655887655d','과부하방지장치 작동 시 경보음과 경보램프가 작동되',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('78e2ed45-864d-6156-3e68-3b655887655d','524fb5cf-9f0e-db74-feb3-28243bc4c703','② 방호장치의 기능을 변형 또는 보수할 때 양중기의 기능','정답 ②. 방호장치의 기능을 변형 또는 보수할 때 양중기의 기능',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('971372df-de8f-78da-f4f8-8867db65916d','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 프레스 작업시작 전 점검해야 할 사 항에 해당하는 것은?',2,261)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4b33da46-3313-6b54-576b-feefe31b03a6','971372df-de8f-78da-f4f8-8867db65916d','와이어로프가 통하고 있는 곳 및 작업장소의 지반상태',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e49992ab-176d-f359-da6d-577f5ad33381','971372df-de8f-78da-f4f8-8867db65916d','하역장치 및 유압장치 기능',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('106a2e8a-a291-34fd-d5da-f4632edee6b5','971372df-de8f-78da-f4f8-8867db65916d','권과방지장치 및 그 밖의 경보장치의 기능',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('33d9324e-72a7-b104-244b-50341f876db4','971372df-de8f-78da-f4f8-8867db65916d','1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('971372df-de8f-78da-f4f8-8867db65916d','33d9324e-72a7-b104-244b-50341f876db4','④ 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능','정답 ④. 프레스 등의 작업시작 전의 점검사항 •클러치 및 브레이크의 기능 • 크랭크축 - 플라이휠 • 슬라이드 • 연결봉 및 연결 나사의 풀림 유무 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('475e1583-b598-19f7-0c96-274aabebd797','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 목재가공용 기계에 사용되는 방호장 치의 연결이 옳지 않은 것은?',2,262)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('43079da5-9849-68a6-1ebf-0e1cc30ed73b','475e1583-b598-19f7-0c96-274aabebd797','둥근톱기계: 톱날접촉예방장치',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5e311166-c93b-e73d-76d7-dc2c348bb611','475e1583-b598-19f7-0c96-274aabebd797','띠톱기계: 날접촉예방장치',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f5505262-1690-4d5b-7e25-3abf949fcc8d','475e1583-b598-19f7-0c96-274aabebd797','모떼기기계: 날접촉예방장치',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('138bafda-a7bf-224d-856c-5968fa84505a','475e1583-b598-19f7-0c96-274aabebd797','동력식 수동대패기계: 반발예방장치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('475e1583-b598-19f7-0c96-274aabebd797','138bafda-a7bf-224d-856c-5968fa84505a','④ 동력식 수동대패기계: 반발예방장치','정답 ④. 대패기계의 날접촉예방장치 사업주는 작업대상물이 수동으로 공급되는 동력식 수동대패기계에 날접촉 예방장치를 설치하여야 한다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에서 정한 양중기의 종류에 해당하지 않는것은?',2,263)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dc32a8dc-9693-767c-ff15-b045951d01db','dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','크레 인[호이스트（hoist）를 포함]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dbb0d717-0e12-5968-e3bd-f090e281cfc4','dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','도르래',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ff2745c-9154-0a5a-3054-aa6bb287a482','dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','곤돌라',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8c2cf4c3-7280-8575-c6d1-3cc9b1c0843e','dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','승강기',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9','dbb0d717-0e12-5968-e3bd-f090e281cfc4','② 도르래','정답 ②. 도르래',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f95d1f84-58b5-dff3-3550-1f9367f5011f','11111111-1111-1111-1111-111111111104','mcq','롤러의 급정지를 위한 방호장치를 설치하고자 한다. 앞면 롤러 직경이 36[cm]이고, 분당 회전속도가 50[rpm]이라면 급정지거리는 약 얼마 이내이어야 하는가?（단, 무부하동작 에 해당한다.）',2,264)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c4f53d6c-8786-c2a7-03a6-f1244076f031','f95d1f84-58b5-dff3-3550-1f9367f5011f','45 [cm]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e7d8af8-f8af-5874-7fe3-7f03cef200e9','f95d1f84-58b5-dff3-3550-1f9367f5011f','50[cm]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7d687852-de91-62af-c9ec-d43714b355bb','f95d1f84-58b5-dff3-3550-1f9367f5011f','55 [cm]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a45c849c-e4fe-42ed-5578-0149d44a6b6b','f95d1f84-58b5-dff3-3550-1f9367f5011f','60[cm]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f95d1f84-58b5-dff3-3550-1f9367f5011f','c4f53d6c-8786-c2a7-03a6-f1244076f031','① 45 [cm]','정답 ①. 45 [cm]',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('42e0e4c7-ccff-5b40-c64f-6f17e209422b','11111111-1111-1111-1111-111111111104','mcq','다음 중 금형 설치 • 해체작업의 일반적인 안전사항으로 틀린 것은?',2,265)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('15421a64-6473-5d6b-0b27-71830f82568a','42e0e4c7-ccff-5b40-c64f-6f17e209422b','고정볼트는 고정 후 가능하면 나사산이 3〜4개 정도 짧',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2c680aaf-5f77-c6f2-fa31-bc0ad9ec8703','42e0e4c7-ccff-5b40-c64f-6f17e209422b','금형 고정용 브래킷（물림판）을 고정시킬 때 고정용 브',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8','42e0e4c7-ccff-5b40-c64f-6f17e209422b','금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3fb77446-0642-b4d6-2e8d-2821345a419c','42e0e4c7-ccff-5b40-c64f-6f17e209422b','금형의 설치용구는 프레스의 구조에 적합한 형태로 한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('42e0e4c7-ccff-5b40-c64f-6f17e209422b','5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8','③ 금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직','정답 ③. 금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4','11111111-1111-1111-1111-111111111104','mcq','다음 중「산업안전보건법령」상 보일러에 설치하는 압력방 출장치에 대하여 검사 후 봉인에 사용되는 재료로 가장 적 합한 것은?',2,266)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('de06c6fb-5120-143c-6d9f-3d7762eab2a6','4711d6f0-1285-d0ff-3e5d-5615f5db47e4','납',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2fc86eec-68e6-f12c-0d7e-d0b4077ec8f7','4711d6f0-1285-d0ff-3e5d-5615f5db47e4','주석',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4779d421-465d-e95f-3578-ac11504d862a','4711d6f0-1285-d0ff-3e5d-5615f5db47e4','구리',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4c9f7841-9b38-c709-f0a1-a6f0ed1dbc67','4711d6f0-1285-d0ff-3e5d-5615f5db47e4','알루미늄',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4','de06c6fb-5120-143c-6d9f-3d7762eab2a6','① 납','정답 ①. 압력방출장치는 매년 1회 이상 국가교정기관에서 교정을 받은 압력 계를 이용하여 설정압력에서 압력 방출장치가 적정하게 작동하는지를 검사한 후 납으로 봉인하여 사용하여야 한다',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('608e2907-c66f-f8ab-8bdc-6e1461abc31b','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 사업주는 근로자가 안전하게 통행할 수 있도록 통로에 얼마 이상의 채광 또는 조명시설 을 하여야 하는가?',2,267)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2854d31a-578e-a3a5-a3dd-78fb17b05328','608e2907-c66f-f8ab-8bdc-6e1461abc31b','50럭스',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cf801658-a091-cd3a-324e-e14bb90ea9bb','608e2907-c66f-f8ab-8bdc-6e1461abc31b','75럭스',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('767dab25-c4bd-ae20-dff6-7c08ddb6efb4','608e2907-c66f-f8ab-8bdc-6e1461abc31b','90럭스',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8ca9ba17-69d0-d969-1a3e-d04eff277bc8','608e2907-c66f-f8ab-8bdc-6e1461abc31b','100럭스',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('608e2907-c66f-f8ab-8bdc-6e1461abc31b','cf801658-a091-cd3a-324e-e14bb90ea9bb','② 75럭스','정답 ②. 근로자가 안전하게 통행할 수 있도록 통로에 75[lux] 이상의 채 광 또는 조명시설을 하여야 한다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('36933e1e-ee40-6f68-2e36-73fedb6dabfa','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 다음 중 보일러의 방호장치와 가장 거리가 먼 것은?',2,268)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fce8c849-46d6-4b79-d0cf-9d14493b0e96','36933e1e-ee40-6f68-2e36-73fedb6dabfa','언로드밸브',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c3dae36a-e4c1-5974-4482-b9b4d75cf4f6','36933e1e-ee40-6f68-2e36-73fedb6dabfa','압력방출장치',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('59348ae4-9f6e-cf65-27d7-75be56a0de0c','36933e1e-ee40-6f68-2e36-73fedb6dabfa','압력제한스위치',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ab147f75-3aee-528d-518e-4b4c32c0ca47','36933e1e-ee40-6f68-2e36-73fedb6dabfa','고저수위 조절장치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('36933e1e-ee40-6f68-2e36-73fedb6dabfa','fce8c849-46d6-4b79-d0cf-9d14493b0e96','① 언로드밸브','정답 ①. 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치, 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af','11111111-1111-1111-1111-111111111104','mcq','다음 중 롤러기 급정지장치의 종류가 아닌 것은?',2,269)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b7b38b30-366c-f226-0de8-361039a4de8b','cb9111be-b45e-3c7c-476d-fdbdcd29a8af','어깨조작식',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fb0678fc-af79-af56-9d0a-3383aef169b5','cb9111be-b45e-3c7c-476d-fdbdcd29a8af','손조작식',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b57107f4-ad6e-2fc8-160b-cfdabdc1447c','cb9111be-b45e-3c7c-476d-fdbdcd29a8af','복부조작식',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7c62c68f-67d2-7492-5a70-79b55bf8d210','cb9111be-b45e-3c7c-476d-fdbdcd29a8af','무릎조작식',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af','b7b38b30-366c-f226-0de8-361039a4de8b','① 어깨조작식','정답 ①. 급정지장치 조작부의 종류 손조작식. 복부조작식. 무릎조작식 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d','11111111-1111-1111-1111-111111111104','mcq','다음 빈칸에 들어갈 내용으로 알맞은 것은? “교류 특고압 가공전선로에서 발생하는 극저주파 전자계는 지표상 1[m]에서 전계가 ( @ )，자계가 ( ® )가 되도 록 시설하는 등 상시 정전유도 및 전자유도작용에 의하여 사 람에게 위험을 줄 우려가 없도록 시설하여야 한다.”',2,270)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fdedb298-644c-3cac-3893-2268497d59a5','0f7d72f4-c7a3-85e1-d85d-c102ca67823d','@ 0.35[kV/m] 이하 ® 0.833*] 이하',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5fb6d597-1f1b-c24e-42a8-89a0ca449ffb','0f7d72f4-c7a3-85e1-d85d-c102ca67823d','® 3.5[kV/m] 이하 ® 8.33[/zT] 이하',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cb94f73f-2f17-727a-3ea6-118d1bad7740','0f7d72f4-c7a3-85e1-d85d-c102ca67823d','® 3.5[kV/m] 이하 ®83.3[/zT] 이하',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1a5f5879-6871-cd61-8580-5922476c2143','0f7d72f4-c7a3-85e1-d85d-c102ca67823d','@ 35[kV/m] 이하 ® 83301 이하',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d','cb94f73f-2f17-727a-3ea6-118d1bad7740','③ ® 3.5[kV/m] 이하 ®83.3[/zT] 이하','정답 ③. 교류 특고압 가공전선로에서 발생하는 극저주파 전자계는 지표 상 l[m]에서 전계가 3.5[kV/m] 이하. 자계가 83.3[XT] 이하가 되도록 시 설하고. 직류 특고압 가공전선로에서 발생하는 직류전계는 지표면에서 25[kV/m] 이하, 직류자계는 지표상 l[m]에서 400,000[/T] 이하가 되도 록 시설하는 등 상시 정전유도 및 전자유도작용에 의하여 사람에게 위험을 줄 우려가 없도록 시설하여야 한다.',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f','11111111-1111-1111-1111-111111111104','mcq','외부피뢰시스템에서 접지극은 지표면에서 몇 [m] 이상 깊 이로 매설하여야 하는가?(단, 동결심도는 고려하지 않는 경 우이다.)',2,271)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('50eb3450-0722-feed-f14b-973d80df4a4c','51cde91e-77c0-4d0b-e5fd-a2fe905f342f','0.5',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('802a9ffc-35ab-5ee3-6ab2-875a7231faf6','51cde91e-77c0-4d0b-e5fd-a2fe905f342f','0.75',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5e495172-72df-6887-f14e-fdfba549db5c','51cde91e-77c0-4d0b-e5fd-a2fe905f342f','1',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('873dcf3c-1d36-1ee0-804b-cbd721ee3ceb','51cde91e-77c0-4d0b-e5fd-a2fe905f342f','1.25',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f','802a9ffc-35ab-5ee3-6ab2-875a7231faf6','② 0.75','정답 ②. 접지극은 동결 깊이를 고려하여 시설하되. 고압 이상의 전기설비 와 규정에 의하여 시설하는 접지극의 매설깊이는 지표면으로부터 0.75[m] 이상으로 한다. WII8I',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','11111111-1111-1111-1111-111111111104','mcq','인체의 전기저항을 0.5[kQ]이라고 하면 심실세동을 일으 키는 위험한계에너지는 몇 [J]인가?（단, 심실세동전류값 / 쯔[mA]의 Dalziel의 식을 이용하며, 통전시간은 1초 로 한다.）',2,272)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b728f922-7ea3-88bf-f6c4-11a98f24d53c','bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','13.6',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f176f010-6d53-d83d-6828-c49c8e39fdaa','bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','12.6',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f0077902-b6ad-8cd1-0a78-12ddfbc785a6','bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','11.6',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('66edc7b6-64fe-c100-53ce-e14f5cdbd6ae','bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','10.6',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f','b728f922-7ea3-88bf-f6c4-11a98f24d53c','① 13.6','정답 ①. 13.6',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('63ccf0b2-29c1-f862-4598-8ff3229381cd','11111111-1111-1111-1111-111111111104','mcq','다음 중 한국전기설비규정에 따른 전압의 구분으로 틀린 것 은?',2,273)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d4748bcc-ab3f-8658-38e7-859ea7d4141a','63ccf0b2-29c1-f862-4598-8ff3229381cd','저압: 직류 l[kV] 이하',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9ae8816a-a0de-f8e7-9686-259410308cc1','63ccf0b2-29c1-f862-4598-8ff3229381cd','고압: 교류 l[kV] 초과 7[kV] 이하',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3f065ae0-40a5-53da-b934-97f724f15c08','63ccf0b2-29c1-f862-4598-8ff3229381cd','특고압: 직류 7[kV] 초과',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('02633d29-0863-ac1b-a4d0-c3b7e4595c23','63ccf0b2-29c1-f862-4598-8ff3229381cd','특고압: 교류 7[kV] 초과',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('63ccf0b2-29c1-f862-4598-8ff3229381cd','d4748bcc-ab3f-8658-38e7-859ea7d4141a','① 저압: 직류 l[kV] 이하','정답 ①. 저압: 직류 l[kV] 이하',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','11111111-1111-1111-1111-111111111104','mcq','다음 설명이 의미하는 것은? 온도. 압력 등 제어상태가 규정의 조건을 벗어나는 것에 의해 반응속도가 지수함수적으로 증대되고. 반응용기 내의 온도, 압력이 급격히 이상 상승되어 규정 조건을 벗어나고, 반응이 과격화되는 현상',2,274)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('23b20271-cedb-5f90-7b2a-36fe6b12aba0','e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','비등',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c5872eec-d76a-8509-2578-d317b4961d07','e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','과열. 과압',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('36d2faaf-14c2-8ca5-cd59-d53423bc636c','e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','폭발',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1e052c14-a81d-c3bf-2342-84547b2b6980','e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','반응폭주',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66','1e052c14-a81d-c3bf-2342-84547b2b6980','④ 반응폭주','정답 ④. 반응폭주 온도, 압력 등 제어상태가 규정의 조건을 벗어나는 것에 의해 반응속도가 자수함수적으로 증대되고. 반응용기 내의 온도. 압력이 급격히 이상 상승 되어 규정 조건을 벗어나고. 반응이 과격화되는 현상이다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('974cdd57-7f90-a391-8884-293bf3114da9','11111111-1111-1111-1111-111111111104','mcq','위험물을 저장 • 취급하는 화학설비 및 그 부속설비를 설치 할 때 ‘단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이’의 안전거리는 설비의 바깥면으로부터 몇 [m] 이상이 되어야 하는가?',2,275)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a48552b8-b0ef-ed46-2b4e-e003740752ff','974cdd57-7f90-a391-8884-293bf3114da9','5[m]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be53c559-6886-bea7-7070-c6e1aa154cda','974cdd57-7f90-a391-8884-293bf3114da9','10[m]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf89ee86-6679-4470-2493-dfcd80b1aa06','974cdd57-7f90-a391-8884-293bf3114da9','15[m]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b717867f-78aa-98b5-e70e-c4202ff7cb99','974cdd57-7f90-a391-8884-293bf3114da9','20[m]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('974cdd57-7f90-a391-8884-293bf3114da9','be53c559-6886-bea7-7070-c6e1aa154cda','② 10[m]','정답 ②. 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이 는 설비의 바깥면으로부터 10[m] 이상의 안전거리를 두어야 한다. E묘',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('aad126d2-0d4f-627b-489e-8717863fd442','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 각 물질이 해당하는 위험물질의 종 류를 옳게 연결한 것은?',2,276)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a4ac9c90-f177-7751-1303-f955aff8cd45','aad126d2-0d4f-627b-489e-8717863fd442','아세트산（농도 90[%]） - 부식성 산류',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c576b0e2-1cf2-2fc2-1211-3e0b03399057','aad126d2-0d4f-627b-489e-8717863fd442','아세톤（농도 9이%]） - 부식성 염기류',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('278b31b3-4bf7-0d66-9c19-d2f2fa269086','aad126d2-0d4f-627b-489e-8717863fd442','이황화탄소 - 인화성 가스',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e3be6a5-4a0d-095e-0abf-326442ae15ae','aad126d2-0d4f-627b-489e-8717863fd442','수산화칼륨 - 인화성 가스',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('aad126d2-0d4f-627b-489e-8717863fd442','a4ac9c90-f177-7751-1303-f955aff8cd45','① 아세트산（농도 90[%]） - 부식성 산류','정답 ①. 농도 60[%] 이상인 아세트산은 부식성 산류에 해당한다. 오답해설 아세톤-인화성 액체 이황화탄소-인화성 액체 농도 40[%] 이상인 수산화칼륨-부식성 염기류',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('58664e89-386c-b7a7-255e-0f2f6c13de1f','11111111-1111-1111-1111-111111111104','mcq','자연발화성을 가진 물질이 자연발화를 일으키는 원인으로 거리가 먼 것은?',2,277)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('186f15fe-7103-e234-bbd9-46ac55f12327','58664e89-386c-b7a7-255e-0f2f6c13de1f','분해열',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c26494f6-edf9-c87b-8edd-acf79cb0d513','58664e89-386c-b7a7-255e-0f2f6c13de1f','증발열',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('efb9fe20-db5b-f2ca-6a9e-fd1a74a86563','58664e89-386c-b7a7-255e-0f2f6c13de1f','산화열',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('931bcb7f-2d7d-263a-120a-d484d479fc55','58664e89-386c-b7a7-255e-0f2f6c13de1f','중합열',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('58664e89-386c-b7a7-255e-0f2f6c13de1f','c26494f6-edf9-c87b-8edd-acf79cb0d513','② 증발열','정답 ②. 찌 증발열 • 어떤 물질이 기화할 때 외부로부터 흡수하는 열량이다. • 증발열이 클수록 주변에서 더 많은 열을 빼앗으므로 주위의 온도를 낮추 게 된다. • 증발열은 냉각현상에 응용된다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cde65e39-cc51-f4b9-db34-61adcc34fdc6','11111111-1111-1111-1111-111111111104','mcq','건설작업장에서 근로자가 상시 작업하는 장소의 작업면 조 도기준으로 옳지 않은 것은?（단, 갱내 작업장과 감광재료를 취급하는 작업장의 경우는 제외한다.）',2,278)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('52d064b5-79d5-1988-1743-6cd889538d58','cde65e39-cc51-f4b9-db34-61adcc34fdc6','초정밀작업 : 600[lux] 이상',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d5cb47ce-7a89-67e0-f1fd-62b1cd70dd7a','cde65e39-cc51-f4b9-db34-61adcc34fdc6','정밀작업 : 300[lux] 이상',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ef75bc67-8274-4f1f-1804-011896f63f94','cde65e39-cc51-f4b9-db34-61adcc34fdc6','보통작업: 15O[lux] 이상',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2735ba07-7622-78a3-64c6-0de331fc8195','cde65e39-cc51-f4b9-db34-61adcc34fdc6','초정밀. 정밀, 보통작업을 제외한 기타 작업: 75[lux] 이상',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cde65e39-cc51-f4b9-db34-61adcc34fdc6','52d064b5-79d5-1988-1743-6cd889538d58','① 초정밀작업 : 600[lux] 이상','정답 ①. 작업별 조도기준 • 초정밀작업: 750[lux] 이상 • 정밀작업: 300[lux] 이상 • 보통작업: 150[lux] 이상 • 그 밖의 작업: 75[lux] 이상 wnn subject 02 인간공학 및 위험성평가 • 관리',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','11111111-1111-1111-1111-111111111104','mcq','옥외에 설치되어 있는 주행크레인에 대하여 이탈방지장치 를 작동시키는 등 그 이탈을 방지하기 위한 조치를 하여야 하는 순간풍속에 대한 기준으로 옳은 것은?',2,279)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('71d566ec-032a-78e1-ba6e-7b08bb61447a','290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','순간풍속이 초당 10[m]를 초과하는 바람이 불어올 우',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('182de562-c07d-0e1c-3186-7c0a2da2fc77','290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','순간풍속이 초당 20[m]를 초과하는 바람이 불어올 우',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e59df59d-fe28-1b9f-934d-722717bdae59','290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ffb76c2b-20f5-afed-b6fa-804ea76ed02b','290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','순간풍속이 초당 40[m]를 초과하는 바람•이 불어올 우',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4','e59df59d-fe28-1b9f-934d-722717bdae59','③ 순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우','정답 ③. 려가 있는 경우 3 폭풍에 의한 이탈방지 순간풍속이 30[m/s]를 초과하는 바람이 불어올 우려가 있는 경우 옥외에 설치되어 있는 주행크레인에 대하여 이탈방지장치를 작동시키는 등 이탈 방지를 위한 조치를 하여야 한다. 1',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('11b59e63-ca8f-7e38-a958-f12fe55a41e0','11111111-1111-1111-1111-111111111104','mcq','철골 작업 철골부재에서 근로자가 수직방향으로 이동하는 경우에 설치하여야 하는 고정된 승강로의 최소 답단 간격은 얼마 이내인가?',2,280)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0a85ae54-bb66-719f-67d3-02f42265dd5c','11b59e63-ca8f-7e38-a958-f12fe55a41e0','20[cm]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7bfa239b-482d-8d82-46bf-5209c6c3d45e','11b59e63-ca8f-7e38-a958-f12fe55a41e0','25 [cm]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0','11b59e63-ca8f-7e38-a958-f12fe55a41e0','30[cm]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d7135baa-a159-84b5-9e5b-912166e0e563','11b59e63-ca8f-7e38-a958-f12fe55a41e0','40[cm]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('11b59e63-ca8f-7e38-a958-f12fe55a41e0','3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0','③ 30[cm]','정답 ③. 근로자가 수직방향으로 이동하는 철골부재에는 답단 간격이 30[cm] 이내인 고정된 승강로를 설치하여야 한다',array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
