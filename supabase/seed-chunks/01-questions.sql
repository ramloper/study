-- 1
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cba81080-d88d-8428-bf0d-e655077b030f','11111111-1111-1111-1111-111111111104','mcq','방진마스크의 사용 조건 중 산소농도의 최소기준으로 옳은 것은?',2,1)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b38853a8-24e7-b150-d047-638edfe3715e','cba81080-d88d-8428-bf0d-e655077b030f','16[%]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('505e261d-eaee-0d04-f4c8-0ce4f132ef9a','cba81080-d88d-8428-bf0d-e655077b030f','18[%]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cc2d8097-4c47-3004-f460-e08f7cafb5e2','cba81080-d88d-8428-bf0d-e655077b030f','21[%]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ee3be259-6b95-ea77-c1c6-2438f675980d','cba81080-d88d-8428-bf0d-e655077b030f','23. 5[%]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cba81080-d88d-8428-bf0d-e655077b030f','505e261d-eaee-0d04-f4c8-0ce4f132ef9a','② 18[%]','정답 ②. 방진마스크는 산소농도 18[%] 이상인 장소에서 사용하여야 한다',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따른 특정 행위의 지시 및 사실의 고 지에 사용되는 안전보건표지의 색도기준으로 옳은 것은?',2,2)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a8b79e9c-86ac-d0ee-5976-e604fb6b3079','5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','2.5G 4/10',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('139d7ab8-75cf-ae67-7293-bc4dcc3c4c79','5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','2.5PB4/10',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d6be4a89-ffe8-4a6b-0739-cb824fe7fada','5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','5Y 8.5/12',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f1176253-0663-b043-f109-e3996e2cca80','5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','7.5R 4/14',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00','139d7ab8-75cf-ae67-7293-bc4dcc3c4c79','② 2.5PB4/10','정답 ②. 안전보건표지의 색도기준 및 용도 색채 색도기준 용도 사용예 파란색 4/10 지시 특정 행위의 지시 및 사실의 고지 비상구 및 피난소, 사람 또는 차량 녹색 안내 의 통행표지 흰색 N9.5 파란색 또는 녹색에 대한 보조색',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6169f163-1fc5-3f6a-4151-9f07e49d667d','11111111-1111-1111-1111-111111111104','mcq','인간관계의 메커니즘 중 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기와 비슷한 것을 발견 하는 것은?',2,3)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf9160da-87d6-e3d9-f4b6-b01af32d3851','6169f163-1fc5-3f6a-4151-9f07e49d667d','동일화',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f01e504d-fac3-fee7-da3f-d8304e76898f','6169f163-1fc5-3f6a-4151-9f07e49d667d','일체화',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5a531118-a0dd-63c4-1478-a75d49b85a2a','6169f163-1fc5-3f6a-4151-9f07e49d667d','투사',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2d907a6a-5e4d-64a2-9ee9-1647e29266e2','6169f163-1fc5-3f6a-4151-9f07e49d667d','공감',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6169f163-1fc5-3f6a-4151-9f07e49d667d','bf9160da-87d6-e3d9-f4b6-b01af32d3851','① 동일화','정답 ①. 동일화( 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기 와 비슷한 점을 발견하는 것이다',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4e3a3d94-6364-3444-1a30-ddb15b481dc8','11111111-1111-1111-1111-111111111104','mcq','유기화합물용 방독마스크 시험가스의 종류가 아닌 것은?',2,4)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('14284ba5-d12c-cf3e-f94e-33f779b7a95d','4e3a3d94-6364-3444-1a30-ddb15b481dc8','염소가스 또는 증기',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a1bc438a-a198-5f12-7882-a7617a1c5708','4e3a3d94-6364-3444-1a30-ddb15b481dc8','시클로헥산',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('24f3d31b-eb55-0dd4-2e20-f09f42fc8a15','4e3a3d94-6364-3444-1a30-ddb15b481dc8','디메틸에테르',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6f1c1783-5340-9adb-99f8-2880b509321e','4e3a3d94-6364-3444-1a30-ddb15b481dc8','이소부탄',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4e3a3d94-6364-3444-1a30-ddb15b481dc8','14284ba5-d12c-cf3e-f94e-33f779b7a95d','① 염소가스 또는 증기','정답 ①. 방독마스크의 종류 및 시험가스 정화통 흡수제 종류 시험가스 (정화제) 시클로헥산(C6H12) 유기화합물용 디메틸에테르(CH30cH3) 활성탄 이소부탄(C4Hlo) 할로겐용 염소가스 또는 증기(Cl2) 소다라임. 활성탄',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d6b52d57-48da-de07-e718-80447c30640f','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 안전보건관리책임자 등에 대한 교육 시간 기준으로 틀린 것은?',2,5)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('49bc4b19-1086-88de-b62e-99553c74e647','d6b52d57-48da-de07-e718-80447c30640f','보건관리자, 보건관리전문기관의 종사자 보수교육: 24',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e4d24d02-e18c-0a3f-9234-02461ff5c96e','d6b52d57-48da-de07-e718-80447c30640f','안전관리자. 안전관리전문기관의 종사자 신규교육: 34',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('948022e9-88ac-06b0-6148-045f539ef587','d6b52d57-48da-de07-e718-80447c30640f','안전보건관리책임자 보수교육: 6시간 이상',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fe155008-8ce8-9bee-9e84-aa74e41d2de4','d6b52d57-48da-de07-e718-80447c30640f','건설재해예방전문지도기관의 종사자 신규교육: 24시',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d6b52d57-48da-de07-e718-80447c30640f','fe155008-8ce8-9bee-9e84-aa74e41d2de4','④ 건설재해예방전문지도기관의 종사자 신규교육: 24시','정답 ④. 건설재해예방전문지도기관 종사자의 교육시간은 신규교육 34시간 이상. 보수교육 24시간 이상이다',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('8763138a-89b8-e83e-65bf-6ffc610e9c63','11111111-1111-1111-1111-111111111104','mcq','Line-Staff형 안전보건관리조직에 관한 특징이 아닌 것은?',2,6)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('86828604-bd34-b233-e42e-603c6a6edbc5','8763138a-89b8-e83e-65bf-6ffc610e9c63','조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ad921ac8-b998-347e-6c1f-8b9a2cc5f293','8763138a-89b8-e83e-65bf-6ffc610e9c63','스태프가 월권행위할 경우가 있으며 라인스태프에 의',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ba3eb5bb-dd41-61ac-6868-36a8beb783c2','8763138a-89b8-e83e-65bf-6ffc610e9c63','생산부문은 안전에 대한 책임과 권한이 없다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6e6a4e4d-f938-7030-0491-2510ecdb7939','8763138a-89b8-e83e-65bf-6ffc610e9c63','명령계통과 조언의 권고적 참여가 혼동되기 쉽다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('8763138a-89b8-e83e-65bf-6ffc610e9c63','ba3eb5bb-dd41-61ac-6868-36a8beb783c2','③ 생산부문은 안전에 대한 책임과 권한이 없다.','정답 ③. 생산부문은 안전에 대한 책임과 권한이 없다.',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('af702af6-e205-9e10-65b6-db87cef86dd4','11111111-1111-1111-1111-111111111104','mcq','직무적성검사의 특징과 가장 거리가 먼 것은?',2,7)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8026384f-de36-ec9d-4e2b-3596de1861b4','af702af6-e205-9e10-65b6-db87cef86dd4','재현성',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3fd5cf4d-a15f-f6e8-aef5-80138019bfcd','af702af6-e205-9e10-65b6-db87cef86dd4','객관성',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('00951d12-464a-c36b-4b8d-1e8db2babc15','af702af6-e205-9e10-65b6-db87cef86dd4','타당성',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('73d88475-5e34-e14a-d8cb-6be949efb21b','af702af6-e205-9e10-65b6-db87cef86dd4','표준화',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('af702af6-e205-9e10-65b6-db87cef86dd4','8026384f-de36-ec9d-4e2b-3596de1861b4','① 재현성','정답 ①. 재현성',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5f50b6aa-5899-ee15-b213-69e5f13619f1','11111111-1111-1111-1111-111111111104','mcq','매슬로우（Maslow）의 욕구위계이론 중 제2단계 욕구에 해 당하는 것은?',2,8)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6a317661-2dd6-6b04-c778-1cc66b72263e','5f50b6aa-5899-ee15-b213-69e5f13619f1','자아실현의 욕구',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bce903af-efad-021e-9496-d8dfdfc5b1b7','5f50b6aa-5899-ee15-b213-69e5f13619f1','안전에 대한 욕구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8c52a4dc-8eca-95b0-fc84-dee4c5b7fcad','5f50b6aa-5899-ee15-b213-69e5f13619f1','사회적욕구',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0cbf5faf-9746-1b2b-1c00-9a639527faf3','5f50b6aa-5899-ee15-b213-69e5f13619f1','생리적욕구',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5f50b6aa-5899-ee15-b213-69e5f13619f1','bce903af-efad-021e-9496-d8dfdfc5b1b7','② 안전에 대한 욕구','정답 ②. 안전에 대한 욕구',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4a56d7e9-c594-a426-a9f5-3267021847c5','11111111-1111-1111-1111-111111111104','mcq','결함수분석법(FTA)에서의 미니멀 컷섯।과 미니멀 패스셋에 관한 설명으로 맞는 것은?',2,9)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('629cd9c8-7dd9-3c9b-7b42-1fc7d9b24992','4a56d7e9-c594-a426-a9f5-3267021847c5','미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('36f4024d-58a9-5868-980c-28e0bfcfd4a2','4a56d7e9-c594-a426-a9f5-3267021847c5','미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0a5da199-c1d1-5f6f-f302-6d9bac771f20','4a56d7e9-c594-a426-a9f5-3267021847c5','미니멀 패스셋은 시스템의 고장을 발생시키는 최소의',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cf7ac815-825a-2beb-2762-65c19f77af73','4a56d7e9-c594-a426-a9f5-3267021847c5','미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4a56d7e9-c594-a426-a9f5-3267021847c5','cf7ac815-825a-2beb-2762-65c19f77af73','④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한','정답 ④. 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('297b293d-5e44-0b9e-910b-3d32ce502640','11111111-1111-1111-1111-111111111104','mcq','다음 중 신호검출이론(SDT)에서 두 정규분포 곡선이 교차 하는 부분에 판별기준이 놓였을 경우 Beta 값으로 옳은 것은?',2,10)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ab14dc93-5ccb-f313-596f-f8f58e19a65c','297b293d-5e44-0b9e-910b-3d32ce502640','Beta 0',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c0333355-fa04-081f-9d0a-3c4dceec90b6','297b293d-5e44-0b9e-910b-3d32ce502640','Beta<l',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('366b4171-dce7-1de9-fbf3-61d56c4cf44f','297b293d-5e44-0b9e-910b-3d32ce502640','Beta 1',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e49dcb8-c589-fe38-ca8a-f35d62a223e8','297b293d-5e44-0b9e-910b-3d32ce502640','Beta> 1',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('297b293d-5e44-0b9e-910b-3d32ce502640','366b4171-dce7-1de9-fbf3-61d56c4cf44f','③ Beta 1','정답 ③. Beta 1',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c72c4b96-c0e3-ac07-bb54-591a92c2a544','11111111-1111-1111-1111-111111111104','mcq','NIOSH 지침에서 최대허용한계(MPL)는 활동한계(AL)의 몇 배인가?',2,11)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e3c4220f-da0d-a1bd-9f59-fa2db420edfe','c72c4b96-c0e3-ac07-bb54-591a92c2a544','1배',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('57aba7e8-75aa-65fe-20af-a57ef8f76ba3','c72c4b96-c0e3-ac07-bb54-591a92c2a544','3배',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d8e5f6f8-8b22-9c99-b702-823dfecdcee8','c72c4b96-c0e3-ac07-bb54-591a92c2a544','5배',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eef7b9fa-786c-fbec-e025-44e62a3c1367','c72c4b96-c0e3-ac07-bb54-591a92c2a544','9배',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c72c4b96-c0e3-ac07-bb54-591a92c2a544','57aba7e8-75aa-65fe-20af-a57ef8f76ba3','② 3배','정답 ②. 3배',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('437d9bde-eb0e-fab0-d38b-f5346853ce09','11111111-1111-1111-1111-111111111104','mcq','재해조사 시 유의사항으로 적절하지 않은 것은?',2,12)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b6a71037-4149-74dd-fe83-4194305a9da9','437d9bde-eb0e-fab0-d38b-f5346853ce09','조사는 신속하게 행한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be0af296-48e4-fce8-9259-c5357e727106','437d9bde-eb0e-fab0-d38b-f5346853ce09','긴급조치를 하여 2차 재해방지를 도모한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('113d7308-3f02-040e-d2f2-5a1502aef20a','437d9bde-eb0e-fab0-d38b-f5346853ce09','조사는 2인 이상이 한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('72a4ddc0-418d-cc45-5700-0984da03aa9f','437d9bde-eb0e-fab0-d38b-f5346853ce09','책임추궁을 우선으로 한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('437d9bde-eb0e-fab0-d38b-f5346853ce09','72a4ddc0-418d-cc45-5700-0984da03aa9f','④ 책임추궁을 우선으로 한다.','정답 ④. 재해조사 시 책임추궁보다는 재발방지를 우선하는 기본 태도를 갖는다. 1W1M',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('79fac8b9-1408-bc02-b758-999fc1d66662','11111111-1111-1111-1111-111111111104','mcq','다음 중 비파괴시험의 종류에 해당하지 않는 것은?',2,13)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('930acb4d-7b70-155c-9613-86be099ca657','79fac8b9-1408-bc02-b758-999fc1d66662','와류탐상시험',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('527426f3-c91c-cfd0-1194-6ba4f4be30fc','79fac8b9-1408-bc02-b758-999fc1d66662','초음파탐상시험',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a44143e-f9fb-f76a-c8ae-3d5247c9aa45','79fac8b9-1408-bc02-b758-999fc1d66662','인장시험',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('00c250ca-c476-7f52-1208-57409e924f5e','79fac8b9-1408-bc02-b758-999fc1d66662','방사선투과시험',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('79fac8b9-1408-bc02-b758-999fc1d66662','3a44143e-f9fb-f76a-c8ae-3d5247c9aa45','③ 인장시험','정답 ③. 인장시험',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('dd8db9be-568d-9d08-0c19-bafcebeddd80','11111111-1111-1111-1111-111111111104','mcq','다음 그림은 심장맥동주기를 나타낸 것이다. T파는 어떤 경 우인가?',2,14)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('04f9a31d-3f75-ff1d-d4e6-de3b004c40a1','dd8db9be-568d-9d08-0c19-bafcebeddd80','심방의 수축에 따른 파형',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5e2a6064-b486-43e9-e681-63ecb3b3dd29','dd8db9be-568d-9d08-0c19-bafcebeddd80','심실의 수축에 따른 파형',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a9fc70c-bc1f-d367-00b6-4e6c9a326e81','dd8db9be-568d-9d08-0c19-bafcebeddd80','심실의 휴식 시 발생하는 파형',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8081a4c8-5943-0b4b-9c7f-3428d132d43f','dd8db9be-568d-9d08-0c19-bafcebeddd80','심방의 휴식 시 발생하는 파형',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('dd8db9be-568d-9d08-0c19-bafcebeddd80','3a9fc70c-bc1f-d367-00b6-4e6c9a326e81','③ 심실의 휴식 시 발생하는 파형','정답 ③. 파 심실의 수축 종료 후 심실의 휴식 시 발생하는 파형으로 전격이 인가되면 심실세동을 일으키는 확률이 가장 크고 위험한 부분이다. W',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('38cedacf-cfd1-5528-3836-0c9033ab7dbf','11111111-1111-1111-1111-111111111104','mcq','화염일주한계에 대한 설명으로 옳은 것은?',2,15)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('56b8fac7-edf6-8e6d-edaf-7ae928bd2112','38cedacf-cfd1-5528-3836-0c9033ab7dbf','폭발성 가스와 공기의 혼합기에 온도를 높인 경우 화염',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b88b9631-5c81-ae69-2961-533b12b604fd','38cedacf-cfd1-5528-3836-0c9033ab7dbf','폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('87afaa10-62f4-31bf-e5df-71b94826174c','38cedacf-cfd1-5528-3836-0c9033ab7dbf','폭발성 분위기 속에서 전기불꽃에 의하여 폭발을 일으',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('23ebe96e-c01d-a634-1951-48e75d84d106','38cedacf-cfd1-5528-3836-0c9033ab7dbf','방폭설비에서 이상이 발생하여 불꽃이 생성된 경우에',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('38cedacf-cfd1-5528-3836-0c9033ab7dbf','b88b9631-5c81-ae69-2961-533b12b604fd','② 폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염','정답 ②. 폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('9c31e762-7e22-cd91-d7b8-ee69ec560369','11111111-1111-1111-1111-111111111104','mcq','사업장에서 많이 사용되고 있는 이동식 전기기계 • 기구의 안전대책으로 가장 거리가 먼 것은?',2,16)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ae20597c-3438-2c34-8ee0-f8e2f8f41daf','9c31e762-7e22-cd91-d7b8-ee69ec560369','충전부 전체를 절연한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3093b7a0-af73-f694-b794-9f80831ddc80','9c31e762-7e22-cd91-d7b8-ee69ec560369','절연이 불량인 경우 접지저항을 측정한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6256a3d2-5776-38d5-6671-89f630a860d2','9c31e762-7e22-cd91-d7b8-ee69ec560369','금속제 외함이 있는 경우 접지를 한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a783adb9-2a90-84c6-9424-4fdf09fcdf21','9c31e762-7e22-cd91-d7b8-ee69ec560369','습기가 많은 장소는 누전차단기를 설치한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('9c31e762-7e22-cd91-d7b8-ee69ec560369','3093b7a0-af73-f694-b794-9f80831ddc80','② 절연이 불량인 경우 접지저항을 측정한다.','정답 ②. 절연이 불량인 경우 절연저항을 측정하여 조치를 하여야 한다',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('05b88569-e4cd-2454-3162-35c09ce96cfe','11111111-1111-1111-1111-111111111104','mcq','인체저항을 WQ]이라 한다면, 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값 / 쯔 [mA]의 Dalziel의 식을 이용하며, 통전시간은 1 초로 한다.)',2,17)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0479eeab-ea1c-cef5-3bee-a2439066893a','05b88569-e4cd-2454-3162-35c09ce96cfe','11.5',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('302a6f19-ad88-f7ee-3c4c-4ee320d7efef','05b88569-e4cd-2454-3162-35c09ce96cfe','13.6',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dc82a157-0736-1bdc-2ed4-1e2ee394051f','05b88569-e4cd-2454-3162-35c09ce96cfe','15.3',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d868e510-ad32-22de-62a6-a54397d94860','05b88569-e4cd-2454-3162-35c09ce96cfe','16.2',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('05b88569-e4cd-2454-3162-35c09ce96cfe','302a6f19-ad88-f7ee-3c4c-4ee320d7efef','② 13.6','정답 ②. 13.6',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','11111111-1111-1111-1111-111111111104','mcq','인체의 피부 전기저항은 여러 가지의 제반조건에 의해서 변 화를 일으키는데 제반조건으로서 가장 가까운 것은?',2,18)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('adad863b-c5ba-15b0-fe33-9c0b28a3506b','f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','피부의청결',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c1e6df46-c61f-60c9-cd77-2869abed894e','f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','피부의노화',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e2d0b1be-631a-86de-6cfc-fc5ee512bc67','f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','인가전압의 크기',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('56edaba8-f916-d1c0-b954-1385ba97cebb','f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','통전경로',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1','e2d0b1be-631a-86de-6cfc-fc5ee512bc67','③ 인가전압의 크기','정답 ③. 인가전압의 크기',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('3f36d7d0-73f2-883a-fdab-c9fdd379b189','11111111-1111-1111-1111-111111111104','mcq','인체의 대부분이 수중에 있는 상태에서 허용접촉전압은 몇 [V] 이하인가?',2,19)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('87792bf5-a33d-406a-053c-3d1e950596c2','3f36d7d0-73f2-883a-fdab-c9fdd379b189','2.5[V]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d7045e12-3372-18d8-3c3b-9260f7477894','3f36d7d0-73f2-883a-fdab-c9fdd379b189','25[V]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('35006957-3a6f-723c-b06f-af24c8431cc5','3f36d7d0-73f2-883a-fdab-c9fdd379b189','30[V]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('13f4e5fc-1a31-7307-8be3-7a8c5c87f19c','3f36d7d0-73f2-883a-fdab-c9fdd379b189','50[V]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('3f36d7d0-73f2-883a-fdab-c9fdd379b189','87792bf5-a33d-406a-053c-3d1e950596c2','① 2.5[V]','정답 ①. 허용접촉전압 종별 접촉상태 허용접촉전압 제1 종 인체의 대부분이 수중에 있는 상태 Z5[V] 이하 • 인체가 현저히 젖어 있는 상태 제 2종 •금속성의 전기기계 • 기구나 구조물에 인체의 일 25[V] 이하 부가 상시 접촉되어 있는 상태',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6266a964-246d-0b68-01be-b2c7f4d93ded','11111111-1111-1111-1111-111111111104','mcq','인체통전으로 인한 전격(Electric Shock)의 정도를 정함에 있어 그 인자로서 가장 거리가 먼 것은?',2,20)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b24e39c9-4c53-d4d2-73a5-62f1888ce2a9','6266a964-246d-0b68-01be-b2c7f4d93ded','전압의 크기',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a67ace3d-0cda-46c1-be43-7a53e6f13044','6266a964-246d-0b68-01be-b2c7f4d93ded','통전시간',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cd5846d4-501e-0efa-ba86-2d739f192a4e','6266a964-246d-0b68-01be-b2c7f4d93ded','전류의 크기',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c2b768c7-3b83-47a6-ff73-35f0faf84f2b','6266a964-246d-0b68-01be-b2c7f4d93ded','통전경로',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6266a964-246d-0b68-01be-b2c7f4d93ded','b24e39c9-4c53-d4d2-73a5-62f1888ce2a9','① 전압의 크기','정답 ①. 전압의 크기',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','11111111-1111-1111-1111-111111111104','mcq','자동차가 통행하는 도로에서 고압의 지중전선로를 직접 매 설식으로 시설할 때 사용되는 전선으로 가장 적합한 것은?',2,21)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a7c79f70-9dc0-0ecd-1358-78711ab30bb5','1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','비닐외장케이블',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d8e2590-0e20-81d8-45b6-dbaba9c9f824','1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','폴리에틸렌외장케이블',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d29eddd0-9298-bef5-ff93-ec9c0cd2f595','1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','클로로프렌외장케이블',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('07c1d786-73c5-0d66-5b60-9ea1775536db','1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','콤바인덕트 케이블(Combine Duct Cable)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6','07c1d786-73c5-0d66-5b60-9ea1775536db','④ 콤바인덕트 케이블(Combine Duct Cable)','정답 ④. 지중 전선로를 직접 매설식에 의하여 매설하는 경우 저압 또는 고압의 지중전선에 콤바인덕트 케이블을 사용하여 시설한다. 1',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ee21f7f4-3252-4c35-bed5-1d4598477962','11111111-1111-1111-1111-111111111104','mcq','내압방폭구조는 다음 중 어느 경우에 가장 가까운가?',2,22)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('220a0974-857f-f7ec-1237-19e1b380b0f6','ee21f7f4-3252-4c35-bed5-1d4598477962','점화능력의 본질적 억제',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('456a2131-ccb6-041f-412c-cc833ec2e74f','ee21f7f4-3252-4c35-bed5-1d4598477962','점화원의 방폭적 격리',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('90e238d5-c6b4-70bd-34ad-a7167e7617a0','ee21f7f4-3252-4c35-bed5-1d4598477962','전기설비의 안전도 증강',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7dcfbf88-83ac-e6ee-1b93-5e74bf0b35f3','ee21f7f4-3252-4c35-bed5-1d4598477962','전기설비의 밀폐화',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ee21f7f4-3252-4c35-bed5-1d4598477962','456a2131-ccb6-041f-412c-cc833ec2e74f','② 점화원의 방폭적 격리','정답 ②. 전기설비의 방폭화 • 점화원의 방폭적 격리(압력방폭, 유입방폭, 내압방폭) • 전기설비의 안전도 증강(안전증방폭) • 점화능력의 본질적 억제(본질안전방폭)',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','11111111-1111-1111-1111-111111111104','mcq','다음 중 활선근접작업 시의 안전조치로 적절하지 않은 것은?',2,23)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b40c9892-9afd-9049-f87e-00252300646b','a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','근로자가 절연용 방호구의 설치 - 해체작업을 하는 경우',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e631e42f-47c0-75c5-5440-6fb70076943d','a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','저압인 경우에는 해당 전기작업자가 절연용 보호구를',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b506f98c-391b-9d4f-651d-e1644e95e474','a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('051bf331-ca76-6734-8a03-7bd74c9b662e','a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','고압 및 특별고압의 전로에서 전기작업을 하는 근로자',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a36a9cdb-fc44-3a5b-001c-c276ebe7f97d','b506f98c-391b-9d4f-651d-e1644e95e474','③ 유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성','정답 ③. 에게 활선작업용 기구 및 장치를 사용하여야 한다. KS 충전전로에서의 전기작업 유자격자가 아닌 근로자가 충전전로 인근의 높은 곳에서 작업할 때에 근로 자의 몸 또는 긴 도전성 물체가 방호되지 않은 충전전로에서 대지전압이 50[kV] 이하인 경우에는 300[cm] 이내로 대지전압이 50[kV]를 넘는 경 우에는 10[kV]당 10[cm]씩 더한 거리 이내로 각각 접근할 수 없도록 하 여야 한다. 1',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','11111111-1111-1111-1111-111111111104','mcq','「위험물안전관리법령」에 의한 위험물의 분류 중 제1류 위험 물에 속하는 것은?',2,24)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3e81cbba-bf6e-8453-01d0-e4469f9a73a0','45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','염소산염류',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('28859e66-3536-8c58-3c30-e6d16b19b9cd','45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','황린',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('47fd0c13-7202-801d-1f4a-cad31b61b4cf','45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','질산에스테르',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('69b64eb2-e9a7-2204-6e46-fd1ee2566c01','45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','칼륨: 제3류 위험물（자연발화성 물질 및 금수성 물질）',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd','3e81cbba-bf6e-8453-01d0-e4469f9a73a0','① 염소산염류','정답 ①. 염소산염류',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','11111111-1111-1111-1111-111111111104','mcq','위험물의 저장방법으로 적절하지 않은 것은?',2,25)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ff0c6c1-b112-7140-6c94-38de7912ce6b','cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','탄화칼슘은 물속에 저장한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b6e35467-f37e-c516-9496-dd3a5ff2a74e','cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','벤젠은 산화성 물질과 격리시킨다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a63b54b2-2da0-9a60-e3a0-f2a858d3da99','cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','금속나트륨은 석유 속에 저장한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('64a225c3-c667-7eed-197d-a00edf9e389c','cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','질산은 갈색병에 넣어 냉암소에 보관한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0','1ff0c6c1-b112-7140-6c94-38de7912ce6b','① 탄화칼슘은 물속에 저장한다.','정답 ①. 탄화칼슘(CaC2, 카바이드)은 물과 반응하여 인화성 가스인 아세 틸렌(CJL)을 발생시키므로 물속에 저장을 금지한다. CaC2+2H2O - Ca(OH>2+C2H21 EHEItn',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('596e42f7-7b61-096f-dc74-133564404f8e','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에서 규정하고 있는 차량계 건설기계 중 낙하물 보호구조를 갖추어야 하는 기계가 아닌 것은?',2,26)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bdfbe217-4dbc-aac1-ae1d-e9c51a407c25','596e42f7-7b61-096f-dc74-133564404f8e','불도저',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d4de41cc-fec6-ae13-9c05-5b0bd4ac0f4e','596e42f7-7b61-096f-dc74-133564404f8e','트랙터',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('25931ee5-87da-4dc9-895b-94c73e67c4f2','596e42f7-7b61-096f-dc74-133564404f8e','타워크레인',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1d40bb02-def4-9f85-8e99-e18b872407cf','596e42f7-7b61-096f-dc74-133564404f8e','덤프트럭',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('596e42f7-7b61-096f-dc74-133564404f8e','25931ee5-87da-4dc9-895b-94c73e67c4f2','③ 타워크레인','정답 ③. 타워크레인',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','11111111-1111-1111-1111-111111111104','mcq','건설현장에서 높이 5[m] 이상인 콘크리트 교량의 설치작업 을 하는 경우 재해예방을 위해 준수해야 할 사항으로 옳지 않은것은?',2,27)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cc39b970-0d85-ec56-5aac-6073fb90911a','a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','작업을 하는 구역에는 관계 근로자가 아닌 사람의 출입',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f8c3c1fd-39bb-f319-2a6e-2eb8641f9991','a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7c7de99b-ecc6-927b-66d8-678595fcc554','a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','중량물 부재를 크레인 등으로 인양하는 경우에는 부재',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('65202be0-504c-82a3-a13f-917e8be898d7','a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','자재나 부재의 낙하 • 전도 또는 붕괴 등에 의하여 근로',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70','f8c3c1fd-39bb-f319-2a6e-2eb8641f9991','② 재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근','정답 ②. 자에게 위험을 미칠 우려가 있을 경우에는 출입금지구 역의 설정, 자재 또는 가설시설의 좌굴(M) 또는 변형 방지를 위한 보강재 부착 등의 조치를 할 것 교량의 설치 • 해체 또는 변경작업을 하는 경우에 재료, 기구 또는 공구 등을 올리거나 내리는 경우에는 근로자로 하여금 달줄. 달포대 등을 사용하도록 하여야 한다',array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('fa0e29ca-4d33-4e67-2e1f-498c593eb240','11111111-1111-1111-1111-111111111104','mcq','하인리히(Heinrich)의 재해구성비율에 따른 58건의 경상이 발생한 경우 무상해사고는 몇 건이 발생하겠는가?',2,28)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cd053dcc-8b7c-1e32-e10d-84a476f04cdf','fa0e29ca-4d33-4e67-2e1f-498c593eb240','58건',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be25513d-2630-f47f-d871-410f41bfc0bb','fa0e29ca-4d33-4e67-2e1f-498c593eb240','116건',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ada48f42-3b58-3459-5320-e5779f842e18','fa0e29ca-4d33-4e67-2e1f-498c593eb240','600건',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5be7b2f3-6ef6-3603-7d7a-768af3d203ad','fa0e29ca-4d33-4e67-2e1f-498c593eb240','900건',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('fa0e29ca-4d33-4e67-2e1f-498c593eb240','ada48f42-3b58-3459-5320-e5779f842e18','③ 600건','정답 ③. 600건',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('47751e9d-3d22-f88f-ab66-a31de6b01b5f','11111111-1111-1111-1111-111111111104','mcq','안전교육의 단계에 있어 교육대상자가 스스로 행함으로써 습득하게 하는 교육은?',2,29)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('29273422-35fa-adf1-af82-4edbd8b736d0','47751e9d-3d22-f88f-ab66-a31de6b01b5f','의식교육',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6fae0b88-c8c7-ff29-4e24-f6a01c466744','47751e9d-3d22-f88f-ab66-a31de6b01b5f','기능교육',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('edb521a2-5a6a-8329-f147-770b01ddb32f','47751e9d-3d22-f88f-ab66-a31de6b01b5f','지식교육',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a5de9e11-7b39-6bf7-daa9-253e4bcd532b','47751e9d-3d22-f88f-ab66-a31de6b01b5f','태도교육',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('47751e9d-3d22-f88f-ab66-a31de6b01b5f','6fae0b88-c8c7-ff29-4e24-f6a01c466744','② 기능교육','정답 ②. 기능교육',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('8e5f1a87-f6df-0260-191b-904ecc7ded1f','11111111-1111-1111-1111-111111111104','mcq','브레인스토밍（Brain-storming） 기법의 4원칙에 관한 설명 으로 틀린 것은?',2,30)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fc34c5ce-119e-84ef-30b7-b7603ccada4a','8e5f1a87-f6df-0260-191b-904ecc7ded1f','한 사람이 많은 의견을 제시할 수 있다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7de33915-dde8-0d7f-a486-be829145d8ce','8e5f1a87-f6df-0260-191b-904ecc7ded1f','타인의 의견을 수정하여 발언할 수 있다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('addae297-1a04-9ea4-2e9d-64a0445c7891','8e5f1a87-f6df-0260-191b-904ecc7ded1f','타인의 의견에 대하여 비판, 비평하지 않는다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f6b8007c-0ad3-b647-1902-9babfd62f28c','8e5f1a87-f6df-0260-191b-904ecc7ded1f','의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('8e5f1a87-f6df-0260-191b-904ecc7ded1f','f6b8007c-0ad3-b647-1902-9babfd62f28c','④ 의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.','정답 ④. 의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c149c105-44d1-d4a6-f471-63a23f9b1c44','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 안전보건표지의 종류 중 안내표지에 해당하지 않는 것은?',2,31)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('349b6d95-0283-5a0e-7bb9-896e5ebb0f2b','c149c105-44d1-d4a6-f471-63a23f9b1c44','들것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0446538d-81e0-d95f-d2fe-9f0d2e52938c','c149c105-44d1-d4a6-f471-63a23f9b1c44','비상용기구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('538d14ba-0766-89b0-122d-7c523674070f','c149c105-44d1-d4a6-f471-63a23f9b1c44','출입구',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9ba3690d-b9d3-b570-1d7f-9eafeecbf031','c149c105-44d1-d4a6-f471-63a23f9b1c44','세안장치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c149c105-44d1-d4a6-f471-63a23f9b1c44','538d14ba-0766-89b0-122d-7c523674070f','③ 출입구','정답 ③. 출입구는「산업안전보건법령」상 안전보건표지에 해당하지 않는다. 녹십자표지 응급구호표지 들것 세안장치 비상용기구 비상구 좌측비상구 우측비상구 A 안내표지의 종류',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따른 안전보건관리규정에 포함되어 야 할 세부내용이 아닌 것은?',2,32)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2c5fb54e-cf39-4ed2-906d-5541530e7608','cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','위험성 감소대책 수립 및 시행에 관한 사항',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('561bb80c-46ed-8419-f47c-215691cce562','cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','하도급 사업장에 대한 안전 보건관리에 관한 사항',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7bf810de-cec5-1940-68e1-486737a2826c','cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','질병자의 근로 금지 및 취업 제한 등에 관한 사항',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('81fb9498-da3f-1eae-dd76-8bbfec97dd5f','cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','물질안전보건자료에 관한 사항',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf','81fb9498-da3f-1eae-dd76-8bbfec97dd5f','④ 물질안전보건자료에 관한 사항','정답 ④. 물질안전보건자료에 관한 사항',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('1a75ef8e-8e29-ad70-7fa2-b252a4160750','11111111-1111-1111-1111-111111111104','mcq','연속제어 조종장치에서 정확도보다 속도가 중요하다면 조 종반응의 비율（C/R）은 어떻게 하여야 하는가?',2,33)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b17e91b8-7c07-d971-7084-11ac56f0159a','1a75ef8e-8e29-ad70-7fa2-b252a4160750','C/R 비율을 1로 조절하여야 한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1aa5366b-b055-7968-7e0b-6bcb14c0037b','1a75ef8e-8e29-ad70-7fa2-b252a4160750','C/R 비율을 1보다 낮게 조절하여야 한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4188fb0c-60c8-b74f-2f6a-be245b674832','1a75ef8e-8e29-ad70-7fa2-b252a4160750','C/R 비율을 1보다 높게 조절하여야 한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('94b6efd4-6c40-686a-b087-3c383028ded0','1a75ef8e-8e29-ad70-7fa2-b252a4160750','C/R 비율을 조절할 필요가 없다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('1a75ef8e-8e29-ad70-7fa2-b252a4160750','1aa5366b-b055-7968-7e0b-6bcb14c0037b','② C/R 비율을 1보다 낮게 조절하여야 한다.','정답 ②. 승비가 작을수록 조정이 어려워 조정장치가 민감하나 이동시간 이 짧으므로. 정확도보다 속도가 중요하다면 음•비를 1보다 낮게 조절하 여야 한다',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('69208970-a551-174c-a70d-99434c714d48','11111111-1111-1111-1111-111111111104','mcq','OOO 음향기기 부품 생산공장에서 안전업무를 담당하는 대리는 공장 내부에 경보등을 설치하는 과정에서 도움이 될 만한 몇 가지 지식을 적용하고자 한다. 적용 지식 중 맞는 것은?',2,34)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('47b3b3ae-4158-e242-7ca7-38eb63553937','69208970-a551-174c-a70d-99434c714d48','신호 대 배경의 휘도대비가 작을 때는 백색신호가 효과',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('50520090-6e25-be26-0948-708efec8a818','69208970-a551-174c-a70d-99434c714d48','광원의 노출시간이 1초보다 작으면 광속발산도는 작아',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('af5fb552-592e-d14d-69d8-4a077e08503b','69208970-a551-174c-a70d-99434c714d48','표적의 크기가 커짐에 따라광도의 역치가 안정되는노',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0b0b4e4e-b162-c8e8-269b-201b6afceea7','69208970-a551-174c-a70d-99434c714d48','배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('69208970-a551-174c-a70d-99434c714d48','0b0b4e4e-b162-c8e8-269b-201b6afceea7','④ 배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸','정답 ④. 등은 사용하지 않는 것이 좋다. K9 배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 상점등을 신호 로 사용하는 것이 더 효과적이다. 오답해설 신호 대 배경의 휘도대비가 작을 때는 작업자가 백색신호를 경보신호로 인지하기 어렵다. 광원의 노출시간이 짧아질수록 광속발산도는 커져야 신호를 인지할 수 있다. 표적의 크기가 커짐에 따라 광도의 역치가 안정되는 노출시간은 감소한다. 1',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('eadbec63-b3fd-3822-d371-4284106b10b5','11111111-1111-1111-1111-111111111104','mcq','작업장 배치 시 유의사항으로 적절하지 않은 것은?',2,35)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf20bf12-b4db-b931-f221-3a8ff53f43a5','eadbec63-b3fd-3822-d371-4284106b10b5','작업의 흐름에 따라 기계를 배치한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('24b2b552-0f03-44da-eeef-52e36ada2235','eadbec63-b3fd-3822-d371-4284106b10b5','생산효율 증대를 위해 기계설비 주위에 재료나 반제품',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('876d63ba-6e08-1db4-562b-7a1c95592dd5','eadbec63-b3fd-3822-d371-4284106b10b5','공장 내외에는 안전한 통로를 두어야 하며, 통로는 선',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e96f6cd5-ad8e-a736-d9b8-15cc8291b296','eadbec63-b3fd-3822-d371-4284106b10b5','비상시에 쉽게 대비할 수 있는 통로를 마련하고 사고',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('eadbec63-b3fd-3822-d371-4284106b10b5','24b2b552-0f03-44da-eeef-52e36ada2235','② 생산효율 증대를 위해 기계설비 주위에 재료나 반제품','정답 ②. 진압을 위한 활동통로가 반드시 마련되 어 야 한다. KS 시설배치 시 기계설비의 주위에 충분한 공간을 확보하고. 재료 반제품 공구상자 등을 놓을 수 있는 공간도 고려하여야 한다. 5푸l',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cd42b9eb-e5fb-d9b8-34d7-5429415881da','11111111-1111-1111-1111-111111111104','mcq','산업안전표지에서 경고표지는 삼각형 , 안내표지는 사각형 , 지시표지는 원형 등으로 부호가 고안되어 있다. 이처럼 부 호가 이미 고안되어 이를 사용자가 배워야 하는 부호는 다 음 중 무엇이라 하는가?',2,36)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c9fb8d23-3564-b1db-14ad-9e62f6454f5e','cd42b9eb-e5fb-d9b8-34d7-5429415881da','묘사적 부호',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e666154c-f1d1-2e3d-c411-f99adf2df401','cd42b9eb-e5fb-d9b8-34d7-5429415881da','추상적 부호',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('39156df4-869c-e1dd-f20b-df1007835b9d','cd42b9eb-e5fb-d9b8-34d7-5429415881da','임의적 부호',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a27de09-64ad-603d-891a-76322278ef54','cd42b9eb-e5fb-d9b8-34d7-5429415881da','사실적 부호',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cd42b9eb-e5fb-d9b8-34d7-5429415881da','39156df4-869c-e1dd-f20b-df1007835b9d','③ 임의적 부호','정답 ③. 임의적 부호',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5745703c-b324-8e93-169d-80ad3020e860','11111111-1111-1111-1111-111111111104','mcq','한 대의 기계를 10시간 가동하는 동안 4회의 고장이 발생 하였고, 이때의 고장수리시간이 다음 표와 같을 때 MT「R(Mean Time To Repair)은 얼마인가? 가동시갠시간] 수리시갠시간] T, 27 Ta 0.1 T2 1.8 7b 0.2 T3 1.5 Tc 0.3 T4 i3 Ta 0.3',2,37)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec','5745703c-b324-8e93-169d-80ad3020e860','0.225［시간/회］',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4ed06f6f-42f6-c27f-2d9f-a549d74a37bb','5745703c-b324-8e93-169d-80ad3020e860','0.325［시간/회］',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0fd37617-e7f0-3fc5-1cfb-5d7ad4983fb4','5745703c-b324-8e93-169d-80ad3020e860','0.425［시간/회］',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('73e2b386-66c4-bf0f-c023-c227247ebaf9','5745703c-b324-8e93-169d-80ad3020e860','0.525［시간/회］',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5745703c-b324-8e93-169d-80ad3020e860','bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec','① 0.225［시간/회］','정답 ①. 0.225［시간/회］',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 탁상용 연삭기의 덮개는 작업 받침 대와 연삭숫돌과의 간격을 몇 [mm] 이하로 조정할 수 있어 야하는가?',2,38)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('48c5119e-1be0-c61a-26f8-22b27e6fa1eb','bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','3',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('500ef786-70cf-def9-53d7-057684afa0f8','bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','4',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0fb2d44b-4eb7-bc55-abf1-b2b23e14c33f','bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','5',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bcf6b7c5-1f2f-be83-f364-e4e6e667a805','bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','10',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bc81fc4e-e7f6-c432-0913-07bdd3eaa36a','48c5119e-1be0-c61a-26f8-22b27e6fa1eb','① 3','정답 ①. 탁상용 연삭기의 덮개는 작업 받침대와 연삭숫돌과의 간격을 3[mm] 이하로 조정할 수 있어야 한다',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('9b9d3e81-7a25-2b25-b28c-9057535c8890','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 용접장치의 안전에 관한 준수사항으 로 옳은 것은?',2,39)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('feeb8cd3-e616-482b-4604-3607544ea9a5','9b9d3e81-7a25-2b25-b28c-9057535c8890','아세틸렌 용접장치의 발생기실을 옥외에 설치한 경우',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('551d75ee-5323-214e-b71f-887cb3a08038','9b9d3e81-7a25-2b25-b28c-9057535c8890','가스집합장치로부터 7[m] 이내의 장소에서는 화기의',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('541bca8b-990c-3b8c-c9c1-0b4c76af75f0','9b9d3e81-7a25-2b25-b28c-9057535c8890','아세틸렌 발생기에서 10[m] 이내 또는 발생기실에서',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e27879a-a008-6933-3d2e-cdb3f5bb5cf7','9b9d3e81-7a25-2b25-b28c-9057535c8890','아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('9b9d3e81-7a25-2b25-b28c-9057535c8890','4e27879a-a008-6933-3d2e-cdb3f5bb5cf7','④ 아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게','정답 ④. 이지압력이 127[kPa]을 초과하는 압력의 아세틸렌을 발생시켜 사용해서는 아니 된다. OI 발생기실을 옥외에 설치한 경우에는 그 개구부를 다른 건축물로부터 1.5[m] 이상 떨어지도록 하여야 한다. 가스집합장치로부터 5[m] 이내의 장소에서는 흡연, 화기의 사용 또는 불꽃을 발생할 우려가 있는 행위를 금지하여야 한다. 발생기에서 5[m] 이내 또는 발생기실에서 3[m] 이내의 장소에서는 흡 연. 화기의 사용 또는 불꽃이 발생할 위험한 행위를 금지하여야 한다. 1',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('83036aaf-3043-da61-d161-e79be3e7f524','11111111-1111-1111-1111-111111111104','mcq','비파괴시험의 종류가 아닌 것은?',2,40)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('01cd6aec-fd97-f313-0a0b-4e8b9598e97b','83036aaf-3043-da61-d161-e79be3e7f524','자분탐상시험',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('34ffb845-2d63-6803-331d-cf72f8c46018','83036aaf-3043-da61-d161-e79be3e7f524','침투탐상시험',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c86bf22c-29b5-c780-e018-7f7caf1d0a7d','83036aaf-3043-da61-d161-e79be3e7f524','와류탐상시험',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7fe503ad-aaa2-b4e0-e4d6-ab3aaef752a0','83036aaf-3043-da61-d161-e79be3e7f524','샤르피 충격시험',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('83036aaf-3043-da61-d161-e79be3e7f524','7fe503ad-aaa2-b4e0-e4d6-ab3aaef752a0','④ 샤르피 충격시험','정답 ④. 샤르피 충격시험은 파괴시험(충격시험)의 일종이다. 비파괴검사의 종류 방사선투과검사(RT). 초음파 탐상검사(UT). 자분 탐상검사(MT), 침투탐 상검AKPT), 음향탐상검사(AET). 와류탐상검사(ECT) 등',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
