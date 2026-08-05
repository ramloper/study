-- chunk 5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 컨베이어를 사용하여 작업을 할 때 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 161)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d93f2cc-79e1-4137-90c2-f2eea2f40f26', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '원동기 및 풀리(Pulley) 기능의 이상 유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('796ad814-0ab4-bd07-4226-e970b713e13d', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '이탈 등의 방지장치 기능의 이상 유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ed73a98-8d5e-629b-0157-1491ed438dcf', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '유압장치의 기능의 이상 유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b414c810-3235-f4a1-970c-38e9bb4288a5', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '비상정지장치 기능의 이상 유무', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '0ed73a98-8d5e-629b-0157-1491ed438dcf', '③ 유압장치의 기능의 이상 유무', '정답 ③. 유압장치 기능의 이상 유무는 지게차 작업시작 전 점검사항이다. 컨베이어 작업시작 전 점검사항 • 원동기 및 풀리(Pulley) 기능의 이상 유무 • 이탈 등의 방지장치 기능의 이상 유무 • 비상정지장치 기능의 이상 유무 • 원동기 • 회전축 • 기어 및 풀리 등의 덮개 또는 울 등의 이상 유무 E TH', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 162)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e25b99a-1d98-6ad0-d845-4868e1ec2396', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '기계에 주유 및 청소 시 반드시 기계를 정지시키고 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63f7ada4-342b-48e7-d2e3-374fb1bdebc9', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '칩 제거 시 브러시를 사용한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a2cb291-395a-8cae-d1d5-a7f9cb68ffed', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '바이트에는 칩 브레이커를 설치한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce46f521-afdd-25c9-738c-b08b8aa40f38', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '선반의 바이트는 끝을 길게 장치한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', 'ce46f521-afdd-25c9-738c-b08b8aa40f38', '④ 선반의 바이트는 끝을 길게 장치한다.', '정답 ④. 선반작업 시 바이트는 끝을 짧게 장치하고 일감의 길이가 직경의 12배 이상일 때 방진구를 사용한다. WW!', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6d6b5124-9313-668c-b342-f3b767b14ecb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계설비에서 반대로 회전하는 두 개의 회전체가 맞닿는 사이에 발생하는 위험점으로 가장 적절한 것은?', 2, 163)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86db38dd-8519-ffc6-a400-ddf188e97407', '6d6b5124-9313-668c-b342-f3b767b14ecb', '물림점', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74adb947-123a-a22f-79e1-69c5f1deed50', '6d6b5124-9313-668c-b342-f3b767b14ecb', '협착점', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a3f76b8-97c9-e26c-5fea-bb53f853e28c', '6d6b5124-9313-668c-b342-f3b767b14ecb', '끼임점', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4308ae8c-2137-c34e-5f39-4211fc1e11fb', '6d6b5124-9313-668c-b342-f3b767b14ecb', '절단점', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6d6b5124-9313-668c-b342-f3b767b14ecb', '86db38dd-8519-ffc6-a400-ddf188e97407', '① 물림점', '정답 ①. 발생되는 BUS 회전체가 서로 반대방향으로 맞물려 회전되어야 한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a01252c-ddaa-2e78-8864-2c9c3bde1024', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업용 로봇의 작업시작 전 점검사 항으로 가장 거리가 먼 것은?', 2, 164)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c6cf36b-afb2-b6dd-93c2-0c8835dce758', '5a01252c-ddaa-2e78-8864-2c9c3bde1024', '외부 전선의 피복 또는 외장의 손상 유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2dba082c-9e0e-462e-cc3e-0d7e4f2c372e', '5a01252c-ddaa-2e78-8864-2c9c3bde1024', '압력방출장치의 이상유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7918f88d-7a18-5433-5b38-a712047e5fb9', '5a01252c-ddaa-2e78-8864-2c9c3bde1024', '매니퓰레이터 작동 이상 유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d72a61c0-6a94-890d-8f98-848f85a582a8', '5a01252c-ddaa-2e78-8864-2c9c3bde1024', '제동장치 및 비상정지장치의 기능', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a01252c-ddaa-2e78-8864-2c9c3bde1024', '2dba082c-9e0e-462e-cc3e-0d7e4f2c372e', '② 압력방출장치의 이상유무', '정답 ②. 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능 E E1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f625ae4a-9dcd-2dfa-b392-3ace02132920', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기기기에 “Ex ia IICT4 Ga”라고 표시되어 있다. 해 당 기기에 대한 설명으로 틀린 것은?', 2, 165)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f3b439ee-16cf-1dd3-43fa-7cec8eec5a0f', 'f625ae4a-9dcd-2dfa-b392-3ace02132920', '정상 작동, 예상된 오작동에 또는 드문 오작동 중에 점', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfce5e5a-91bb-e429-b3ec-1a687e09fd7a', 'f625ae4a-9dcd-2dfa-b392-3ace02132920', '온도등급이 T4이므로 최고표면온도가 150[℃]를 초과', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e51e69f8-7b57-02bb-d5c7-0b7d2996d7e2', 'f625ae4a-9dcd-2dfa-b392-3ace02132920', '본질안전방폭구조로 0종 장소에서 사용이 가능하다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3713a11f-5341-96cd-a6e4-e24eca64c3b3', 'f625ae4a-9dcd-2dfa-b392-3ace02132920', '수소 및 아세틸렌 등의 가스가 존재하는 곳에 사용이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f625ae4a-9dcd-2dfa-b392-3ace02132920', 'bfce5e5a-91bb-e429-b3ec-1a687e09fd7a', '② 온도등급이 T4이므로 최고표면온도가 150[℃]를 초과', '정답 ②. 온도등급이 T4이므로 최고표면온도가 150[℃]를 초과', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('caa0739e-e8d4-5e70-6ab4-218679e6bc95', '11111111-1111-1111-1111-111111111104', 'mcq', '고온에서 완전 열분해하였을 때 산소를 발생하는 물질은?', 2, 166)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61703f6e-e7c9-3d5f-b955-85717fd7cfde', 'caa0739e-e8d4-5e70-6ab4-218679e6bc95', '황화수소', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e48455a6-39e8-c326-69ef-5bd956c7857b', 'caa0739e-e8d4-5e70-6ab4-218679e6bc95', '과염소산칼륨', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7194c23b-2927-e2b4-d14b-2225cc387223', 'caa0739e-e8d4-5e70-6ab4-218679e6bc95', '메틸리튬', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cde27b9-d811-70e5-0e86-eb457c8f32c3', 'caa0739e-e8d4-5e70-6ab4-218679e6bc95', '적린', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('caa0739e-e8d4-5e70-6ab4-218679e6bc95', 'e48455a6-39e8-c326-69ef-5bd956c7857b', '② 과염소산칼륨', '정답 ②. 과염소산칼륨은 산화성 고체에 해당하며 열분해 시 산소를 발생 시킨다. KC1O4 - KC1+2O, E H', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 위험물질의 종류 중 부식성 염기류로 분류되기 위하여 농도가 40[%] 이상이 어야 하는 물질은?', 2, 167)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc76e751-d217-f6ad-31a9-1aaca0666204', 'b4808083-b14a-b43e-e433-d174d6b2236b', '염산', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de1061b8-c60b-4a7b-fb0c-e2c51516cc85', 'b4808083-b14a-b43e-e433-d174d6b2236b', '아세트산', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5181f122-571b-2351-d105-dc1112f2e131', 'b4808083-b14a-b43e-e433-d174d6b2236b', '불산', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d982e565-94af-173e-1a96-4c310a984bbc', 'b4808083-b14a-b43e-e433-d174d6b2236b', '수산화칼륨', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', 'd982e565-94af-173e-1a96-4c310a984bbc', '④ 수산화칼륨', '정답 ④. 부식성 염기류 농도가 40[%] 이상인 수산화나트륨. 수산화칼륨. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류이다. En l', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 화학설비의 부속설비로만 이루어진 것은?', 2, 168)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d77dd74-c6b4-96f2-ae62-6714106edbec', '7420dfd1-4424-94b9-f556-d514fceecab6', '사이클론, 백필터. 전기집진기 등분진처리설비', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f72ee61-9f68-1447-85b8-07ba784ddddd', '7420dfd1-4424-94b9-f556-d514fceecab6', '응축기, 냉각기, 가열기. 증발기 등 열교환기류', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b19701c-69d9-d927-cf9e-6410827ddedb', '7420dfd1-4424-94b9-f556-d514fceecab6', '고로 등 점화기를 직접 사용하는 열교환기류', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72afdc1f-6347-6fed-6823-cd4ae58bbb7c', '7420dfd1-4424-94b9-f556-d514fceecab6', '혼합기, 발포기, 압출기 등 화학제품 가공설비', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '9d77dd74-c6b4-96f2-ae62-6714106edbec', '① 사이클론, 백필터. 전기집진기 등분진처리설비', '정답 ①. 사이클론. 백필터(Bag Filter). 전기집진기 등 분진처리설비는 화학설비의 부속설비에 해당한다. 오답해설 0, @. @는 화학설비에해당한다. 唱1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4e3f611e-8ef4-1c2c-829d-8c868779d2b6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 밀폐공간 내 작업 시의 조치사항으로 가장 거리가 먼 것은?', 2, 169)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4e5631b-e3dd-3913-bd30-c4e507aa74f7', '4e3f611e-8ef4-1c2c-829d-8c868779d2b6', '산소결핍이나 유해가스로 인한 질식의 우려가 있으면', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a5d67b8-74d2-b6f8-7609-29233181eaec', '4e3f611e-8ef4-1c2c-829d-8c868779d2b6', '해당 작업장을 적정한 공기상태로 유지되도록 환기하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0f7bf60-f344-e5e1-f120-e23f5f705d2b', '4e3f611e-8ef4-1c2c-829d-8c868779d2b6', '그 장소에 근로자를 입장시 킬 때와 퇴장시킬 때마다 인', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fdfab8d-19e9-a05b-7567-0a14d2b7401f', '4e3f611e-8ef4-1c2c-829d-8c868779d2b6', '그 작업장과 외부의 감시인 간에 항상 연락을 취할 수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4e3f611e-8ef4-1c2c-829d-8c868779d2b6', 'e4e5631b-e3dd-3913-bd30-c4e507aa74f7', '① 산소결핍이나 유해가스로 인한 질식의 우려가 있으면', '정답 ①. 있는 설비를 설치하여야 한다. KOi 밀폐공간에서 작업을 하는 경우에 산소결핍이나 유해가스로 인 한 질식 - 화재 • 폭발 등의 우려가 있으면 즉시 작업을 중단시키고 해당 근 로자를 대피하도록 하여야 한다. Wfliltl', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '11111111-1111-1111-1111-111111111104', 'mcq', '탄화수소 증기의 연소하한값 추정식은 연료의 양론농도 (CJ의 0.55배이다. 프로판 1몰의 연소반응식이 다음과 같 을 때 연소하한값은 약 몇 [vol%]인가? C3Hs+502 — 3CO2+4H2O', 2, 170)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '183064e6-da2d-0e39-60c1-db10ecf701eb', '2.22', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7faf58fe-2ea6-c6a8-9773-8e477a0802d6', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.03', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7970555d-31ab-8fb3-a548-558657cffeba', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.44', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20b74f7b-5302-a645-4aa5-086cdf68381b', '183064e6-da2d-0e39-60c1-db10ecf701eb', '8.06', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '① 2.22', '정답 ①. 2.22', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판과 메탄의 폭발하한계가 각각 2.5[vol%], 5.0[vol%] 이라고 할 때 프로판과 메탄이 3：1 의 체적비로 혼합되어 있 다면 이 혼합가스의 폭발하한계는 약 몇 [vol%]인가?(단, 상온, 상압 상태이다.)', 2, 171)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f39a93-aca2-7127-8542-4687c7b6991a', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '2.9', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22a7c16d-437f-17a4-3c62-0c4c5f3cb7a8', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.3', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d76e9f8f-112a-4d7a-be6f-b8c3d1942547', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.8', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('851684e9-941a-b2f4-0f9c-0c6dc559a97c', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '4.0', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '28f39a93-aca2-7127-8542-4687c7b6991a', '① 2.9', '정답 ①. 2.9', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 소화약제로 사용되는 이산화탄소에 관한 설명으로 틀린 것은?', 2, 172)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3828f214-f02a-97de-7fb7-c264a74e89c0', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '사용 후에 오염의 영향이 거의 없다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38e4f693-9e32-66bd-2a6e-7fe4e856dc09', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '장시간 저장하여도 변화가 없다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11d1083a-9e42-39d5-1db0-ad9bfe417a82', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '주된 소화효과는 억제소화이다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25f3081b-469c-040d-0da5-169d62aa3167', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '자체 압력으로 방사가 가능하다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11d1083a-9e42-39d5-1db0-ad9bfe417a82', '③ 주된 소화효과는 억제소화이다.', '정답 ③. 주된 소화효과는 억제소화이다.', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8babd8ca-985c-a4c3-5de1-2d0406eb84e9', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 말비계를 조립하여 사용하는 경우에 관한 준수사항 이다. ( ) 안에 들어갈 내용으로 옳은 것은? • 지주부재와 수평면의 기울기를 ( A )。이하로 하고 지주 부재와 지주부재 사이를 고정시키는 보조부재를 설치할 것 • 말비계의 높이가 2[m]를 초과하는 경우에는 작업발판의 폭 을 ( B )[cm] 이상으로할것', 2, 173)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b9f5a80-05b6-d5c9-1719-f027a8ceeac4', '8babd8ca-985c-a4c3-5de1-2d0406eb84e9', 'A： 75, B： 30', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('968f86e9-e45b-6f0e-6175-3bf33cd3489a', '8babd8ca-985c-a4c3-5de1-2d0406eb84e9', 'A： 75, B： 40', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e21ecd28-9f07-a68a-417e-0b012d351f2e', '8babd8ca-985c-a4c3-5de1-2d0406eb84e9', 'A： 85, B： 30', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8fb06721-0461-1362-42e3-8c374f9f51fa', '8babd8ca-985c-a4c3-5de1-2d0406eb84e9', 'A： 85, B： 40', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8babd8ca-985c-a4c3-5de1-2d0406eb84e9', '968f86e9-e45b-6f0e-6175-3bf33cd3489a', '② A： 75, B： 40', '정답 ②. 말비계 조립 시 준수사항 • 지주부재의 하단에는 미끄럼 방지장치를 하고. 근로자가 양측 끝부분에 올라서서 작업하지 않도록 하여야 한다. • 지주부재와 수평면의 기울기를 75° 이하로 하고, 지주부재와 지주부재 사이를 고정하는 보조부재를 설치하여야 한다. • 말비계의 높이가 2[m]를 초과할 경우에는 작업발판의 폭을 40[cm] 이 상으로 하여야 한다. 1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '11111111-1111-1111-1111-111111111104', 'mcq', '터널작업 시 자동경보장치에 대하여 당일의 작업시작 전 점 검하여야 할 사항으로 옳지 않은 것은?', 2, 174)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a68a3be5-85aa-9f0b-1300-6935c22a9407', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '검지부의 이상유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89cd8029-2665-3329-cedd-67e9ec5f50cc', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '조명시설의 이상 유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8e02155-ff4c-df34-6900-060157ef04cb', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '경보장치의 작동상태', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2cd80237-fca6-ef55-56e5-9d631b6a2bd0', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '계기의 이상 유무', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '89cd8029-2665-3329-cedd-67e9ec5f50cc', '② 조명시설의 이상 유무', '정답 ②. 조명시설의 이상 유무', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준이다.( )안에 알맞은 숫자를 나열한 것은? 길이가 띠장 방향으로( A )미터 이하이고 높이가 ( B ) 미터를 초과하는 경우에는 ( C )미터 이내마다 띠장 방향 으로 버팀기둥을 설치할 것', 2, 175)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b5a1ebf-e572-d196-6295-88f9c4fea1f6', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 5', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38094c80-5c4f-0bbf-100b-66c0a14f58b2', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 10', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2999037-3214-006f-c0aa-48ab3a0b9bda', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('597da981-dea9-f2d3-91c3-3c5203e7994a', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 10', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '38094c80-5c4f-0bbf-100b-66c0a14f58b2', '② A： 4, B： 10, C： 10', '정답 ②. 강관틀비계를 조립하여 사용하는 경우 길이가 띠장 방향으로 4[m] 이하이고 높이가 10[m｝를 초과하는 경우에는 10[m] 이내마다 띠장 방향으로 버팀기둥을 설치하여야 한다. i', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ec377e9a-a300-87e6-27ac-90618925a2c6', '11111111-1111-1111-1111-111111111104', 'mcq', '굴착공사에서 비탈면 또는 비탈면 하단을 성토하여 붕괴를 방지하는 공법은?', 2, 176)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e732396-68c3-02b2-4e84-6cc2dfe27019', 'ec377e9a-a300-87e6-27ac-90618925a2c6', '배수공', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d52a8efe-616b-1bee-35c2-e98ffcfb8cc0', 'ec377e9a-a300-87e6-27ac-90618925a2c6', '배토공', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('786100b9-1d0e-ffb3-5356-37ead2eb00db', 'ec377e9a-a300-87e6-27ac-90618925a2c6', '공작물에 의한 방지공', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf980ac8-f670-26fe-bb19-230534a0aea3', 'ec377e9a-a300-87e6-27ac-90618925a2c6', '압성토공', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ec377e9a-a300-87e6-27ac-90618925a2c6', 'cf980ac8-f670-26fe-bb19-230534a0aea3', '④ 압성토공', '정답 ④. 압성토공 자연사면의 하단부에 압성토하여 활동에 대한 저항력을 증가시키는 비탈 면 보강공법이다. 1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('220d7509-5796-13eb-de94-63f749d30223', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 안전대와 관련된 설명이다. 아래 내용에 해당되는 용어로 옳은 것은? 로프 또는 레일 등과 같은 유연하거나 단단한 고정줄로서 추 락발생 시 추락을 저지시키는 추락방지대를 지탱해 주는 줄 모양의 부품', 2, 177)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f3151dd-b289-e1e4-7a4f-26c20e5e7825', '220d7509-5796-13eb-de94-63f749d30223', '안전블록: 안전그네와 연결하여 추락발생 시 추락을 억제할 수 있는 자동', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eda004d-ffc5-82ae-fda7-137ac2da8d70', '220d7509-5796-13eb-de94-63f749d30223', '죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b110531-134d-eb01-d402-0b8d789c7443', '220d7509-5796-13eb-de94-63f749d30223', '보조죔줄: 안전대를 U자걸이로 사용할 때 U자걸이를 위해 훅 또는 카', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6360ffb-c969-b4d5-0208-a29b6294a07d', '220d7509-5796-13eb-de94-63f749d30223', '114', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('220d7509-5796-13eb-de94-63f749d30223', '9eda004d-ffc5-82ae-fda7-137ac2da8d70', '② 죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', '정답 ②. 죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('64cb54e5-1949-00d0-81c8-eb1ccbb77d35', '11111111-1111-1111-1111-111111111104', 'mcq', '곤돌라형 달비계에 사용이 불가한 와이어로프의 기준으로 옳지 않은 것은?', 2, 178)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb29e057-0374-f3cf-e9eb-74854919d6d8', '64cb54e5-1949-00d0-81c8-eb1ccbb77d35', '이음매가 있는 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa1f8439-5b02-2e7d-86a2-c6647793e41c', '64cb54e5-1949-00d0-81c8-eb1ccbb77d35', '와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af682e2f-403b-3a4c-a5b3-b5df10deb01d', '64cb54e5-1949-00d0-81c8-eb1ccbb77d35', '지름의 감소가 공칭지름의 7[%]를 초과하는 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55b2af63-543e-9288-77af-acee9219fcf9', '64cb54e5-1949-00d0-81c8-eb1ccbb77d35', '심하게 변형되거나 부식된 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('64cb54e5-1949-00d0-81c8-eb1ccbb77d35', 'aa1f8439-5b02-2e7d-86a2-c6647793e41c', '② 와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', '정답 ②. 달비계 와이어로프의 사용금지 조건 • 아음매가있는 것 • 와이어로프의 한 꼬임(Strand)에서 끊어진 소선의 수가 10[%] 이상인 것 • 지름의 감소가 공칭지름의 7[%｝를 초과하는 것 •꼬인것 • 심하게 변형되거나 부식된 것 • 열과 전기충격에 의해 손상된 것 E I51', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', '11111111-1111-1111-1111-111111111104', 'mcq', '라인(Une)형 안전관리조직의 특징으로 옳은 것은?', 2, 179)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6eba1774-12dd-e885-485d-ee93d99eaab3', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 기술의 축적이 용이하다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a48f74d1-bb24-3e7b-29e3-1406070b52ed', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 지시나 조치가 신속하다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75aa0477-3e0d-6f9f-afc2-fcc80d60b4e7', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffdf0059-bfba-a983-85ed-26b9aef6ae2e', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '권한 다툼이나 조정 때문에 통제수속이 복잡해지며. 시', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', 'a48f74d1-bb24-3e7b-29e3-1406070b52ed', '② 안전에 관한 지시나 조치가 신속하다.', '정답 ②. 간과노력이 소모된다. S 라인형(직계형) 조직은 안전에 관한 지시 및 명령계통이 철저하 고(생산라인을 통해 이루어짐). 안전대책의 실시가 신속하다. W@l', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c92f39fb-87c3-f332-fd97-7c1a74b6b361', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육의 단계에 있어 교육대상자가 스스로 행함으로써 습득하게 하는 교육은?', 2, 180)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c845d6e-ee86-c34f-3a32-91f1591a680a', 'c92f39fb-87c3-f332-fd97-7c1a74b6b361', '의식교육', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b480a78-ce30-2047-079b-6f90002ac895', 'c92f39fb-87c3-f332-fd97-7c1a74b6b361', '기능교육', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2d8c88b-cd89-0351-b4b9-344c7e1ee876', 'c92f39fb-87c3-f332-fd97-7c1a74b6b361', '지식교육', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96fbd5a7-0803-8e00-a07b-d1c400959a0d', 'c92f39fb-87c3-f332-fd97-7c1a74b6b361', '태도교육', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c92f39fb-87c3-f332-fd97-7c1a74b6b361', '3b480a78-ce30-2047-079b-6f90002ac895', '② 기능교육', '정답 ②. 기능교육', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육 중 관리감독 자 정기교육의 내용이 아닌 것은?', 2, 181)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9062949-3c88-dbdf-3943-60d776858c7f', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '유해 • 위험 작업환경 관리에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba4c37e4-1864-9296-4709-c59a531557c1', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89bad454-d554-0082-8df9-e6d1f7fc1972', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('169da354-e242-1e62-dce1-c6311c3a952e', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '169da354-e242-1e62-dce1-c6311c3a952e', '④ 기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', '정답 ④. 는 근로자와 관리감독자 채용 시 및 작업내용 변경 시 교육내 용이다. 관리감독자 정기 교육내용 • 산업안전 및 산업재해 예방에 관한 사항 • 산업보건 및 건강장해 예방에 관한 사항 • 위험성 평가에 관한 사항 • 유해 • 위험 작업환경 관리에 관한 사항 • 「산업안전보건법령」및 산업재해보상보험 제도에 관한 사항 • 직무스트레스 예방 및 관리에 관한 사항 • 직장 내 괴롭힘, 고객의 폭언 등으로 인한 건강장해 예방 및 관리에 관한 사항 • 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항 • 사업장 내 안전보건관리체제 안전보건조치 현황에 관한 사항 • 표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항 • 현장 근로자와의 의사소통능력 및 강의능력 등 안전보건교육 능력 배양 에 관한 사항 • 비상시 또는 재해 발생 시 긴급조치에 관한 사항', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('87deb324-7618-1a5d-dc6f-32aca5297bb5', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해 • 위험 방지를 위한 방호조치가 필요한 기계 기구가 아닌 것은?', 2, 182)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('341e59a9-fbd8-fa8b-e576-3235990eeeac', '87deb324-7618-1a5d-dc6f-32aca5297bb5', '예초기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c27f6cb-99d2-6e46-35ad-775202c20f31', '87deb324-7618-1a5d-dc6f-32aca5297bb5', '지게차', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a3fa47b-353d-3719-44f5-7ed690007b85', '87deb324-7618-1a5d-dc6f-32aca5297bb5', '금속절단기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69804d56-8817-6f74-2378-3de564e40a0e', '87deb324-7618-1a5d-dc6f-32aca5297bb5', '금속탐지기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('87deb324-7618-1a5d-dc6f-32aca5297bb5', '69804d56-8817-6f74-2378-3de564e40a0e', '④ 금속탐지기', '정답 ④. 유해 • 위험 방지를 위하여 방호조치가 필요한 기계 • 기구 예초기. 원심기. 공기압축기. 금속절단기, 지게차. 포장기계（진공포장기. 래 핑기로 한정） E n', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 구안법（Project Method）의 4단계의 순서 로 옳은 것은?', 2, 183)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d572bf41-16c5-d8ca-a511-a334be46b106', '98f2c8a2-8635-5178-149d-39d15849c02b', '계획수립 一 목적결정 一 활동 一 평가', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1abb94ff-a148-0011-06c4-da0362fc6f61', '98f2c8a2-8635-5178-149d-39d15849c02b', '평가 一 계획수립 一 목적결정 一 활동', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9aff5d53-218b-db7d-e4ec-c5512b1591ea', '98f2c8a2-8635-5178-149d-39d15849c02b', '목적결정 一 계획수립 一 활동 一 평가', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03ee33bd-f0e1-e244-6bc5-2f8f4fccc7cf', '98f2c8a2-8635-5178-149d-39d15849c02b', '활동 一 계획수립 - 목적결정 一 평가', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '9aff5d53-218b-db7d-e4ec-c5512b1591ea', '③ 목적결정 一 계획수립 一 활동 一 평가', '정답 ③. 목적결정 一 계획수립 一 활동 一 평가', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3616bde6-545f-87ba-2cd4-9f202dfd1e3f', '11111111-1111-1111-1111-111111111104', 'mcq', '강도율 7인 사업장에서 한 작업자가 평생동안 작업을 한다 면 산업재해로 인한 근로손실일수는 며칠로 예상되는 가?（단, 이 사업장의 연근로시간과 한 작업자의 평생근로시 간은 100,000시간으로 가정한다.）', 2, 184)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('badb10cf-730c-43a1-67c6-7b808813a001', '3616bde6-545f-87ba-2cd4-9f202dfd1e3f', '500', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b44e7d90-9449-be4e-dfa6-bd5139bed345', '3616bde6-545f-87ba-2cd4-9f202dfd1e3f', '600', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dea25232-d84b-4d6d-8560-26bdca860da6', '3616bde6-545f-87ba-2cd4-9f202dfd1e3f', '700', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbc9cab-9183-3e1f-4b6e-d8abc89264f5', '3616bde6-545f-87ba-2cd4-9f202dfd1e3f', '800', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3616bde6-545f-87ba-2cd4-9f202dfd1e3f', 'dea25232-d84b-4d6d-8560-26bdca860da6', '③ 700', '정답 ③. 700', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명에 해당하는 학습지도의 원리는? 학습자가 지니고 있는 각자의 요구와 능력 등에 알맞은 학습 활동의 기회를 마련해주어야 한다는 원리', 2, 185)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5b26001-5cf2-9b31-1265-9b034d79969a', 'cdf63121-0312-53ec-cc88-6dfe531589de', '직관의 원리', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7645c1f-fb3a-25a3-d9ec-2abe40c29ad0', 'cdf63121-0312-53ec-cc88-6dfe531589de', '자기활동의 원리', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', 'cdf63121-0312-53ec-cc88-6dfe531589de', '개별화의 원리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca2fc738-c959-2859-da0d-5937ca4a7dac', 'cdf63121-0312-53ec-cc88-6dfe531589de', '사회화의 원리', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', '③ 개별화의 원리', '정답 ③. 학습지도 이론 학습자가 가지고 있는 각각의 요구 및 능력에 맞게 지도하여 개별화의 원리 야한다는 원리 학습을 종합적으로 지도하는 것으로 학습자의 능력을 조화있 통합의 원리 게 발달시키는 원리 사회화의 원리 공동학습을 통해 협력과 사회화를 도와준다는 원리 자발성의 원리 학습자 스스루 학습에 참여하여야 한다는 원리 구체적인 사물을 제시하거나 경험 등을 통해 학습효과를 거둘 직관의 원리 수 있다는 원리', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 옳은 것은?', 2, 186)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ed315c3-21e3-005f-3bf9-6d29c65284fc', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70c94f13-63b2-1cab-6495-2d65e712c889', '0df632a3-0f11-d9da-b74b-ed447324f05f', 'Top 시상을 발생시키는 조합이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be305362-cd82-4bbf-e069-05e5ba0e1913', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템이 고장나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fec6042e-ff0a-754b-87f2-11286445391f', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', 'be305362-cd82-4bbf-e069-05e5ba0e1913', '③ 시스템이 고장나지 않도록 하는 사상의 조합이다.', '정답 ③. 집합이다. E!BM 패스셋（Path Set） 포함되어 있는 모든 기본사상이 일어나지 않을 때 정상사상（고장）이 일어 나지 않는 기본사상의 집합으로 시스템의 신뢰성을 나타낸다. 아UPTER 02 위험성 파악 • 결정', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de608044-b8f4-e325-29f7-bd7847bf1f8d', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 부품 1,000개를 100,000시간 동안 가동하였을 때 5개 의 불량품이 발생하였을 경우 평균동작시간(MTTF)은?', 2, 187)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b87d8a37-a1a3-03cd-3241-6dab47c76ecc', 'de608044-b8f4-e325-29f7-bd7847bf1f8d', '1X106시간', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eae297a0-d4f4-72a7-2556-6fe96cfe0f8d', 'de608044-b8f4-e325-29f7-bd7847bf1f8d', '2乂107시간', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb9c9624-b1d8-07e5-5253-bd06fb66a8a4', 'de608044-b8f4-e325-29f7-bd7847bf1f8d', '1X108시간', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('daaa8db6-3bed-fd5a-2e25-a536dd2660cc', 'de608044-b8f4-e325-29f7-bd7847bf1f8d', '2X109시간', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de608044-b8f4-e325-29f7-bd7847bf1f8d', 'eae297a0-d4f4-72a7-2556-6fe96cfe0f8d', '② 2乂107시간', '정답 ②. 2乂107시간', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a9af93b6-83af-0f5f-4f56-5800330bca2c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 롤러기의 방호장치 중 롤러의 앞면 표면속도가 30[m/min] 이상일 때 무부하 동작에서 급정지 거리는?', 2, 188)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b95c8820-5db4-786a-8ce9-41caafc3af8f', 'a9af93b6-83af-0f5f-4f56-5800330bca2c', '앞면 롤러 원주의 1/2.5 이내', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c637fbc7-6cff-4417-5960-2108b4359b5a', 'a9af93b6-83af-0f5f-4f56-5800330bca2c', '앞면 롤러 원주의 1/3 이내', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c7556c4-fe26-1bd1-f526-71a474b14acc', 'a9af93b6-83af-0f5f-4f56-5800330bca2c', '앞면 롤러 원주의 1/3.3 이내', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d9cafd37-83c1-be8e-f250-1668081b0ce4', 'a9af93b6-83af-0f5f-4f56-5800330bca2c', '앞면 롤러 원주의 1/5.5 이내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a9af93b6-83af-0f5f-4f56-5800330bca2c', 'b95c8820-5db4-786a-8ce9-41caafc3af8f', '① 앞면 롤러 원주의 1/2.5 이내', '정답 ①. 롤러기의 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의 { 이내 30 미만 앞면 롤러 원주의 느〒 이내 30 이상 唱1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 승강기의 종류로 옳지 않은 것은?', 2, 189)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8481acb-4bd8-d55a-806e-c23b36cadb93', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객용 엘리베이터', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867c32a0-78ed-764c-15cc-8e1f82e7075c', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '리프트', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e39d99c1-98be-4fb4-5f7d-7160972cbfa5', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '화물용 엘리베이터', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('909e54c2-51ba-7483-e615-6429e339179d', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객화물용 엘리베이터', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '867c32a0-78ed-764c-15cc-8e1f82e7075c', '② 리프트', '정답 ②. 승강기의 종류 승객용 엘리베이터. 승객화물용 엘리베이터, 화물용 엘리베이터, 소형화물 용 엘리베이터. 에스컬레이터 WEBl', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f4658b86-30d2-3909-e411-d020d5fc94dd', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭작업에서 숫돌의 파괴원인으로 가장 적절하지 않은 것은?', 2, 190)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e24d6034-d30a-5bf8-aaee-269a802254b1', 'f4658b86-30d2-3909-e411-d020d5fc94dd', '숫돌의 회전속도가 너무 빠를 때', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fefbb40e-6efa-bae9-c165-342be22fc445', 'f4658b86-30d2-3909-e411-d020d5fc94dd', '연삭작업 시 숫돌의 정면을 사용할 때', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('222cf63c-c5bc-7e53-c363-f5bee4ccbf25', 'f4658b86-30d2-3909-e411-d020d5fc94dd', '숫돌에큰충격을 줬을때', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00a067db-880c-d816-f65a-701c90dc8007', 'f4658b86-30d2-3909-e411-d020d5fc94dd', '숫돌의 회전중심이 제대로 잡히지 않았을 때', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f4658b86-30d2-3909-e411-d020d5fc94dd', 'fefbb40e-6efa-bae9-c165-342be22fc445', '② 연삭작업 시 숫돌의 정면을 사용할 때', '정답 ②. 연삭작업 시 숫돌의 측면을 사용할 때 연삭숫돌이 파괴된다. 연삭숫돌의 파괴 및 재해원인 • 숫돌에 균열이 있는 경우 • 숫돌이 고속으로 회전하는 경우 • 회전력이 결합력보다 큰 경우 • 무거운 물체가 충돌한 경우(외부의 큰 충격을 받은 경우) • 숫돌의 측면을 일감으로써 심하게 가압했을 경우 • 베어링이 마모되어 진동을 일으키는 경우 • 플랜지 지름이 현저하게 작은 경우 • 회전중심이 잡히지 않은 경우 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）', 2, 191)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a489510d-9a36-9e7a-a2d5-38eede122b89', 'c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '0.9[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2101cc4-9f69-dfb4-08c2-ec203c14dc3d', 'c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '1.2[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99764a77-e3ba-488f-4c9a-4bb7cc5edb10', 'c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '1.5[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60561f45-70db-ff42-100e-84f3847f8b58', 'c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '1.8[m]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c2e08813-e491-54dd-89e9-1a0ae9ca1ccf', '60561f45-70db-ff42-100e-84f3847f8b58', '④ 1.8[m]', '정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. EWII', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2c079288-17ed-ba25-fc5f-6367e149b476', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 용접장치의 안전에 관한 준수사항으 로 옳은 것은?', 2, 192)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af6d00d0-5808-2ec3-7662-be721e88a76e', '2c079288-17ed-ba25-fc5f-6367e149b476', '아세틸렌 용접장치의 발생기실을 옥외에 설치한 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4f73dfd-8665-8e31-7afd-e724b2abf788', '2c079288-17ed-ba25-fc5f-6367e149b476', '가스집합장치로부터 7[m] 이내의 장소에서는 화기의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('daa7eebe-d121-6c62-686a-f7b6b22b8ba6', '2c079288-17ed-ba25-fc5f-6367e149b476', '아세틸렌 발생기에서 10[m] 이내 또는 발생기실에서', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee3c3581-180a-b84a-c0d6-f76989e5d121', '2c079288-17ed-ba25-fc5f-6367e149b476', '아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2c079288-17ed-ba25-fc5f-6367e149b476', 'ee3c3581-180a-b84a-c0d6-f76989e5d121', '④ 아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게', '정답 ④. 이지압력이 127[kPa]을 초과하는 압력의 아세틸렌을 발생시켜 사용해서는 아니 된다. 쯔! 발생기실을 옥외에 설치한 경우에는 그 개구부를 다른 건축물로부터 1.5[m] 이상 떨어지도록 하여야 한다. 가스집합장치로부터 5[m] 이내의 장소에서는 흡연, 화기의 사용 또는 불꽃을 발생할 우려가 있는 행위를 금지하여야 한다. 발생기에서 5[m] 이내 또는 발생기실에서 3[m] 이내의 장소에서는 흡 연, 화기의 사용 또는 불꽃이 발생할 위험한 행위를 금지하여야 한다. E E1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 화물의 낙하에 의해 운전자가 위험 을 미칠 경우 지게차의 헤드가드（Head Guard）는 지게차의 최대하중의 몇 배가 되는 등분포정하중에 견디는 강도를 가 져야 하는가?（단, 4톤을 넘는 값은 제외한다.）', 2, 193)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8be50f3-f6ad-e389-3ba2-71dcaa778db5', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35a0c47c-ef9a-2f78-dbc7-c903392007d9', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1.5 배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '2배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f1f18fd-976f-4217-551b-c535dfcd4f64', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '3배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '③ 2배', '정답 ③. 헤드가드의 강도는 지게차의 최대하중의 2배 값（4톤을 넘는 값에 대해서는 4톤）의 등분포정하중에 견딜 수 있어야 한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3506e097-5b7c-2f60-6960-392e9e3674fa', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인에 돌발 상황이 발생한 경우 안전을 유지하기 위하여 모든 전원을 차단하여 크레인을 급정지시키는 방호장치는?', 2, 194)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a3b1fb75-ea1b-66ff-498c-3521fcd6e74a', '3506e097-5b7c-2f60-6960-392e9e3674fa', '호이스트', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31859fdf-f8bf-6efb-c011-47339e99fa0a', '3506e097-5b7c-2f60-6960-392e9e3674fa', '이탈방지장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1e20e77-9d79-d01f-5670-3b7c39c65e7b', '3506e097-5b7c-2f60-6960-392e9e3674fa', '비상정지장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d52f39c6-687b-64a8-8dc1-425856eb24e3', '3506e097-5b7c-2f60-6960-392e9e3674fa', '아웃트리거', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3506e097-5b7c-2f60-6960-392e9e3674fa', 'f1e20e77-9d79-d01f-5670-3b7c39c65e7b', '③ 비상정지장치', '정답 ③. 비상정지장치 이동 중 이상상태 발생 시 급정지시킬 수 있는 장치이다. E S1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등을 사용하여 작업을 할 때 에 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 195)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ac385cc-b9fe-92a5-055d-22160eb929c7', 'fdc69185-906e-60e9-3d14-a2056cb25964', '압력방출장치의 기능', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de878d66-bd2b-b9d8-28b8-57be461f538e', 'fdc69185-906e-60e9-3d14-a2056cb25964', '클러치 및 브레이크의 기능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3f376f-ac09-b61c-e5a5-233463dea8b5', 'fdc69185-906e-60e9-3d14-a2056cb25964', '프레스의 금형 및 고정볼트 상태', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d1f1a00-14f9-74c6-3773-871bba832ae2', 'fdc69185-906e-60e9-3d14-a2056cb25964', '1행정 1정지기구 •급정지장치 및 비상정지장치의 기능', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '5ac385cc-b9fe-92a5-055d-22160eb929c7', '① 압력방출장치의 기능', '정답 ①. 압력방출장치는 공기압축기를 가동할 때 작업시작 전 점검사항 이다. 프레스 등의 작업시작 전 점검사항 • 클러치 및 브레이크의 기능 • 크랭크축 • 플라이휠 - 슬라이드 • 연결봉 및 연결 나사의 풀림 유무 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 E 幻', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스 방호장치에서 게이트가드식 방호장치의 종 류를 작동방식에 따라 분류할 때 가장 거리가 먼 것은?', 2, 196)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db4346ff-eaea-0776-af81-8dd786dbdd59', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '경사식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa154595-3c9b-51cd-08ac-42031a604961', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '하강식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('542ebf96-a650-6841-2d54-e19114b43f86', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '도립식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd938c38-8fc6-8bd1-00ef-9902f05f1b12', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '횡 슬라이드식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', 'db4346ff-eaea-0776-af81-8dd786dbdd59', '① 경사식', '정답 ①. 프레스 게이트가드 방호장치는 게이트의 작동방식에 따라 하강 식. 도립식. 횡 슬라이드식 등으로 구분한다. wnn', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 보일러 운전 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 197)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac190440-71c0-c000-ccc0-99c7e5994d82', '8701f06b-0ca6-ab78-498a-97e89708716b', '가동 중인 보일러에는 작업자가 항상 정위치를 떠나지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24eebda-c4d3-2dd9-bc4f-60c4fd0c68c6', '8701f06b-0ca6-ab78-498a-97e89708716b', '보일러의 각종 부속장치의 누설상태를 점검할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5861388-f23a-c458-d320-da70c496180f', '8701f06b-0ca6-ab78-498a-97e89708716b', '압력방출장치는 매 7년마다 정기적으로 작동시험을', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34c4c8bf-5e3b-8d22-dc9e-d767e96f2841', '8701f06b-0ca6-ab78-498a-97e89708716b', '노내의 환기 및 통풍장치를 점검할 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', 'b5861388-f23a-c458-d320-da70c496180f', '③ 압력방출장치는 매 7년마다 정기적으로 작동시험을', '정답 ③. 압력방출장치는 매년 1회 이상 국가교정기관에서 교정을 받은 압력 계를 이용하여 설정압력에서 압력 방출장치가 적정하게 작동하는지를 검사한 후 납으로 봉인하여 사용하여야 한다. E 81', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', '11111111-1111-1111-1111-111111111104', 'mcq', '『산업안전보건법령」상 크레인에서 권과방지장치의 달기구 윗면이 권상장치의 아랫면과 접촉할 우려가 있는 경우 최소 몇 [m] 이상 간격이 되도록 조정하여야 하는가?（단, 직동식 권과방지장치의 경우는 제외）', 2, 198)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('852a61e9-e22c-f01e-0f6d-74c6d8f1d995', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.1', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03529c67-6e65-d043-c401-3ad2a915ab1f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.15', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb2442c3-f6a7-5039-aea7-cfe330f18d36', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.25', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ae0f5a6-c738-40b8-2fa5-fe80faf5202f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.3', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', 'cb2442c3-f6a7-5039-aea7-cfe330f18d36', '③ 0.25', '정답 ③. 권과방지장치는 훅 • 버킷 등 달기구의 윗면이 드럼, 상부 도르래. 트롤리프레임 등 권상장치의 아랫면과 접촉할 우려가 있는 경우에 그 간격 이 0.25[m] 이상（직동식 권과방지장치는 0.05[m] 이상）이 되도록 조정하 여야 한다. 1唱1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업의 안전수칙으로 가장 거리가 먼 것은?', 2, 199)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dde8af31-7bcd-be24-b21e-87a311298634', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd7fc8ca-df0a-ac35-02d7-c3d5c4965ba5', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '일반적으로 가공물의 길이가 지름의 12배 이상일 때는', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d49c143d-2b4c-307a-3e33-b17fb89307eb', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '바이트는 가급적 짧게 설치한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('650017c2-ef14-4f65-7bfd-75e9d9efe26d', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '면장갑을 사용하지 않는다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', 'dde8af31-7bcd-be24-b21e-87a311298634', '① 기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', '정답 ①. 선반직업 시 치수 측정. 주유 청소 시에는 반드시 기계를 정지한다. Em', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [기인가?', 2, 200)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52e8fd55-1093-2494-b5fe-868d806548d1', 'd031e1ea-d60a-288e-845b-5acede42fac2', '30', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('181ae521-d08d-8046-a0b3-301fd857aab8', 'd031e1ea-d60a-288e-845b-5acede42fac2', '50', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f427070-5d9b-91b3-2043-6b0e4006ec7b', 'd031e1ea-d60a-288e-845b-5acede42fac2', '60', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4babae5-af9e-013b-a611-5e6db1b5bb7d', 'd031e1ea-d60a-288e-845b-5acede42fac2', '70', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '52e8fd55-1093-2494-b5fe-868d806548d1', '① 30', '정답 ①. 안전전압 회로의 정격전압이 일정 수준 이하의 낮은 전압으로 절연파괴 등의 사고 시에도 인체에 위험을 주지 않는 전압을 말하며.「산업안전보건법령」에서 3O[V1로 규정하고 있다. 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
