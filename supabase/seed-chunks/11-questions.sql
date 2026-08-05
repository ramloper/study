-- chunk 11/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2020-12 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', '11111111-1111-1111-1111-111111111104', 'mcq', '인체계측자료의 응용원칙이 아닌 것은?', 2, 401)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b48489e8-ba2c-4d6d-dfea-b9a745253f1d', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '기존 동일 제품을 기준으로 한 설계', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('646c7196-ca8d-f21c-b829-27a5024e7bf7', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '최대치수와 최소치수를 기준으로 한 설계', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fab36193-e490-ac30-fc39-145c9a33aea2', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '조절범위를 기준으로 한 설계', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f24ef5c-117b-d1f3-6a41-d2b5f56eda85', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '평균치를 기준으로 한 설계', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', 'b48489e8-ba2c-4d6d-dfea-b9a745253f1d', '① 기존 동일 제품을 기준으로 한 설계', '정답 ①. a 인체계측자료의 응용원칙 •극단치 설계(최소치 설계. 최대치 설계) • 조절식 설계(5〜95[%tile]) • 평균치 설계', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #36
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 유해위험방지계획서를 제 출할 때에는 사업장별로 관련 서류를 첨부하여 해당 작업 시작 며칠 전까지 해당 기관에 제출하여야 하는가?', 2, 402)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71c1d90a-3bc4-b3ed-b752-2a25cf6b5552', 'e421921d-1803-281f-6df4-3f7e3b80afae', '7일', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1368f212-7cde-6412-3f53-6c56518c11bb', 'e421921d-1803-281f-6df4-3f7e3b80afae', '15일', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6116e731-343b-e55d-26f7-ad647f80b535', 'e421921d-1803-281f-6df4-3f7e3b80afae', '30일', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9018cc77-9e4b-1f6d-ea54-ce3afa6aaff5', 'e421921d-1803-281f-6df4-3f7e3b80afae', '60일', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '1368f212-7cde-6412-3f53-6c56518c11bb', '② 15일', '정답 ②. B 사업주가 유해위험방지계획서를 제출할 때에는 사업장별로 제조 업 등 유해위험방지계획서에 필요한 서류를 첨부하여 해당 작업 시작 15 일 전까지 한국산업안전보건공단에 2부를 제출하여야 한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '11111111-1111-1111-1111-111111111104', 'mcq', '적절한 온도의 작업환경에서 추운 환경으로 온도가 변할 때 우리의 신체가 수행하는 조절작용이 아닌 것은?', 2, 403)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('481e5a89-5fca-f535-85c0-dfb42fc161be', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '발한（發汗）이 시작된다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad41fa85-fe96-2b55-f21c-37b15360079b', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '피부의 온도가 내려간다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8b9f6f9-282d-7a6d-a6a2-2a2f26ec401c', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '직장 （ffl易）온도가 약간 올라간다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('929ee36d-559c-b99d-a69b-cbf18dcf81f4', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '혈액의 많은 양이 몸의 중심부를 위주로 순환한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '481e5a89-5fca-f535-85c0-dfb42fc161be', '① 발한（發汗）이 시작된다.', '정답 ①. HIM 추운 환경으로 변할 때 신체 조절작용（저온스트레스） • 피부온도가 내려간다. 피부를 경유하는 혈액순환량이 감소한다. • 많은 양의 혈액이 몸의 중심부를 순환한다. • 직장（直腸）온도가 약간 올라간다. • 소름이 돋고 몸이 떨린다. 2020 血 1 - 2', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇에 설치되는 제어장치의 조건에 적합하지 않은 것은?', 2, 404)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07ce3508-c4a4-4666-a222-a9f180ad64e4', '1290adf5-4497-3230-eb19-a9348798bfbe', '누름버튼은 오작동 방지를 위한 가드를 설치하는 등 불시', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a058e0a-f81d-06db-e86a-e8c043e331c1', '1290adf5-4497-3230-eb19-a9348798bfbe', '로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef7bdd79-1641-3d25-7a64-9784efbfe74e', '1290adf5-4497-3230-eb19-a9348798bfbe', '전원공급램프, 자동운전, 결함검출 등 작동제어의 상태', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c184a405-f93b-9dc1-0b3a-156c32ae8239', '1290adf5-4497-3230-eb19-a9348798bfbe', '조작버튼 및 선택스위치 등 제어장치에는 해당 기능을', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '4a058e0a-f81d-06db-e86a-e8c043e331c1', '② 로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', '정답 ②. 명확하게 구분할 수 있도록 표시 해야 한다. KOI 로봇에 설치되는 제어장치의 요건 • 누름버튼은 오작동 방지를 위한 가드가 설치되어 있는 등 불시기동을 방 지할 수 있는 구조이어야 한다. • 전원공급램프. 자동운전. 결함검출 등 작동제어의 상태를 확인할 수 있 는 표시장치가 설치되어 있어야 한다. • 조작버튼 및 선택스위치 등 제어장치에는 해당 기능을 명확하게 구분할 수 있도록 표시되어 있어야 한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '11111111-1111-1111-1111-111111111104', 'mcq', '무부하상태에서 지게차로 20[km/h]의 속도로 주행할 때, 좌우 안정도는 몇 [%] 이내이어야 하는가?', 2, 405)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a96fd14c-f910-dacb-8139-448ca74be069', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '37[%]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6591bb69-1873-1774-a6a1-212d09075884', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '39[%]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('159a6071-6477-6b7f-c5bf-ffe46644f24a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '41[%]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b3ebd0a-db35-4e26-d5f1-0429e38ab40a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '43[%]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', 'a96fd14c-f910-dacb-8139-448ca74be069', '① 37[%]', '정답 ①. ES 지게차 주행 시의 좌우 안정도(기준 무부하상태) 15+1.1V 15+1.1X2O 37[%] 이내 여기서. V: 구내 최고속되km/h] t색 81', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 틀린 것은?', 2, 406)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07569226-7cf0-7cd2-1e44-0fc89a368b09', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '보안경을 착용한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('843c79ff-a261-ad55-73b6-23c31dd37be4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '칩은 기계를 정지시킨 다음에 브러시로 제거한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0d00bab-ea82-cdce-0dd0-f85b96f74280', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '가공 중에는 손으로 가공면을 점검하지 않는다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a6706c3-fbff-25b0-192f-172438306ae4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '면장갑을 착용하여 작업한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '2a6706c3-fbff-25b0-192f-172438306ae4', '④ 면장갑을 착용하여 작업한다.', '정답 ④. KS 밀링직업 시 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않 는다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 앞면 롤의 지름이 300[mm], 분당회전수가 30회 일 경우 허용되는 급정지장치의 급정지거리는 약 몇 [mm] 이내이어야 하는가?', 2, 407)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfcd6f6d-3bda-8960-961e-fa53d2bd80f9', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '37.7', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be2e258d-6537-2f57-b956-32082b15a427', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '31.4', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55162b7b-a1fc-78a5-5eb4-8e5d1c2c68ac', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '377', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2feba7f2-195e-aace-8324-fb2ef19504ed', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '314', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '2feba7f2-195e-aace-8324-fb2ef19504ed', '④ 314', '정답 ④. 3 롤러의 표면속도 V ^} 즈스쓰!스끄 28.27[m/min] 여기서. D- 롤러의 지름{mm], TV: 분당회전쉬rpm] 급정지거리 （死X300）x& 314[mm] 이내 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의: 이내 30 미만 앞면 롤러 원주의 늘〒 이내 30 이상 日 아仏PTER 05 기타 산업용 기계 • 기구 05', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 연삭숫돌의 파괴원인으로 거리가 먼 것은?', 2, 408)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba22c2e-dd99-add1-0164-5916eafbd5b4', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '플랜지가 현저히 클때', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16ff909c-f66d-e94a-220d-133c458537aa', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌에 균열이 있을 때', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c3c2525-1eb2-480c-d03a-1ae06bc2fc1e', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 측면을 사용할 때', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c22ecfca-31a5-256e-ddb9-cad0caf422eb', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 치수 특히 내경의 크기가 적당하지 않을 때', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', 'bba22c2e-dd99-add1-0164-5916eafbd5b4', '① 플랜지가 현저히 클때', '정답 ①. 플랜지 지름이 현저하게 작을 때 연삭숫돌이 파괴된다. 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크 용접기에 전격방지기를 설치하는 요령 중 틀린 것 은?', 2, 409)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c992a0d8-605d-7492-965d-ae8cc6e72498', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '이완 방지 조치를 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '직각으로만 부착해야 한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45707878-d1d1-e15b-14f5-6e44ffe36283', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '동작 상태를 알기 쉬운 곳에 설치한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d58c569-4465-594d-c4cf-b553cee00146', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '테스트 스위치는 조작이 용이한 곳에 위치시킨다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '② 직각으로만 부착해야 한다.', '정답 ②. K3 연직 또는 수평에 대해서 전격방지기의 부착편의 경사가 20•를 넘지 않도록 설치한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #94
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 폭발범위가 12.5〜74[vol%]인 일산화탄소의 위험도는 얼마인가?', 2, 410)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03e9d019-2691-cc2f-9a1e-fd0e75804b89', '768bb22b-6561-6716-158f-cd224df57d22', '4.92', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3b7187-9046-7f50-31e8-00a23bb6205f', '768bb22b-6561-6716-158f-cd224df57d22', '5.26', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('752ce790-8cdf-1ae0-ac13-c7b0202fe5d4', '768bb22b-6561-6716-158f-cd224df57d22', '6.26', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b38c4a-2cc1-7786-655a-5f0e3e32baa0', '768bb22b-6561-6716-158f-cd224df57d22', '7.05', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '03e9d019-2691-cc2f-9a1e-fd0e75804b89', '① 4.92', '정답 ①. S 위험도 „ U-L 74-12.5 乃 —프〒 4''92 여기서. U- 폭발상한계, L： 폭발하한계 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄 1[v이%], 헥산 2[v이%], 에틸렌 2[v이%], 공기 95 [vol%]로 된 혼합가스의 폭발하한계갮vol%]은 약 얼마인 가?(단, 메탄, 헥산, 에틸렌의 폭발하한계 값은 각각 5.0, 1.1, 2.7[v이%]이다.)', 2, 411)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '4158cd0b-72a5-7c82-2deb-746b33696714', '1.8', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73b463b6-0b17-36b4-1b09-6b3777fe3358', '4158cd0b-72a5-7c82-2deb-746b33696714', '3.5', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867fd2f6-68ec-e8a6-5562-c06aa863246c', '4158cd0b-72a5-7c82-2deb-746b33696714', '12.8', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('998bc5ac-4255-165b-3935-c097337b5918', '4158cd0b-72a5-7c82-2deb-746b33696714', '21.7', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '① 1.8', '정답 ①. 3 혼합가스의 폭발하한계 L 匕十匕十…十匕 —1 + 2 十 2— 1.8[vol%] 븜+슨+•••+스 여기서. L- 혼합가스의 폭발하한계[vol%] 心, : 각 성분가스의 폭발하한계[vol%] V,,： 각 성분가스의 부피 비율[vol%] !', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', '11111111-1111-1111-1111-111111111104', 'mcq', '철골공사 시 안전작업방법 및 준수사항으로 옳지 않은 것 은?', 2, 412)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e029a35a-33ac-b068-0262-a8a3cfd8fe8d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '강풍. 폭우 등과 같은 악천후 시에는 작업을 중지하여', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('950fd48d-2c03-4715-1338-4a0e31d60523', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골부재 반입 시 시공순서가 빠른 부재는 상단부에 위', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('facd4953-5563-8bce-dfb7-2cf3c2cf6911', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa4dbaf-6e09-4ae7-c4d7-29e1baa6822d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골보의 두 곳을 매어 인양시킬 때 와이어로프의 내각', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', 'facd4953-5563-8bce-dfb7-2cf3c2cf6911', '③ 구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', '정답 ③. 은 60° 이하이 어야 한다. K3 철골작업 시 구명줄을 설치할 경우에는 구명줄을 마닐라 로프 직 경 16[mm]를 기준하여 설치하고 작업방법을 충분히 검토하여야 한다. ECTISl', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 지반의 종류별 굴착면의 기울 기 기준으로 옳지 않은 것은?', 2, 413)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9164a744-b641-ccd8-b822-fae9b6b26e91', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '모래 — 1 ： 1.8', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0752c891-240c-fdb3-9aeb-25702df7882e', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '연암 및 풍화암 - 1 : 1.5', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c623eebb-a153-1d36-9b6b-77e43329cde0', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '경암 — 1 ： 0.5', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1dd9833-3934-604c-3246-82606b74208f', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '그 밖의 흙 - 1 ： 1.2', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '0752c891-240c-fdb3-9aeb-25702df7882e', '② 연암 및 풍화암 - 1 : 1.5', '정답 ②. 표 굴착면의 기울기 기준 지반의 종류 굴착면의 기울기 모래 1 : 1.8 연암 및 풍화암 1 : 1.0 경암 1 ：0.5 그 밖의 흙 1 : 1.2 ※ 이 문제는 개정된 법령에 따라 수정한 문제입니다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #112
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', '11111111-1111-1111-1111-111111111104', 'mcq', '공정률이 65[%]인 건설현장의 경우 공사 진척에 따른 산업 안전보건관리비의 최소 사용기준으로 옳은 것은?（단, 공정 률은 기성공정률을 기준으로 한다.）', 2, 414)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee5b868-44ab-c735-b938-aecc085ac452', '68b05f20-d126-dd18-457a-e167e0eba232', '40[%] 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '68b05f20-d126-dd18-457a-e167e0eba232', '50[%] 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56671737-969f-3823-f61c-e5a1f5861952', '68b05f20-d126-dd18-457a-e167e0eba232', '60[%] 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('406824ec-bcde-91d8-f2d6-e25458c3ef56', '68b05f20-d126-dd18-457a-e167e0eba232', '70[%] 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', 'c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '② 50[%] 이상', '정답 ②. I 공사진척에 따른 산업안전보건관리 비 사용기준 공정S%] 50 이상 70 미만 70 이상 90 미만 90 이상 사용기쥔%] 50 아상 70 이상 90 이상', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #117
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다.（ ）안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도（ ）감기고 남을 수 있는 충분한 길이일 것', 2, 415)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bcde25c7-4095-3e32-eece-1b3f4f2a8bba', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '1회', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cbc89311-753c-93a5-b051-e71ce5dc418f', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '2회', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df3aff3f-f872-39c6-ae6f-cf81fce6f38b', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '4회', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac24673-9c30-263f-bea1-91b4b189283a', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '6회', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', 'cbc89311-753c-93a5-b051-e71ce5dc418f', '② 2회', '정답 ②. S 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또 는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼에 적어도 2회 감기고 남을 수 있는 충분한 길이여야 한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 색채와 사용사례의 연결로 틀린 것은?', 2, 416)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4816a7e6-9a05-9a7c-ad62-10cd4d017172', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '노란색-정지신호, 소화설비 및 그 장소, 유해행위의', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cab906d-ce5f-1587-c2b5-0e9b77c476e7', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '파란색 -특정 행위의 지시 및 사실의 고지', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7445a06-5ce7-9df8-0aba-8c49a8f41656', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '빨간색—화학물질 취급장소에서의 유해 • 위험경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e39704-6235-0cd4-e07e-7a63a9a468c0', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '녹색 - 비상구 및 피난소, 사람 또는 차량의 통행표지', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '4816a7e6-9a05-9a7c-ad62-10cd4d017172', '① 노란색-정지신호, 소화설비 및 그 장소, 유해행위의', '정답 ①. I 안전보건표지의 색도기준 및 용도 색채 색도기준 용도 사용예 정지신호, 소화설비 및 그 장소. 유해 금지 행위의 금지 빨간색 7.5R4/14 화학물질 취급장소에서의 유해 • 위험 경고 경고 화학물질 취급장소에서의 유해 • 위험 노란색 5Y 8.5/12 경고 경고 이외의 위험경고. 주의표지 또는 기계방호물 1 아仏PTER 02 안전보호구 관리 01', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?(단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.) 유 ^', 2, 417)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3bfafb40-3548-b161-650f-8b9374aabd4b', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '폭발성물질 경고', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9031404b-50ef-1802-97e6-5cd7ba724b90', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '산화성물질 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0883af28-cf28-1b6c-c134-023fee220561', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '부식성물질 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '급성독성물질 경고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', 'bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '④ 급성독성물질 경고', '정답 ④. 令 요 폭발令성물질 경고 산화성물질 경고 부식성물질 경 고 급성독성물질 경고 뗴閉', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」상 강렬한 소음작업에 해 당하는 기준은?', 2, 418)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204dde59-3bfb-5b93-1bbb-b7b04a6b6a9d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5eeb46d-a202-9894-5026-327fa057230d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97a46609-3687-b2fa-6172-9fa379b18681', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', 'aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '④ 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', '정답 ④. 짜 강렬한소음작업 • 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업 • 95[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업 • 100[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업 • 105【dB] 이상의 소음이 1일 1시간 이상 발생하는 작업 • 110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업 • 115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업 바iBBI', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 급정지장치에 관한 설명으로 가장 적절하지 않은 것은?', 2, 419)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf93aef-cf66-1206-62ef-75b32442ecfd', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '복부조작식은 조작부 중심점을 기준으로 밑면으로부터', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16810e39-a05c-26b0-ac16-aa82ea12390f', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '손조작식은 조작부 중심점을 기준으로 밑면으로부터', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('685e7301-68eb-8ea1-7248-9adab428acae', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 사용 중에 늘어', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42c83717-057b-1f1c-46a3-f6031adf3fe7', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', 'bbf93aef-cf66-1206-62ef-75b32442ecfd', '① 복부조작식은 조작부 중심점을 기준으로 밑면으로부터', '정답 ①. 도를 가져야 한다. 3 급정지장치 조작부의 위치 종류________________________________설치위치 손조작식________________________밑면에서 1.8[m] 이내 복부조작식 밑면에서 0.8Q司이상 1.1[m] 이내 무릎조작식 밑면에서 0.6(m] 이내 « 위치는 급정지장치 조작부의 중심점을 기준으로 한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기를 사용하여 작업하는 운전자 또는 작업자가 보기 쉬운 곳에 해당 양중기에 대해 표시하 여야 할 내용으로 가장 거리가 먼 것은?(단, 승강기는 제외 한다.)', 2, 420)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('527000df-4074-8aef-5ad4-fc11d84d4eb1', '1fdff114-ad15-dd07-4adc-4269189b8499', '정격하중', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee49bd23-5fc7-2ead-a007-b64074b2b0f4', '1fdff114-ad15-dd07-4adc-4269189b8499', '운전속도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977d3db2-605a-47c6-49c9-f4b8874aa94f', '1fdff114-ad15-dd07-4adc-4269189b8499', '경고표시', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '1fdff114-ad15-dd07-4adc-4269189b8499', '최대 인양높이', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', 'f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '④ 최대 인양높이', '정답 ④. a 양중기(승강기 제외) 및 달기구를 사용하여 작업하는 운전자 또 는 작업자가 보기 쉬운 곳에 해당 기계의 정격하중(달기구는 정격하중만 표시). 운전속도. 경고표시 등을 부칙호i여야 한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭기의 안전작업수칙에 대한 설명 중 가장 거리가 먼 것 은?', 2, 421)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91c5b938-51a0-f173-4e8f-b3b9b434cddb', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 정면에 서서 숫돌 원주면을 사용한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbd9309c-9150-5fe8-b1f7-78c0bfaa5730', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌 교체 시 3분 이상 시운전을 한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c995cea6-b5cd-7cd4-f1a9-f5d1aa9ddfaf', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 회전은 최고 사용 원주속도를 초과하여 사용하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55a0e080-c665-ad63-e6ce-0212cdcb37a6', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '연삭숫돌에 충격을 가하지 않는다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '91c5b938-51a0-f173-4e8f-b3b9b434cddb', '① 숫돌의 정면에 서서 숫돌 원주면을 사용한다.', '정답 ①. 3 연삭기 작업 시 연삭숫돌 정면에서 150” 정도 비켜서서 작업하 여야 한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #47
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계 설비의 안전조건에서 안전화의 종류로 가장 거리가 먼 것은?', 2, 422)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3ddd4b5-f461-ce5c-0854-094edcb75939', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '재질의 안전화', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd6ce306-dc53-ccd0-4c1b-c3245d9865f1', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '작업의 안전화', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2530237a-b978-997c-2dbb-43e5681ef720', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '기능의 안전화', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47e91eb5-b4c0-906e-90bb-a16f8c3794ea', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '외형의 안전화', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', 'b3ddd4b5-f461-ce5c-0854-094edcb75939', '① 재질의 안전화', '정답 ①. KEB 기계의 안전조건 • 외형의 안전화 • 작업의 안전화 • 작업점의 안전화 • 기능상의 안전화 • 구조적 안전화(강도적 안전화) 8 厄1 아UPTER 01 기계공정의 안전, 기계안전시설 관리 04', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 비파괴검사법으로 틀린 것은?', 2, 423)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11136f83-7dcf-f5f9-0d41-80a686b13059', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '인장검사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c724c36-f95a-5d18-ff0a-e1992a5e71c0', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '자기탐상검사', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('425d335f-e4d8-5dfe-b7fb-52cf28abfeeb', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '초음파탐상검사', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e205e0bc-da9c-04a1-8703-ef2f5b937e46', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '침투탐상검사', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11136f83-7dcf-f5f9-0d41-80a686b13059', '① 인장검사', '정답 ①. a 인장검사는파괴시험의 일종이다. 비파괴검사의 종류 방사선투과검사(RT). 초음파탐상검사(UT). 자분탐상검사(MT). 침투 탐 상검人KPT). 음향탐상검사(AET). 와류탐상검사(ECT) 등 1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 컨베이어를 사용하여 작업을 할 때 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 424)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d93f2cc-79e1-4137-90c2-f2eea2f40f26', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '원동기 및 풀리(Pulley) 기능의 이상 유무', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('796ad814-0ab4-bd07-4226-e970b713e13d', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '이탈 등의 방지장치 기능의 이상 유무', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ed73a98-8d5e-629b-0157-1491ed438dcf', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '유압장치의 기능의 이상 유무', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b414c810-3235-f4a1-970c-38e9bb4288a5', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '비상정지장치 기능의 이상 유무', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '0ed73a98-8d5e-629b-0157-1491ed438dcf', '③ 유압장치의 기능의 이상 유무', '정답 ③. KS 유압장치 기능의 이상 유무는 지게차 작업시작 전 점검사항이다. 컨베이어 작업시작 전 점검사항 • 원동기 및 풀리(Pulley) 기능의 이상 유무 • 이탈 등의 방지장치 기능의 이상 유무 • 비상정지장치 기능의 이상 유무 • 원동기 • 회전축 • 기어 및 풀리 등의 덮개 또는 울 등의 이상 유무', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 425)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e25b99a-1d98-6ad0-d845-4868e1ec2396', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '기계에 주유 및 청소 시 반드시 기계를 정지시키고 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63f7ada4-342b-48e7-d2e3-374fb1bdebc9', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '칩 제거 시 브러시를 사용한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a2cb291-395a-8cae-d1d5-a7f9cb68ffed', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '바이트에는 칩 브레이커를 설치한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce46f521-afdd-25c9-738c-b08b8aa40f38', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '선반의 바이트는 끝을 길게 장치한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', 'ce46f521-afdd-25c9-738c-b08b8aa40f38', '④ 선반의 바이트는 끝을 길게 장치한다.', '정답 ④. «3B 선반작업 시 바이트는 끝을 짧게 장치하고 일감의 길이가 직경의 12배 이상일 때 방진구를 사용한다. WW!', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 위험물질의 종류 중 부식성 염기류로 분류되기 위하여 농도가 40[%] 이상이 어야 하는 물질은?', 2, 426)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc76e751-d217-f6ad-31a9-1aaca0666204', 'b4808083-b14a-b43e-e433-d174d6b2236b', '염산', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de1061b8-c60b-4a7b-fb0c-e2c51516cc85', 'b4808083-b14a-b43e-e433-d174d6b2236b', '아세트산', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5181f122-571b-2351-d105-dc1112f2e131', 'b4808083-b14a-b43e-e433-d174d6b2236b', '불산', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d982e565-94af-173e-1a96-4c310a984bbc', 'b4808083-b14a-b43e-e433-d174d6b2236b', '수산화칼륨', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', 'd982e565-94af-173e-1a96-4c310a984bbc', '④ 수산화칼륨', '정답 ④. Ka 부식성 염기류 농도가 40[%] 이상인 수산화나트륨. 수산화칼륨. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류이다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 화학설비의 부속설비로만 이루어진 것은?', 2, 427)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d77dd74-c6b4-96f2-ae62-6714106edbec', '7420dfd1-4424-94b9-f556-d514fceecab6', '사이클론, 백필터. 전기집진기 등분진처리설비', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f72ee61-9f68-1447-85b8-07ba784ddddd', '7420dfd1-4424-94b9-f556-d514fceecab6', '응축기, 냉각기, 가열기. 증발기 등 열교환기류', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b19701c-69d9-d927-cf9e-6410827ddedb', '7420dfd1-4424-94b9-f556-d514fceecab6', '고로 등 점화기를 직접 사용하는 열교환기류', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72afdc1f-6347-6fed-6823-cd4ae58bbb7c', '7420dfd1-4424-94b9-f556-d514fceecab6', '혼합기, 발포기, 압출기 등 화학제품 가공설비', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '9d77dd74-c6b4-96f2-ae62-6714106edbec', '① 사이클론, 백필터. 전기집진기 등분진처리설비', '정답 ①. 3 사이클론. 백필터(Bag Filter). 전기집진기 등 분진처리설비는 화학설비의 부속설비에 해당한다. 오답해설 0, @. @는 화학설비에해당한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '11111111-1111-1111-1111-111111111104', 'mcq', '탄화수소 증기의 연소하한값 추정식은 연료의 양론농도 (CJ의 0.55배이다. 프로판 1몰의 연소반응식이 다음과 같 을 때 연소하한값은 약 몇 [vol%]인가? C3Hs+502 — 3CO2+4H2O', 2, 428)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '183064e6-da2d-0e39-60c1-db10ecf701eb', '2.22', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7faf58fe-2ea6-c6a8-9773-8e477a0802d6', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.03', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7970555d-31ab-8fb3-a548-558657cffeba', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.44', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20b74f7b-5302-a645-4aa5-086cdf68381b', '183064e6-da2d-0e39-60c1-db10ecf701eb', '8.06', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '① 2.22', '정답 ①. 1M 프로판의 완전연소반응식 C3H8+502 —* 3c(그十 4H2() 유기물 ChH,0y의 양론농도(Ci7)는 다음 식으로 구할 수 있다. r _________ 100_________ ________100________ s''— (4.77« + l.lftr—2.W)+1 —(4.77x3+1.19x8) + 1 “ ’ 문제에서 연소하한값 추정식이 연료의 양론농도(CJ의 0.55배로 주어졌으 므로 프로판의 연소하한값은 다음과 같이 계산할 수 있다. 프로판의 연소하한값 0.55 x Csf 0.55 x 4.03 2.22', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판과 메탄의 폭발하한계가 각각 2.5[vol%], 5.0[vol%] 이라고 할 때 프로판과 메탄이 3：1 의 체적비로 혼합되어 있 다면 이 혼합가스의 폭발하한계는 약 몇 [vol%]인가?(단, 상온, 상압 상태이다.)', 2, 429)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f39a93-aca2-7127-8542-4687c7b6991a', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '2.9', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22a7c16d-437f-17a4-3c62-0c4c5f3cb7a8', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.3', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d76e9f8f-112a-4d7a-be6f-b8c3d1942547', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.8', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('851684e9-941a-b2f4-0f9c-0c6dc559a97c', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '4.0', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '28f39a93-aca2-7127-8542-4687c7b6991a', '① 2.9', '정답 ①. KS 혼합기체의 폭발하한계 프로판과 메탄이 3：1의 체적비로 혼합되어 있으므로 프로판의 체적을 75[vol%]. 메탄의 체적을 25[vol%]로 두고 다음 식을 푼다. r 호1十 V2 H------1~ 匕 75+25 r £j £, Ln 2.5 5 買 閉', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 소화약제로 사용되는 이산화탄소에 관한 설명으로 틀린 것은?', 2, 430)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3828f214-f02a-97de-7fb7-c264a74e89c0', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '사용 후에 오염의 영향이 거의 없다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38e4f693-9e32-66bd-2a6e-7fe4e856dc09', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '장시간 저장하여도 변화가 없다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11d1083a-9e42-39d5-1db0-ad9bfe417a82', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '주된 소화효과는 억제소화이다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25f3081b-469c-040d-0da5-169d62aa3167', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '자체 압력으로 방사가 가능하다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11d1083a-9e42-39d5-1db0-ad9bfe417a82', '③ 주된 소화효과는 억제소화이다.', '정답 ③. MW 이산화탄소소화기는 질식소화가 주된 소화효과이며. 냉각효과를 동반하여 상승적으로 작용하여 소화한다. kWil뢬', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '11111111-1111-1111-1111-111111111104', 'mcq', '터널작업 시 자동경보장치에 대하여 당일의 작업시작 전 점 검하여야 할 사항으로 옳지 않은 것은?', 2, 431)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a68a3be5-85aa-9f0b-1300-6935c22a9407', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '검지부의 이상유무', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89cd8029-2665-3329-cedd-67e9ec5f50cc', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '조명시설의 이상 유무', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8e02155-ff4c-df34-6900-060157ef04cb', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '경보장치의 작동상태', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2cd80237-fca6-ef55-56e5-9d631b6a2bd0', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '계기의 이상 유무', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '89cd8029-2665-3329-cedd-67e9ec5f50cc', '② 조명시설의 이상 유무', '정답 ②. a 자동경보장치의 작업시작 전 점검사항 • 계기의 이상유무 • 검지부의 이상유무 • 경보장치의 작동상태 W!卽', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준이다.( )안에 알맞은 숫자를 나열한 것은? 길이가 띠장 방향으로( A )미터 이하이고 높이가 ( B ) 미터를 초과하는 경우에는 ( C )미터 이내마다 띠장 방향 으로 버팀기둥을 설치할 것', 2, 432)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b5a1ebf-e572-d196-6295-88f9c4fea1f6', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 5', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38094c80-5c4f-0bbf-100b-66c0a14f58b2', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 10', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2999037-3214-006f-c0aa-48ab3a0b9bda', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 5', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('597da981-dea9-f2d3-91c3-3c5203e7994a', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 10', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '38094c80-5c4f-0bbf-100b-66c0a14f58b2', '② A： 4, B： 10, C： 10', '정답 ②. 강관틀비계를 조립하여 사용하는 경우 길이가 띠장 방향으로 4[m] 이하이고 높이가 10[m｝를 초과하는 경우에는 10[m] 이내마다 띠장 방향으로 버팀기둥을 설치하여야 한다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-3 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('220d7509-5796-13eb-de94-63f749d30223', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 안전대와 관련된 설명이다. 아래 내용에 해당되는 용어로 옳은 것은? 로프 또는 레일 등과 같은 유연하거나 단단한 고정줄로서 추 락발생 시 추락을 저지시키는 추락방지대를 지탱해 주는 줄 모양의 부품', 2, 433)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f3151dd-b289-e1e4-7a4f-26c20e5e7825', '220d7509-5796-13eb-de94-63f749d30223', '안전블록: 안전그네와 연결하여 추락발생 시 추락을 억제할 수 있는 자동', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eda004d-ffc5-82ae-fda7-137ac2da8d70', '220d7509-5796-13eb-de94-63f749d30223', '죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b110531-134d-eb01-d402-0b8d789c7443', '220d7509-5796-13eb-de94-63f749d30223', '보조죔줄: 안전대를 U자걸이로 사용할 때 U자걸이를 위해 훅 또는 카', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6360ffb-c969-b4d5-0208-a29b6294a07d', '220d7509-5796-13eb-de94-63f749d30223', '114', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('220d7509-5796-13eb-de94-63f749d30223', '9eda004d-ffc5-82ae-fda7-137ac2da8d70', '② 죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', '정답은 ② 입니다', array['산업안전기사','2020-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', '11111111-1111-1111-1111-111111111104', 'mcq', '라인(Une)형 안전관리조직의 특징으로 옳은 것은?', 2, 434)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6eba1774-12dd-e885-485d-ee93d99eaab3', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 기술의 축적이 용이하다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a48f74d1-bb24-3e7b-29e3-1406070b52ed', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 지시나 조치가 신속하다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75aa0477-3e0d-6f9f-afc2-fcc80d60b4e7', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffdf0059-bfba-a983-85ed-26b9aef6ae2e', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '권한 다툼이나 조정 때문에 통제수속이 복잡해지며. 시', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', 'a48f74d1-bb24-3e7b-29e3-1406070b52ed', '② 안전에 관한 지시나 조치가 신속하다.', '정답 ②. 간과노력이 소모된다. S 라인형(직계형) 조직은 안전에 관한 지시 및 명령계통이 철저하 고(생산라인을 통해 이루어짐). 안전대책의 실시가 신속하다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육 중 관리감독 자 정기교육의 내용이 아닌 것은?', 2, 435)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9062949-3c88-dbdf-3943-60d776858c7f', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '유해 • 위험 작업환경 관리에 관한 사항', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba4c37e4-1864-9296-4709-c59a531557c1', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89bad454-d554-0082-8df9-e6d1f7fc1972', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('169da354-e242-1e62-dce1-c6311c3a952e', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '169da354-e242-1e62-dce1-c6311c3a952e', '④ 기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', '정답 ④. 는 근로자와 관리감독자 채용 시 및 작업내용 변경 시 교육내 용이다. 관리감독자 정기 교육내용 • 산업안전 및 산업재해 예방에 관한 사항 • 산업보건 및 건강장해 예방에 관한 사항 • 위험성 평가에 관한 사항 • 유해 • 위험 작업환경 관리에 관한 사항 • 「산업안전보건법령」및 산업재해보상보험 제도에 관한 사항 • 직무스트레스 예방 및 관리에 관한 사항 • 직장 내 괴롭힘, 고객의 폭언 등으로 인한 건강장해 예방 및 관리에 관한 사항 • 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항 • 사업장 내 안전보건관리체제 안전보건조치 현황에 관한 사항 • 표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항 • 현장 근로자와의 의사소통능력 및 강의능력 등 안전보건교육 능력 배양 에 관한 사항 • 비상시 또는 재해 발생 시 긴급조치에 관한 사항', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 구안법（Project Method）의 4단계의 순서 로 옳은 것은?', 2, 436)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d572bf41-16c5-d8ca-a511-a334be46b106', '98f2c8a2-8635-5178-149d-39d15849c02b', '계획수립 一 목적결정 一 활동 一 평가', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1abb94ff-a148-0011-06c4-da0362fc6f61', '98f2c8a2-8635-5178-149d-39d15849c02b', '평가 一 계획수립 一 목적결정 一 활동', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9aff5d53-218b-db7d-e4ec-c5512b1591ea', '98f2c8a2-8635-5178-149d-39d15849c02b', '목적결정 一 계획수립 一 활동 一 평가', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03ee33bd-f0e1-e244-6bc5-2f8f4fccc7cf', '98f2c8a2-8635-5178-149d-39d15849c02b', '활동 一 계획수립 - 목적결정 一 평가', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '9aff5d53-218b-db7d-e4ec-c5512b1591ea', '③ 목적결정 一 계획수립 一 활동 一 평가', '정답 ③. KOi 구안법의 학습단계 @ 목적의단계 © 계획의단계 © 실행（활동）의 단계 @ 비판（평가）의 단계', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명에 해당하는 학습지도의 원리는? 학습자가 지니고 있는 각자의 요구와 능력 등에 알맞은 학습 활동의 기회를 마련해주어야 한다는 원리', 2, 437)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5b26001-5cf2-9b31-1265-9b034d79969a', 'cdf63121-0312-53ec-cc88-6dfe531589de', '직관의 원리', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7645c1f-fb3a-25a3-d9ec-2abe40c29ad0', 'cdf63121-0312-53ec-cc88-6dfe531589de', '자기활동의 원리', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', 'cdf63121-0312-53ec-cc88-6dfe531589de', '개별화의 원리', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca2fc738-c959-2859-da0d-5937ca4a7dac', 'cdf63121-0312-53ec-cc88-6dfe531589de', '사회화의 원리', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', '③ 개별화의 원리', '정답 ③. W 학습지도 이론 학습자가 가지고 있는 각각의 요구 및 능력에 맞게 지도하여 개별화의 원리 야한다는 원리 학습을 종합적으로 지도하는 것으로 학습자의 능력을 조화있 통합의 원리 게 발달시키는 원리 사회화의 원리 공동학습을 통해 협력과 사회화를 도와준다는 원리 자발성의 원리 학습자 스스루 학습에 참여하여야 한다는 원리 구체적인 사물을 제시하거나 경험 등을 통해 학습효과를 거둘 직관의 원리 수 있다는 원리', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 옳은 것은?', 2, 438)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ed315c3-21e3-005f-3bf9-6d29c65284fc', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70c94f13-63b2-1cab-6495-2d65e712c889', '0df632a3-0f11-d9da-b74b-ed447324f05f', 'Top 시상을 발생시키는 조합이다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be305362-cd82-4bbf-e069-05e5ba0e1913', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템이 고장나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fec6042e-ff0a-754b-87f2-11286445391f', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', 'be305362-cd82-4bbf-e069-05e5ba0e1913', '③ 시스템이 고장나지 않도록 하는 사상의 조합이다.', '정답 ③. 집합이다. E!BM 패스셋（Path Set） 포함되어 있는 모든 기본사상이 일어나지 않을 때 정상사상（고장）이 일어 나지 않는 기본사상의 집합으로 시스템의 신뢰성을 나타낸다. 아UPTER 02 위험성 파악 • 결정', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 승강기의 종류로 옳지 않은 것은?', 2, 439)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8481acb-4bd8-d55a-806e-c23b36cadb93', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객용 엘리베이터', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867c32a0-78ed-764c-15cc-8e1f82e7075c', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '리프트', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e39d99c1-98be-4fb4-5f7d-7160972cbfa5', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '화물용 엘리베이터', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('909e54c2-51ba-7483-e615-6429e339179d', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객화물용 엘리베이터', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '867c32a0-78ed-764c-15cc-8e1f82e7075c', '② 리프트', '정답 ②. a 승강기의 종류 승객용 엘리베이터. 승객화물용 엘리베이터, 화물용 엘리베이터, 소형화물 용 엘리베이터. 에스컬레이터', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 화물의 낙하에 의해 운전자가 위험 을 미칠 경우 지게차의 헤드가드（Head Guard）는 지게차의 최대하중의 몇 배가 되는 등분포정하중에 견디는 강도를 가 져야 하는가?（단, 4톤을 넘는 값은 제외한다.）', 2, 440)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8be50f3-f6ad-e389-3ba2-71dcaa778db5', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1배', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35a0c47c-ef9a-2f78-dbc7-c903392007d9', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1.5 배', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '2배', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f1f18fd-976f-4217-551b-c535dfcd4f64', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '3배', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '③ 2배', '정답 ③. K3 헤드가드의 강도는 지게차의 최대하중의 2배 값（4톤을 넘는 값에 대해서는 4톤）의 등분포정하중에 견딜 수 있어야 한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
