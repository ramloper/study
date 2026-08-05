-- chunk 10/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2021-2 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 공정안전보고서에 포함해야 할 세부내용 중 공정안전자료에 해당하지 않는 것은?', 2, 361)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('812c7bac-71e8-2c94-7b24-0a1f0c635bb3', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '안전운전지침서', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f094eb1-bfed-4a8c-a4d0-31d9fc7fb68e', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '각종건물 •설비의 배치도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9c6022e-605c-fb9e-4657-e689d9b6b17c', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '유해하거나 위험한 설비의 목록 및 사양', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9f75f3b-d3dd-fa58-7853-0c9947537c38', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '위험설비의 안전설계 - 제작 및 설치관련 지침서', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '812c7bac-71e8-2c94-7b24-0a1f0c635bb3', '① 안전운전지침서', '정답 ①. K3 안전운전지침서는 안전운전계획에 포함하여야 할 세부내용이다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비 사이의 안전거리는 설비의 바깥면부 터 얼마 이상이 되어야 하는가?', 2, 362)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6031f72-f327-cac6-08f3-96d6d652c319', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '5[m]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '10[m]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('533ba44b-af15-2283-c9d4-ae7ef24a6ce1', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '15[m]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e192d43-2198-1869-5b74-0bb67aa06724', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '20fm]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '② 10[m]', '정답 ②. na 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이 는 설비의 바깥면으로부터 10[m] 이상의 안전거리를 두어야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '11111111-1111-1111-1111-111111111104', 'mcq', '불연성이지만 다른 물질의 연소를 돕는 산화성 액체 물질에 해당하는 것은?', 2, 363)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d4f6dc4-7e12-27d4-8372-177aec1c702c', '90073b77-7122-dadd-4e4e-b1f981d75deb', '하이드라진', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93547554-03f2-75ca-6d7d-70692117df33', '90073b77-7122-dadd-4e4e-b1f981d75deb', '과염소산', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b1bf29-6f37-0cdc-45e1-fdc4c5717149', '90073b77-7122-dadd-4e4e-b1f981d75deb', '벤젠', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5404b53-7278-e940-0cd4-8dacb8513690', '90073b77-7122-dadd-4e4e-b1f981d75deb', '암모니아', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '93547554-03f2-75ca-6d7d-70692117df33', '② 과염소산', '정답 ②. KOI 과염소산은 산화성 액체로 자신은 불연성이지만 산화성이 커서 다른 물질의 연소를 돕는다. 오답해설 하이드라진. 벤젠: 인화성 액체 암모니아: 인화성 가스 E 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬. 칼륨, 나트륨. 황. 황린, 황화인. 적린', 2, 364)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac37ff72-0a28-586a-deaf-b6ea7584f596', '682e4864-eb43-84b9-74c7-1457a812014c', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3efcf50f-0b92-44ea-f37c-42fec1fe0727', '682e4864-eb43-84b9-74c7-1457a812014c', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073355e6-0e05-6007-7917-4e2387a9aae2', '682e4864-eb43-84b9-74c7-1457a812014c', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b3f3553-bbc6-d5f6-187f-56af7fc51b0b', '682e4864-eb43-84b9-74c7-1457a812014c', '급성 독성 물질', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '073355e6-0e05-6007-7917-4e2387a9aae2', '③ 물반응성 물질 및 인화성 고체', '정답 ③. KOI 보기의 물질은 물반응성 물질 및 인화성 고체에 해당한다. WlilM', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '11111111-1111-1111-1111-111111111104', 'mcq', '제1종 분말소화약제의 주성분에 해당하는 것은?', 2, 365)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69763a4e-5ded-2b93-32c8-b3310323c5ee', '03cede15-f4c4-40ec-7772-cab895d6cf20', '사염화탄소', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1096d646-bb8e-976c-7051-1ccdc9e1e131', '03cede15-f4c4-40ec-7772-cab895d6cf20', '브롬화메탄', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('272a8f3a-c213-4fa9-2598-9a0daeb14543', '03cede15-f4c4-40ec-7772-cab895d6cf20', '수산화암모늄', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '03cede15-f4c4-40ec-7772-cab895d6cf20', '탄산수소나트륨', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '④ 탄산수소나트륨', '정답 ④. a 분말소화약제의 분류 • 제1종소화약제: 탄산수소나트륨(NaHCO3) • 제2종소화약제: 탄산수소칼륨(KHCCh) • 제3종 소화약제: 제1인산암모늄(NH..H2P04) • 제4종 소화약제: 탄산수소칼륨+요소(KHCO3+(NH2)2CO)', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사도급인은 건설공사 중에 가설구조물의 붕괴 등 산 업재해가 발생할 위험이 있다고 판단되면 건축 - 토목 분야 의 전문가의 의견을 들어 건설공사 발주자에게 해당 건설공 사의 설계변경을 요청할 수 있는데, 이러한 가설구조물의 기준으로 옳지 않은 것은?', 2, 366)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '882a9cf5-418c-5e18-4c18-67e35843be90', '높이 20[m] 이상인 비계', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('434acb1d-8135-f18b-59ae-87184873d8a4', '882a9cf5-418c-5e18-4c18-67e35843be90', '작업발판 일체형 거푸집 또는 높이 5[m] 이상인 거푸', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7f5a0d-9f7b-1297-2947-337664491be9', '882a9cf5-418c-5e18-4c18-67e35843be90', '터널의 지보공 또는 높이 2[m] 이상인 흙막이 지보공', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d153137-55f0-c1eb-d045-faf20723335a', '882a9cf5-418c-5e18-4c18-67e35843be90', '동력을 이용하여 움직이는 가설구조물', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '① 높이 20[m] 이상인 비계', '정답 ①. K9 설계변경 요청 대상 가설구조물에는 높이 31[m] 이상인 비계가 해당된다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #103
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '11111111-1111-1111-1111-111111111104', 'mcq', '콘크리트 타설 시 안전수칙으로 옳지 않은 것은?', 2, 367)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df0452ca-efa7-be63-82a3-0ccf9aa0d529', '48946813-c13f-98e6-6992-65deaf49932b', '타설순서는 계획에 의하여 실시하여야 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9e1a1c-7f79-8391-6ec3-feef8131a495', '48946813-c13f-98e6-6992-65deaf49932b', '진동기는 최대한 많이 사용하여야 한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec73d395-d54e-3b18-a5d2-9798efccecb0', '48946813-c13f-98e6-6992-65deaf49932b', '콘크리트를 치는 도중에는 거푸집, 지보공 등의 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9825fd8a-e376-df4e-1e24-8811e1fa29a2', '48946813-c13f-98e6-6992-65deaf49932b', '손수레로 콘크리트를 운반할 때에는 손수레를 타설하', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '1c9e1a1c-7f79-8391-6ec3-feef8131a495', '② 진동기는 최대한 많이 사용하여야 한다.', '정답 ②. 는 위치까지 천천히 운반하여 거푸집에 충격을 주지 아 니하도록 타설하여야 한다. KOI 진동기는 적절히 사용되어야 하며. 지나친 진동은 거푸집 붕괴의 원인이 될 수 있으므로 주의하여야 한다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 건설공사 중 다리 건설공사의 경우 유해위험방지계획서를 제출하여야 하는 기준으로 옳 은 것은?', 2, 368)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('983a83d5-bed8-858e-5b33-94a004a4a8d1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 40[m] 이상인 다리의 건설등 공사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8925e944-c2ad-c1b8-8df8-557508591fcf', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 50[m] 이상인 다리의 건설등 공사', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa06d513-86db-470d-289f-01bf4b822308', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 60[m] 이상인 다리의 건설등 공사', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8af2c81-f58d-9307-21ca-4646213036f1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 7O[m] 이상인 다리의 건설등 공사', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '8925e944-c2ad-c1b8-8df8-557508591fcf', '② 최대 지간길이가 50[m] 이상인 다리의 건설등 공사', '정답 ②. a 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물. 연면적 30,0001m2] 이상인 건축물 또는 연면적 5.000[m1 이상의 문화 및 집회시설(전시장 및 동물원 • 식물원 제외). 판매시설. 운수시설(고속철도의 역사 및 집배 송시설 제외). 종교시설. 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체(건설 등) 공사 • 연면적 5.0001m2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐. 발전용댐. 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 ◎W1 아1APTER 02 건설공사 위험성', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 준수하여야 할 사항 으로 옳지 않은 것은?', 2, 369)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('523d723f-c9f7-dce3-2419-9365c5858d55', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '비계기둥의 밑둥에는 밑받침철물을 사용할 것', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1173e542-7f8c-c2db-34bb-47442869510e', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40122837-07e1-8f3e-5402-ac618acd9995', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '길이가 띠장 방향으로 4[m] 이하이고 높이가 1이m]를', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', 'e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '③ 주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', '정답 ③. 초과하는 경우에는 1이m] 이내마다 띠장 방향으로 버 팀기둥을 설치할 것 KOI 강관틀비계를 조립하여 사용하는 경우 주틀 간에 교차 가새를 설 치하고 최상층 및 5층 이내마다 수평재를 설치하여야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 양중기의 종류에 해당하지 않 는것은?', 2, 370)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed974c1-70a6-b25e-c025-466e6626b38c', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '고소작업차', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('674f5072-ef75-e957-86cc-613ed25120b3', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '이동식 크레인', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1e84eb4-3a9f-04a0-e5ab-314aa74929ab', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '승강기', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df292d10-9827-75d7-502b-eff00b12cbbe', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '리프트(Lift)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '2ed974c1-70a6-b25e-c025-466e6626b38c', '① 고소작업차', '정답 ①. 양중기의 종류 • 크레인(호이스트(Hoist) 포함) • 이동식 크레인 • 리프트(이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로한정) •곤돌라 •승강기 旦 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '11111111-1111-1111-1111-111111111104', 'mcq', '터널공사의 전기발파작업에 관한 설명으로 옳지 않은 것 은?', 2, 371)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b0fac8f-a300-c745-96b1-8af805df8874', 'd109d14c-531c-2365-60b1-8c3f16868e35', '전선은 점화하기 전에 화약류를 충진한 장소로부터', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb2e5dc9-3f0d-208a-4592-d0fea15e84a4', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 충분한 허용량을 갖는 발파기를 사용하고 규정', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('033ed884-59a7-d3e4-aab1-94cc98be9aef', 'd109d14c-531c-2365-60b1-8c3f16868e35', '발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96f19aed-ee3a-ff18-0803-b317fa7f5c26', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 선임된 발파책임자가 행하고 발파기의 핸들을', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '033ed884-59a7-d3e4-aab1-94cc98be9aef', '③ 발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', '정답 ③. 점화할 때 이외는 시건장치를 하거나 모선을 분리하여 야 하며 발파책임자의 엄중한 관리하에 두어야 한다. K 쯔 발파 후 즉시 발파모선을 발파기에서 분리하여 단락시키는 등 재 기폭되지 않도록 조치하여야 한다. « ‘ 터널공사 표준안전 작업지침-NATMj이 개정됨에 따라 ‘전기발파 작업 시 준수사항’이 삭제되었습니다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4단계의 진행 순서를 바르게 나열한 것은?', 2, 372)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee998e12-99e3-444b-9528-46f5b586c6fc', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 一 현상파악 - 대책수립 一 본질추구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('492f9e0c-4be6-cf5c-04be-64cd79b67915', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 _ 현상파악 一 본질추구 一 대책수립', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 대책수립 一 목표설정', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0421cc7-b801-f7ac-62ee-22df622895fd', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 목표설정 - 대책수립', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', 'a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '③ 현상파악 一 본질추구 一 대책수립 一 목표설정', '정답 ③. K페i 위험예지훈련의 추진을 위한 문제해결 4단계 @ 1라운드: 현상파악（사실의 파악）-어떤 위험이 잠재하고 있는가? © 2라운드: 본질추구（원인조사）-이것이 위험의 포인트이다. © 3라운드: 대책수립（대책을 세운다）-당신이라면 어떻게 하겠는가? @ 4라운드: 목표설정（행동계획 작성）-우리들은 이렇게 하재 旦品 1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '11111111-1111-1111-1111-111111111104', 'mcq', '상황성 누발자의 재해유발원인이 아닌 것은?', 2, 373)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ed3128e-bfc5-2b7e-779b-c118ccc8440e', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '심신의근심', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f5f3923-8233-22fe-7bd0-81735acdac85', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '작업의어려움', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ba6f8-7c59-f488-1593-10e53cde4545', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '도덕성의결여', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca03f279-2212-1b4e-9df6-a27ea2599402', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '기계설비의결함', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '4a0ba6f8-7c59-f488-1593-10e53cde4545', '③ 도덕성의결여', '정답 ③. 상황성 누발자 작업이 어렵거나, 기계설비의 결함. 환경상 주의력의 집중이 혼란된 경우. 심신의 근심으로 사고경향자가 되는 경우이 다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업장에서 산업재해 발생 시 사업 주가 기록 • 보존하여야 하는 사항을 모두 고른 것은?（단, 산업재해조사표와 요양신청서의 사본은 보존하지 않았다. ） @ 사업장의 개요 및 근로자의 인적사항 © 재해발생의 일시 및 장소 © 재해발생의 원인 및 과정 @ 재해 재발방지 계획', 2, 374)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74b0299e-1874-cc8d-442a-0b2260e408cb', '22c0b839-5ff8-41ff-e068-0871076e8349', '@, @', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930a4b2c-7d35-41c3-767d-c64bae6f4345', '22c0b839-5ff8-41ff-e068-0871076e8349', '©, ©, @', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('842cfac1-5d10-ca08-67d2-97eaff9c0e75', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('734d82b3-5d40-40b4-6220-9c74fe4496ff', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©, ®', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '734d82b3-5d40-40b4-6220-9c74fe4496ff', '④ (3, ©, ©, ®', '정답 ④. 산업재해 기록 사업주는 산업재해가 발생한 때에는 다음 사항을 기록 • 보존하여야 한다. 다만. 산업재해조사표 사본을 보존하거나 요양신청서의 사본에 재해 재발 방지 계획을 첨부하여 보존한 경우에는 그러하지 아니하다. • 사업장의 개요 및 근로자의 인적사항 • 재해발생의 일시 및 장소 • 재해발생의 원인 및과정 • 재해 재발방지 계획 WW SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '11111111-1111-1111-1111-111111111104', 'mcq', '안전점검표（체크리스트） 항목 작성 시 유의사항으로 틀린 것은?', 2, 375)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c2b8594-106c-64f8-bd33-4cfe693f752b', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '정기적으로 검토하여 설비나 작업방법이 타당성 있게', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b0eaf76-d333-83ec-baf5-1b4f974e83e9', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '사업장에 적합한 독자적 내용을 가지고 작성할 것', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb4142b5-7142-41a1-29c9-510157433703', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0d7900-73c7-7184-0999-d1a272d08235', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '점검항목을 이해하기 쉽게 구체적으로 표현할 것', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', 'fb4142b5-7142-41a1-29c9-510157433703', '③ 위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', '정답 ③. 안전점검표（체크리스트） 작성 시 유의사항 • 위험성이 높은 순이나 긴급을 요하는 순으로 작성할 것 • 정기적으로 검토하여 설비나 작업방법이 타당성 있게 개조된 내용일 것 • 점검항목을 이해하기 쉽게 구체적으로 표현할 것 • 사업장에 적합한 독자적 내용을 가지고 작성할 것 E SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육에 있어서 동기부여방법으로 가장 거리가 먼 것 은?', 2, 376)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6db7ce54-7df3-596a-c400-ea614e0da9e3', '6ffdac53-54a3-a691-82e3-1b57943deed9', '책임감을 느끼게 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '6ffdac53-54a3-a691-82e3-1b57943deed9', '관리감독을 철저히 한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22d47331-4120-3f47-5c96-0095bbbc0b85', '6ffdac53-54a3-a691-82e3-1b57943deed9', '자기 보존본능을 자극한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f6877a2-b0df-a7b5-5d66-ea935855a393', '6ffdac53-54a3-a691-82e3-1b57943deed9', '물질적 이해관계에 관심을 두도록 한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '② 관리감독을 철저히 한다.', '정답 ②. MW 안전교육 시 동기유발의 최적수준을 유지하여야 하나 철저한 관 리감독은 오히려 동기유발을 저하시킨다. 旧', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', '11111111-1111-1111-1111-111111111104', 'mcq', '일반적으로 인체측정치의 최대 집단치를 기준으로 설계하는 것은?', 2, 377)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b453459a-1d6a-3582-90b7-daf85018aa63', '0897c1a6-5d62-a382-f0a6-655c381c192e', '선반의 높이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27d1af94-99f1-2ca4-5d9b-2c6db09f79e6', '0897c1a6-5d62-a382-f0a6-655c381c192e', '공구의 크기', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb801195-de16-d370-4d30-bea2b6c08f32', '0897c1a6-5d62-a382-f0a6-655c381c192e', '출입문의 크기', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe44fcf2-0778-4580-4aaf-d7e719f6f381', '0897c1a6-5d62-a382-f0a6-655c381c192e', '안내 데스크의 높이', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', 'fb801195-de16-d370-4d30-bea2b6c08f32', '③ 출입문의 크기', '정답 ③. a 극단치 설계 특정한 설비를 설계할 때 거의 모든 사람을 수용할 수 있도록 설계한다. • 촤소치 설계: 하위 백분위 수 기준 1. 5. 10[%tile] ® 선반의 높이. 조종장치까지의 거리 등 • 최대치 설계: 상위 백분위 수 기준 90. 95. 99[多tile] ® 문. 통로. 탈출구 등 E류리gl', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차에서 통상적으로 갖추고 있어 야 하나, 마스트의 후방에서 화물이 낙하함으로써 근로자에 게 위험을 미칠 우려가 없는 때에는 반드시 갖추지 않아도 되는 것은?', 2, 378)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76bc6874-32bf-5abf-754a-865753147fd1', '66c5d13a-81b6-6885-9770-3f44af91db11', '전조등', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78a83d45-0e48-6e90-4988-6e78b3723585', '66c5d13a-81b6-6885-9770-3f44af91db11', '헤드가드', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ab2726-682c-8389-ef4b-0157fbd6daf1', '66c5d13a-81b6-6885-9770-3f44af91db11', '백레스트', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84042037-476b-5d88-918f-a14a89cf242e', '66c5d13a-81b6-6885-9770-3f44af91db11', '포크', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '19ab2726-682c-8389-ef4b-0157fbd6daf1', '③ 백레스트', '정답 ③. MW 백레^^(Backrest) • 지게차의 포크에 적재된 화물이 마스트 후방으로 낙하함으로써 근로자 에게 미치는 위험을 방지하는 장치이다. • 백레스트(Backrest)를 갖추지 아니한 지게차를 사용해서는 아니 된다. 다만, 마스트의 후방에서 화물이 낙하함으로써 근로자가 위험해질 우려 가 없는 경우에는 그러하지 아니하다. tWiHI', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #63
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', '11111111-1111-1111-1111-111111111104', 'mcq', ',300/220[V], 2O[kVA]인 3상 변압기로부터 공급받고 있 는 저압 전선로의 절연 부분의 전선과 대지 간의 절연저항 의 최솟값은 약 몇 [Q]인가?（단, 변압기의 저압 측 중성점 에 접지가 되어 있다.）', 2, 379)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4a5906e-9658-5ce5-22c0-ceb77d4c790d', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '1,240', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa9d54f6-f869-a8bd-fd8f-2d64590660e6', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '2,794', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbc9ee85-204e-0597-69be-961de50ee1fb', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '4,840', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df2142e5-36d1-7364-0db5-1b6959e049c3', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '8,383', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', 'df2142e5-36d1-7364-0db5-1b6959e049c3', '④ 8,383', '정답 ④. 저압전선로 중 절연부분의 전선과 대지 및 심선 상호 간의 절연 저항은 사용전압에 대한 누설전류가 최대 공급전류의 忌이 넘지 않도 록 유지하여야 한다. 정격용량（3상） /5x 전압[v] x 전류 [A] 이므로 저겨요랴 1 누설전류 ^WxJ 이다. 이때. 저항[Q] 흨홰끄이므로 절연저항느------쌔------- 8,383kzi 20 x 103 1 /3X220 2,000 洪 l[kVA] 103[VA]이므로 20[kVA] 20 x 103[VA]이다. 1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '11111111-1111-1111-1111-111111111104', 'mcq', '욕조나 샤워시설이 있는 욕실 또는 화장실에 콘센트가 시설 되어 있다. 해당 전로에 설치된 누전차단기의 정격감도전류 와동작시간은?', 2, 380)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25d3f7bf-0eda-48fa-67a4-fc7373dffec1', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하, 동작시간 0.01 초 이하', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d183fbe5-ef0d-d704-e06f-1ff72081a5f0', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80d6179c-e177-3e71-1fe1-6a65315aa42c', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 30[mA] 이하, 동작시간 0.이초 이하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('658962c0-1608-3f31-b113-f351fa6d57aa', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정 격감도전류 30[mA] 이하, 동작시간 0.03초 이하', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', 'd183fbe5-ef0d-d704-e06f-1ff72081a5f0', '② 정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', '정답 ②. 욕조나 샤워시설이 있는 욕실 또는 화장실 등 인체가 물에 젖어 있는 상태에서 전기를 사용하는 장소에 콘센트를 시설하는 경우에는 1 전기 용품 및 생활용품 안전관리법」의 적용을 받는 인체감전보호용 누전차단기 （정격감도전류 15[ ] 이하, 동작시간 0.03초 이하의 전류동작형의 것에 한함） 또는 절연변압기（정격용량 3[kVA] 이하인 것에 한함）로 보호된 전 로에 접속하거나, 인체감전보호용 누전차단기가 부착된 콘센트를 시설하 여야 한다. 1 아仏PTER 02 감전재해 및 방지대책 06', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', '11111111-1111-1111-1111-111111111104', 'mcq', '이kW], 60[Hz] 3상 유도전동기가 380[V] 전원에 접속된 경우 흐르는 전류[A]는 약 얼마인가?（단, 역률은 80[%]이 다.）', 2, 381)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4131206-1b6f-816d-962f-9829384c172a', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '82.24', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2fd9e9e-4544-2479-a2c1-39d38b83e297', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '94.96', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59be7530-8213-2c2e-772b-c64cc1b2aaa8', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '116.30', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec397eba-c300-ad68-03eb-e8fccd4e437d', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '164.47', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', 'c2fd9e9e-4544-2479-a2c1-39d38b83e297', '② 94.96', '정답 ②. 정격용량（3상） 우X전압[V]X 전류[A]이므로 （50乂103）〉＜쁴~ 정격용량 전류 94.96[A] 凡〉〈전압 —/3X380— 쏘 정격용량[VA] 전聖刀 이고, l[kW] 103[W]이다. W비Bl', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '11111111-1111-1111-1111-111111111104', 'mcq', '접지 목적에 따른 분류에서 병원설비의 의료용 전기전자 (M • E)기기와 모든 금속부분 또는 도전바닥에도 접지하여 전위를 동일하게 하기 위한 접지를 무엇이라 하는가?', 2, 382)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a61df74-5410-e6dc-22b5-b886ef198e0f', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '계통접지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '등전위 접지', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73fe1f92-f1b7-9514-1918-f23a4567ae50', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '노이즈방지용 접지', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1df2b1e4-09f4-bed9-20b0-b0ce64b580ee', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '정전기 장해 방지 이용 접지', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', 'eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '② 등전위 접지', '정답 ②. K9 접지의 목적에 따른 종류 접지의 종류 접지목적 계통접지 고압전로와 저압전로 혼촉 시 감전이나 화재 방지 정전기방지용 접지 정전기의 축적에 의한 폭발재해 방지 등전위 접지 병원에 있어서의 의료기기 사용 시의 안전 확보 잡음대책용 접지 잡음에 의한 전자장치의 파괴나 오동작 방지 아4APTER 05 전기설비 위험요인관리 07', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #72
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순서 와 투입순서가 안전수칙에 가장 적합한 것은? DS O.C.B DS 전원 ----사、丄O--------1~O o|--------C斗‘丄O 부하 0 © @', 2, 383)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ba01a4-3ca7-8677-3d05-be4fc553bfc2', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: ®—*® — @, 투입:® … ® — @', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2f6141b-76dc-cfbb-5c34-0745d6006156', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: Q> —（타）一®，투입:© — @ — @', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2aca0b1-243a-f488-02f6-edd48e465a3f', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: @ —（9）— ®, 투입:©） — ® — ©', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: © — © — @, 투입:©—-® —（9）', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', 'dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', '④ 차단: © — © — @, 투입:©—-® —（9）', '정답 ④. 3 유입차단기 작동（투입 및 차단）순서 인입 부하 ⑭ D.S ©O.C.B @D.S • 차단순서: ⑪ 一 @ — ⑭ •투입순서: ⑪一⑭一⑪ 1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기 화재폭발 원인으로 인체대전에 대한 예방대책으로 옳지 않은 것은?', 2, 384)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aac71c7f-a595-4039-090a-6cc9e603b283', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', 'Wrist Strap을 사용하여 접지선과 연결한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd353f2-5a51-ae21-811c-07621008dbd0', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 제를 넣은 제전복을 착용한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d16d3df3-c5a5-d6e2-ac41-1f4969edecdd', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 성능이 있는 안전화를 착용한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5979bac6-bb51-ba3f-a19b-53468ec1b346', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '바닥 재료는 고유저항이 큰 물질을 사용한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '5979bac6-bb51-ba3f-a19b-53468ec1b346', '④ 바닥 재료는 고유저항이 큰 물질을 사용한다.', '정답 ④. KOI 인체의 대전방지를 위해 바닥의 재료 등에 고유저항이 큰 물질의 사용을 금지하여야 한다.（작업장 바닥에 도전성을 갖추도록 할 것） tWHSl', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', '11111111-1111-1111-1111-111111111104', 'mcq', '처음 온도가 20[℃]인 공기를 절대압력 1 기압에서 3기압으 로 단열압축하면 최종온도는 약 몇 [℃]인가?（단, 공기의 비열비는 1.4 이다.）', 2, 385)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('366bd292-65d1-543f-3426-118f415cfb6d', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '68[幻]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('904d32db-09b8-1d01-d007-715b2b3b8b90', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '75[t]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be505dbd-cf65-346b-7bd9-2f113360fded', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '128[t]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55c05667-db02-0ca8-4bf4-22fe27098db4', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '164[℃]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', 'be505dbd-cf65-346b-7bd9-2f113360fded', '③ 128[t]', '정답은 ③ 입니다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #82
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '11111111-1111-1111-1111-111111111104', 'mcq', '물질의 누출방지용으로써 접합면을 상호 밀착시키기 위하 여 사용하는 것은?', 2, 386)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4db3d846-a9df-cba2-8ef4-00475120c809', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '개스킷', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e767d71c-a43e-a367-252b-daec8e30495e', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '체크밸브', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af348f41-8c8a-f9be-0795-a69d0a06e3db', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '플러그', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('777d23a2-e40a-28cd-1cf1-d2658e072950', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '콕크', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '4db3d846-a9df-cba2-8ef4-00475120c809', '① 개스킷', '정답 ①. 시 W 개스킷（Gasket） 관 플랜지 고정 접합면에 끼워 볼트 및 기타 방법으로 죄어 유체의 누설을 방지하는 부속품이다. W릐', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', '11111111-1111-1111-1111-111111111104', 'mcq', '가스누출감지경보기 설치에 관한 기술상의 지침으로 틀린 것은?', 2, 387)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2fcdcb0-85ac-4f69-75e0-70fd43075a18', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '암모니아를 제외한 가연성 가스 누출감지경보기는 방', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6480aeb-3c9a-4703-8290-07171edd5b5c', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '독성 가스누출감지경보기는 해당 독성가스 허용농도의', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88d84e88-97a7-131b-ae98-f43aeefc00c6', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '하나의 감지대상가스가 가연성이면서 독성인 경우에는', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e4c84e6-55c1-fc07-9e59-e44cf97d3ab9', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '건축물 안에 설치되는 경우, 감지대상가스의 비중이 공', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', 'e6480aeb-3c9a-4703-8290-07171edd5b5c', '② 독성 가스누출감지경보기는 해당 독성가스 허용농도의', '정답 ②. 기보다 무거운 경우에는 건축물 내의 하부에 설치하여 야한다. KOi 가연성 가스누출감지경보기는 감지대상 가스의 폭발하한계 25[%] 이하. 독성 가스누출감지경보기는 해당 독성가스의 허용농도 이하 에서 경보가 울리도록 설정한다. 鳳 1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '11111111-1111-1111-1111-111111111104', 'mcq', '유한사면에서 원형활동면에 의해 발생하는 일반적인 사면 파괴의 종류에 해당하지 않는 것은?', 2, 388)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffc51923-85f8-d238-2bc9-7862072ffc02', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 내 파괴 （Slope Failure）', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64372fce-54da-909d-08e8-217c212f3563', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 선단 파괴 （Toe Failure）', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 인장 파괴 （Tension Failure）', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94e5c094-04aa-88d5-a649-262e859037f1', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 저부 파괴 （Base Failure）', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '③ 사면 인장 파괴 （Tension Failure）', '정답 ③. a 사면의 붕괴형태 • 사면 천단부 붕괴（사면 선단 붕괴. Toe Failure） • 사면 중심부 붕괴（사면 내 붕괴. Slope Failure） • 사면 하단부 붕괴（사면 저부 붕괴. Base Failure）', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 화물자동차의 승강설비 에 관한 사항이다.（ ）안에 알맞은 내용으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）이상 인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하는 경 우에는 근로자의 추가 위험을 방지하기 위하여 해당 작업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전하게 오르내리기 위한 설비를 설치하여야 한다.', 2, 389)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55629a17-c678-cdd1-2b49-4158375d1c38', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '2[m]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85762ef7-dedd-9727-03b8-78854f15ae23', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '4[m]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54bfa901-2ccc-a60f-7243-9ac44172ccfe', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '8[m]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60ccdb9c-e25b-15d3-53bd-a3b8fdff3e6d', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '107', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '55629a17-c678-cdd1-2b49-4158375d1c38', '① 2[m]', '정답은 ① 입니다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-3 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 작업으로 인하여 물체가 떨어지거나 날아올 위험이 있는 경우에 대한 안전조치에 해당하지 않는 것은?', 2, 390)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc41b5e2-06aa-07d3-f7d6-018357256569', '8339acbd-0258-a79c-4e07-d5311226035a', '수직보호망 설치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59f04ead-666c-70af-f459-4171c61404cc', '8339acbd-0258-a79c-4e07-d5311226035a', '방호선반 설치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('edad398a-f7c2-fdea-7657-65bd834da674', '8339acbd-0258-a79c-4e07-d5311226035a', '울타리 설치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930d9d38-e8f0-fdfd-ab69-68e89e0ad3a1', '8339acbd-0258-a79c-4e07-d5311226035a', '낙하물 방지망 설치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', 'edad398a-f7c2-fdea-7657-65bd834da674', '③ 울타리 설치', '정답 ③. a 작업으로 인하여 물체가 떨어지거나 날아올 위험이 있는 경우 낙 하물 방지망. 수직보호망 또는 방호선반의 설치. 출입금지구역의 설정. 보 호구의 착용 등 위험을 방지하기 위하여 필요한 조치를 하여야 한다. ▽181', array['산업안전기사','2021-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건 법령」상 산업안전보건위원회의 사용자위원 에 해당되지 않는 사람은?(단, 각 사업장은 해당하는 사람 을 선임하여야 하는 대상 사업장으로 한다.)', 2, 391)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba8dd5dc-41c8-24c7-0c13-0c97635863af', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '안전관리자', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb2adf6a-62f8-62f8-878b-cb823262e94e', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '산업보건의', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '명예산업안전감독관', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('038907d4-11e1-d013-a49d-6a9d79c2ff85', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '해당 사업장 부서의 장', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', 'a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '③ 명예산업안전감독관', '정답 ③. na 명예산업 안전감독관은 근로자위원에 해당한다. 산업안전보건위원회의 사용자 위원 • 해당 사업의 대표자 • 안전관리자 • 보건관리자 • 산업보건의 • 해당 사업의 대표자가 지명하는 9명 이내의 해당 사업장 부서의 장', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지에 해당하지 않는 것은?', 2, 392)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f194a90c-aa9f-2591-4db5-e0d85e188c21', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '레이저광선 경고', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('769f8e6c-5021-2081-e8a9-34b3365987cf', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '급성독성물질 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb61b566-fb2c-c02d-b6d2-be4c2ed5d457', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '매달린물체 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06baf5e1-104e-53a5-d237-f7326490b0b8', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '차량통행 경고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '06baf5e1-104e-53a5-d237-f7326490b0b8', '④ 차량통행 경고', '정답 ④. S3 경고표지 중 차량통행 경고는 없고, 금지표지에 차량통행 금지가 있다. E! !l', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 사업장에서 물적손실이 수반된 무상해사고가 180건 발생하였다면 중상은 몇 건이나 발생할 수 있는가?（단, 버 드의 재해구성 비율법칙에 따른다.）', 2, 393)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45c57278-fa21-32d2-73c1-fdbb82adba0d', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '6건', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5d3175-43ca-5017-b79b-bbc04d836db0', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '18건', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ff1ab2-aaf0-471e-58b6-14e2bd27731a', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '20건', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97902f5a-b6ce-6875-d274-df18740b76b2', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '29건', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '45c57278-fa21-32d2-73c1-fdbb82adba0d', '① 6건', '정답 ①. KEB 버드（Bird）의 재해구성비율 • 중상（중증요양상태） 또는 사망 : 경상（물적. 인적 상해） : 무상해사고（물 적 손실 발생） : 무상해. 무사고 고장（위험 순간） 1 ： 10 ： 30 ： 600 • 중상（중증요양상태） : 무상해사고（물적 손실 발생） 1 : 30 • 중상（중증요양상태） 180 x 寺 6건 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육 계획에 포함해야 할 사항이 아닌 것은?', 2, 394)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c7c07e6-e211-92e9-da50-f9f6acb928ba', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육지도안', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb716917-8adb-945c-960e-7e4940758a1e', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육장소 및 교육방법', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b6424ae-ff56-a846-3353-5e553309c402', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 종류 및 대상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a37d18b-3b09-806b-5240-db4709af9a04', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 과목 및 교육내용', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '7c7c07e6-e211-92e9-da50-f9f6acb928ba', '① 교육지도안', '정답 ①. K3 안전교육계획 수립 시 포함되어야 할 사항 • 교육대상（가장 먼저 고려） • 교육의 종류 • 교육과목 및 교육내용 • 교육기간 및 시간 •교육장소 •교육방법 • 교육담당자 및 강사 • 교육목표 및 목적 바易1이', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7546794d-d443-4553-941b-56c650c70cba', '11111111-1111-1111-1111-111111111104', 'mcq', 'Y • G 성격검사에서 “안전, 적응, 적극형 ”에 해당하는 형의 종류는?', 2, 395)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dd19b6b-4ae3-0471-f778-bc3c509f8566', '7546794d-d443-4553-941b-56c650c70cba', 'A형', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e24e24-fc64-280d-e2c2-2742cd13299e', '7546794d-d443-4553-941b-56c650c70cba', 'B형', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70e2196-6461-57c3-a73b-4b0ac74713cf', '7546794d-d443-4553-941b-56c650c70cba', 'C형', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21a4acce-f390-24bb-f6ad-c262cd72a662', '7546794d-d443-4553-941b-56c650c70cba', 'D형', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7546794d-d443-4553-941b-56c650c70cba', '21a4acce-f390-24bb-f6ad-c262cd72a662', '④ D형', '정답 ④. KOI Y • G 성격검사 프로필 유형 • A형（평균형）: 조화적. 적응적 • B형（우편형）: 정서불안적, 활동적, 외향적 • C형（좌편형）: 안전소극형 • D형（우하형）: 안전. 적응, 적극형 • E형（좌하형）: 불안정. 부적응. 수동형 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 환기가 극히 불량한 좁은 밀폐 된 장소에서 용접작업을 하는 근로자를 대상으로 한 특별교 육 내용에 포함되지 않는 것은?（단, 일반적인 안전 • 보건에 필요한 사항은 제외한다.）', 2, 396)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69a96674-1b97-e19e-5b52-33d7f0e40d0b', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '환기설비에 관한 사항', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9444afcb-9ad8-1d97-46cb-02395ee9c988', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '질식 시 응급조치에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52140dac-ef85-8d40-00aa-6e4091cbd774', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '작업순서, 안전작업 방법 및 수칙에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6889e66-8696-eac3-0d19-fc4d4836ac9d', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '폭발 한계점, 발화점 및 인화점 등에 관한 사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', 'd6889e66-8696-eac3-0d19-fc4d4836ac9d', '④ 폭발 한계점, 발화점 및 인화점 등에 관한 사항', '정답 ④. sa 밀페된 장소에서 하는 용접작업 또는 습한 장소에서 하는 전 기용접 작업 시 특별교육내용 • 작업순서. 안전작업방법 및 수칙에 관한 사항 • 환기설비에 관한 사항 • 전격 방지 및 보호구 착용에 관한 사항 • 질식 시 응급조치에 관한 사항 •작업환경 점검에 관한 사항 • 그 밖에 안전 • 보건관리에 필요한 사항 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '11111111-1111-1111-1111-111111111104', 'mcq', '무재해 운동의 기본이념 3원칙 중 다음에서 설명하는 것은? 직장 내의 모든 잠재위험요인을 적극적으로 사전에 발견, 파 악. 해결함으로써 뿌리에서부터 산업재해를 제거하는 것', 2, 397)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8028bdbe-a387-839f-bfef-8213c9a730f3', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '무의 원칙', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a5dab1e-78d8-f05c-80a5-e03f2fa5cd07', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '선취의 원칙', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d526f53d-4946-4cc6-ccb3-e4743dd5f1a8', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '참가의 원칙', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('226f82e6-15dd-cc5c-38a1-25238d901106', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '확인의 원칙', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '8028bdbe-a387-839f-bfef-8213c9a730f3', '① 무의 원칙', '정답 ①. K^a 무재해 운동의 3원칙 • 무의 원칙: 모든 잠재위험요인을 사전에 발견 • 파악 • 해결함으로써 근 원적으로 산업재해를 제거한다. • 참여의 원칙（참가의 원칙）: 직업에 따르는 잠재적인 위험요인을 발견 • 해결하기 위하여 전원이 협력하여 문제해결 운동을 실천한다. • 안전제일의 원칙（선취의 원칙）: 직장의 위험요인을 행동하기 전에 발 견 •파악. 해결하여 재해를 예방한다. 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4R（라운드） 기법의 진행방법에서 3R에 해당 하는 것은?', 2, 398)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f70d122-3121-9375-fd0d-17705550d665', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '목표설정', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '대책수립', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbc7fe70-0c52-b9f8-189f-42254c8e9ff4', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '본질추구', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2254851-262a-9a81-4d67-692d3fec66ef', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '현상파악', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '② 대책수립', '정답 ②. KSI 위험예지훈련의 추진을 위한 문제해결 4단계 O 1라운드: 현상파악（사실의 파악）-어떤 위험이 잠재하고 있는가? © 2라운드: 본질추구（원인조사）-이것이 위험의 포인트이다. © 3라운드: 대책수립（대책을 세운다）-당신이라면 어떻게 하겠는가? （D 4라운드: 목표설정（행동계획 작성）-우리들은 이렇게 하자!', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('800762de-162a-b907-7126-eadaaa8f445c', '11111111-1111-1111-1111-111111111104', 'mcq', '관리감독자를 대상으로 교육하는 TWI의 교육내용이 아닌 것은?', 2, 399)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5180c99-49e8-b7e3-493b-76065209af08', '800762de-162a-b907-7126-eadaaa8f445c', '문제해결훈련', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62ecf551-e11b-50e0-6b2d-1f7c7bbbbb5a', '800762de-162a-b907-7126-eadaaa8f445c', '작업지도훈련', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b0d0505-3dc0-e3d5-1423-0163729e4ca9', '800762de-162a-b907-7126-eadaaa8f445c', '인간관계훈련', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a19aacbb-297e-e61f-e090-d0a2882d42fe', '800762de-162a-b907-7126-eadaaa8f445c', '작업방법훈련', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('800762de-162a-b907-7126-eadaaa8f445c', 'a5180c99-49e8-b7e3-493b-76065209af08', '① 문제해결훈련', '정답은 ① 입니다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-12 #24
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTD)의 발생인자와 가장 거리가 먼 것은?', 2, 400)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45712355-ff04-a780-e23a-dc6cb3d2286d', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '무리한 힘', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '다습한 환경', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ded4364-9630-fc16-e4bd-4fb8187a1364', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '장시간의 진동', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c5f437d-a76d-5a8b-f7c0-54a48da5e702', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '반복도가 높은 작업', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '② 다습한 환경', '정답 ②. K^i 누적손상장애(cms) 발생원인 과도한 힘의 요구. 부적절한 작업자세. 장시간의 진동. 반복적인 동작 등 E %1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
