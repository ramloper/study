-- 2
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cc964b0f-da21-baa6-1272-2d41e8663138','11111111-1111-1111-1111-111111111104','mcq','초음파탐상법의 종류에 해당하지 않는 것은?',2,41)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('83474df9-73ee-8f50-eb90-912f09cabbb5','cc964b0f-da21-baa6-1272-2d41e8663138','반사식',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f5288175-871f-96cb-ba18-bbca6ef124b9','cc964b0f-da21-baa6-1272-2d41e8663138','투과식',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('84f07656-9922-3f24-774e-0151b283842d','cc964b0f-da21-baa6-1272-2d41e8663138','공진식',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('280fd133-41b7-43fd-c673-9341b5a964a1','cc964b0f-da21-baa6-1272-2d41e8663138','침투식',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cc964b0f-da21-baa6-1272-2d41e8663138','280fd133-41b7-43fd-c673-9341b5a964a1','④ 침투식','정답 ④. 초음파탐상법의 종류로는 투과법. 펄스반사법, 공진법 등이 있다. E 8I',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('64d1f2af-db87-e8b7-8f17-504f7b413b5d','11111111-1111-1111-1111-111111111104','mcq','로봇의 작동범위 내에서 그 로봇에 관하여 교시 등(로봇의 동력원을 차단하고 행하는 것을 제외함)의 작업을 행할 때 작업시작 전 점검사항으로 옳은 것은?',2,42)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4773fecd-e7fb-a114-c063-5e1904f94dcc','64d1f2af-db87-e8b7-8f17-504f7b413b5d','과부하방지장치의 이상 유무',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b607be13-b08a-3bee-2f5a-6c130ec676a5','64d1f2af-db87-e8b7-8f17-504f7b413b5d','압력제한 스위치 등의 기능의 이상 유무',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a82e6b5f-9d68-c736-fa95-2aa06e31b919','64d1f2af-db87-e8b7-8f17-504f7b413b5d','외부 전선의 피복 또는 외장의 손상 유무',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b119c8f5-ee24-d6ce-8012-c327443c9c12','64d1f2af-db87-e8b7-8f17-504f7b413b5d','권과방지장치의 이상유무',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('64d1f2af-db87-e8b7-8f17-504f7b413b5d','a82e6b5f-9d68-c736-fa95-2aa06e31b919','③ 외부 전선의 피복 또는 외장의 손상 유무','정답 ③. 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('fe8d629e-f27c-f678-4757-a306cd943270','11111111-1111-1111-1111-111111111104','mcq','아세 틸 렌 용접장치에 사용하는 역화방지기에서 요구되는 일반적인 구조로 옳지 않은 것은?',2,43)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c','fe8d629e-f27c-f678-4757-a306cd943270','재사용 시 안전에 우려가 있으므로 역화방지 후 바로',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('560de3d1-6566-af43-83e6-11d87c1b33c1','fe8d629e-f27c-f678-4757-a306cd943270','다듬질 면이 매끈하고 사용상 지장이 있는 부식, 흠, 균',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('948b08d8-b565-f498-60f3-d0dd3ffef10d','fe8d629e-f27c-f678-4757-a306cd943270','가스의 흐름방향은 지워지지 않도록 돌출 또는 각인하',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d8f439e7-106a-4378-86bf-17bef2ead4cd','fe8d629e-f27c-f678-4757-a306cd943270','소염소자는 금망, 소결금속, 스틸울(Steel Wool), 다공',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('fe8d629e-f27c-f678-4757-a306cd943270','bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c','① 재사용 시 안전에 우려가 있으므로 역화방지 후 바로','정답 ①. 성금속물 또는 이와 동등 이상의 소염성능을 갖는 것이 어야 한다. H3 아세틸렌 용접장치에서 역화방지기는 역화를 방지한 후 복원이 되어 계속 사용할 수 있는 구조이어야 한다',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a','11111111-1111-1111-1111-111111111104','mcq','보일러 압력방출장치의 종류에 해당하지 않는 것은?',2,44)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e475ab17-4ac9-118e-a098-4ef876142cc1','03a7115b-5dd9-c00f-93f2-e135ba9dde7a','스프링식',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('68116f3d-841f-d267-bae2-15b3d0a9acaa','03a7115b-5dd9-c00f-93f2-e135ba9dde7a','중추식',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('01cebf14-5fc7-2abc-f2b0-5272f0bf32a4','03a7115b-5dd9-c00f-93f2-e135ba9dde7a','플런저식',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fe4af74b-7b93-8f4f-f427-86f80b03e0f9','03a7115b-5dd9-c00f-93f2-e135ba9dde7a','지렛대식',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a','01cebf14-5fc7-2abc-f2b0-5272f0bf32a4','③ 플런저식','정답 ③. 압력방출장치의 종류 중추식(추식), 지렛대식(레버식). 스프링식(가장 많이 사용)',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ad42eb0a-6a53-e142-febb-642404520e91','11111111-1111-1111-1111-111111111104','mcq','프레스 방호장치에서 수인식 방호장치를 사용하기에 가장 적합한기준은?',2,45)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d45cb626-b086-04a5-550a-6aefcb7b3add','ad42eb0a-6a53-e142-febb-642404520e91','슬라이드 행정길이가 100[mm] 이상, 슬라이드 행정수',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6ac30333-eab8-5ec9-124e-fcaa43ee278a','ad42eb0a-6a53-e142-febb-642404520e91','슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('630e9ef8-4586-05eb-9635-3690c2b99193','ad42eb0a-6a53-e142-febb-642404520e91','슬라이드 행정길이가 10이mm] 이상, 슬라이드 행정수',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4fabf4a1-a085-1699-4a2e-115bf524e2ad','ad42eb0a-6a53-e142-febb-642404520e91','슬라이드 행정길이가 5이mm] 이상, 슬라이드 행정수',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ad42eb0a-6a53-e142-febb-642404520e91','6ac30333-eab8-5ec9-124e-fcaa43ee278a','② 슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수','정답 ②. 슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('2556e0dd-0831-e8e2-a811-ec1d324e28e4','11111111-1111-1111-1111-111111111104','mcq','다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나. 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.',2,46)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('198e2e6d-d126-0292-a323-3d2c18d3ee07','2556e0dd-0831-e8e2-a811-ec1d324e28e4','선반',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0f911bd6-a7e4-7e8d-171a-f8928717a219','2556e0dd-0831-e8e2-a811-ec1d324e28e4','밀링',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('913e0d13-8406-c563-4c9e-5a9619878e88','2556e0dd-0831-e8e2-a811-ec1d324e28e4','플레이너',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7b1c35bb-185d-ef27-3dd9-2dc238e8e00a','2556e0dd-0831-e8e2-a811-ec1d324e28e4','연삭기',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('2556e0dd-0831-e8e2-a811-ec1d324e28e4','0f911bd6-a7e4-7e8d-171a-f8928717a219','② 밀링','정답 ②. 밀링작업 시 안전대책 • 밀링작업에서 생기는 칩은 가늘고 예리하며 부상을 입히기 쉬우므로 보 안경을 착용한다. • 칩은 기계를 정지시킨 후 브러시 등으로 제거한다. • 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. • 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않는다. E S1',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('46dff958-aa24-0680-d656-4f5232e3a77c','11111111-1111-1111-1111-111111111104','mcq','누전차단기의 구성요소가 아닌 것은?',2,47)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d12162fd-a7ae-5a63-b1cf-f2f2d97a6ecf','46dff958-aa24-0680-d656-4f5232e3a77c','누전검출부',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4896f85f-9c5b-f7a9-88a1-398d281aa0bf','46dff958-aa24-0680-d656-4f5232e3a77c','영상변류기',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('659e6c10-44b1-92fd-bcc4-8a023dc06ce5','46dff958-aa24-0680-d656-4f5232e3a77c','차단장치',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9255cdc8-3646-a1d8-0c2c-196d846df3dc','46dff958-aa24-0680-d656-4f5232e3a77c','전력퓨즈',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('46dff958-aa24-0680-d656-4f5232e3a77c','9255cdc8-3646-a1d8-0c2c-196d846df3dc','④ 전력퓨즈','정답 ④. 피 누전차단기 구성요소 영상변류기. 누전검출부. 트립코일. 차단장치 및 시험장',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b6cad857-756a-02fa-3ca1-3d24f30f167a','11111111-1111-1111-1111-111111111104','mcq','인입개폐기를 개방하지 않고 전등용 변압기 1 차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 COS0II 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?',2,48)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8affa317-91c3-12e0-1fe2-9056093ac1af','b6cad857-756a-02fa-3ca1-3d24f30f167a','안전장구 미사용',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2d0bafb1-e71f-88e1-3be3-448498d0a434','b6cad857-756a-02fa-3ca1-3d24f30f167a','동력용 변압기 cos 미개방',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('153c1727-beb7-cf4c-ad26-661db91ea19c','b6cad857-756a-02fa-3ca1-3d24f30f167a','전등용 변압기 2차 측 COS 미개방',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d9cf8f53-9e52-6abf-01f7-055c7efb5caa','b6cad857-756a-02fa-3ca1-3d24f30f167a','인입구 개폐기 미개방한 상태에서 작업',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b6cad857-756a-02fa-3ca1-3d24f30f167a','153c1727-beb7-cf4c-ad26-661db91ea19c','③ 전등용 변압기 2차 측 COS 미개방','정답 ③. 전등용 변압기 1차 측 COS가 개방된 상태이므로 2차 측 개방은 감전사고와는 무관하다. WM8I',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a','11111111-1111-1111-1111-111111111104','mcq','금속제 외함을 가지는 기계 • 기구에 전기를 공급하는 전로 에 지락이 발생했을 때에 자동적으로 전로를 차단하는 누전 차단기 등을 설치하여야 한다. 누전차단기를 설치해야 되는 경우로 옳은 것은?',2,49)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c85da6e7-ba7b-c405-bd24-d04cae158a2f','e0ba2951-b7f9-6ecd-f28c-02721a2f603a','기계 . 기구가 고무. 합성수지 기타 절연물로 피복된 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dec83e6c-9127-b453-9fed-509d765e2275','e0ba2951-b7f9-6ecd-f28c-02721a2f603a','기계 • 기구가 유도전동기의 2차 측 전로에 접속되는 것',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('59cfcfd9-d731-e376-67a3-35bdefd8cfa1','e0ba2951-b7f9-6ecd-f28c-02721a2f603a','대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('afd74e93-4970-0428-0fab-88a034ca76bd','e0ba2951-b7f9-6ecd-f28c-02721a2f603a','「전기용품 및 생활용품 안전관리법」의 적용을 받는 이',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a','59cfcfd9-d731-e376-67a3-35bdefd8cfa1','③ 대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구','정답 ③. 중절연구조의 기계 • 기구를 시설하는 경우 3 대지전압이 150[V]를 초과하는 이동형 또는 휴대형 전기기계 기구에 누전차단기를 설치하여야 한다',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7396aea2-db0c-2f9a-80c2-1b7360da18c1','11111111-1111-1111-1111-111111111104','mcq','정전유도를 받고 있는 접지되어 있지 않은 도전성 물체에 접촉한 경우 전격을 당하게 되는데, 이때 물체에 유도된 전 압［V］을 옳게 나타낸 것은?（단, E는 송전선의 대지전압, C, 은 송전선과 물체 사이의 정전용량, C2는 물체와 대지 사이 의 정전용량이며, 물체와 대지 사이의 저항은 무시한다.）',2,50)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61','7396aea2-db0c-2f9a-80c2-1b7360da18c1','스유 오',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f2678ddc-ce85-2713-cba5-e48181cb36c4','7396aea2-db0c-2f9a-80c2-1b7360da18c1','V ^^-E',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eeda511a-feb4-7260-3ed2-8335f9869f67','7396aea2-db0c-2f9a-80c2-1b7360da18c1','」—',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('12a36ca4-7e51-f7ba-d22b-3ec3525ba2b0','7396aea2-db0c-2f9a-80c2-1b7360da18c1','v 으스요. E',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7396aea2-db0c-2f9a-80c2-1b7360da18c1','dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61','① 스유 오','정답 ①. 스유 오',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('744fc568-b131-32b4-6b00-0eeb7f368245','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건기준에 관한 규칙」상 국소배기장치의 후드 설치기준이 아닌 것은?',2,51)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('334b1c10-6673-c041-cb9c-855dcecc0377','744fc568-b131-32b4-6b00-0eeb7f368245','유해물질이 발생하는 곳마다 설치할 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('27d71191-7bb9-6b07-94fd-96f2914b3172','744fc568-b131-32b4-6b00-0eeb7f368245','후드의 개구부 면적은 가능한 한 크게 할 것',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aa3935f0-5cca-651f-36e4-7d7899b026c5','744fc568-b131-32b4-6b00-0eeb7f368245','외부식 또는 리시버식 후드는 해당 분진 등의 발산원에',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ab982776-3a95-5cec-ae73-3b4147445b04','744fc568-b131-32b4-6b00-0eeb7f368245','후드 형식은 가능하면 포위식 또는 부스식 후드를 설치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('744fc568-b131-32b4-6b00-0eeb7f368245','27d71191-7bb9-6b07-94fd-96f2914b3172','② 후드의 개구부 면적은 가능한 한 크게 할 것','정답 ②. 후드의 개구부 면적은 가능한 한 크게 할 것',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','11111111-1111-1111-1111-111111111104','mcq','헥산 1[vol%], 메탄 2[vol%], 에틸렌 2[vol%], 공기 95[vol%]로 된 혼합가스의 폭발하한계값[vol%]은 약 얼마 인가?（단, 헥산, 메탄, 에틸렌의 폭발하한계 값은 각각 1.1, 5.0, 2.7[vol%]이다.）',2,52)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7','6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','2.44',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6b8f5f86-7a37-1852-3d81-e1dd0410fa1c','6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','12.89',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('255ed229-ae10-77e4-30b2-9bd8e30a8f4f','6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','21.78',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b8a5856c-ddc0-7ed6-96b0-b664cb9de2a9','6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','48.78',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0','c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7','① 2.44','정답 ①. 2.44',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('8b516047-7b2f-e923-b42c-d16cdfe09117','11111111-1111-1111-1111-111111111104','mcq','중대산업재해 대비를 위한 대응조치로 옳지 않은 것은?',2,53)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('32f249e3-86fd-b544-8ff5-566ba1bb926e','8b516047-7b2f-e923-b42c-d16cdfe09117','사업주는 급박한 위험이 발생한 경우 근로자들이 스스',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e4e5f7df-8965-cdcc-c171-80f6ee61f50c','8b516047-7b2f-e923-b42c-d16cdfe09117','근로자는 작업 진행 중 본인 또는 인근에서 수행되는',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0f4da638-a886-90fd-9c7d-4ee0c09d1d44','8b516047-7b2f-e923-b42c-d16cdfe09117','사업주는 사업장의 특성을 반영하여 급박한 위험의 판',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('576009e6-5eb8-1d9b-6344-242c3e015a06','8b516047-7b2f-e923-b42c-d16cdfe09117','사업주는 급박한 위험 시 작업중지를 한 근로자에 대하',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('8b516047-7b2f-e923-b42c-d16cdfe09117','e4e5f7df-8965-cdcc-c171-80f6ee61f50c','② 근로자는 작업 진행 중 본인 또는 인근에서 수행되는','정답 ②. 여 해고 등 불이익 조치를 할 수 없다. KUH 근로자는 작업 진행 중 본인 또는 인근에서 수행되는 작업에서 산업재해가 발생할 급박한 위험을 인식한 즉시 작업을 중지하고 대피하여 야한다. 1',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('3e9f3977-e755-7e25-e628-924b0145017e','11111111-1111-1111-1111-111111111104','mcq','다음 중 밀폐공간 내 작업 시의 조치사항으로 가장 거리가 먼 것은?',2,54)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('550d5e3d-dd1a-5a35-bf9b-a2577f4c2fef','3e9f3977-e755-7e25-e628-924b0145017e','산소결핍이 우려되거나 유해가스 등의 농도가 높아서',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('14ec2caf-1120-eef2-6cb8-55558092b929','3e9f3977-e755-7e25-e628-924b0145017e','해당 작업장을 적정한 공기상태로 유지되도록 환기하',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e1387200-2279-ecbf-d17e-bf0bb1945d18','3e9f3977-e755-7e25-e628-924b0145017e','해당 장소에 근로자를 입장시킬 때와 퇴장시킬 때에 각',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bfe67e56-d30a-2bd7-b7b5-b72d55c26051','3e9f3977-e755-7e25-e628-924b0145017e','해당 작업장과 외부의 감시 인 사이에 상시 연락을 취할',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('3e9f3977-e755-7e25-e628-924b0145017e','550d5e3d-dd1a-5a35-bf9b-a2577f4c2fef','① 산소결핍이 우려되거나 유해가스 등의 농도가 높아서','정답 ①. 수 있는 설비를 설치하여야 한다. K3 밀폐공간에서 작업을 하는 경우에 산소결핍이나 유해가스로 인 한 질식 • 화재 • 폭발 등의 우려가 있으면 즉시 작업을 중단시키고 해당 근 로자를 대피하도록 하여야 한다. E ?l',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('16c01ffd-0da3-2b89-8e37-e2b71f382f7b','11111111-1111-1111-1111-111111111104','mcq','할론소화약제 중 Halon 2402의 화학식으로 옳은 것은?',2,55)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6d4328da-b2af-08b7-f219-134a39919a63','16c01ffd-0da3-2b89-8e37-e2b71f382f7b','e2日4匕허',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be7237e1-f1cc-1547-7572-877c29987f60','16c01ffd-0da3-2b89-8e37-e2b71f382f7b','C2H4휴2',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('88b40264-935e-75d7-318f-226942384969','16c01ffd-0da3-2b89-8e37-e2b71f382f7b','CrBp4H2',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c05ba6cb-cd2f-a862-f500-01d7ecc96d79','16c01ffd-0da3-2b89-8e37-e2b71f382f7b','心么匕퍼耳么',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('16c01ffd-0da3-2b89-8e37-e2b71f382f7b','6d4328da-b2af-08b7-f219-134a39919a63','① e2日4匕허','정답 ①. e2日4匕허',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('28f22818-2011-0409-4fc7-d50db6b5acc5','11111111-1111-1111-1111-111111111104','mcq','비계의 높이가 2[m] 이상인 작업장소에 설치하는 작업발판 의 설치기준으로 옳지 않은 것은?（단, 달비계, 달대비계 및 말비계는 제외한다.）',2,56)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1c35244f-1eb9-257d-6f6c-9faec6b5cea2','28f22818-2011-0409-4fc7-d50db6b5acc5','작업발판의 폭은 40[cm] 이상으로 한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f264975a-e6b7-a11c-dd8c-17e24cc796d0','28f22818-2011-0409-4fc7-d50db6b5acc5','작업발판의 재료는 뒤집히거나 떨어지지 않도록 하나',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('96ccf415-d31d-458d-4fd5-a7559d314c8a','28f22818-2011-0409-4fc7-d50db6b5acc5','발판재료 간의 틈은 3[cm] 이하로 한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6aaf7210-6895-3976-b003-8dd70f737d52','28f22818-2011-0409-4fc7-d50db6b5acc5','작업발판의 지지물은 하중에 의하여 파괴될 우려가 없',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('28f22818-2011-0409-4fc7-d50db6b5acc5','f264975a-e6b7-a11c-dd8c-17e24cc796d0','② 작업발판의 재료는 뒤집히거나 떨어지지 않도록 하나','정답 ②. 작업발판의 재료는 뒤집히거나 떨어지지 않도록 하나',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','11111111-1111-1111-1111-111111111104','mcq','유해위험방지계획서 첨부서류에 해당되지 않는 것은?',2,57)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a2383869-a20c-d785-5245-af2fe900e4da','f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','안전관리를 위한 교육자료',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('35348779-4cfd-020b-716c-f902fe3a9458','f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','안전관리 조직표',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('727bd0b5-4c87-6e22-32e3-b51cf754b835','f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','전체 공정표',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e8f8fbc-d457-21a4-7242-1f8b1ef37844','f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','재해발생 위험 시 연락 및 대피방법',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f96ed21d-921f-b8ac-887e-9b4c2eefa4a0','a2383869-a20c-d785-5245-af2fe900e4da','① 안전관리를 위한 교육자료','정답 ①. 안전관리를 위한 교육자료',array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ef32cc9d-af4b-0750-942f-59db3b477067','11111111-1111-1111-1111-111111111104','mcq','매슬로우(Maslow)의 욕구위계이론 중 2단계에 해당되는 것은?',2,58)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6512186a-d8c7-efd1-331b-581dbf9be09f','ef32cc9d-af4b-0750-942f-59db3b477067','생리적 욕구',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e','ef32cc9d-af4b-0750-942f-59db3b477067','안전에 대한 욕구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('79d6e727-d8da-ff35-1c59-b7cf9192fe3c','ef32cc9d-af4b-0750-942f-59db3b477067','자아실현의 욕구',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('10fc0601-fc12-ab91-e8ed-31f6a32eaa83','ef32cc9d-af4b-0750-942f-59db3b477067','존경과 긍지에 대한 욕구',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ef32cc9d-af4b-0750-942f-59db3b477067','b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e','② 안전에 대한 욕구','정답 ②. 안전에 대한 욕구',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5b63fe55-904a-58a1-8033-3c3005c7d17b','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 안전보건교육 교육대상별 교육내용 중 관리감독자 정기교육의 내용으로 틀린 것은?',2,59)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e394fde-293d-b998-507f-b1def1084799','5b63fe55-904a-58a1-8033-3c3005c7d17b','정리정돈 및 청소에 관한 사항',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3b363eb7-90a5-b0cc-e888-5dc7a9f72823','5b63fe55-904a-58a1-8033-3c3005c7d17b','유해 • 위험 작업환경 관리에 관한 사항',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c19dd78b-4840-bc79-6a32-5ba9c6c2804a','5b63fe55-904a-58a1-8033-3c3005c7d17b','표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e6262244-3d28-e400-12cc-6350fb8e4905','5b63fe55-904a-58a1-8033-3c3005c7d17b','작업공정의 유해 • 위험과 재해 예방대책에 관한 사항',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5b63fe55-904a-58a1-8033-3c3005c7d17b','9e394fde-293d-b998-507f-b1def1084799','① 정리정돈 및 청소에 관한 사항','정답 ①. 은 근로자의 채용 시 및 작업내용 변경 시 교육내용이다. 관리감독자 정기 교육내용 • 산업안전 및 산업재해 예방에 관한 사항 • 산업보건 및 건강장해 예방에 관한 사항 • 위험성 평가에 관한 사항 • 유해 • 위험 작업환경 관리에 관한 사항 • 「산업안전보건법령」및 산업재해보상보험 제도에 관한 사항 • 직무스트레스 예방 및 관리에 관한 사항 • 직장 내 괴롭힘. 고객의 폭언 등으로 인한 건강장해 예방 및 관리에 관한 사항 • 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항 • 사업장 내 안전보건관리체제 및 안전 • 보건조치 현황에 관한 사항 . 표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항 • 현장 근로자와의 의사소통능력 및 강의능력 등 안전보건교육 능력 배양 에 관한 사항 • 비상시 또는 재해 발생 시 긴급조치에 관한 사항 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('42f9ba30-59a6-8110-128c-0b6e8ad87300','11111111-1111-1111-1111-111111111104','mcq','안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은?',2,60)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d7c1977f-23f3-5677-b964-0e768bdf31d5','42f9ba30-59a6-8110-128c-0b6e8ad87300','단기간의 교육시간 내에 비교적 많은 내용을 전달할 수',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5f377be0-d6b6-c8f1-6f87-62ff5ead3e5e','42f9ba30-59a6-8110-128c-0b6e8ad87300','다수의 수강자를 대상으로 동시에 교육할 수 있다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('99cea04b-aaf2-c8d8-949b-30c75ffaa61f','42f9ba30-59a6-8110-128c-0b6e8ad87300','다른 교육방법에 비해 수강자의 참여가 제약된다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a23843bb-3bf6-490b-e82d-6d9aa18fdbd3','42f9ba30-59a6-8110-128c-0b6e8ad87300','수강자 개개인의 학습진도를 조절할 수 있다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('42f9ba30-59a6-8110-128c-0b6e8ad87300','a23843bb-3bf6-490b-e82d-6d9aa18fdbd3','④ 수강자 개개인의 학습진도를 조절할 수 있다.','정답 ④. 강의법은 다수의 수강자를 대상으로 동시에 교육을 진행하기 때 문에 개개인의 학습진도를 조절할 수 없다',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','11111111-1111-1111-1111-111111111104','mcq','Rasmussen은 행동을 세 가지로 분류하였는데, 그 분류에 해당하지 않는 것은?',2,61)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('874f3b50-9740-1b07-b139-efb9289bdb05','fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','숙련 기반 행동(skill—based behavior)',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('63033634-0808-9dbc-73b0-2ebecf4b5ee1','fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','지 식 기 반 행동(knowledge—based behavior)',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b54a962b-18b3-932c-1511-b84d249120ea','fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','경험 기반 행동(experience—based behavior)',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('38e666f0-1a53-7e88-c3ce-ce097e971462','fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','규칙 기반 행동(rule—based behavior)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3','b54a962b-18b3-932c-1511-b84d249120ea','③ 경험 기반 행동(experience—based behavior)','정답 ③. 라스무센(Rasmussen)의 인간 행동 분류 • 숙련 기반 행동: 반복적이고 자동화된 동작으로. 거의 무의식적으로 수 행되는 행동이다. • 규칙 기반 행동: 규칙. 절차, 지침에 따라 수행되는 행동이다. • 지식 기반 행동: 새로운 상황에서 문제 해결을 위해 지식을 활용하는 행 동이다. 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('92d4f185-f569-de19-2c6d-d748a12ce11d','11111111-1111-1111-1111-111111111104','mcq','모든 시스템안전 분석에서 제일 첫 번째 단계의 분석으로, 실행되고 있는 시스템을 포함한 모든 것의 상태를 인식하고 시스템의 개발단계에서 시스템 고유의 위험상태를 식별하 여 예상되고 있는 재해의 위험수준을 결정하는 것을 목적으 로 하는 위험분석 기법은?',2,62)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c0f13251-1dde-0567-7069-2626a4912e5e','92d4f185-f569-de19-2c6d-d748a12ce11d','결함위험분석 (FHA； Fault Hazard Analysis)',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8b157e37-ed50-a4ce-d4c7-37a6334c846d','92d4f185-f569-de19-2c6d-d748a12ce11d','시스템위험분석(SHA； System Hazard Analysis)',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5f5dc1d2-ac7c-be0f-1fe3-4d1e28e44b84','92d4f185-f569-de19-2c6d-d748a12ce11d','예비위험분석(PHA； Preliminary Hazard Analysis)',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d572fe35-458a-26f2-ab42-cb365d98f01d','92d4f185-f569-de19-2c6d-d748a12ce11d','운용위험분석 (OHA； Operating Hazard Analysis)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('92d4f185-f569-de19-2c6d-d748a12ce11d','5f5dc1d2-ac7c-be0f-1fe3-4d1e28e44b84','③ 예비위험분석(PHA； Preliminary Hazard Analysis)','정답 ③. 예비위험분석(PHA； Preliminary Hazard Analysis)',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('37f14e75-22ef-70dd-c7ca-5ac182666bb3','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 위험성평가의 실시내용 및 결과의 기록. 보존에 관한 설명으로 옳지 않은 것은?',2,63)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('53bc7e02-33ba-80bf-5b13-1fd2447ad36e','37f14e75-22ef-70dd-c7ca-5ac182666bb3','위험성평가 대상의 유해 위험요인이 포함되어야 한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('14743531-9f74-7d16-5bf6-dbf29be05cef','37f14e75-22ef-70dd-c7ca-5ac182666bb3','위험성 결정 및 결정에 따른 조치의 내용이 포함되어야',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ef76651c-83d5-b7a1-54c6-a9f19e9db46a','37f14e75-22ef-70dd-c7ca-5ac182666bb3','위험성평가의 실시내용을 확인하기 위하여 필요한 사',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('130cdf7d-52d8-aabb-fbd0-8009cfd6fc76','37f14e75-22ef-70dd-c7ca-5ac182666bb3','사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('37f14e75-22ef-70dd-c7ca-5ac182666bb3','130cdf7d-52d8-aabb-fbd0-8009cfd6fc76','④ 사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에','정답 ④. 따른 자료를 5년간 보존하여야 한다. 3 위험성평가의 결과와 조치사항을 기록한 자료는 3년간 보존하여 야 한다. E S1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f735dcf8-94d7-f398-4c39-f212e97d149b','11111111-1111-1111-1111-111111111104','mcq','기술 개발과정에서 효율성과 위험성을 종합적으로 분석 • 판단할 수 있는 평가방법으로 가장 적절한 것은?',2,64)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('84e389a8-2f75-2ed2-1bf4-7e099901dda1','f735dcf8-94d7-f398-4c39-f212e97d149b','Risk Assessment',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('39cfcb88-a5f1-67dc-35b0-7155a9353658','f735dcf8-94d7-f398-4c39-f212e97d149b','Risk Management',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2194d9d3-a2e5-e1b9-e90a-c63067c16c7f','f735dcf8-94d7-f398-4c39-f212e97d149b','Safety Assessment',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f83054ac-6c06-a37d-b371-949a222baf8b','f735dcf8-94d7-f398-4c39-f212e97d149b','Technology Assessment',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f735dcf8-94d7-f398-4c39-f212e97d149b','f83054ac-6c06-a37d-b371-949a222baf8b','④ Technology Assessment','정답 ④. 테크놀로지 어세스먼트(Technology Assessment) 안전성 평가 중 기술 개발과정에서의 효율성과 위험성을 종합적으로 분석. 판단하는 프로세스이다. 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('53f39d02-4c3e-7197-4514-c118afd6a8fe','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 지게차의 최대하중의 2배 값이 6톤 일 경우 헤드가드의 강도는 몇 톤의 등분포정하중에 견딜 수 있어야 하는가?',2,65)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('47319227-3692-c8e6-32e8-3a9c27a4dd2b','53f39d02-4c3e-7197-4514-c118afd6a8fe','4',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7d2a2e6e-588b-fd4c-5f4d-d3fefc30d126','53f39d02-4c3e-7197-4514-c118afd6a8fe','6',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('00e86f8d-f959-5f6f-eb12-28d231a31b72','53f39d02-4c3e-7197-4514-c118afd6a8fe','8',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4736d371-5fda-1e80-ebb0-e2cd9d4bf530','53f39d02-4c3e-7197-4514-c118afd6a8fe','10',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('53f39d02-4c3e-7197-4514-c118afd6a8fe','47319227-3692-c8e6-32e8-3a9c27a4dd2b','① 4','정답 ①. 헤드가드의 구비조건 • 강도는 지게차의 최대하중의 2배 값(4톤을 넘는 값에 대해서는 4톤)의 등분포정하중에 견딜 수 있을 것 • 상부틀의 각 개구의 폭 또는 길이가 16[cm] 미만일 것 • 운전자가 앉아서 조작하거나 서서 조작하는 지게차의 헤드가드는 한국 산업표준에서 정하는 높이 기준 이상일 것(입승식: 1.88[m] 이상. 좌승 식: 0.903[m] 이상)',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('de0213e1-ba4d-6e20-4f4e-228890a03f80','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?(단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.)',2,66)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7ec826de-9565-3609-94ab-bd058bf9e54a','de0213e1-ba4d-6e20-4f4e-228890a03f80','0.9[m]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aa933f51-6e9f-9229-6cf8-ccb6361abf73','de0213e1-ba4d-6e20-4f4e-228890a03f80','1.2[m]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('17e32b97-349d-3b28-7fb9-9be8bb4cdce3','de0213e1-ba4d-6e20-4f4e-228890a03f80','1.5[m]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f135a2c8-cb15-9c63-3987-8899979c53bb','de0213e1-ba4d-6e20-4f4e-228890a03f80','1.8[m]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('de0213e1-ba4d-6e20-4f4e-228890a03f80','f135a2c8-cb15-9c63-3987-8899979c53bb','④ 1.8[m]','정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. E 3',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bb214757-49ae-4c79-fb78-d4094b3e9162','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 승강기의 종류에 해당하지 않는 것은?',2,67)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('97ac9993-c2cf-e714-8cbe-0b184889efb1','bb214757-49ae-4c79-fb78-d4094b3e9162','리프트',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8ba32c68-4cb0-0e79-4e97-0f6bb8bae16f','bb214757-49ae-4c79-fb78-d4094b3e9162','에스컬레이터',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e57e7e8-fe25-4645-ba9a-e5644ed9603e','bb214757-49ae-4c79-fb78-d4094b3e9162','화물용 엘리베이터',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('34a3cf06-e962-e0ae-e772-73f346e53ae4','bb214757-49ae-4c79-fb78-d4094b3e9162','승객용 엘리베이터',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bb214757-49ae-4c79-fb78-d4094b3e9162','97ac9993-c2cf-e714-8cbe-0b184889efb1','① 리프트','정답 ①. 승강기의 종류 승객용 엘리베이터, 승객화물용 엘리베이터, 화물용 엘리베이터, 소형화물 용 엘리베이터. 에스컬레이터',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('72b61aef-ecf9-bf88-ef95-1d259714f1e0','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 산업용 로봇의 작업시작 전 점검사 항으로 가장 거리가 먼 것은?',2,68)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('56669450-3da2-d364-6045-4908c01b1dc4','72b61aef-ecf9-bf88-ef95-1d259714f1e0','외부 전선의 피복 또는 외장의 손상 유무',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d1582f5-2d4c-fc00-6b81-21564a96849d','72b61aef-ecf9-bf88-ef95-1d259714f1e0','압력방출장치의 이상유무',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('224af466-9914-cc0e-cf18-fd699a639c5d','72b61aef-ecf9-bf88-ef95-1d259714f1e0','매니퓰레이터 작동 이상 유무',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dc880841-8883-84bb-5802-21ef21ac9e63','72b61aef-ecf9-bf88-ef95-1d259714f1e0','제동장치 및 비상정지장치의 기능',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('72b61aef-ecf9-bf88-ef95-1d259714f1e0','5d1582f5-2d4c-fc00-6b81-21564a96849d','② 압력방출장치의 이상유무','정답 ②. 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e','11111111-1111-1111-1111-111111111104','mcq','대형기계의 회전체가 있는 위험점으로부터 900[mm] 거리 에 고정가드를 설치하고자 한다. 가드의 개구부에 최적간격 은 얼마로 하여야 하는가?',2,69)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b7a8c664-8c24-9546-c4d8-5e55d3527236','770cf0b3-c18f-0148-1261-1c2a0c16fc7e','141[mm]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b26d2568-f15f-8e70-6d72-ad4415f1e737','770cf0b3-c18f-0148-1261-1c2a0c16fc7e','106[mm]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('31d4c176-445c-8c56-6bb7-0563f57bae8c','770cf0b3-c18f-0148-1261-1c2a0c16fc7e','96[mm]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('441f3ab8-85ca-e10d-afc7-5fbe6f99d882','770cf0b3-c18f-0148-1261-1c2a0c16fc7e','91 [mm]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e','31d4c176-445c-8c56-6bb7-0563f57bae8c','③ 96[mm]','정답 ③. 96[mm]',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc','11111111-1111-1111-1111-111111111104','mcq','광전자식 방호장치의 광선에 신체의 일부가 감지된 후로부 터 급정지기구가 작동 개시하기까지의 시간이 4O[ms]이고, 광축의 최소 설치거리（안전거리）가 200[mm]일 때 급정지 기구가 작동 개시한 때로부터 프레스기의 슬라이드가 정지 될 때까지의 시간은 약 몇 [ms]인가?',2,70)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3512d1f2-6084-9563-ac56-315d273f2235','eee6d358-7d1e-350f-d9f6-424b11f6bdbc','60[ms]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('61fbb522-fd6e-9057-7fb7-fd18bb104be6','eee6d358-7d1e-350f-d9f6-424b11f6bdbc','85[ms]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('179fc9a4-f8ae-6a80-9ccb-71fc6fe18fa1','eee6d358-7d1e-350f-d9f6-424b11f6bdbc','105[ms]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('76c7591b-7c48-37e6-8f62-ba08d9988035','eee6d358-7d1e-350f-d9f6-424b11f6bdbc','13이ms]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc','61fbb522-fd6e-9057-7fb7-fd18bb104be6','② 85[ms]','정답 ②. 85[ms]',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c42da96a-94c9-185f-7dc6-98e5fbed82b6','11111111-1111-1111-1111-111111111104','mcq','설비의 고장형태를 크게 초기고장, 우발고장, 마모고장으로 구분할 때 다음 중 마모고장과 가장 거리가 먼 것은?',2,71)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a6e74fb0-7450-425d-8431-b952bab5c202','c42da96a-94c9-185f-7dc6-98e5fbed82b6','부품, 부재의 마모',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b0eda330-4fd1-42b4-fbf1-b2e50b4641d1','c42da96a-94c9-185f-7dc6-98e5fbed82b6','열화에 생기는 고장',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7cab8b36-75d6-fd45-346b-cbb45817697d','c42da96a-94c9-185f-7dc6-98e5fbed82b6','부품, 부재의 반복피로',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3b245266-9997-fbb4-bfab-53944a92b070','c42da96a-94c9-185f-7dc6-98e5fbed82b6','순간적 외력에 의한 파손',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c42da96a-94c9-185f-7dc6-98e5fbed82b6','3b245266-9997-fbb4-bfab-53944a92b070','④ 순간적 외력에 의한 파손','정답 ④. 순간적 외력에 의한 파손',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','11111111-1111-1111-1111-111111111104','mcq','밀링작업에서 주의해야 할 사항으로 옳지 않은 것은?',2,72)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e3aeb27-5fc2-2f24-e9c8-811659fb796e','4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','보안경을 쓴다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6c7f819e-d63e-046b-d9a3-5a63e55773b7','4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','일감 절삭 중 치수를 측정한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e7329471-8932-3122-094e-ad35283b0e25','4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','커터에 옷이 감기지 않게 한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('555fdcb7-eda7-ba6b-161a-26bd5d2952ae','4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','커터는 될 수 있는 한 컬럼에 가깝게 설치한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f','6c7f819e-d63e-046b-d9a3-5a63e55773b7','② 일감 절삭 중 치수를 측정한다.','정답 ②. 밀링작업 시 일감 또는 부속장치 등을 설치하거나 제거할 때 또 는 일감을 측정할 때에는 반드시 정지시킨 다음에 작업한다. E',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('104187d2-bb05-3a36-15d8-9d24ad3eedf1','11111111-1111-1111-1111-111111111104','mcq','인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?(단, 심실세동전류 는 쯔[mA]이며, 통전시간 7는 1초, 전원은 정현파 교류 이다.)',2,73)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9fc51208-7ef0-ace5-4479-aea0166adc39','104187d2-bb05-3a36-15d8-9d24ad3eedf1','13.6',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('12ca526f-d8ef-63b1-f2a3-60822527bc50','104187d2-bb05-3a36-15d8-9d24ad3eedf1','27.2',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6caec001-a791-894c-190d-cbddec5523f9','104187d2-bb05-3a36-15d8-9d24ad3eedf1','136.6',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4469871f-6ee3-a6cd-f00a-13fdee6aa3d4','104187d2-bb05-3a36-15d8-9d24ad3eedf1','272.2',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('104187d2-bb05-3a36-15d8-9d24ad3eedf1','12ca526f-d8ef-63b1-f2a3-60822527bc50','② 27.2','정답 ②. 27.2',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('8edd4a29-6070-24c4-0878-e2bc57e90bb9','11111111-1111-1111-1111-111111111104','mcq','내압방폭구조의 기본적 성능에 관한 사항으로 틀린 것은?',2,74)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('14651839-2f7b-ae8c-6fd1-cf9e209a1230','8edd4a29-6070-24c4-0878-e2bc57e90bb9','내부에서 폭발할 경우 그 압력에 견딜 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fe5b0760-19bd-160c-e3bd-2d60f3677b72','8edd4a29-6070-24c4-0878-e2bc57e90bb9','폭발화염이 외부로 유출되지 않을 것',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('915d6ad9-7c3c-e6c6-b40c-01a0b1989583','8edd4a29-6070-24c4-0878-e2bc57e90bb9','습기 침투에 대한 보호가 될 것',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d6f9cef-bde5-27b0-abb5-62c5ce12ca04','8edd4a29-6070-24c4-0878-e2bc57e90bb9','외함 표면온도가 주위의 가연성 가스에 점화하지 않을 것',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('8edd4a29-6070-24c4-0878-e2bc57e90bb9','915d6ad9-7c3c-e6c6-b40c-01a0b1989583','③ 습기 침투에 대한 보호가 될 것','정답 ③. 내압방폭구조의 성능 • 내부에서 폭발할 경우 그 압력에 견딜 것 • 폭발화염이 외부로 유출되지 않을 것 • 외함 표면온도가 주위의 가연성 가스를 점화하지 않을 것 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','11111111-1111-1111-1111-111111111104','mcq','전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 50[A] 미만이다.）',2,75)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('25c6c815-8fdd-6a55-a376-1af52913b4f7','989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','15[mA] 이하, 0.1 초 이내',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dded54cf-8168-b5e6-56f4-8db700b762e4','989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','3O[mA] 이하, 0.03초 이내',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5e1b675a-0e38-a71d-88b1-50c68e8bde3b','989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','50[mA] 이하, 0.5초 이내',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d92cfbd6-3d0f-23a5-d86a-fa8eff737ec2','989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','100[mA] 이하, 0.05초 이내',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b','dded54cf-8168-b5e6-56f4-8db700b762e4','② 3O[mA] 이하, 0.03초 이내','정답 ②. 감전보호용누전차단기 • 정격감도전류 30[ ] 이하. 동작시간 0.03초 이내 • 정격전부하전류가 50[A] 이상인 경우. 정격감도전류 200[ ] 이하, 동 작시간 0.1 초 이내 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('39dd0e98-ff1e-18fc-a72d-f39c879792b6','11111111-1111-1111-1111-111111111104','mcq','역률개선용 커패시터(Capacitor)가 접속되어 있는 전로에 서 정전작업을 할 경우 다른 정전작업과는 달리 주의 깊게 취해야 할 조치사항으로 옳은 것은?',2,76)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d793d559-b563-41a9-c886-483dd220fd63','39dd0e98-ff1e-18fc-a72d-f39c879792b6','안전표지 부착',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0fbe81c1-eae6-65dc-17fa-041c8dc3963f','39dd0e98-ff1e-18fc-a72d-f39c879792b6','개폐기 전원투입 금지',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8901265c-a97f-d2fc-2ad8-ecf7a301a924','39dd0e98-ff1e-18fc-a72d-f39c879792b6','잔류전하 방전',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('13f6cc1a-bdd6-2b95-f0a1-9fd8f5efe01b','39dd0e98-ff1e-18fc-a72d-f39c879792b6','활선 근접작업에 대한 방호',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('39dd0e98-ff1e-18fc-a72d-f39c879792b6','8901265c-a97f-d2fc-2ad8-ecf7a301a924','③ 잔류전하 방전','정답 ③. 커패시터는 전기를 저장하는 장치이므로 방전코일이나 방전기구 등을 이용하여 잔류전하의 방전을 주의 깊게 조치하여야 한다',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('900126fb-65dc-e777-a395-bc7a1b18ad41','11111111-1111-1111-1111-111111111104','mcq','송풍기의 회전차 속도가 1,300[rpm]일 때 송풍량이 분당 300[m3]였다. 송풍량을 분당 400[m3]로 증가시키고자 한 다면 송풍기의 회전차 속도는 약 몇 [rpm]으로 하여야 하는 가?',2,77)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ebfa8e56-5b9f-f28d-ba2c-e7917adeb2cc','900126fb-65dc-e777-a395-bc7a1b18ad41','1,533',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7210db9b-70bf-792d-6294-ceca045496db','900126fb-65dc-e777-a395-bc7a1b18ad41','1,733',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f54a47ce-e0e9-6957-d2b8-46cbcb19d22e','900126fb-65dc-e777-a395-bc7a1b18ad41','1,967',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('76c2fa03-33ef-e0d7-952c-d31738d73ef1','900126fb-65dc-e777-a395-bc7a1b18ad41','2,167',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('900126fb-65dc-e777-a395-bc7a1b18ad41','7210db9b-70bf-792d-6294-ceca045496db','② 1,733','정답 ②. 1,733',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','11111111-1111-1111-1111-111111111104','mcq','중대산업재해 발생 시 응급조치 환자 신고요령으로 옳지 않 은 것은?',2,78)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b2bb6a21-edac-69e8-ed17-4e241f7a1fc4','45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','심각한 응급환자 발생 시 신속히 응급처치 후 119 등에',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3926587e-50dd-4d93-262d-052610e4b9b8','45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','119 연결 시 환자의 상황을 침착하고 정확하게 전달한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('db001190-74de-eeda-1ec5-93a25f778bc8','45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','환자를 제대로 고정하지 않고 이송하는 것은 상태를 악',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ea2f6bc8-b5dc-2697-f506-89bb4df86846','45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','환자의 몸을 조이는 옷과 장신구 등을 느슨하게 풀어주',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21','b2bb6a21-edac-69e8-ed17-4e241f7a1fc4','① 심각한 응급환자 발생 시 신속히 응급처치 후 119 등에','정답 ①. 심각한 응급환자 발생 시 신속히 응급처치 후 119 등에',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc','11111111-1111-1111-1111-111111111104','mcq','다음은「산업안전보건법령」에 따른 위험물질의 종류 중 부 식성 염기류에 관한 내용이다.（ ）안에 알맞은 수치는? 농도가（ ）[%] 이상인 수산화나트륨, 수산화칼륨, 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류',2,79)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c2528320-5d68-ea40-48cd-e5629e09aca1','4b1b127e-b887-13b8-d7d2-a7c948ecfabc','20',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ce2a6243-69e7-fbb3-9492-50cfa6ebee9f','4b1b127e-b887-13b8-d7d2-a7c948ecfabc','40',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0b1b1e01-7fdf-daa7-2d7c-3589cebcff4f','4b1b127e-b887-13b8-d7d2-a7c948ecfabc','60',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('66e13043-6639-5efc-9806-eaaf38b8129a','4b1b127e-b887-13b8-d7d2-a7c948ecfabc','80',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc','ce2a6243-69e7-fbb3-9492-50cfa6ebee9f','② 40','정답 ②. 삐 부식성 염기류 농도가 40[%] 이상인 수산화나트륨, 수산화칼륨. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류이다. 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d6a23d17-f883-c911-4883-728b88c29ab4','11111111-1111-1111-1111-111111111104','mcq','펌프의 사용 시 공동현상（Cavitation）을 방지하고자 할 때의 조치사항으로 틀린 것은?',2,80)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd','d6a23d17-f883-c911-4883-728b88c29ab4','펌프의 회전수를 높인다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b75fd477-2e81-7232-18b0-ffdd3207bb26','d6a23d17-f883-c911-4883-728b88c29ab4','흡입 비 속도를 작게 한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a520c3b2-c882-5837-a8c5-dc6150c7f49c','d6a23d17-f883-c911-4883-728b88c29ab4','펌프의 흡입관의 두（Head） 손실을 줄인다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c5fc9114-e9b9-24a9-7e8f-bde91124900d','d6a23d17-f883-c911-4883-728b88c29ab4','펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d6a23d17-f883-c911-4883-728b88c29ab4','24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd','① 펌프의 회전수를 높인다.','정답 ①. 공동현상은 유속이 빠를 경우 발생할 수 있으므로 공동현상을 예 방하려면 펌프의 회전수를 낮춰야 한다. EM',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
