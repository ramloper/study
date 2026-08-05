-- chunk 4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', '11111111-1111-1111-1111-111111111104', 'mcq', '인체계측자료의 응용원칙이 아닌 것은?', 2, 121)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b48489e8-ba2c-4d6d-dfea-b9a745253f1d', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '기존 동일 제품을 기준으로 한 설계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('646c7196-ca8d-f21c-b829-27a5024e7bf7', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '최대치수와 최소치수를 기준으로 한 설계', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fab36193-e490-ac30-fc39-145c9a33aea2', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '조절범위를 기준으로 한 설계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f24ef5c-117b-d1f3-6a41-d2b5f56eda85', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '평균치를 기준으로 한 설계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', 'b48489e8-ba2c-4d6d-dfea-b9a745253f1d', '① 기존 동일 제품을 기준으로 한 설계', '정답 ①. 인체계측자료의 응용원칙 •극단치 설계(최소치 설계. 최대치 설계) • 조절식 설계(5〜95[%tile]) • 평균치 설계 kWH', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 유해위험방지계획서를 제 출할 때에는 사업장별로 관련 서류를 첨부하여 해당 작업 시작 며칠 전까지 해당 기관에 제출하여야 하는가?', 2, 122)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71c1d90a-3bc4-b3ed-b752-2a25cf6b5552', 'e421921d-1803-281f-6df4-3f7e3b80afae', '7일', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1368f212-7cde-6412-3f53-6c56518c11bb', 'e421921d-1803-281f-6df4-3f7e3b80afae', '15일', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6116e731-343b-e55d-26f7-ad647f80b535', 'e421921d-1803-281f-6df4-3f7e3b80afae', '30일', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9018cc77-9e4b-1f6d-ea54-ce3afa6aaff5', 'e421921d-1803-281f-6df4-3f7e3b80afae', '60일', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '1368f212-7cde-6412-3f53-6c56518c11bb', '② 15일', '정답 ②. 사업주가 유해위험방지계획서를 제출할 때에는 사업장별로 제조 업 등 유해위험방지계획서에 필요한 서류를 첨부하여 해당 작업 시작 15 일 전까지 한국산업안전보건공단에 2부를 제출하여야 한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '11111111-1111-1111-1111-111111111104', 'mcq', '적절한 온도의 작업환경에서 추운 환경으로 온도가 변할 때 우리의 신체가 수행하는 조절작용이 아닌 것은?', 2, 123)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('481e5a89-5fca-f535-85c0-dfb42fc161be', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '발한（發汗）이 시작된다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad41fa85-fe96-2b55-f21c-37b15360079b', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '피부의 온도가 내려간다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8b9f6f9-282d-7a6d-a6a2-2a2f26ec401c', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '직장 （ffl易）온도가 약간 올라간다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('929ee36d-559c-b99d-a69b-cbf18dcf81f4', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '혈액의 많은 양이 몸의 중심부를 위주로 순환한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '481e5a89-5fca-f535-85c0-dfb42fc161be', '① 발한（發汗）이 시작된다.', '정답 ①. 발한（發汗）이 시작된다.', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7837cc5c-70ea-a396-6833-3b41b9633b6b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 탁상용 연삭기의 덮개는 작업 받침 대와 연삭숫돌과의 간격을 몇 [mm] 이하로 조정할 수 있어 야하는가?', 2, 124)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42d08f37-a983-3927-f630-66992f565e3a', '7837cc5c-70ea-a396-6833-3b41b9633b6b', '3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('baa536ac-1a3b-5367-3e92-3fcb73fb5657', '7837cc5c-70ea-a396-6833-3b41b9633b6b', '4', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f44bad7b-7fa7-b748-95cc-422dd22eebc9', '7837cc5c-70ea-a396-6833-3b41b9633b6b', '5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd6d9247-ac5e-4365-1801-bdee4879a5ca', '7837cc5c-70ea-a396-6833-3b41b9633b6b', '10', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7837cc5c-70ea-a396-6833-3b41b9633b6b', '42d08f37-a983-3927-f630-66992f565e3a', '① 3', '정답 ①. 탁상용 연삭기의 덮개는 작업 받침대와 연삭숫돌과의 간격을 3[mm] 이하로 조정할 수 있어야 한다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇에 설치되는 제어장치의 조건에 적합하지 않은 것은?', 2, 125)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07ce3508-c4a4-4666-a222-a9f180ad64e4', '1290adf5-4497-3230-eb19-a9348798bfbe', '누름버튼은 오작동 방지를 위한 가드를 설치하는 등 불시', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a058e0a-f81d-06db-e86a-e8c043e331c1', '1290adf5-4497-3230-eb19-a9348798bfbe', '로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef7bdd79-1641-3d25-7a64-9784efbfe74e', '1290adf5-4497-3230-eb19-a9348798bfbe', '전원공급램프, 자동운전, 결함검출 등 작동제어의 상태', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c184a405-f93b-9dc1-0b3a-156c32ae8239', '1290adf5-4497-3230-eb19-a9348798bfbe', '조작버튼 및 선택스위치 등 제어장치에는 해당 기능을', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '4a058e0a-f81d-06db-e86a-e8c043e331c1', '② 로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', '정답 ②. 명확하게 구분할 수 있도록 표시 해야 한다. KOI 로봇에 설치되는 제어장치의 요건 • 누름버튼은 오작동 방지를 위한 가드가 설치되어 있는 등 불시기동을 방 지할 수 있는 구조이어야 한다. • 전원공급램프. 자동운전. 결함검출 등 작동제어의 상태를 확인할 수 있 는 표시장치가 설치되어 있어야 한다. • 조작버튼 및 선택스위치 등 제어장치에는 해당 기능을 명확하게 구분할 수 있도록 표시되어 있어야 한다. E H', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '11111111-1111-1111-1111-111111111104', 'mcq', '무부하상태에서 지게차로 20[km/h]의 속도로 주행할 때, 좌우 안정도는 몇 [%] 이내이어야 하는가?', 2, 126)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a96fd14c-f910-dacb-8139-448ca74be069', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '37[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6591bb69-1873-1774-a6a1-212d09075884', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '39[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('159a6071-6477-6b7f-c5bf-ffe46644f24a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '41[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b3ebd0a-db35-4e26-d5f1-0429e38ab40a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '43[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', 'a96fd14c-f910-dacb-8139-448ca74be069', '① 37[%]', '정답 ①. 37[%]', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 틀린 것은?', 2, 127)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07569226-7cf0-7cd2-1e44-0fc89a368b09', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '보안경을 착용한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('843c79ff-a261-ad55-73b6-23c31dd37be4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '칩은 기계를 정지시킨 다음에 브러시로 제거한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0d00bab-ea82-cdce-0dd0-f85b96f74280', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '가공 중에는 손으로 가공면을 점검하지 않는다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a6706c3-fbff-25b0-192f-172438306ae4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '면장갑을 착용하여 작업한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '2a6706c3-fbff-25b0-192f-172438306ae4', '④ 면장갑을 착용하여 작업한다.', '정답 ④. 밀링직업 시 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않 는다. EWBI', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4fef02dd-3057-6782-e181-0b2dc9cda9c1', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등의 작업시작 전 점검사항 이 아닌 것은?', 2, 128)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75fc094a-0bfb-aa63-b62d-6f9ffd6d3360', '4fef02dd-3057-6782-e181-0b2dc9cda9c1', '금형 및 고정볼트 상태', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9920d8b6-4377-f7e8-84eb-bf4b8d659382', '4fef02dd-3057-6782-e181-0b2dc9cda9c1', '방호장치의 기능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('187a6ae3-2f23-a157-5caa-21381be6b710', '4fef02dd-3057-6782-e181-0b2dc9cda9c1', '전단기의 칼날 및 테이블의 상태', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59b48ef5-a4f9-b5bf-c5e8-b9e14df0e01a', '4fef02dd-3057-6782-e181-0b2dc9cda9c1', '트롤리(trolley)가 횡행하는 레일의 상태', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4fef02dd-3057-6782-e181-0b2dc9cda9c1', '59b48ef5-a4f9-b5bf-c5e8-b9e14df0e01a', '④ 트롤리(trolley)가 횡행하는 레일의 상태', '정답 ④. 트롤리가 횡행하는 레일의 상태 ’는 크레인을 사용하여 작업할 때 작업시작 전 점검사항이다. CTI', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5618d4d3-de0d-a910-59e1-7759f6a8a600', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 승강기의 종류에 해당하지 않는 것은?', 2, 129)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('abeb8c0e-3e0e-f464-9d6a-af8e151a375d', '5618d4d3-de0d-a910-59e1-7759f6a8a600', '리프트', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b89befbd-427e-656f-a94e-f4c36d545edc', '5618d4d3-de0d-a910-59e1-7759f6a8a600', '에스컬레이터', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f99cd56-03f5-b88e-9a42-068053da92c0', '5618d4d3-de0d-a910-59e1-7759f6a8a600', '화물용 엘리베이터', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6a49680-d60c-d904-395e-7eed2e3decf9', '5618d4d3-de0d-a910-59e1-7759f6a8a600', '승객용 엘리베이터', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5618d4d3-de0d-a910-59e1-7759f6a8a600', 'abeb8c0e-3e0e-f464-9d6a-af8e151a375d', '① 리프트', '정답 ①. 승강기의 종류 승객용 엘리베이터, 승객화물용 엘리베이터. 화물용 엘리베이터. 소형화물 용 엘리베이터, 에스컬레이터 包 투', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 앞면 롤의 지름이 300[mm], 분당회전수가 30회 일 경우 허용되는 급정지장치의 급정지거리는 약 몇 [mm] 이내이어야 하는가?', 2, 130)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfcd6f6d-3bda-8960-961e-fa53d2bd80f9', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '37.7', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be2e258d-6537-2f57-b956-32082b15a427', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '31.4', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55162b7b-a1fc-78a5-5eb4-8e5d1c2c68ac', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '377', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2feba7f2-195e-aace-8324-fb2ef19504ed', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '314', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '2feba7f2-195e-aace-8324-fb2ef19504ed', '④ 314', '정답 ④. 314', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 연삭숫돌의 파괴원인으로 거리가 먼 것은?', 2, 131)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba22c2e-dd99-add1-0164-5916eafbd5b4', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '플랜지가 현저히 클때', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16ff909c-f66d-e94a-220d-133c458537aa', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌에 균열이 있을 때', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c3c2525-1eb2-480c-d03a-1ae06bc2fc1e', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 측면을 사용할 때', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c22ecfca-31a5-256e-ddb9-cad0caf422eb', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 치수 특히 내경의 크기가 적당하지 않을 때', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', 'bba22c2e-dd99-add1-0164-5916eafbd5b4', '① 플랜지가 현저히 클때', '정답 ①. 플랜지 지름이 현저하게 작을 때 연삭숫돌이 파괴된다. 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1493f4fb-40c8-3142-46dc-f783fd7ef376', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 500[Q]이라 한다면 심실세동을 일으키 는 위험에너지（4는?（단, 심실세동전류 1=흐[mA], 통전 시간은 1초이다.）', 2, 132)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c27ecea9-4940-29f3-fe40-41be72bed535', '1493f4fb-40c8-3142-46dc-f783fd7ef376', '13.61', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44fb3070-8caf-bcb0-9b1e-f3732cf7c344', '1493f4fb-40c8-3142-46dc-f783fd7ef376', '23.21', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2e60ba6-4325-b83b-bb9f-d2d29b594dda', '1493f4fb-40c8-3142-46dc-f783fd7ef376', '33.42', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9c8c99a-4e33-5ffe-c884-ba0f1d067371', '1493f4fb-40c8-3142-46dc-f783fd7ef376', '44.63', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1493f4fb-40c8-3142-46dc-f783fd7ef376', 'c27ecea9-4940-29f3-fe40-41be72bed535', '① 13.61', '정답 ①. 13.61', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크 용접기에 전격방지기를 설치하는 요령 중 틀린 것 은?', 2, 133)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c992a0d8-605d-7492-965d-ae8cc6e72498', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '이완 방지 조치를 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '직각으로만 부착해야 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45707878-d1d1-e15b-14f5-6e44ffe36283', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '동작 상태를 알기 쉬운 곳에 설치한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d58c569-4465-594d-c4cf-b553cee00146', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '테스트 스위치는 조작이 용이한 곳에 위치시킨다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '② 직각으로만 부착해야 한다.', '정답 ②. 연직 또는 수평에 대해서 전격방지기의 부착편의 경사가 20•를 넘지 않도록 설치한다. E n', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기기의 Y종 절연물의 최고허용온도는?', 2, 134)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4824ed4-095d-cd56-872c-b1f13feeb484', '0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '8아?0]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa4ab973-89ee-60c8-290f-c768c2687137', '0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '85『0]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('277b01de-decc-6f53-b7e2-fd58932e7b3e', '0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '90[t]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6185faf4-753b-a003-c373-a133761f7325', '0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '1O5DC]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0a2f5513-0525-f2e8-5f5c-b1378d6105ee', '277b01de-decc-6f53-b7e2-fd58932e7b3e', '③ 90[t]', '정답 ③. 90[t]', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조의 기본적 성능에 관한 사항으로 틀린 것은?', 2, 135)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bec38886-0bc1-e716-18e7-04186929d624', '0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '내부에서 폭발할 경우 그 압력에 견딜 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9fa97c8d-cd23-8706-6a89-9aad8c2df92d', '0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '폭발화염이 외부로 유출되지 않을 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('665d0c53-f3d1-5e0e-8866-b784023bf3da', '0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '습기 침투에 대한 보호가 될 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d3acc2e-6ed1-4344-1afb-774c3fde06e1', '0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '외함 표면온도가 주위의 가연성 가스에 점화하지 않을 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f934d2f-37c6-2f0a-51c7-a0b2441fbf85', '665d0c53-f3d1-5e0e-8866-b784023bf3da', '③ 습기 침투에 대한 보호가 될 것', '정답 ③. 6 내부에서 폭발할 경우 그 압력에 견딜 것 폭발화염이 외부로 유출되지 않을 것 _ 습기침투에 대한 보호가 될 것 외함 표면온도가 주위의 가연성 가스에 점회하지 않을 것 내압방폭구조의 성능 ㆍ내부에서 폭발할 경우 그 압력에 견딜 것 . . ㆍ폭발화염이 외부로 유출되지 않을 것 ㆍ외함 표면온도가 주위의 가연성 가스를 점화하지 않을 것', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a029826d-f46f-7e03-71a1-56f737b84dfa', '11111111-1111-1111-1111-111111111104', 'mcq', '화염일주한계에 대한 설명으로 옳은 것은?', 2, 136)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59c7bae6-dfbc-ab3d-c0ba-0818a4056a92', 'a029826d-f46f-7e03-71a1-56f737b84dfa', '폭발성 가스와 공기의 혼합기에 온도를 높인 경우 화염', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a3b271b5-0d0e-95e8-703a-c0b9d1ccd07b', 'a029826d-f46f-7e03-71a1-56f737b84dfa', '폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d31ef35-2cbd-0a43-a3fd-d4afd1d6d71d', 'a029826d-f46f-7e03-71a1-56f737b84dfa', '폭발성 분위기 속에서 전기불꽃에 의하여 폭발을 일으', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca83735f-3328-42b9-1766-eaf0257cef5a', 'a029826d-f46f-7e03-71a1-56f737b84dfa', '방폭설비에서 이상이 발생하여 불꽃이 생성된 경우에', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a029826d-f46f-7e03-71a1-56f737b84dfa', 'a3b271b5-0d0e-95e8-703a-c0b9d1ccd07b', '② 폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염', '정답 ②. 그것이 점화원으로 작용하지 않도록 화염의 에너지를 억제하여 폭발하한계로 되도록 화염 크기를 조정하는 한계치 KOi 화염일주한계（최대안전틈새, MESG） 폭발성 분위기 내에 방치된 표준용기의 접합면 틈새를 통하여 폭발화염이 내 부에서 외부로 전파돠는 것을 저지（최소점화에너지 이하）할 수 있는 틈새의 최대간격치이며 폭발성 가스의 종류에 따라 다르다. E@%1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('84638601-21de-f80d-0de0-27e20c3cebc6', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」상 국소배기장치의 후드 설치기준이 아닌 것은?', 2, 137)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09f5439c-88d1-c0a9-6fb1-26e79db45d01', '84638601-21de-f80d-0de0-27e20c3cebc6', '유해물질이 발생하는 곳마다 설치할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e2c1b61-d9d1-a41a-d58e-250b66831c94', '84638601-21de-f80d-0de0-27e20c3cebc6', '후드의 개구부 면적은 가능한 한 크게 할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20548113-053f-289b-3081-43cf28cf51df', '84638601-21de-f80d-0de0-27e20c3cebc6', '외부식 또는 리시버식 후드는 해당 분진 등의 발산원에', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1533812-42dd-81ac-ca24-199097e4c0ce', '84638601-21de-f80d-0de0-27e20c3cebc6', '후드 형식은 가능하면 포위식 또는 부스식 후드를 설치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('84638601-21de-f80d-0de0-27e20c3cebc6', '5e2c1b61-d9d1-a41a-d58e-250b66831c94', '② 후드의 개구부 면적은 가능한 한 크게 할 것', '정답 ②. 할것 폐* 후드（Hood） 인체에 해로운 분진 등을 배출하기 위하여 설치하는 국소배기장치의 후드 는 다음의 기준에 맞도록 하여야 한다. • 유해물질이 발생하는 곳마다 설치할 것 • 유해인자의 발생형태와 비중. 작업방법 등을 고려하여 해당 분진 등의 발산원을 제어할 수 있는 구조로 설치할 것 • 후드 형식은 가능하면 포위식 또는 부스식 후드를 설치할 것 • 외부식 또는 리시버식 후드는 해당 분진 등의 발산원에 가장 가까운 위 치에 설치할 것 t', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 폭발범위가 12.5〜74[vol%]인 일산화탄소의 위험도는 얼마인가?', 2, 138)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03e9d019-2691-cc2f-9a1e-fd0e75804b89', '768bb22b-6561-6716-158f-cd224df57d22', '4.92', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3b7187-9046-7f50-31e8-00a23bb6205f', '768bb22b-6561-6716-158f-cd224df57d22', '5.26', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('752ce790-8cdf-1ae0-ac13-c7b0202fe5d4', '768bb22b-6561-6716-158f-cd224df57d22', '6.26', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b38c4a-2cc1-7786-655a-5f0e3e32baa0', '768bb22b-6561-6716-158f-cd224df57d22', '7.05', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '03e9d019-2691-cc2f-9a1e-fd0e75804b89', '① 4.92', '정답 ①. 4.92', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 • 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야 하는가?', 2, 139)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('057c137d-1ced-0efd-67e4-00997199cb95', 'a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '15일', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e7f7d4a-3ca6-1cdf-75c1-3340bf8b6923', 'a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '30일', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4750e43-3a30-cb20-5f80-942e99a60e11', 'a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '60일', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f9b1452-666b-bc86-19fc-f82c0b72469d', 'a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '90일', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a0e7b090-d4e4-34ec-25c7-d02f19d55c6a', '3e7f7d4a-3ca6-1cdf-75c1-3340bf8b6923', '② 30일', '정답 ②. 유해하거나 위험한 설비의 설치 • 이전 또는 주요 구조부분의 변 경공사의 착공일 30일 전까지 공정안전보고서를 2부 작성하여 한국산업안 전보건공단에 제출하여야 한다. EWgl', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', '11111111-1111-1111-1111-111111111104', 'mcq', '가열 • 마찰 • 충격 또는 다른 화학물질과의 접촉 등으로 인 하여 산소나 산화제의 공급이 없더라도 폭발 등 격렬한 반 응을 일으킬 수 있는 물질은?', 2, 140)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5026ff84-4f2f-c043-8610-22ee5005746e', 'c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', '에틸알코올', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f4b1505-6c9c-aa48-1f21-dd55f931278e', 'c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', '인화성 고체', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b80a1469-2dfe-0581-f0e8-17ea9c988439', 'c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', '니트로화합물', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36141d6d-6198-eee0-2ec1-980d591725cb', 'c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', '테레핀유', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c6f8ddaa-9ff8-0216-7f88-41a253b1d2e5', 'b80a1469-2dfe-0581-f0e8-17ea9c988439', '③ 니트로화합물', '정답 ③. 니트로화합물은 폭발성 물질로 가연성 물질인 동시에 산소 함유 물질이다. 폭발성 물질은 자신의 산소를 소비하면서 연소하기 때문에 연소 속도가 매우 빠르며, 폭발적이다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄 1[v이%], 헥산 2[v이%], 에틸렌 2[v이%], 공기 95 [vol%]로 된 혼합가스의 폭발하한계갮vol%]은 약 얼마인 가?(단, 메탄, 헥산, 에틸렌의 폭발하한계 값은 각각 5.0, 1.1, 2.7[v이%]이다.)', 2, 141)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '4158cd0b-72a5-7c82-2deb-746b33696714', '1.8', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73b463b6-0b17-36b4-1b09-6b3777fe3358', '4158cd0b-72a5-7c82-2deb-746b33696714', '3.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867fd2f6-68ec-e8a6-5562-c06aa863246c', '4158cd0b-72a5-7c82-2deb-746b33696714', '12.8', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('998bc5ac-4255-165b-3935-c097337b5918', '4158cd0b-72a5-7c82-2deb-746b33696714', '21.7', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '① 1.8', '정답 ①. 1.8', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', '11111111-1111-1111-1111-111111111104', 'mcq', '철골공사 시 안전작업방법 및 준수사항으로 옳지 않은 것 은?', 2, 142)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e029a35a-33ac-b068-0262-a8a3cfd8fe8d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '강풍. 폭우 등과 같은 악천후 시에는 작업을 중지하여', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('950fd48d-2c03-4715-1338-4a0e31d60523', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골부재 반입 시 시공순서가 빠른 부재는 상단부에 위', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('facd4953-5563-8bce-dfb7-2cf3c2cf6911', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa4dbaf-6e09-4ae7-c4d7-29e1baa6822d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골보의 두 곳을 매어 인양시킬 때 와이어로프의 내각', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', 'facd4953-5563-8bce-dfb7-2cf3c2cf6911', '③ 구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', '정답 ③. 은 60° 이하이 어야 한다. K3 철골작업 시 구명줄을 설치할 경우에는 구명줄을 마닐라 로프 직 경 16[mm]를 기준하여 설치하고 작업방법을 충분히 검토하여야 한다. ECTISl', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 지반의 종류별 굴착면의 기울 기 기준으로 옳지 않은 것은?', 2, 143)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9164a744-b641-ccd8-b822-fae9b6b26e91', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '모래 — 1 ： 1.8', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0752c891-240c-fdb3-9aeb-25702df7882e', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '연암 및 풍화암 - 1 : 1.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c623eebb-a153-1d36-9b6b-77e43329cde0', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '경암 — 1 ： 0.5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1dd9833-3934-604c-3246-82606b74208f', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '그 밖의 흙 - 1 ： 1.2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '0752c891-240c-fdb3-9aeb-25702df7882e', '② 연암 및 풍화암 - 1 : 1.5', '정답 ②. 표| 굴착면의 기울기 기준 지반의 종류 굴착면의 기울기 모래 1 : 1.8 연암 및 풍화암 1 : 1.0 경암 1 ：0.5 그 밖의 흙 1 : 1.2 ※ 이 문제는 개정된 법령에 따라 수정한 문제입니다. kWIM', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주가 유해위험방지계획서 제출 후 건설공사 중 6개월 이내마다 안전보건공단의 확인을 받아야 할 내용이 아닌 것은?', 2, 144)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6311bebf-8296-fd06-365e-37dbd76d247f', '3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '유해위험방지계획서의 내용과 실제공사 내용이 부합하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f9d62ed-704d-45c1-dbe6-22dabf35d624', '3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '유해위험방지계획서 변경내용의 적정성', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74e5728b-19f5-51d2-1382-4ee0cc91874f', '3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '자율안전관리 업체 유해위험방지계획서 제출 • 심사 면제', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5770de1-3b46-398e-a701-13d9f624c386', '3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '추가적인 유해 - 위험요인의 존재 여부', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3a9a93be-b5d1-5d85-a4cf-0b1453fe9f7d', '74e5728b-19f5-51d2-1382-4ee0cc91874f', '③ 자율안전관리 업체 유해위험방지계획서 제출 • 심사 면제', '정답 ③. 유해위험방지계획서 확인사항 • 유해위험방지계획서의 내용과 실제공사 내용이 부합하는지 여부 • 유해위험방지계획서 변경내용의 적정성 • 추가적인 유해 • 위험요인의 존재 여부 EW1 아UPTER 02 건설공사 위험성 10', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', '11111111-1111-1111-1111-111111111104', 'mcq', '공정률이 65[%]인 건설현장의 경우 공사 진척에 따른 산업 안전보건관리비의 최소 사용기준으로 옳은 것은?（단, 공정 률은 기성공정률을 기준으로 한다.）', 2, 145)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee5b868-44ab-c735-b938-aecc085ac452', '68b05f20-d126-dd18-457a-e167e0eba232', '40[%] 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '68b05f20-d126-dd18-457a-e167e0eba232', '50[%] 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56671737-969f-3823-f61c-e5a1f5861952', '68b05f20-d126-dd18-457a-e167e0eba232', '60[%] 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('406824ec-bcde-91d8-f2d6-e25458c3ef56', '68b05f20-d126-dd18-457a-e167e0eba232', '70[%] 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', 'c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '② 50[%] 이상', '정답 ②. 공사진척에 따른 산업안전보건관리 비 사용기준 공정S%] 50 이상 70 미만 70 이상 90 미만 90 이상 사용기쥔%] 50 아상 70 이상 90 이상 EWIE1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다.（ ）안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도（ ）감기고 남을 수 있는 충분한 길이일 것', 2, 146)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bcde25c7-4095-3e32-eece-1b3f4f2a8bba', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '1회', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cbc89311-753c-93a5-b051-e71ce5dc418f', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '2회', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df3aff3f-f872-39c6-ae6f-cf81fce6f38b', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '4회', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac24673-9c30-263f-bea1-91b4b189283a', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '6회', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', 'cbc89311-753c-93a5-b051-e71ce5dc418f', '② 2회', '정답 ②. 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또 는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼에 적어도 2회 감기고 남을 수 있는 충분한 길이여야 한다. bWHM', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09acdeb2-72f2-186b-74b6-7151b0dd4a30', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건관리책임자 등에 대한 교육 시간 기준으로 틀린 것은?', 2, 147)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('429ec5f7-5016-142f-0d1d-31bae4fd0ede', '09acdeb2-72f2-186b-74b6-7151b0dd4a30', '보건관리자, 보건관리전문기관의 종사자 보수교육: 24', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf9c7f2-5097-55e6-131c-1e5118e052f0', '09acdeb2-72f2-186b-74b6-7151b0dd4a30', '안전관리자. 안전관리전문기관의 종사자 신규교육: 34', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84cc7731-9ee1-e132-7e76-b5b31a26ab6e', '09acdeb2-72f2-186b-74b6-7151b0dd4a30', '안전보건관리책임자 보수교육: 6시간 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c47845a0-e020-ba26-097e-9f39429c8e4e', '09acdeb2-72f2-186b-74b6-7151b0dd4a30', '건설재해예방전문지도기관의 종사자 신규교육: 24시', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09acdeb2-72f2-186b-74b6-7151b0dd4a30', 'c47845a0-e020-ba26-097e-9f39429c8e4e', '④ 건설재해예방전문지도기관의 종사자 신규교육: 24시', '정답 ④. 간이상 1M 건설재해예방전문지도기관 종사자의 교육시간은 신규교육 34시 간 이상. 보수교육 24시간 이상이다. ECTH', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5161409f-4918-7fb7-71bb-91ccc6d23aa2', '11111111-1111-1111-1111-111111111104', 'mcq', '파블로프(Pavlov)의 조건반사설에 의한 학습이론의 원리가 아닌 것은?', 2, 148)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('105186e7-4ffe-84db-bb6f-f3d8f67d292d', '5161409f-4918-7fb7-71bb-91ccc6d23aa2', '일관성의 원리', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6948943-1f61-2dfb-a68e-a6dbbb5b4444', '5161409f-4918-7fb7-71bb-91ccc6d23aa2', '계속성의 원리', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa2cd0ad-1564-06e0-a5d9-b593363850d8', '5161409f-4918-7fb7-71bb-91ccc6d23aa2', '준비성의 원리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c27002e-d2d1-4e99-0eb2-998b4a16727d', '5161409f-4918-7fb7-71bb-91ccc6d23aa2', '강도의 원리', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5161409f-4918-7fb7-71bb-91ccc6d23aa2', 'fa2cd0ad-1564-06e0-a5d9-b593363850d8', '③ 준비성의 원리', '정답 ③. 준비성의 원리', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 색채와 사용사례의 연결로 틀린 것은?', 2, 149)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4816a7e6-9a05-9a7c-ad62-10cd4d017172', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '노란색-정지신호, 소화설비 및 그 장소, 유해행위의', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cab906d-ce5f-1587-c2b5-0e9b77c476e7', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '파란색 -특정 행위의 지시 및 사실의 고지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7445a06-5ce7-9df8-0aba-8c49a8f41656', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '빨간색—화학물질 취급장소에서의 유해 • 위험경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e39704-6235-0cd4-e07e-7a63a9a468c0', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '녹색 - 비상구 및 피난소, 사람 또는 차량의 통행표지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '4816a7e6-9a05-9a7c-ad62-10cd4d017172', '① 노란색-정지신호, 소화설비 및 그 장소, 유해행위의', '정답 ①. 노란색-정지신호, 소화설비 및 그 장소, 유해행위의', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?(단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.) 유 ^', 2, 150)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3bfafb40-3548-b161-650f-8b9374aabd4b', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '폭발성물질 경고', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9031404b-50ef-1802-97e6-5cd7ba724b90', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '산화성물질 경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0883af28-cf28-1b6c-c134-023fee220561', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '부식성물질 경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '급성독성물질 경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', 'bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '④ 급성독성물질 경고', '정답 ④. 급성독성물질 경고', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '11111111-1111-1111-1111-111111111104', 'mcq', '재해분석도구 중 재해발생의 유형을 어골상（魚骨像）으로 분류하여 분석하는 것은?', 2, 151)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('068ce665-da30-1d70-8140-4b06bf142a15', 'c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '파레토도', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ea1b1d6-b49f-7338-2b3c-775ba5644672', 'c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '특성요인도', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d9d5dba-f727-3896-ba63-8b1782560493', 'c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '관리도', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7d8bb3b-eead-d2af-be55-db22bb68032b', 'c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '클로즈분석', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c3cbf17d-0415-d58b-da00-b35e4a4dfa68', '2ea1b1d6-b49f-7338-2b3c-775ba5644672', '② 특성요인도', '정답 ②. 재해의 통계적 원인분석 방법 파레토도 분류항목을 큰 순서대로 도표화한 분석법 특성요인도 특성과 요인관계를 도표로 하여 어골상으로 세분화한 분석법 클로즈분석도 요인별 결과 내역을 교차한 클로즈 그림을 작성 분석하는 방법 관리도 재해발생수를 그래프화하여 관리선을 설정. 관리하는 방법', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 브레인스토밍의 4원칙과 가장 거리가 먼 것은?', 2, 152)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('986ec58c-212a-e022-8501-bb91ee167495', '6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '자유로운 비평', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4686be85-d58f-8102-9cbd-7d84773ce692', '6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '자유분방한 발언', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('751a1d1a-76a8-ecb8-6cad-0ac5091c7978', '6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '대량적인 발언', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1138a13-ad52-9e68-9d9b-a17988e42c96', '6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '타인 의견의 수정 발언', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6bfe49be-9dd2-2f6a-fd72-9bc7c553a194', '986ec58c-212a-e022-8501-bb91ee167495', '① 자유로운 비평', '정답 ①. 브레인스토밍(Brain Storming) • 비판금지 : “좋다. 나쁘다’ 등의 비평을 하지 않는다. • 자유분방: 자유로운 분위기에서 발표한다. • 대량발언: 무엇이든지 좋으니 많이 발언한다. • 수정발언 : 자유자재로 변하는 아이디어를 개발한다.(타인 의견의 수정발언) # 1', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」상 강렬한 소음작업에 해 당하는 기준은?', 2, 153)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204dde59-3bfb-5b93-1bbb-b7b04a6b6a9d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5eeb46d-a202-9894-5026-327fa057230d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97a46609-3687-b2fa-6172-9fa379b18681', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', 'aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '④ 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', '정답 ④. 짜 강렬한소음작업 • 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업 • 95[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업 • 100[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업 • 105【dB] 이상의 소음이 1일 1시간 이상 발생하는 작업 • 110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업 • 115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업 바iBBI', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 급정지장치에 관한 설명으로 가장 적절하지 않은 것은?', 2, 154)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf93aef-cf66-1206-62ef-75b32442ecfd', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '복부조작식은 조작부 중심점을 기준으로 밑면으로부터', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16810e39-a05c-26b0-ac16-aa82ea12390f', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '손조작식은 조작부 중심점을 기준으로 밑면으로부터', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('685e7301-68eb-8ea1-7248-9adab428acae', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 사용 중에 늘어', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42c83717-057b-1f1c-46a3-f6031adf3fe7', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', 'bbf93aef-cf66-1206-62ef-75b32442ecfd', '① 복부조작식은 조작부 중심점을 기준으로 밑면으로부터', '정답 ①. 복부조작식은 조작부 중심점을 기준으로 밑면으로부터', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기를 사용하여 작업하는 운전자 또는 작업자가 보기 쉬운 곳에 해당 양중기에 대해 표시하 여야 할 내용으로 가장 거리가 먼 것은?(단, 승강기는 제외 한다.)', 2, 155)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('527000df-4074-8aef-5ad4-fc11d84d4eb1', '1fdff114-ad15-dd07-4adc-4269189b8499', '정격하중', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee49bd23-5fc7-2ead-a007-b64074b2b0f4', '1fdff114-ad15-dd07-4adc-4269189b8499', '운전속도', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977d3db2-605a-47c6-49c9-f4b8874aa94f', '1fdff114-ad15-dd07-4adc-4269189b8499', '경고표시', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '1fdff114-ad15-dd07-4adc-4269189b8499', '최대 인양높이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', 'f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '④ 최대 인양높이', '정답 ④. 양중기(승강기 제외) 및 달기구를 사용하여 작업하는 운전자 또 는 작업자가 보기 쉬운 곳에 해당 기계의 정격하중(달기구는 정격하중만 표시). 운전속도. 경고표시 등을 부칙호i여야 한다. E H', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭기의 안전작업수칙에 대한 설명 중 가장 거리가 먼 것 은?', 2, 156)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91c5b938-51a0-f173-4e8f-b3b9b434cddb', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 정면에 서서 숫돌 원주면을 사용한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbd9309c-9150-5fe8-b1f7-78c0bfaa5730', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌 교체 시 3분 이상 시운전을 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c995cea6-b5cd-7cd4-f1a9-f5d1aa9ddfaf', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 회전은 최고 사용 원주속도를 초과하여 사용하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55a0e080-c665-ad63-e6ce-0212cdcb37a6', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '연삭숫돌에 충격을 가하지 않는다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '91c5b938-51a0-f173-4e8f-b3b9b434cddb', '① 숫돌의 정면에 서서 숫돌 원주면을 사용한다.', '정답 ①. 연삭기 작업 시 연삭숫돌 정면에서 150” 정도 비켜서서 작업하 여야 한다. E H', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계 설비의 안전조건에서 안전화의 종류로 가장 거리가 먼 것은?', 2, 157)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3ddd4b5-f461-ce5c-0854-094edcb75939', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '재질의 안전화', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd6ce306-dc53-ccd0-4c1b-c3245d9865f1', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '작업의 안전화', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2530237a-b978-997c-2dbb-43e5681ef720', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '기능의 안전화', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47e91eb5-b4c0-906e-90bb-a16f8c3794ea', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '외형의 안전화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', 'b3ddd4b5-f461-ce5c-0854-094edcb75939', '① 재질의 안전화', '정답 ①. 재질의 안전화', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 비파괴검사법으로 틀린 것은?', 2, 158)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11136f83-7dcf-f5f9-0d41-80a686b13059', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '인장검사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c724c36-f95a-5d18-ff0a-e1992a5e71c0', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '자기탐상검사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('425d335f-e4d8-5dfe-b7fb-52cf28abfeeb', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '초음파탐상검사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e205e0bc-da9c-04a1-8703-ef2f5b937e46', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '침투탐상검사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11136f83-7dcf-f5f9-0d41-80a686b13059', '① 인장검사', '정답 ①. 인장검사', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8d795906-71c8-2f7c-d7ec-dd9bb991c080', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 아세틸렌 용접장치를 사용하여 금속 의 용접 • 용단 또는 가열작업을 하는 경우 게이지압력은 얼 마를 초과하는 압력의 아세틸렌을 발생시켜 사용하면 안되 는가?', 2, 159)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eebc45ae-b858-b2df-9bb8-c8420fc47595', '8d795906-71c8-2f7c-d7ec-dd9bb991c080', '98[kPa]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('65e73f89-34c6-1e0f-a286-5a6585f58f33', '8d795906-71c8-2f7c-d7ec-dd9bb991c080', '127[kPa]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('420f2794-1640-1915-4fee-0f081993d6b6', '8d795906-71c8-2f7c-d7ec-dd9bb991c080', '147[kPa]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5077f241-beaa-fa5e-0a03-99392b93ed1e', '8d795906-71c8-2f7c-d7ec-dd9bb991c080', '196[kPa]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8d795906-71c8-2f7c-d7ec-dd9bb991c080', '65e73f89-34c6-1e0f-a286-5a6585f58f33', '② 127[kPa]', '정답 ②. 아세틸렌 용접장치를 사용하여 금속의 용접 • 용단 또는 가열작 업을 하는 경우에는 게이지압력이 127[kPa](1.3[kg/m2])을 초과하는 압 력의 아세틸렌을 발생시켜 사용하여서는 아니 된다. E SI', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('868a9f7d-7ef9-4d7a-902c-842328a9e459', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 및 전단기에서 안전블록을 사용해야 하는 작업으로 가장 거리가 먼 것은?', 2, 160)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95550613-fb46-8979-b51b-ca0fa0b47a4e', '868a9f7d-7ef9-4d7a-902c-842328a9e459', '금형 가공작업', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9db8c0f6-bdfd-46b0-2dff-e22381011998', '868a9f7d-7ef9-4d7a-902c-842328a9e459', '금형 해체작업', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3730e831-0886-a28f-61bb-b03f9a682edb', '868a9f7d-7ef9-4d7a-902c-842328a9e459', '금형 부착작업', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47670f98-6c23-6396-9271-aaeec9f8d296', '868a9f7d-7ef9-4d7a-902c-842328a9e459', '금형 조정작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('868a9f7d-7ef9-4d7a-902c-842328a9e459', '95550613-fb46-8979-b51b-ca0fa0b47a4e', '① 금형 가공작업', '정답 ①. 프레스 등의 금형을 부착 • 해체 또는 조정하는 작업을 할 때에 해당 작업에 종사하는 근로자의 신체가 위험한계 내에 있는 경우 슬라이드 가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위하여 안전블록을 사용하는 등 필요한 조치를 하여야 한다. E H', array['산업안전기사','2020-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
