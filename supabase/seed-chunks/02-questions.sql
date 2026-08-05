-- chunk 2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('906f230c-201f-12a8-ddc5-eea99e3735a4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 브레인스토밍(Brain-storming)의 4원칙을 올바르 게 나열한 것은?', 2, 41)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c07e6026-f4c5-a301-035c-fd0c802966a3', '906f230c-201f-12a8-ddc5-eea99e3735a4', '자유분방, 비판금지 , 대량발언, 수정발언', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa4dd35f-dc63-dc28-e39d-0545238fa720', '906f230c-201f-12a8-ddc5-eea99e3735a4', '비판자유, 소량발언, 자유분방, 수정발언', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0d9c2d-4f12-3c72-106a-05c22dadb6d0', '906f230c-201f-12a8-ddc5-eea99e3735a4', '대량발언, 비판자유, 자유분방. 수정발언', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f28c7281-3fd4-131a-f9bc-a113a8ff3e4a', '906f230c-201f-12a8-ddc5-eea99e3735a4', '소량발언, 자유분방, 비판금지, 수정발언', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('906f230c-201f-12a8-ddc5-eea99e3735a4', 'c07e6026-f4c5-a301-035c-fd0c802966a3', '① 자유분방, 비판금지 , 대량발언, 수정발언', '정답 ①. 브레인스토밍(Brain Storming) • 비판금지: “좋다, 나쁘다’’ 등의 비평을 하지 않는다. • 자유분방: 자유로운 분위기에서 발표한다. • 대량발언 : 무엇이든지 좋으니 많이 발언한다. • 수정발언: 자유자재로 변하는 아이디어를 개발한다.(타인 의견의 수정 발언) 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7c827997-65f4-edf3-880d-f2fa7da5bbf7', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전보건교육의 단계별 교육과정 순서로 옳은 것은?', 2, 42)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3e17d2a-6af0-c052-26c8-1fc63ea9489d', '7c827997-65f4-edf3-880d-f2fa7da5bbf7', '안전 태도교육 一 안전 지식교육—안전 기능교육', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2abb8fef-312f-2082-1c0e-21be6f6e77a5', '7c827997-65f4-edf3-880d-f2fa7da5bbf7', '안전 지식교육 一 안전 기능교육 一 안전 태도교육', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1e77e13-948d-1a19-06ff-6d5e64f6a474', '7c827997-65f4-edf3-880d-f2fa7da5bbf7', '안전 기능교육 一 안전 지식교육 一 안전 태도교육', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2cd44ce8-0994-0841-e2e4-f0bb8a12a1af', '7c827997-65f4-edf3-880d-f2fa7da5bbf7', '안전 자세교육 -> 안전 지식교육 一> 안전 기능교육', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7c827997-65f4-edf3-880d-f2fa7da5bbf7', '2abb8fef-312f-2082-1c0e-21be6f6e77a5', '② 안전 지식교육 一 안전 기능교육 一 안전 태도교육', '정답 ②. 안전 지식교육 一 안전 기능교육 一 안전 태도교육', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석의 기대효과와 가장 관계가 먼 것은?', 2, 43)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f45e0365-78ef-fd70-aa3f-8ebdfb0f59aa', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '시스템의 결함 진단', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e438e8d-de16-183c-d057-a14be39bc359', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '시간에 따른 원인 분석', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d41f3f6-b02c-cb90-0d44-4f53da95900c', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '사고원인 규명의 간편화', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('201d3413-9d41-eae8-508d-2e640c1ff753', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '사고원인 분석의 정량화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '0e438e8d-de16-183c-d057-a14be39bc359', '② 시간에 따른 원인 분석', '정답 ②. 의 기대효과 • 사고원인 규명의 간편화 • 사고원인 분석의 일반화 • 사고원인 분석의 정량화 • 노력, 시간의 절감 • 시스템의 결함 진단 • 안전점검 체크리스트 작성', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1eb28774-2793-58fe-6cea-6b8c66a57f3a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해위험방지계획서의 제출대 상 사업은 해당 사업으로서 전기 계약용량이 얼마 이상인 사업인가?', 2, 44)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('811cfe43-cd6d-974d-380a-58eb32ccd953', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '150[kW]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff1cfade-3630-9bd2-4f90-f1d51c5a8f96', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '200[kW]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c16a0361-d7a9-b99f-6e2c-497bca151e1e', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '3OO[kW]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e5a87b1-b30c-0760-53f7-ee16da3412ca', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '500[kW]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1eb28774-2793-58fe-6cea-6b8c66a57f3a', 'c16a0361-d7a9-b99f-6e2c-497bca151e1e', '③ 3OO[kW]', '정답 ③. 전기 계약용량이 300[kW] 이상인 사업의 사업주는 해당 제품의 생산 공정과 직접적으로 관련된 건설물 • 기계 • 기구 및 설비 등 전부를 설 치 • 이전하거나 그 주요 구조부분을 변경할 때는 유해위험방지계획서를 제출하여야 한다. EWW1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('930a10c6-bb3e-2bf1-654a-627ed644a4da', '11111111-1111-1111-1111-111111111104', 'mcq', '인간의 오류모형에서 “알고 있음에도 의도적으로 따르지 않거나 무시한 경우”를 무엇이라 하는가?', 2, 45)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96a04cc3-94d2-3d6d-f701-f8740d04a9a8', '930a10c6-bb3e-2bf1-654a-627ed644a4da', '실수(Slip)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a9f11f9-2fa9-1c08-6c38-ca44536c8ba4', '930a10c6-bb3e-2bf1-654a-627ed644a4da', '착오(Mistake)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17ab8a75-278e-293f-6352-9e0e697a5368', '930a10c6-bb3e-2bf1-654a-627ed644a4da', '건망증(Lapse)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be27e9b1-205f-62d1-2c9d-8b9921163911', '930a10c6-bb3e-2bf1-654a-627ed644a4da', '위반(Violation)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('930a10c6-bb3e-2bf1-654a-627ed644a4da', 'be27e9b1-205f-62d1-2c9d-8b9921163911', '④ 위반(Violation)', '정답 ④. 인간의 오류모형 • 착오(Mistake)： 상황해석을 잘못하거나 목표를 잘못 이해하고 착각하 여 행하는 경우 • 실수(Slip)： 상황이나 목표의 해석을 제대로 했으나 의도와는 다른 행동 을 하는 경우 • 건망증(Lapse)： 여러 과정이 연계적으로 일어나는 행동 중에서 일부를 잊어버리고 하지 않거나 또는 기억의 실패에 의하여 발생하는 오류 • 위반(Violation)： 정해진 규칙을 알고 있음에도 고의로 따르지 않거나 무시하는 행위', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fb2680cd-d035-95e3-fc28-723947f3b4e2', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전관리(Process Safety Management； PSM)의 적 용대상 사업장이 아닌 것은?', 2, 46)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90427018-5b66-0d54-d26f-eeb7977e38f6', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '복합비료 제조업', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e9f2aab-4ae3-0f02-f5c2-bab5f15c7505', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '농약 원제 제조업', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '차량 등의 운송설비업', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19fbe98e-7913-a424-1192-7f5ab168b0f1', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '합성수지 및 기타 플라스틱물질 제조업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fb2680cd-d035-95e3-fc28-723947f3b4e2', 'ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d', '③ 차량 등의 운송설비업', '정답 ③. 차량 등의 운송설비업은 적용대상이 아니며, 차량 등의 운송설비 는 유해하거나 위험한 설비로 보지 않는다. 공정안전보고서의 제출 대상 • 원유 정제처리업 • 기타 석유정제물 재처리업 • 석유화학계 기초화학물질 제조업 또는 합성수지 및 기타 플라스틱물질 제조업 • 질소 화합물. 질소질 화학비료 제조업 • 복합비료 제조업 • 화학 살균 . 살충제 및 농업용 약제 제조업(농약 원제 제조만 해당) • 화약 및 불꽃제품 제조업 W11S1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4ce2310-a742-d04d-96b7-2b04db538eb0', '11111111-1111-1111-1111-111111111104', 'mcq', '비파괴시험의 종류가 아닌 것은?', 2, 47)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e829094-b05e-3263-a5e6-cc94df2cfcac', 'b4ce2310-a742-d04d-96b7-2b04db538eb0', '자분탐상시험', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1644749-737d-b38c-ee35-b699a0e4b1b5', 'b4ce2310-a742-d04d-96b7-2b04db538eb0', '침투탐상시험', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7d7ec41-eec7-36e6-9209-6e232cbe885b', 'b4ce2310-a742-d04d-96b7-2b04db538eb0', '와류탐상시험', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd573ff1-725b-e541-34cf-c5b49c7dfbeb', 'b4ce2310-a742-d04d-96b7-2b04db538eb0', '샤르피 충격시험', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4ce2310-a742-d04d-96b7-2b04db538eb0', 'dd573ff1-725b-e541-34cf-c5b49c7dfbeb', '④ 샤르피 충격시험', '정답 ④. 샤르피 충격시험', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 와이어로프의 꼬임에 관한 설명으로 틀린 것은?', 2, 48)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7eb00c2-f4f2-b223-c78c-f28447298548', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '보통 꼬임에는 s 꼬임이나 z 꼬임이 있다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7be599db-df21-4ef6-d539-e2d4cfeba9c6', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '보통 꼬임은 스트랜드의 꼬임방향과 로프의 꼬임방향', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f0b3da9-3423-a1d6-a69f-d8d0145fef28', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af82c7f2-38e4-13af-7c26-22db7409de75', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '랭 꼬임은 보통 꼬임에 비하여 마모에 대한 저항성이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8', '0f0b3da9-3423-a1d6-a69f-d8d0145fef28', '③ 랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크', '정답 ③. 우수하다. 3 킹크가 생기기 쉬운 곳에 사용되는 꼬임은 보통 꼬임(Regular Lay) 이다. 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5dcd700f-4d3c-2fed-ceae-9768939d3d87', '11111111-1111-1111-1111-111111111104', 'mcq', '가스용접에 이용되는 아세틸렌가스 용기의 색상으로 옳은 것은?', 2, 49)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('054849a3-9bce-9a91-6bdb-d9cd83621418', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '녹색', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd7016b4-9abd-c3eb-5373-6a2777729259', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '회색', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cca0448-b9db-dc15-e661-1cf84dadd244', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '황색', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d14b3fdd-5f3e-25b8-7734-ae755f0d345b', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '청색', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5dcd700f-4d3c-2fed-ceae-9768939d3d87', '3cca0448-b9db-dc15-e661-1cf84dadd244', '③ 황색', '정답 ③. 고압가스용기의 도색 • 액화석유가스: 밝은 회색 • 수소: 주황색 • 아세틸렌: 황색 • 액화암모니아: 백색 • 액화염소: 갈색 •산소: 녹색 • 기타가스: 회색', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('75c17314-bfad-bb95-3a0f-459af988d3c4', '11111111-1111-1111-1111-111111111104', 'mcq', '구내운반차의 제동장치 준수사항에 대한 설명으로 틀린 것 은?', 2, 50)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3dc8c32-91ce-bbff-5af2-7769a62df29e', '75c17314-bfad-bb95-3a0f-459af988d3c4', '조명이 없는 장소에 작업 시 전조등과 후미등을 갖출 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e811575-12be-e42b-52c1-069893da2c3d', '75c17314-bfad-bb95-3a0f-459af988d3c4', '운전석이 차 실내에 있는 것은 좌우에 한 개씩 방향지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a68fa5a-ecbe-1574-a92e-5de804c627af', '75c17314-bfad-bb95-3a0f-459af988d3c4', '핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a746f64c-8176-73e2-e1b7-bb29b356cb5c', '75c17314-bfad-bb95-3a0f-459af988d3c4', '주행을 제동하거나 정지상태를 유지하기 위하여 유효', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('75c17314-bfad-bb95-3a0f-459af988d3c4', '4a68fa5a-ecbe-1574-a92e-5de804c627af', '③ 핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미', '정답 ③. 한 제동장치를 갖줄 것 구내운반차구비조건 • 주행을 제동하거나 정지상태를 유지하기 위하여 유효한 제동장치를 갖 출것 •경음기를 갖출 것 • 운전석이 차 실내에 있는 것은 좌우에 한 개씩 방향지시기를 갖출 것 • 전조등과 후미등을 갖출 것 ※「산업안전보건에 관한 규칙」이 개정됨에 따라 에 해당하는 규정은 삭 제되었습니다. 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2dcb8f8b-e656-9957-674b-dfde22917c02', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙川I서 일반 작업장에 전기 위험 방지조치를 취하지 않아도 되는 전압은 몇 [v] 이하인 가?', 2, 51)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('188c4ffa-5bf3-3ab7-689c-604c82f5eb0a', '2dcb8f8b-e656-9957-674b-dfde22917c02', '24', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2168b839-ed31-a1c1-9250-4715fd3bf6d0', '2dcb8f8b-e656-9957-674b-dfde22917c02', '30', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('788a6fe5-8091-0a9e-0a66-d97182ccca3c', '2dcb8f8b-e656-9957-674b-dfde22917c02', '50', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86507bbd-47e7-832e-0afa-951b0eae6efe', '2dcb8f8b-e656-9957-674b-dfde22917c02', '100', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2dcb8f8b-e656-9957-674b-dfde22917c02', '2168b839-ed31-a1c1-9250-4715fd3bf6d0', '② 30', '정답 ②. 안전전압 회로의 정격전압이 일정 수준 이하의 낮은 전압으로 절연파괴 등의 사고 시에도 인체에 위험을 주지 않는 전압을 말하며, ’ 산업안전보건법령」에서 30[V]로 규정하고 있다. fc! ji 아UPTER 02 감전재해 및 방지대책 06', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('73b202be-3977-1ba7-a7f9-571615627750', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크용접기의 허용사용률[%]은?（단, 정격사용률은 10[%], 2차 정격전류는 500[A], 교류아크용접기의 사용전 류는 25O[A] 이다.）', 2, 52)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('152c2759-9553-7975-2a5e-721fee8fc129', '73b202be-3977-1ba7-a7f9-571615627750', '30', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('67501313-d429-16b5-e8ec-6ceb32b52f8b', '73b202be-3977-1ba7-a7f9-571615627750', '40', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf15e1c4-b668-cd79-abb7-e1867facc598', '73b202be-3977-1ba7-a7f9-571615627750', '50', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dba8c03-8394-0112-8010-084e11684bef', '73b202be-3977-1ba7-a7f9-571615627750', '60', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('73b202be-3977-1ba7-a7f9-571615627750', '67501313-d429-16b5-e8ec-6ceb32b52f8b', '② 40', '정답 ②. 40', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c2b5822e-2b82-1de8-c7ad-c96723c11020', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기기기의 온도등급의 기호는?', 2, 53)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe1e61c5-86b8-200b-a68f-e50f9d6e12d8', 'c2b5822e-2b82-1de8-c7ad-c96723c11020', 'E', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2269895e-163d-368e-1580-865bde288c0a', 'c2b5822e-2b82-1de8-c7ad-c96723c11020', 'S', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8dc0d5d7-713e-1f80-876f-02d8affaaaa2', 'c2b5822e-2b82-1de8-c7ad-c96723c11020', 'T', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd1ddf10-b5b0-8c4d-feac-b011c9754d59', 'c2b5822e-2b82-1de8-c7ad-c96723c11020', 'N', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c2b5822e-2b82-1de8-c7ad-c96723c11020', '8dc0d5d7-713e-1f80-876f-02d8affaaaa2', '③ T', '정답 ③. T', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d5df664d-c606-9db9-a80e-fb5a0c25cf41', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조에서 안전간극（Safe Gap｝을 작게 하는 이유 로 옳은 것은?', 2, 54)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42fefda7-ae8f-f8f5-2825-db9b63b221ae', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '최소점화에너지를 높게 하기 위해', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dcbed4f-5a07-45c7-a433-521da5743d96', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '폭발화염이 외부로 전파되지 않도록 하기 위해', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b003dcee-c3e5-e923-3b29-116d96909bea', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '폭발압력에 견디고 파손되지 않도록 하기 위해', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe850a4d-2e14-b307-d83d-8b4216d01f1f', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '설치류가 전선 등을 훼손하지 않도록 하기 위해', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d5df664d-c606-9db9-a80e-fb5a0c25cf41', '7dcbed4f-5a07-45c7-a433-521da5743d96', '② 폭발화염이 외부로 전파되지 않도록 하기 위해', '정답 ②. 폭발화염이 외부로 유출되지 않도록 하기 위해서 안전간극을 작 게 하여야 한다. 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fa37de06-318f-aa51-e39c-44b78b51fade', '11111111-1111-1111-1111-111111111104', 'mcq', '내부에서 폭발하더라도 틈의 냉각효과로 인하여 외부의 폭 발성 가스에 착화될 우려가 없는 방폭구조는?', 2, 55)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44c33b35-1d69-e3d5-7a62-afa3baca3d5d', 'fa37de06-318f-aa51-e39c-44b78b51fade', '내압방폭구조', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a8082cb-cbf0-3cb7-433d-9983c4b9dafe', 'fa37de06-318f-aa51-e39c-44b78b51fade', '유입방폭구조', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a67bf8d3-baa5-9934-9a9d-15aba0636a40', 'fa37de06-318f-aa51-e39c-44b78b51fade', '안전증방폭구조', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('466b8773-8dcb-6281-f534-ec809ab6c2f7', 'fa37de06-318f-aa51-e39c-44b78b51fade', '본질안전방폭구조', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fa37de06-318f-aa51-e39c-44b78b51fade', '44c33b35-1d69-e3d5-7a62-afa3baca3d5d', '① 내압방폭구조', '정답 ①. 내압방폭구조 용기 내부에 폭발성 가스 및 증기가 폭발하였을 때 용기가 그 압력에 견디 며 또한 접합면, 개구부 등을 통해서 외부의 폭발성 가스 •증기에 인화되 지 않도록 한 구조이다. 점화원| y（틈새） 이] 후%깊이） 바뾔g', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a0de241b-e178-dd65-c73e-28bb59696586', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----스、-----1 |-------스、-----부히 ® ® @', 2, 56)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d25b034-088c-8db9-b242-d569f5e0b1a4', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ® — @ — @, 투입 : ® — @ —» @', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a530a44d-b6ac-08bc-ac92-740cf6ac5166', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: © — @ — ®, 투입: O — @—•©', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ecd5169-9814-c797-7a0e-148f726901ad', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ©—+@—®, 투입:@—®~-0', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ae1537a-8f3e-662e-5ce6-076039682a01', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ® —- ©—®, 투입: ©—®—Q)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a0de241b-e178-dd65-c73e-28bb59696586', '5ae1537a-8f3e-662e-5ce6-076039682a01', '④ 차단: ® —- ©—®, 투입: ©—®—Q)', '정답 ④. 차단: ® —- ©—®, 투입: ©—®—Q)', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cd8cd90b-4013-a53f-e9c1-350656adbbbd', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발위험 장소에서의 본질안전방폭구조에 대한 설명으로 틀 린 것은?', 2, 57)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf4b76c0-60bb-7758-369f-29111983ba5f', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '본질안전방폭구조의 기본적 개념은 점화능력의 본질적', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be9db727-4204-c1d9-aca1-1fa9d4b3211f', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eed7f974-ffc8-3a00-e101-dc9e5eb7adfa', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '이론적으로는 모든 전기기기에 본질안전방폭구조를 적', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0522b313-85ad-65df-bacd-ca50a787806c', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '온도, 압력, 액면유량 등의 검출용 측정기는 대표적인', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cd8cd90b-4013-a53f-e9c1-350656adbbbd', 'be9db727-4204-c1d9-aca1-1fa9d4b3211f', '② 본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장', '정답 ②. 본질 안전방폭구조의 예 이 다. 1하 본질안전방폭구조 Ex ib는 1종. 2종 장소에서 사용할 수 있고 0 종 장소에는 사용할 수 없다. 0종〜2종에서 사용할 수 있는 것은 Ex ia 이다. 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 화학설비와 화학설비의 부속설비를 구분할 때 화학설비에 해당하는 것은?', 2, 58)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b42cda-6fe7-07d5-8797-142b10385f12', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a9b7b59-5fac-144d-0127-b4950763f6d6', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '사이클론 •백필터 • 전기 집진기 등 분진처리설비', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f724480-346e-be38-0902-d3c841027218', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '온도 •압력 •유량 등을 지시 • 기록 등을 하는 자동제어', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5536b9df-bd4e-4c14-9563-22b6bc8c1545', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '안전밸브 • 안전판 • 긴급차단 또는 방출밸브 등 비상조', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', 'd5b42cda-6fe7-07d5-8797-142b10385f12', '① 응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류', '정답 ①. 치 관련설비 a 응축기 냉각기 • 가열기 • 증발기 등 열교환기류는 화학설비에 해 당한다. 오답해설 , ®. @는 화학설비의 부속설비에 해당한다. @^1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('74c2c845-0f13-f5f0-4aac-6325d2addd0e', '11111111-1111-1111-1111-111111111104', 'mcq', '가연성 가스 혼합물을 구성하는 각 성분의 조성과 연소범위 가 다음 [표]와 같을 때 혼합가스의 연소하한값은 약 몇 [vol%] 인가? 조성 연소하한값 연소상한값 구분 [vol%] [vol%] [vol%] 헥산 1 1.1 7.4 메탄 2.5 5.0 15.0 에틸렌 0.5 2.7 36.0 공기 96 - —', 2, 59)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('92a50a4e-efc5-3ad6-2d06-4cd9f00f4647', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '2.51', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b54f0252-91a2-ed40-5acb-d50802ee73db', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '7.51', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1472650-37e1-cdb7-528c-8775cb3d44ea', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '12.07', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c618367c-1073-7fb7-b3d9-94a28b335c0b', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '15.01', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('74c2c845-0f13-f5f0-4aac-6325d2addd0e', '92a50a4e-efc5-3ad6-2d06-4cd9f00f4647', '① 2.51', '정답 ①. 2.51', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('51997e93-fd8c-9458-d932-f0b27c0acdad', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전보고서에 포함하여야 할 세부내용 중 공정안전자 료의 세부내용이 아닌 것은?', 2, 60)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('570cf755-0a03-cc02-7ae1-c255ec42dfce', '51997e93-fd8c-9458-d932-f0b27c0acdad', '유해•위험설비의 목록 및 사양', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27407ff5-a970-cb6c-414c-5a1db08fed91', '51997e93-fd8c-9458-d932-f0b27c0acdad', '폭발위험장소 구분도 및 전기단선도', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e923104-e1a7-16d4-33b0-c72b541deacf', '51997e93-fd8c-9458-d932-f0b27c0acdad', '유해 • 위험물질에 대한 물질안전보건자료', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e83e1193-4319-51b6-b545-3daa79f4a9f4', '51997e93-fd8c-9458-d932-f0b27c0acdad', '설비점검 - 검사 및 보수계획, 유지계획 및 지침서', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('51997e93-fd8c-9458-d932-f0b27c0acdad', 'e83e1193-4319-51b6-b545-3daa79f4a9f4', '④ 설비점검 - 검사 및 보수계획, 유지계획 및 지침서', '정답 ④. 설비점검 - 검사 및 보수계획, 유지계획 및 지침서', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bd85218b-bbd7-3d95-a808-ba077f6b998e', '11111111-1111-1111-1111-111111111104', 'mcq', '알루미늄분이 고온의 물과 반응하였을 때 생성되는 가스는?', 2, 61)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87836db0-92a3-50e1-ad98-1b1a907c0dd3', 'bd85218b-bbd7-3d95-a808-ba077f6b998e', '산소', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9340b412-caeb-e8b6-c5be-06ef30511a2c', 'bd85218b-bbd7-3d95-a808-ba077f6b998e', '수소', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c06fe9e-a60f-be50-77af-c37ff8972540', 'bd85218b-bbd7-3d95-a808-ba077f6b998e', '메탄', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04c1bbcc-26c2-5ebe-8754-19bf8fc1b6ec', 'bd85218b-bbd7-3d95-a808-ba077f6b998e', '에탄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bd85218b-bbd7-3d95-a808-ba077f6b998e', '9340b412-caeb-e8b6-c5be-06ef30511a2c', '② 수소', '정답 ②. 알루미늄분은 수분과 반응하여 가연성 가스인 수소를 생성한다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce479f27-4677-512a-6b16-c20f68719125', '11111111-1111-1111-1111-111111111104', 'mcq', '["C], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇 [℃]가 되겠는가?（단, 공기의 비열비는 1.401 다.）', 2, 62)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce2884d3-4f23-c64f-4a78-c4f8d3335284', 'ce479f27-4677-512a-6b16-c20f68719125', '32', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7958b93-11b1-3c99-e439-a470e59b3c89', 'ce479f27-4677-512a-6b16-c20f68719125', '191', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40cc8928-f314-49cf-e83b-52c4172fb63b', 'ce479f27-4677-512a-6b16-c20f68719125', '305', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('971e9494-5021-bad4-d045-66ac90744208', 'ce479f27-4677-512a-6b16-c20f68719125', '464', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce479f27-4677-512a-6b16-c20f68719125', 'a7958b93-11b1-3c99-e439-a470e59b3c89', '② 191', '정답 ②. 191', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2131abf8-15fc-c83a-9593-7e6c20fb11ce', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 사업주가 특수화학설비를 설치 하는 때에 그 내부의 이상 상태를 조기에 파악하기 위하여 설치하여야 하는 장치는?', 2, 63)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f87bcb8e-4b3e-4ac2-4ea5-618a8b96016f', '2131abf8-15fc-c83a-9593-7e6c20fb11ce', '자동경보장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74756d4a-0649-a826-1255-c52f7e73d9f8', '2131abf8-15fc-c83a-9593-7e6c20fb11ce', '긴급차단장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('245cd5d4-d468-6efa-5e90-a330e5289e52', '2131abf8-15fc-c83a-9593-7e6c20fb11ce', '자동문개폐장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ade2dbc1-92cc-fd5d-b66c-76251b5c2046', '2131abf8-15fc-c83a-9593-7e6c20fb11ce', '스크러버개방장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2131abf8-15fc-c83a-9593-7e6c20fb11ce', 'f87bcb8e-4b3e-4ac2-4ea5-618a8b96016f', '① 자동경보장치', '정답 ①. 특수화학설비를 설치하는 경우에는 그 내부의 이상 상태를 조기 에 파악하기 위해 필요한 자동경보장치를 설치하여야 한다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '11111111-1111-1111-1111-111111111104', 'mcq', '부탄（C4Hl0）의 연소에 필요한 최소산소농도（MOC）를 추정 하여 계산하면 약 몇 [vol%]인가?（단, 부탄의 폭발하한계는 공기 중에서 1.6[vol%]이다.）', 2, 64)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21c68167-e453-6361-e289-b1d2dddd898a', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '5.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('251939d9-a5d7-3997-2ac3-96bd83c65a6b', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '7.8', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9100c97f-0c0e-f0de-eae1-6286a0f4bfec', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '10.4', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec114bc9-1f8a-5728-3912-cd1f97c20b36', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '14.1', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '9100c97f-0c0e-f0de-eae1-6286a0f4bfec', '③ 10.4', '정답 ③. 10.4', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f7935dee-d5c2-14d1-5992-b342ace18f4f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 인화성 액체 위험물을 액 체 상태로 저장하는 저장탱크를 설치하는 경우에는 위험물 질이 누출되어 확산되는 것을 방지하기 위하여 무엇을 설치 하여야 하는가?', 2, 65)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('430c9c1b-3d90-6961-3c18-4735cf49c233', 'f7935dee-d5c2-14d1-5992-b342ace18f4f', 'Flame arrester', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a2b16a9-f076-f24c-a334-86d9c12519b0', 'f7935dee-d5c2-14d1-5992-b342ace18f4f', 'Vent Stack', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb652f55-beb0-a062-20a7-a67f20f6c04a', 'f7935dee-d5c2-14d1-5992-b342ace18f4f', '긴급방출장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f376d93-da6b-ec70-4f92-4ee914388bf2', 'f7935dee-d5c2-14d1-5992-b342ace18f4f', '방유제', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f7935dee-d5c2-14d1-5992-b342ace18f4f', '2f376d93-da6b-ec70-4f92-4ee914388bf2', '④ 방유제', '정답 ④. 위험물을 액체 상태로 저장하는 저장탱크를 설치하는 경우에는 위험물질이 누출되어 확산되는 것을 방지하기 위하여 방유제를 설치하여 야 한다. 1', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8f62b92d-851e-daa5-7946-b24d5bd781da', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인 또는 데릭에서 붐 각도 및 작업반경별로 작용시킬 수 있는 최대하중에서 후크, 와이어로프 등 달기구의 중량 을 공제한 하중은?', 2, 66)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('057df303-6b91-f05c-227f-6fa78f0c7464', '8f62b92d-851e-daa5-7946-b24d5bd781da', '작업하중', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04da2e44-8622-5eaa-366c-b5d58c10589d', '8f62b92d-851e-daa5-7946-b24d5bd781da', '정격하중', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c782739-3512-1ac6-e3f7-e1fcd1fd5a9d', '8f62b92d-851e-daa5-7946-b24d5bd781da', '이동하중', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0abba8c-d0b2-6377-dd24-e2db07e799c9', '8f62b92d-851e-daa5-7946-b24d5bd781da', '적재하중', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8f62b92d-851e-daa5-7946-b24d5bd781da', '04da2e44-8622-5eaa-366c-b5d58c10589d', '② 정격하중', '정답 ②. 정격하중이란 크레인의 권싱하중에서 훅 • 버킷 등 달기구의 중 량에 상당하는 하중을 뺀 하중을 말한다. 이때 권상하중이란 크레인이 들 어올릴 수 있는 최대의 하중을 말한다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', '11111111-1111-1111-1111-111111111104', 'mcq', '거푸집 해체작업 시 유의사항으로 옳지 않은 것은?', 2, 67)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa406c63-fe2d-93c5-5a3a-bb28af0886ac', 'b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', '일반적으로 수평부재의 거푸집은 연직부재의 거푸집보', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74d09806-429c-cdab-9d42-06b108c1c473', 'b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', '해체된 거푸집이나 각목 등에 박혀있는 못 또는 날카로', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10f694ef-79d4-b6aa-3e03-834d795ca8b7', 'b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', '상하 동시작업은 원칙적으로 금지하며 부득이한 경우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c02016a8-0252-3613-24c1-27b65a5dab07', 'b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', '거푸집 해체 작업장 주위에는 관계자를 제외하고는 출', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b047eeb0-90fe-5e10-c9bb-af0ee1f371e3', 'fa406c63-fe2d-93c5-5a3a-bb28af0886ac', '① 일반적으로 수평부재의 거푸집은 연직부재의 거푸집보', '정답 ①. 입을 금지시켜야 한다. 1짜 일반적으로 연직부재의 거푸집은 수평부재의 거푸집보다 빨리 떼어낼 수 있다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e19f1e6f-c549-4318-aec0-67177492e8d4', '11111111-1111-1111-1111-111111111104', 'mcq', '건설작업장에서 근로자가 상시 작업하는 장소의 작업면 조 도기준으로 옳지 않은 것은?（단, 갱내 작업장과 감광재료를 취급하는 작업장의 경우는 제외한다.）', 2, 68)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb8fd2bb-0c3b-2108-ff38-42301b226bc4', 'e19f1e6f-c549-4318-aec0-67177492e8d4', '초정밀작업 : 600[lux] 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('055c50f7-223c-ed5c-9848-6296ceaea13f', 'e19f1e6f-c549-4318-aec0-67177492e8d4', '정밀작업 : 300[lux] 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b786683a-337b-fa97-1ad5-59fd51c0ed38', 'e19f1e6f-c549-4318-aec0-67177492e8d4', '보통작업 : 150[lux] 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a54743b1-c4bc-b18e-0beb-fe61b48e1d3f', 'e19f1e6f-c549-4318-aec0-67177492e8d4', '초정밀, 정밀, 보통작업을 제외한 기타 작업: 75[lux]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e19f1e6f-c549-4318-aec0-67177492e8d4', 'cb8fd2bb-0c3b-2108-ff38-42301b226bc4', '① 초정밀작업 : 600[lux] 이상', '정답 ①. 초정밀작업 : 600[lux] 이상', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '11111111-1111-1111-1111-111111111104', 'mcq', '강관비계 조립 시의 준수사항으로 옳지 않은 것은?', 2, 69)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d3ce6b4-003d-d0ac-c1f7-25230b1677d8', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '비계기둥에는 미끄러지거나 침하하는 것을 방지하기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd21b38b-451b-09dd-a7f7-4dd39b452f5f', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a2d4c9a-a01a-ae4d-c4a7-ebfd8a0e5bc3', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '교차가새로 보강한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59258a85-dbc8-72ae-d5c6-886513b6f5a3', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '외줄비계 - 쌍줄비계 또는 돌출비계에 대해서는 벽이음', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c', 'fd21b38b-451b-09dd-a7f7-4dd39b452f5f', '② 지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체', '정답 ②. 및 버팀을 설치한다. K찌| 는 법령 개정 전 통나무비계의 구조에 대한 설명이다. EHE짜!', array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은? .', 2, 70)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47be40cd-081c-5a1d-b127-f8740700b800', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '단기간의 교육시간 내에 비교적 많은 내용을 전달할 수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('386e84d6-21fe-b3be-f7bc-f859fac2462f', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '다수의 수강자를 대상으로 동시에 교육할 수 있다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6bc501b7-db9d-4ae5-c98f-ade672a31acd', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '다른 교육방법에 비해 수강자의 참여가 제약된다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25ebed85-62b5-aeeb-7388-56ae2d0e7669', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '수강자 개개인의 학습진도를 조절할 수 있다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '25ebed85-62b5-aeeb-7388-56ae2d0e7669', '④ 수강자 개개인의 학습진도를 조절할 수 있다.', '정답 ④. 강의법은 다수의 수강자를 대상으로 동시에 교육을 진행하기 때 문에 개개인의 학습진도를 조절할 수 없다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육의 단계에 해당하지 않는 것은?', 2, 71)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16813f09-6fd6-ea48-befb-55d21e1acf70', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '지식교육', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32548549-a429-5994-8214-f95a78c204b0', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '기초교육', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6436e34-9aa4-28c7-14b3-f90a20145ed7', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '태도교육', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ea93b17-80ca-6029-5cc1-65fdfa81217e', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '기능교육', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '32548549-a429-5994-8214-f95a78c204b0', '② 기초교육', '정답 ②. 기초교육은 안전교육의 3단계에 해당하지 않는다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9310f824-9ca5-ce7c-85e8-f84e01d04014', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련의 문제해결 4라운드에 속하지 않는 것은?', 2, 72)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c410fb89-b7ad-0fbc-00dc-0e1c57ad0d1b', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '현상파악', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f24573bd-deae-898d-9b5d-a99861081630', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '본질추구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a80e8b69-98ba-ee58-43bf-b076d7a2c03c', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '원인결정', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23e9cb81-0bc2-0a4b-8961-5042ed5b44a4', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '대책수립', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9310f824-9ca5-ce7c-85e8-f84e01d04014', 'a80e8b69-98ba-ee58-43bf-b076d7a2c03c', '③ 원인결정', '정답 ③. 위험예지훈련의 추진을 위한 문제해결 4단계 0 1라운드: 현상파악(사실의 파악)-어떤 위험이 잠재하고 있는가? © 2라운드: 본질추구(원인조사)-이것이 위험의 포인트이다. © 3라운드: 대책수립(대책을 세운다)-당신이라면 어떻게 하겠는가? (D 4라운드: 목표설정(행동계획 작성)-우리들은 이렇게 하자! 테', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('efffb9d0-bf9f-9879-9ba6-c294787400f1', '11111111-1111-1111-1111-111111111104', 'mcq', '산업재해의 기본원인 중 “작업정보, 작업방법 및 작업환 경” 등이분류되는 항목은?', 2, 73)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('613779db-2c82-0479-aba7-83a4fc12e8c1', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Man', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ced69be3-3962-3f9d-a25e-1529cd40ab09', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Machine', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b86aa643-2ea9-591b-b0bd-f7fada1e4afe', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Media', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a4ef640-9c56-f98e-a6c1-480007a62782', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Management', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('efffb9d0-bf9f-9879-9ba6-c294787400f1', 'b86aa643-2ea9-591b-b0bd-f7fada1e4afe', '③ Media', '정답 ③. 4M 분석기법（휴먼에러의 배후요인） • 인간（Man； 자기 자신 이외의 다른 사람）: 잘못된 사용. 오조작, 착오, 실수, 불안심리 • 기계（Machine； 기계 • 기구• 장치 등의 물적인 요인）: 설계 • 제작 착오, 재료 피로 - 열화, 고장, 배치 • 공사 착오 • 작업매체（Media； 인간과 기계를 연결시키는 매개체）: 작업정보 부족- 부적절, 작업환경 불량 • 관리（Management； 안전에 관한 법규. 규칙 등）: 안전조직 미비, 교 육 • 훈련 부족. 계획 불량, 잘못된 지시 리', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('517330ef-d07e-de11-8559-873d321c86aa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 관리감독자 대상 정기안전보건교육 의 교육내용으로 옳은 것은?', 2, 74)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc5c27d9-6972-2343-3261-9532d8a497a7', '517330ef-d07e-de11-8559-873d321c86aa', '작업 개시 전 점검에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1db307a-488a-d48a-db7d-253558aed4e5', '517330ef-d07e-de11-8559-873d321c86aa', '정 리정돈 및 청소에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53af00d1-e36b-04aa-6dce-155d2383a01c', '517330ef-d07e-de11-8559-873d321c86aa', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88fc56d3-415b-25ed-36bc-7173e4953b78', '517330ef-d07e-de11-8559-873d321c86aa', '기계 . 기구의 위험성과작업의 순서 및 동선에 관한사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('517330ef-d07e-de11-8559-873d321c86aa', '53af00d1-e36b-04aa-6dce-155d2383a01c', '③ 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', '정답 ③. 는 근로자와 관리감독자의 채용 시 및 작업내용 변경 시 교 육내용이고. 는 근로자의 채용 시 및 작업내용 변경 시 교육내용이다. 폐', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('661d837b-861f-5bf9-2fbb-3fbf8b75d434', '11111111-1111-1111-1111-111111111104', 'mcq', '라인（Une）형 안전관리조직에 대한 설명으로 옳은 것은?', 2, 75)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c33bf0e6-9442-d01f-a5bb-83c65467994d', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '명령계통과 조언이나 권고적 참여가 혼동되기 쉽다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afc2bc52-31af-01c2-eb4f-6f41c14e5b20', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '생산부서와의 마찰이 일어나기 쉽다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6924541-72b8-85ac-75c9-46517773f1de', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '명령계통이 간단명료하다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07c8fa8d-0665-c0ae-93ff-8459c756ae57', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '생산부분에는 안전에 대한 책임과 권한이 없다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('661d837b-861f-5bf9-2fbb-3fbf8b75d434', 'e6924541-72b8-85ac-75c9-46517773f1de', '③ 명령계통이 간단명료하다.', '정답 ③. 는 스태프（STAFF）형 조직에 대한 설명이다. 라인（Line）형 조직（직계형 조직）의 장점 안전에 관한 지시 및 명령계통이 철저하다. （생산라인을 통해 이루어짐） • 안전대책의 실시가 신속하다. • 명령과 보고가 상하관계로 간단 명료하다. 1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c3784e8b-f95d-0f51-013b-ee58460c2b51', '11111111-1111-1111-1111-111111111104', 'mcq', 'r산업안전보건법령」상（ ）에 알맞은 기준은? 안전보건표지의 제작에 있어 안전보건표지 속의 그림 또는 부 호의 크기는 안전보건표지의 크기와 비례하여야 하며, 안전보 건표지 전체 규격의（ ）이상이 되어야 한다.', 2, 76)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('496dee5e-f155-ca6f-c502-0ed82983d8b6', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '20[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ed824ca-d9fa-7f80-8590-a7c5faf243bc', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '30[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d11debe-5dd3-c414-d085-98a99ec6943b', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '40[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41cd25ab-a431-85e9-0b48-e63a0e0976e4', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '50[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c3784e8b-f95d-0f51-013b-ee58460c2b51', '1ed824ca-d9fa-7f80-8590-a7c5faf243bc', '② 30[%]', '정답 ②. 안전보건표지의 제작 • 표시내용을 근로^가 빠르고 쉽게 알아볼 수 있는 크기로 제작하여야 *E • 표지 속의 그림 또는 부호의 크기는 안전보건표지의 크기와 비례하여야 하며. 안전보건표지 전체 규격의 30[%] 이상이 되어야 한다. • 쉽게 파손되거나 변형되지 않는 재료로 제작하여야 핸다. • 야간에 필요한 안전보건표지는 야광물질을 사용하는 등 쉽게 알아볼 수 있도록 제작하여야 한다. 1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b76857b7-3d16-f99d-7127-a5e27ab06aeb', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 주로 고음을 차음하고, 저음은 차음 하지 않는 방음보호구의 기호로 옳은 것은?', 2, 77)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7954f769-a4e8-c697-c716-824825b0064a', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'NRR', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4df2913f-fa42-c958-055d-ec4e750a71a9', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EM', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c2f4b21-a8c5-c503-c4e0-1cdcaf378761', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EP—1', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9ea03f4-8fdf-4225-9565-704ccacea49f', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EP-2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'c9ea03f4-8fdf-4225-9565-704ccacea49f', '④ EP-2', '정답 ④. 방음용 귀마개 또는 귀덮개의 종류 - 등급 종류 등급 기호 성능 1 종 EP-1 저음부터 고음까지 차음하는 것 귀마개 주로 고음을 차음하고 저음（회화음영역）은 차음하지 2 종 다3-2 않는것 귀덮개', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6efbbc52-51d7-89e7-a569-94cbc8105640', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해위험방지계획서 제출대상 공사 에 해당하는 것은?', 2, 78)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf0092bb-c1db-9d80-877c-ae68f9df2682', '6efbbc52-51d7-89e7-a569-94cbc8105640', '깊이가 5[m] 이상인 굴착공사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8aafb48f-815e-fb3b-8b68-30b01d12348b', '6efbbc52-51d7-89e7-a569-94cbc8105640', '최대 지간거리 3O[m] 이상인 교량건설 공사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0426850e-838b-5f85-9acb-01b047ae8f13', '6efbbc52-51d7-89e7-a569-94cbc8105640', '지상높이 21[m] 이상인 건축물 공사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3', '6efbbc52-51d7-89e7-a569-94cbc8105640', '터널 건설 공사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6efbbc52-51d7-89e7-a569-94cbc8105640', 'b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3', '④ 터널 건설 공사', '정답 ④. 터널 건설 공사', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명에 해당하는 설비보전방식의 유형은? 설비보전 정보와 신기술을 기초로 신뢰성, 조작성, 보전성, 안 전성, 경제성 등이 우수한 설비의 선정, 조달 또는 설계를 통 하여 궁극적으로 설비의 설계, 제작 단계에서 보전활동이 불 필요한 체제를 목표로 한 설비보전 방법을 말한다.', 2, 79)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4262129c-376f-7c37-3b2f-054aee74fe9e', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '개량보전', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0433f61-d44c-b0f4-b5d7-8020326c538c', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '보전예방', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('538875dc-40f1-3df6-835a-c7249b11215e', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '사후보전', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27fcf1ea-9b3d-e406-c5b6-ed503b646a15', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '일상보전', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', 'e0433f61-d44c-b0f4-b5d7-8020326c538c', '② 보전예방', '정답 ②. 필요한 AMS SHE 한 설비보전 방법을 말한다. 설비를 새로이 계획ㆍ설계하는 단계에서 보전 정보나 새로운 기술을 채용 하여 신뢰성, 보전성, 경제성, 조작성, 안전성 SS 고려하여 보전비나 열화 AAS 적게 하는 활동이다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '11111111-1111-1111-1111-111111111104', 'mcq', '온도와 습도 및 공기 유동이 인체에 미치는 열효과를 하나 의 수치로 통합한 경험적 감각지수로, 상대습도 100[%]일 때의 건구온도에서 느끼는 것과 동일한 온감을 의미하는 온 열조건의 용어는?', 2, 80)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63464b61-8e19-f8eb-91d3-a666c5955f89', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', 'Oxford 지수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f82e2dd0-4e2f-dbc7-fcbd-ac50159e68a9', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '발한율', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e5aede1b-31d5-28df-5971-df17d352ce0d', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '실효온도', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aeb54c39-27f9-b8e1-d896-3cfcf3e87fda', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '열압박지수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', 'e5aede1b-31d5-28df-5971-df17d352ce0d', '③ 실효온도', '정답 ③. 실효온도', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
