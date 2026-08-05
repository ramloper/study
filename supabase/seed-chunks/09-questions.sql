-- chunk 9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('42e0e4c7-ccff-5b40-c64f-6f17e209422b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 금형 설치 • 해체작업의 일반적인 안전사항으로 틀린 것은?', 2, 321)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15421a64-6473-5d6b-0b27-71830f82568a', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '고정볼트는 고정 후 가능하면 나사산이 3〜4개 정도 짧', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c680aaf-5f77-c6f2-fa31-bc0ad9ec8703', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형 고정용 브래킷（물림판）을 고정시킬 때 고정용 브', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fb77446-0642-b4d6-2e8d-2821345a419c', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형의 설치용구는 프레스의 구조에 적합한 형태로 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('42e0e4c7-ccff-5b40-c64f-6f17e209422b', '5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8', '③ 금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직', '정답 ③. 금형의 탈착 시 금형을 설치하는 프레스의 T홈 안길이는 설치볼 트 직경의 2배 이상으로 한다. 5厄1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 보일러에 설치하는 압력방 출장치에 대하여 검사 후 봉인에 사용되는 재료로 가장 적 합한 것은?', 2, 322)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de06c6fb-5120-143c-6d9f-3d7762eab2a6', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '납', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fc86eec-68e6-f12c-0d7e-d0b4077ec8f7', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '주석', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4779d421-465d-e95f-3578-ac11504d862a', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '구리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c9f7841-9b38-c709-f0a1-a6f0ed1dbc67', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '알루미늄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4', 'de06c6fb-5120-143c-6d9f-3d7762eab2a6', '① 납', '정답 ①. 압력방출장치는 매년 1회 이상 국가교정기관에서 교정을 받은 압력 계를 이용하여 설정압력에서 압력 방출장치가 적정하게 작동하는지를 검사한 후 납으로 봉인하여 사용하여야 한다. WEI', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33bd7fd4-7a53-325b-6a13-6a393562e0db', '11111111-1111-1111-1111-111111111104', 'mcq', '슬라이드가 내려옴에 따라 손을 쳐내는 막대가 좌우로 왕복 하면서 위험점으로부터 손을 보호하여 주는 프레스의 안전 장치는?', 2, 323)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e13976d-f648-c392-c25b-dd83f9fae620', '33bd7fd4-7a53-325b-6a13-6a393562e0db', '수인식 방호장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2f8c9b8-2b72-14b2-0b7b-71f84b0c8f37', '33bd7fd4-7a53-325b-6a13-6a393562e0db', '양손조작식 방호장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81e9fca8-f993-a7e8-97ce-b78cf83cf0c7', '33bd7fd4-7a53-325b-6a13-6a393562e0db', '손쳐내기식 방호장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49e99b57-211e-7b5c-5144-75ae7a63037c', '33bd7fd4-7a53-325b-6a13-6a393562e0db', '게이트가드식 방호장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33bd7fd4-7a53-325b-6a13-6a393562e0db', '81e9fca8-f993-a7e8-97ce-b78cf83cf0c7', '③ 손쳐내기식 방호장치', '정답 ③. 손쳐내기식(Push Away, Sweep Guard) 방호장치 기계의 작동에 연동시켜 위험상태로 되기 전에 손을 위험 영역에서 밀어내 거나 쳐냄으로써 위험을 배제하는 장치를 말한다. tVBl', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('608e2907-c66f-f8ab-8bdc-6e1461abc31b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 사업주는 근로자가 안전하게 통행할 수 있도록 통로에 얼마 이상의 채광 또는 조명시설 을 하여야 하는가?', 2, 324)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2854d31a-578e-a3a5-a3dd-78fb17b05328', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '50럭스', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf801658-a091-cd3a-324e-e14bb90ea9bb', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '75럭스', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('767dab25-c4bd-ae20-dff6-7c08ddb6efb4', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '90럭스', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ca9ba17-69d0-d969-1a3e-d04eff277bc8', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '100럭스', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('608e2907-c66f-f8ab-8bdc-6e1461abc31b', 'cf801658-a091-cd3a-324e-e14bb90ea9bb', '② 75럭스', '정답 ②. 근로자가 안전하게 통행할 수 있도록 통로에 75[lux] 이상의 채 광 또는 조명시설을 하여야 한다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('36933e1e-ee40-6f68-2e36-73fedb6dabfa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 중 보일러의 방호장치와 가장 거리가 먼 것은?', 2, 325)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fce8c849-46d6-4b79-d0cf-9d14493b0e96', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '언로드밸브', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3dae36a-e4c1-5974-4482-b9b4d75cf4f6', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '압력방출장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59348ae4-9f6e-cf65-27d7-75be56a0de0c', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '압력제한스위치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab147f75-3aee-528d-518e-4b4c32c0ca47', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '고저수위 조절장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('36933e1e-ee40-6f68-2e36-73fedb6dabfa', 'fce8c849-46d6-4b79-d0cf-9d14493b0e96', '① 언로드밸브', '정답 ①. 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치, 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다. WI', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 롤러기 급정지장치의 종류가 아닌 것은?', 2, 326)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7b38b30-366c-f226-0de8-361039a4de8b', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '어깨조작식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb0678fc-af79-af56-9d0a-3383aef169b5', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '손조작식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b57107f4-ad6e-2fc8-160b-cfdabdc1447c', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '복부조작식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c62c68f-67d2-7492-5a70-79b55bf8d210', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '무릎조작식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af', 'b7b38b30-366c-f226-0de8-361039a4de8b', '① 어깨조작식', '정답 ①. 급정지장치 조작부의 종류 손조작식. 복부조작식. 무릎조작식 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4a292d72-aede-629c-babf-1c8e9b14babc', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크용접기의 허용사용률[%]은?（단, 정격사용률은 10[%], 2차 정격전류는 500[A], 교류아크용접기의 사용전 류는 250[A] 이다.）', 2, 327)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a51a0af2-bb4e-654e-8b02-36acb4cde0e6', '4a292d72-aede-629c-babf-1c8e9b14babc', '30', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f015c0d-7f4b-2e3e-623e-810b71dd40f3', '4a292d72-aede-629c-babf-1c8e9b14babc', '40', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f78dd051-183a-36fc-e329-3a203b01fd36', '4a292d72-aede-629c-babf-1c8e9b14babc', '50', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a998c4c-be95-5cb0-02d6-912b568ede11', '4a292d72-aede-629c-babf-1c8e9b14babc', '60', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4a292d72-aede-629c-babf-1c8e9b14babc', '1f015c0d-7f4b-2e3e-623e-810b71dd40f3', '② 40', '정답 ②. 40', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조의 필요충분조건에 대한 사항으로 틀린 것은?', 2, 328)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae5fc19b-257a-5b8d-9880-14eced911599', 'e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '폭발화염이 외부로 유출되지 않을 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d294508-dfaf-16ed-ef2f-3d6efa839201', 'e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '습기침투에 대한 보호를 충분히 할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('771c43d0-8432-6f6c-3515-577caac80f66', 'e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '내부에서 폭발할 경우 그 압력에 견딜 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79e98dad-16a5-2618-4ad5-df253edefa16', 'e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '외함의 표면온도가 외부의 폭발성가스를 점화하지 않', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e9cbd954-8d03-8d6e-e0db-4561ddaafc3c', '3d294508-dfaf-16ed-ef2f-3d6efa839201', '② 습기침투에 대한 보호를 충분히 할 것', '정답 ②. 을것 oi 내압방폭구조의 성능 • 내부에서 폭발할 경우 그 압력에 견딜 것 • 폭발화염이 외부로 유출되지 않을 것 • 외함 표면온도가 주위의 가연성 가스를 점화하지 않을 것 1 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 빈칸에 들어갈 내용으로 알맞은 것은? “교류 특고압 가공전선로에서 발생하는 극저주파 전자계는 지표상 1[m]에서 전계가 ( @ )，자계가 ( ® )가 되도 록 시설하는 등 상시 정전유도 및 전자유도작용에 의하여 사 람에게 위험을 줄 우려가 없도록 시설하여야 한다.”', 2, 329)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdedb298-644c-3cac-3893-2268497d59a5', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '@ 0.35[kV/m] 이하 ® 0.833*] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fb6d597-1f1b-c24e-42a8-89a0ca449ffb', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '® 3.5[kV/m] 이하 ® 8.33[/zT] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb94f73f-2f17-727a-3ea6-118d1bad7740', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '® 3.5[kV/m] 이하 ®83.3[/zT] 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a5f5879-6871-cd61-8580-5922476c2143', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '@ 35[kV/m] 이하 ® 83301 이하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d', 'cb94f73f-2f17-727a-3ea6-118d1bad7740', '③ ® 3.5[kV/m] 이하 ®83.3[/zT] 이하', '정답 ③. 교류 특고압 가공전선로에서 발생하는 극저주파 전자계는 지표 상 l[m]에서 전계가 3.5[kV/m] 이하. 자계가 83.3[XT] 이하가 되도록 시 설하고. 직류 특고압 가공전선로에서 발생하는 직류전계는 지표면에서 25[kV/m] 이하, 직류자계는 지표상 l[m]에서 400,000[/T] 이하가 되도 록 시설하는 등 상시 정전유도 및 전자유도작용에 의하여 사람에게 위험을 줄 우려가 없도록 시설하여야 한다. 1 아1APTER 05 전기설비 위험요인관리', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '11111111-1111-1111-1111-111111111104', 'mcq', '외부피뢰시스템에서 접지극은 지표면에서 몇 [m] 이상 깊 이로 매설하여야 하는가?(단, 동결심도는 고려하지 않는 경 우이다.)', 2, 330)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50eb3450-0722-feed-f14b-973d80df4a4c', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '0.5', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('802a9ffc-35ab-5ee3-6ab2-875a7231faf6', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '0.75', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e495172-72df-6887-f14e-fdfba549db5c', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '1', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('873dcf3c-1d36-1ee0-804b-cbd721ee3ceb', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '1.25', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '802a9ffc-35ab-5ee3-6ab2-875a7231faf6', '② 0.75', '정답 ②. 접지극은 동결 깊이를 고려하여 시설하되. 고압 이상의 전기설비 와 규정에 의하여 시설하는 접지극의 매설깊이는 지표면으로부터 0.75[m] 이상으로 한다. WII8I', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 0.5[kQ]이라고 하면 심실세동을 일으 키는 위험한계에너지는 몇 [J]인가?（단, 심실세동전류값 /=쯔[mA]의 Dalziel의 식을 이용하며, 통전시간은 1초 로 한다.）', 2, 331)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b728f922-7ea3-88bf-f6c4-11a98f24d53c', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '13.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f176f010-6d53-d83d-6828-c49c8e39fdaa', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '12.6', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0077902-b6ad-8cd1-0a78-12ddfbc785a6', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '11.6', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66edc7b6-64fe-c100-53ce-e14f5cdbd6ae', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '10.6', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', 'b728f922-7ea3-88bf-f6c4-11a98f24d53c', '① 13.6', '정답 ①. 13.6', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63ccf0b2-29c1-f862-4598-8ff3229381cd', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 한국전기설비규정에 따른 전압의 구분으로 틀린 것 은?', 2, 332)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4748bcc-ab3f-8658-38e7-859ea7d4141a', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '저압: 직류 l[kV] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ae8816a-a0de-f8e7-9686-259410308cc1', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '고압: 교류 l[kV] 초과 7[kV] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f065ae0-40a5-53da-b934-97f724f15c08', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '특고압: 직류 7[kV] 초과', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02633d29-0863-ac1b-a4d0-c3b7e4595c23', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '특고압: 교류 7[kV] 초과', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63ccf0b2-29c1-f862-4598-8ff3229381cd', 'd4748bcc-ab3f-8658-38e7-859ea7d4141a', '① 저압: 직류 l[kV] 이하', '정답 ①. 저압: 직류 l[kV] 이하', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명이 의미하는 것은? 온도. 압력 등 제어상태가 규정의 조건을 벗어나는 것에 의해 반응속도가 지수함수적으로 증대되고. 반응용기 내의 온도, 압력이 급격히 이상 상승되어 규정 조건을 벗어나고, 반응이 과격화되는 현상', 2, 333)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23b20271-cedb-5f90-7b2a-36fe6b12aba0', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '비등', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5872eec-d76a-8509-2578-d317b4961d07', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '과열. 과압', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36d2faaf-14c2-8ca5-cd59-d53423bc636c', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '폭발', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e052c14-a81d-c3bf-2342-84547b2b6980', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '반응폭주', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '1e052c14-a81d-c3bf-2342-84547b2b6980', '④ 반응폭주', '정답 ④. 반응폭주 온도, 압력 등 제어상태가 규정의 조건을 벗어나는 것에 의해 반응속도가 자수함수적으로 증대되고. 반응용기 내의 온도. 압력이 급격히 이상 상승 되어 규정 조건을 벗어나고. 반응이 과격화되는 현상이다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('974cdd57-7f90-a391-8884-293bf3114da9', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물을 저장 • 취급하는 화학설비 및 그 부속설비를 설치 할 때 ‘단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이’의 안전거리는 설비의 바깥면으로부터 몇 [m] 이상이 되어야 하는가?', 2, 334)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a48552b8-b0ef-ed46-2b4e-e003740752ff', '974cdd57-7f90-a391-8884-293bf3114da9', '5[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be53c559-6886-bea7-7070-c6e1aa154cda', '974cdd57-7f90-a391-8884-293bf3114da9', '10[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf89ee86-6679-4470-2493-dfcd80b1aa06', '974cdd57-7f90-a391-8884-293bf3114da9', '15[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b717867f-78aa-98b5-e70e-c4202ff7cb99', '974cdd57-7f90-a391-8884-293bf3114da9', '20[m]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('974cdd57-7f90-a391-8884-293bf3114da9', 'be53c559-6886-bea7-7070-c6e1aa154cda', '② 10[m]', '정답 ②. 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이 는 설비의 바깥면으로부터 10[m] 이상의 안전거리를 두어야 한다. E묘@1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aad126d2-0d4f-627b-489e-8717863fd442', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 각 물질이 해당하는 위험물질의 종 류를 옳게 연결한 것은?', 2, 335)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4ac9c90-f177-7751-1303-f955aff8cd45', 'aad126d2-0d4f-627b-489e-8717863fd442', '아세트산（농도 90[%]） - 부식성 산류', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c576b0e2-1cf2-2fc2-1211-3e0b03399057', 'aad126d2-0d4f-627b-489e-8717863fd442', '아세톤（농도 9이%]） - 부식성 염기류', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('278b31b3-4bf7-0d66-9c19-d2f2fa269086', 'aad126d2-0d4f-627b-489e-8717863fd442', '이황화탄소 - 인화성 가스', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3be6a5-4a0d-095e-0abf-326442ae15ae', 'aad126d2-0d4f-627b-489e-8717863fd442', '수산화칼륨 - 인화성 가스', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aad126d2-0d4f-627b-489e-8717863fd442', 'a4ac9c90-f177-7751-1303-f955aff8cd45', '① 아세트산（농도 90[%]） - 부식성 산류', '정답 ①. 농도 60[%] 이상인 아세트산은 부식성 산류에 해당한다. 오답해설 아세톤-인화성 액체 이황화탄소-인화성 액체 @ 농도 40[%] 이상인 수산화칼륨-부식성 염기류 WEia', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('58664e89-386c-b7a7-255e-0f2f6c13de1f', '11111111-1111-1111-1111-111111111104', 'mcq', '자연발화성을 가진 물질이 자연발화를 일으키는 원인으로 거리가 먼 것은?', 2, 336)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('186f15fe-7103-e234-bbd9-46ac55f12327', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '분해열', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c26494f6-edf9-c87b-8edd-acf79cb0d513', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '증발열', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efb9fe20-db5b-f2ca-6a9e-fd1a74a86563', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '산화열', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('931bcb7f-2d7d-263a-120a-d484d479fc55', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '중합열', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('58664e89-386c-b7a7-255e-0f2f6c13de1f', 'c26494f6-edf9-c87b-8edd-acf79cb0d513', '② 증발열', '정답 ②. 찌 증발열 • 어떤 물질이 기화할 때 외부로부터 흡수하는 열량이다. • 증발열이 클수록 주변에서 더 많은 열을 빼앗으므로 주위의 온도를 낮추 게 된다. • 증발열은 냉각현상에 응용된다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는「산업안전보건법령」에서 정한 설비에 대해서는 과압에 따른 폭발을 방지하기 위하여 안전밸브 등을 설치하 여야 한다. 다음 중 이에 해당하는 설비가 아닌 것은?', 2, 337)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5432ca4-c551-024f-3859-4d3e2f22129d', '562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', '원심펌프', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2cc55863-9295-02f0-e7d6-347b286a6180', '562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', '정변위 압축기', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be6886d4-0a77-5196-5c51-28ecc9aef617', '562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', '정변위 펌프（토출 측에 차단밸브가 설치된 것만 해당함）', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26d9ff96-8631-4ca9-47d0-08bf390dbb48', '562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', '배관（2개 이상의 밸브에 의하여 차단되어 대기온도에', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('562b2ed3-756b-8dc7-b1e2-2dedb7b8436e', 'd5432ca4-c551-024f-3859-4d3e2f22129d', '① 원심펌프', '정답 ①. 서 액체의 열팽창에 의하여 파열될 우려가 있는 것으로 한정함） ^히 '' 산업안전보건법령」상 원심펌프는 안전밸브의 설치대상이 아니다. E H', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '11111111-1111-1111-1111-111111111104', 'mcq', '옥외에 설치되어 있는 주행크레인에 대하여 이탈방지장치 를 작동시키는 등 그 이탈을 방지하기 위한 조치를 하여야 하는 순간풍속에 대한 기준으로 옳은 것은?', 2, 338)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71d566ec-032a-78e1-ba6e-7b08bb61447a', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 10[m]를 초과하는 바람이 불어올 우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('182de562-c07d-0e1c-3186-7c0a2da2fc77', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 20[m]를 초과하는 바람이 불어올 우', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e59df59d-fe28-1b9f-934d-722717bdae59', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffb76c2b-20f5-afed-b6fa-804ea76ed02b', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 40[m]를 초과하는 바람•이 불어올 우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', 'e59df59d-fe28-1b9f-934d-722717bdae59', '③ 순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우', '정답 ③. 순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('11b59e63-ca8f-7e38-a958-f12fe55a41e0', '11111111-1111-1111-1111-111111111104', 'mcq', '철골 작업 철골부재에서 근로자가 수직방향으로 이동하는 경우에 설치하여야 하는 고정된 승강로의 최소 답단 간격은 얼마 이내인가?', 2, 339)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a85ae54-bb66-719f-67d3-02f42265dd5c', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '20[cm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bfa239b-482d-8d82-46bf-5209c6c3d45e', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '25 [cm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '30[cm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7135baa-a159-84b5-9e5b-912166e0e563', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '40[cm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('11b59e63-ca8f-7e38-a958-f12fe55a41e0', '3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0', '③ 30[cm]', '정답 ③. 근로자가 수직방향으로 이동하는 철골부재에는 답단 간격이 30[cm] 이내인 고정된 승강로를 설치하여야 한다', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '11111111-1111-1111-1111-111111111104', 'mcq', '흙막이벽의 근입 깊이를 깊게 하고, 전면의 굴착부분을 남 겨두어 흙의 중량으로 대항하게 하거나, 굴착예정부분의 일 부를 미리 굴착하여 기초콘크리트를 타설하는 등의 대책과 가장 관계 깊은 것은?', 2, 340)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('390af2d4-f8c7-74c2-0fd3-22475db23b96', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '파이핑현상이 있을 때', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05e7874d-903f-e240-6251-8d030abbf742', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '히빙현상이 있을 때', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83def8a2-9db9-a1fb-b645-f3cde5c9e287', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '지하수위가 높을때', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b576124b-4ab9-7006-6591-3f1da6c5b3e5', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '굴착깊이가 깊을때', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '05e7874d-903f-e240-6251-8d030abbf742', '② 히빙현상이 있을 때', '정답 ②. 하 히빙의 예방대책 • 흙막이벽의 근입 깊이 증가 • 흙막이벽 배면지반의 상재하중 제거 • 저면의 굴착부분을 남겨두어 굴착예정인 부분의 일부를 미리 굴착하여 기초콘크리트 타설 • 굴착주변을 웰 포인트(Well Point) 공법과 병행 • 굴착저면에 토사 등 인공중력 증가 W l', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준（고용노동부 고시）은「산업안전보건법」의 건설공사 중 총 공사금액이 얼 마 이상인 공사에 적용하는가?', 2, 341)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b505b157-c5c6-dcbd-5d5b-546d2dd3e03e', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '4천만 원', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fdbcc1-ce07-d615-9e76-09bb3c8705ac', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '3천만 원', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c24603fe-b5f2-11a2-aa8d-8295d630b365', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '2천만 원', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd09d329-be76-64b5-14c4-9f6d746189c5', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '1천만 원', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', 'c24603fe-b5f2-11a2-aa8d-8295d630b365', '③ 2천만 원', '정답 ③. 2천만 원', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', '11111111-1111-1111-1111-111111111104', 'mcq', '건립 중 강풍에 의한 풍압 등 외압에 대한 내력이 설계에 고 려되었는지 확인해야 하는 철골구조물의 기준으로 옳지 않 은 것은?', 2, 342)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6600e426-5f49-44e8-13aa-5fb738b718bc', '421b0eff-8d9c-5463-e80d-49824ebf6109', '높이 2O[m] 이상의 구조물', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d50a5f-85cf-4cfc-6ebf-db91e4e68ca8', '421b0eff-8d9c-5463-e80d-49824ebf6109', '구조물의 폭과 높이의 비가 1： 4 이상인 구조물', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('caaf472b-c309-5387-8809-d780cb5e5976', '421b0eff-8d9c-5463-e80d-49824ebf6109', '이음부가 공장 제작인 구조물', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3694a3-c753-7055-dcb1-862234f50c47', '421b0eff-8d9c-5463-e80d-49824ebf6109', '연면적당 철골량이 5이kg/m2] 이하인 구조물', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', 'caaf472b-c309-5387-8809-d780cb5e5976', '③ 이음부가 공장 제작인 구조물', '정답 ③. 외압에 대한 내력이 설계에 고려되었는지 확인해야 할 구조물 • 높이 20[m] 이상의 구조물 • 구조물의 폭과 높이의 비가 1 : 4 이상인 구조물 • 단면구조에 현저한 차이가 있는 구조물 • 연면적당 철골량이 50[kg/mz] 이하인 구조물 • 기둥이 타이플레이트（Tie Plate）형인 구조물 • 이음부가 현장용접인 구조물 E S1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '11111111-1111-1111-1111-111111111104', 'mcq', '동바리로 사용하는 파이프서포트는 최대 몇 개 이상 이어서 사용하지 않아야 하는가?', 2, 343)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79e9bca6-65a7-12fa-7cf2-0a5e7301cc73', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '2개', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '3개', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06b81128-b6d9-7e6b-19ea-01badbd0bec8', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '4개', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5571ea39-12c2-698e-b3fb-a9349a0689f1', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '5개', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '② 3개', '정답 ②. 동바리로 사용하는 파이프서포트를 3개 이상 이어서 사용하지 않아야 한다. WI뽀I', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 자율안전확인 고시」상 자율안전확인 보호구에 표 시하여야 하는 사항을 모두 고른 것은? H.모델명 !-. 제조번호 □.사용기한 2. 자율안전확인 번호', 2, 344)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e66ed0ca-137f-bb43-9673-75b6b97cc32a', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—«, 느, 三', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—I, 心, 르', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f2e841a-c852-6ce2-245a-d84a348bd84c', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '거, 三，己', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a39ac18d-60aa-e213-a904-cc1b2b8a4d85', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '1-，三，르', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '② —I, 心, 르', '정답 ②. 자율안전확인 제품표시의 붙임 • 형식 또는 모델명 • 규격 또는 등급 등 • 제조자명 • 제조번호 및 제조연월 • 자율안전확인 번호 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '11111111-1111-1111-1111-111111111104', 'mcq', '학습지도의 형태 중 참가자에게 일정한 역할을 주어 실제적 으로 연기를 시켜봄으로써 자기의 역할을 보다 확실히 인식 시키는 방법은?', 2, 345)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327afac-d325-d033-da56-9c3b23e516c8', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '포럼 (Forum)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d065d864-dfd7-659a-c499-0078df2be35e', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '심 포지 엄 (Symposium)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe623b8-6778-9b75-a5cc-bc15512d2457', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '롤 플레 잉 (Role Playing)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41d6dedc-69eb-3f5d-8f7c-142fd2481059', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '사례연구법 (Case study method)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '7fe623b8-6778-9b75-a5cc-bc15512d2457', '③ 롤 플레 잉 (Role Playing)', '정답 ③. 롤 플레잉(R이e Playing) 참가자에게 일정한 역할을 주어 실제적으로 연기를 시켜봄으로써 자기의 역할을 보다 확실히 인식시키는 것이다. E◎面', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('00d0ea1f-73de-5072-a32a-039996ad68f0', '11111111-1111-1111-1111-111111111104', 'mcq', '산업재해의 분석 및 평가를 위하여 재해발생건수 등의 추이 에 대해 한계선을 설정하여 목표 관리를 수행하는 재해통계 분석기법은?', 2, 346)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9dd7f5fb-4d0c-93cd-9d0b-82538efd1544', '00d0ea1f-73de-5072-a32a-039996ad68f0', '관리도', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15524035-accc-41f3-3993-a270d952089b', '00d0ea1f-73de-5072-a32a-039996ad68f0', '안전 T점수', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c5b5da9-be25-6b3d-0095-fb6668d0c27e', '00d0ea1f-73de-5072-a32a-039996ad68f0', '파레토도', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5821a0c0-a372-d2c3-61ca-e3f0a8022c1b', '00d0ea1f-73de-5072-a32a-039996ad68f0', '특성요인도', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('00d0ea1f-73de-5072-a32a-039996ad68f0', '9dd7f5fb-4d0c-93cd-9d0b-82538efd1544', '① 관리도', '정답 ①. 재해의 통계적 원인분석 방법 파레토도 분류항목을 큰 순서대로 도표화한 분석법 특성요인도 특성과 요인관계를 도표로 하여 어골상으로 세분화한 분석법 클로즈분석도 요인별 결과 내역을 교차한 클로즈 그림을 작성. 분석하는 방법 관리도 재해발생수를 그래프화하여 관리선을 설정. 관리하는 방법 E j|', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 사고예방원리 5단계 중 교육 및 훈련의 개선, 인사조정, 안전관리규정 및 수칙의 개선 등을 행하는 단계 는?', 2, 347)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e26d117a-d478-8059-3a25-5c5aeaff090e', 'bdfca633-9649-93b9-369d-7603b04307bb', '사실의발견', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5de1a1e-41d1-0d0f-b93d-b35c2ddf61ca', 'bdfca633-9649-93b9-369d-7603b04307bb', '분석평가', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9289eb66-7e4b-3057-448d-323d3d40c30b', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정방법의 선정', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c62e92ef-22e0-ab16-d0e5-36aeb74c71fa', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정책의 적용', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '9289eb66-7e4b-3057-448d-323d3d40c30b', '③ 시정방법의 선정', '정답 ③. 하인리히의 사고예방원리 중 4단계 시정책의 선정에서 기술의 개선. 인사조정. 교육 및 훈련 개선. 안전규정 및 수칙의 개선. 이행의 감독 과 제재 강화를 행한다. 하인리히의 사고예방대책의 기본원리 5단계 O 1단계: 조직（안전관리조직） © 2단계 : 사실의 발견（현상파악） ©3단계: 분석 • 평가｛원인규명） ©4단계: 시정책의 선정 @5단계: 시정책의 적용 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건진단을 받아 안전보건개선 계획의 수립 및 명령을 할 수 있는 대상이 아닌 것은?', 2, 348)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d407181-3a34-bd6c-8f64-d2929c5d425a', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '유해인자의 노출기준을 초과한 사업장', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ea4ee1b-b993-e6ec-7417-4f84d36bf302', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '산업재해율이 같은 업종 평균 산업재해율의 2배 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('494bda38-15d5-df48-2bd1-c9f16cfb59b8', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '사업주가 필요한 안전조치 또는 보건조치를 이행하지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c5d4766-b956-014c-69e7-b708dff78e00', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '상시근로자 1천명 이상인 사업장에서 직업성 질병자가', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '9c5d4766-b956-014c-69e7-b708dff78e00', '④ 상시근로자 1천명 이상인 사업장에서 직업성 질병자가', '정답 ④. 연간 2명 이상 발생한 사업장 a 안전보건진단을 받아 안전보건개선계획을 수립할 대상 사업장 • 산업재해율이 같은 업종 평균 산업재해율의 2배 이상인 사업장 • 사업주가 필요한 안전조치 또는 보건조치를 이행하지 아니하여 중대재 해가 발생한 사업장 • 직업성 질병자가 연간 2명 이상（상시근로자 1천명 이상 사업장의 경우 3명 이상） 발생한 사업장 • 그 밖에 작업환경 불량. 화재 • 폭발 또는 누출 사고 등으로 사업장 주변까 지 피해가 확산된 사업장으로서 고용노동부령으로 정하는 사업장 WWI', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 거푸집 및 동바리의 조립 또는 해체 작업 시 특별교육 내용이 아닌 것은?（단, 그 밖에 안전 ■ 보 건관리에 필요한 사항은 제외한다.）', 2, 349)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9af634d1-0c56-1a90-2dd1-b810af298639', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '비계의 조립순서 및 방법에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3737a0fa-9e72-6294-30b9-d2b79349788e', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립 • 해체 시의 사고 예방에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81fc026-a308-83f3-9131-2de2477d56f3', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '동바리의 조립방법 및 작업 절차에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad0d7334-9779-2919-54a1-5d1dac5ff171', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립재료의 취급방법 및 설치기준에 관한 사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '9af634d1-0c56-1a90-2dd1-b810af298639', '① 비계의 조립순서 및 방법에 관한 사항', '정답 ①. 비계의 조립순서 및 방법에 관한 사항은 비계의 조립 • 해체 또는 변경작업 시 특별교육 내용이다. 거푸집 및 동바리의 조립 또는 해체작업 시 특별교육 내용 • 동바리의 조립방법 및 작업 절차에 관한 사항 • 조립재료의 취급방법 및 설치기준에 관한 사항 • 조립 • 해체 시의 사고 예방에 관한 사항 • 보호구 착용 및 점검에 관한 사항 • 그 밖에 안전 • 보건관리에 필요한 사항 E E1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b886d032-a9b7-f94f-f1a6-7d228fed7111', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음의 안전보건표지 중 기본모형이 다른 것은?', 2, 350)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51c1de59-c818-bd09-c6ff-f23f9354b20b', 'b886d032-a9b7-f94f-f1a6-7d228fed7111', '위험장소경고', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d52641c-482a-4aa7-0558-b8a0367519d0', 'b886d032-a9b7-f94f-f1a6-7d228fed7111', '레이저광선경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2aa499e-ce72-30bf-80e8-14c40f0b9676', 'b886d032-a9b7-f94f-f1a6-7d228fed7111', '방사성물질경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08400977-4bc5-c051-bde9-f3a85f871137', 'b886d032-a9b7-f94f-f1a6-7d228fed7111', '부식성물질경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b886d032-a9b7-f94f-f1a6-7d228fed7111', '08400977-4bc5-c051-bde9-f3a85f871137', '④ 부식성물질경고', '정답 ④. 위험장소경고 레이저광선경고 방사성물질경고 부식성물질경고 令 A A A', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '11111111-1111-1111-1111-111111111104', 'mcq', '근골격계질환 작업분석 및 평가 방법인 OWAS의 평가요소 를 모두 고른 것은? —1. 상지 >-. 무게（하중） 仁. 하지 己. 허리', 2, 351)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08dd7262-37d5-eec4-f27c-fd18582c853f', '6956581a-8209-3881-395b-d0a4ca5a784a', '己 亡', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1943bd14-057e-b6a8-b99e-1af703cf7728', '6956581a-8209-3881-395b-d0a4ca5a784a', '1, c, e', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e52a16ab-f766-184f-ff12-cae1070ab5b7', '6956581a-8209-3881-395b-d0a4ca5a784a', '亡, C, S', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '6956581a-8209-3881-395b-d0a4ca5a784a', '그, 亡, c, 5', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '④ 그, 亡, c, 5', '정답 ④. 그, 亡, c, 5', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', '11111111-1111-1111-1111-111111111104', 'mcq', 'n개의 요소를 가진 병렬시스템에 있어 요소의 수명（MTTF） 이 지수분포를 따를 경우, 이 시스템의 수명으로 옳은 것은?', 2, 352)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab50c17e-60f3-13d5-5cd7-de5bd1592b3d', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFxn', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ad43920-a6fa-dbd9-2c17-f4f56fed6412', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFx&', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c154782b-ef51-e8e9-932b-61d93cb2c7da', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l+；+•••+£）', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a73515a-effd-7291-e3ef-f3c67b999098', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l>〈$x …〈느）', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'c154782b-ef51-e8e9-932b-61d93cb2c7da', '③ MTTF（l+；+•••+£）', '정답 ③. 평균동작시간0417:이 지수분포를 따를 경우(병렬계)', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 와이어로프의 구성요소가 아닌 것은?', 2, 353)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03a7544e-331a-aa99-e5e6-2aab5353b593', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '클립', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84c1bce0-dae0-3903-2f36-00c1cd0cb16a', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '소선', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('342e35c9-1fca-4e0f-ce19-820130e3c6d9', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '스트랜드', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f90f48f9-fdd6-551d-eba7-03aa5ead9e01', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '심강', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '03a7544e-331a-aa99-e5e6-2aab5353b593', '① 클립', '정답 ①. 클립은 와이어로프를 고정하는 기구이다. 와이어로프 구성요소 AM, 스트랜드(5(ㅠ370), 심강(2076). 심선', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업용 로봇에 의한 작업 시 안전조 치 사항으로 적절하지 않은 것은?', 2, 354)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cc444e-a485-b990-8cfd-05e9665beecd', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 운전으로 인해 근로자가 로봇에 부딪칠 위험이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6415b6a-e1f7-fb98-cd94-c4f0ab657195', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업을 하고 있는 동안 로봇의 기동스위치 등은 작업에', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bc3bfee-baa7-bc9d-cbd5-1248d4e8ed73', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 조작방법 및 순서, 작업 중의 매니퓰레이터의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업에 종사하는 근로자가 이상을 발견하면 관리감독', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '④ 작업에 종사하는 근로자가 이상을 발견하면 관리감독', '정답 ④. 자에게 우선 보고하고, 지시가 나올 때까지 작업을 진 행한다. 3 산업용 로봇의 작업 시 작업에 종사하고 있는 근로자 또는 그 근 로자를 감시하는 사람은 이상을 발견하면 즉시 로봇의 운전을 정지시키기 위한 조치를 하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 355)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f810a588-a561-10fd-2790-9d56afd2a253', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3eb25c98-391c-e084-811a-3a98933d9443', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3152f79e-1ceb-5433-dd10-0840b58d2eb4', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d69fd104-fc48-0997-3727-58ff7cf9c4a9', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '상. 하, 좌. 우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '3152f79e-1ceb-5433-dd10-0840b58d2eb4', '③ 강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', '정답 ③. 밀링작업 시 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. t', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러의 안전한 가동을 위하여 보 일러 규격에 맞는 압력방출장치가 2개 이상 설치된 경우에 최고사용압력 이하에서 1개가 작동되고, 다른 압력방출장 치는 최고 사용압력의 몇 배 이하에서 작동되도록 부착하여 야하는가?', 2, 356)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbb81c2d-0a5e-3093-22f4-1d60fd46ada9', 'c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', '1.03 배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef7ab3fc-3701-7618-996d-fced0c954f30', 'c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', '1.05 배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38b7ffb5-780a-6bee-2ee4-6bb593572a11', 'c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', '1.2 배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec65f2c5-bec9-aa82-a0dd-369c17024b73', 'c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', '1.5 배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7eaf79b-b5c8-2c7e-5d05-8580cd2f1ca2', 'ef7ab3fc-3701-7618-996d-fced0c954f30', '② 1.05 배', '정답 ②. 여야 한다. 다만, 압력방출장치가 2개 이상 설치된 경우에는 최고사용압력 이하에서 1개가 작동되고, 다른 압력방출장치는 최고사용압력 1.05배 이 하에서 작동되도록 부착하여야 한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('87786c43-2090-0115-57eb-1780f36333bb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 안전인증대상 방호장치에 해당하지 않는 것은?', 2, 357)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4a82454-ab1c-21e8-47eb-08dcee658818', '87786c43-2090-0115-57eb-1780f36333bb', '연삭기 덮개', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f8c6c54-de27-9aa7-2b69-fcb11cfd8496', '87786c43-2090-0115-57eb-1780f36333bb', '압력용기 압력방출용 파열판', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f7506f8-4ed2-53cb-8a2c-96302299ee86', '87786c43-2090-0115-57eb-1780f36333bb', '압력용기 압력방출용 안전밸브', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37b189ae-0792-cdff-128e-424c80df02f1', '87786c43-2090-0115-57eb-1780f36333bb', '방폭구조(防爆構造) 전기기계 •기구 및 부품', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('87786c43-2090-0115-57eb-1780f36333bb', 'a4a82454-ab1c-21e8-47eb-08dcee658818', '① 연삭기 덮개', '정답 ①. 연삭기 덮개는 안전인증대상이 아닌 자율안전확인대상 방호장치 이다. E 81', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 강렬한 소음작업에서 데시벨에 따른 노출시간으로 적합하지 않은 것은?', 2, 358)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('433afdbe-cb17-d647-7791-9fafb3e544ad', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'l(X)[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4d24837-3ab6-35c1-da0d-e13abbedb692', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9613af9d-a85c-7059-dc98-5882fa0a0d10', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc80dca8-3a6b-017a-9a85-0253c17ef21f', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'dc80dca8-3a6b-017a-9a85-0253c17ef21f', '④ 120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', '정답 ④. 강렬한소음작업 • 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업 • 95[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업 • 100[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업 • 105[dB] 이상의 소음이 1일 1시간 이상 발생하는 작업 • 110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업 • 115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업 @1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0b6531dd-56e3-001d-6d34-f8436bfd97ed', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 연삭기 작업 시 작업자가 안심하고 작업을 할 수 있는 상태는?', 2, 359)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed817d55-8a42-c108-fa7d-217ace4dc753', '0b6531dd-56e3-001d-6d34-f8436bfd97ed', '탁상용 연삭기에서 숫돌과 작업 받침대의 간격이 5[mm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9973338a-3e31-3588-df69-4a61939cf6b7', '0b6531dd-56e3-001d-6d34-f8436bfd97ed', '덮개 재료의 인장강도는 224[MPa]이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13fab4ef-9e34-8eed-6d00-f3f63cdb9fbd', '0b6531dd-56e3-001d-6d34-f8436bfd97ed', '숫돌 교체 후 2분 정도 시험운전을 실시하여 해당 기계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eefdb54a-6152-1ef3-55d2-3d1646beffa8', '0b6531dd-56e3-001d-6d34-f8436bfd97ed', '작업 시작 전 1분 정도 시험운전을 실시하여 해당 기계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0b6531dd-56e3-001d-6d34-f8436bfd97ed', 'eefdb54a-6152-1ef3-55d2-3d1646beffa8', '④ 작업 시작 전 1분 정도 시험운전을 실시하여 해당 기계', '정답 ④. 의 이상 여부를 확인하였다. E3 연삭숫돌을 사용하는 작업의 경우 작업을 시작하기 전에는 1분 이상. 연삭숫돌을 교체한 후에는 3분 이상 시험운전을 하고 해당 기계에 이상이 있는지를 확인하여야 한다. E jl', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스기를 사용하여 작업을 할 때 작업시작 전 점검사항으로 틀린 것은?', 2, 360)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0334250e-f4b1-23a9-6d53-71bdbed9f252', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '클러치 및 브레이크의 기능', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ef1c757-33e4-699f-e7de-d5d61f43bd59', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '압력방출장치의 기능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a002429d-6f7b-b157-6eca-46f6e06b70b0', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '크랭크축 • 플라이휠 • 슬라이드 • 연결봉 및 연결나사의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf32436f-a876-0511-8161-edebb132bfd6', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '프레스의 금형 및 고정볼트의 상태', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '7ef1c757-33e4-699f-e7de-d5d61f43bd59', '② 압력방출장치의 기능', '정답 ②. 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 프레스 등의 작업시작 전 점검사항 •클러치 및 브레이크의 기능 • 크랭크축 • 플라이휠 • 슬라이드 • 연결봉 및 연결 나사의 풀림 여부 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정 볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
