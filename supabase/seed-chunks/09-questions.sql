-- chunk 9/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2022-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '11111111-1111-1111-1111-111111111104', 'mcq', '방사선 투과검사에서 투과사진의 상질을 점검할 때 확인해 야 할 항목으로 거리가 먼 것은?', 2, 321)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f937e2-8028-992d-a9ee-a94fc5a24945', '655ac728-af7a-a96e-e89b-4ef9828a2773', '투과도계의 식별도', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82bdf2eb-03e5-6cf7-52f4-d12fa4759df5', '655ac728-af7a-a96e-e89b-4ef9828a2773', '시험부의 사진농도 범위', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b07e9bb7-5a1d-fa42-4d3a-f4b4e5dde073', '655ac728-af7a-a96e-e89b-4ef9828a2773', '계조계의 값', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eb6b05c-9a55-a3a2-9065-25cd66c11481', '655ac728-af7a-a96e-e89b-4ef9828a2773', '주파수의 크기', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '9eb6b05c-9a55-a3a2-9065-25cd66c11481', '④ 주파수의 크기', '정답 ④. KS1 투과사진의 상질을 점검할 때 확인해야 할 항목 • 투과도계의 식별 최소선경 • 시험부의 사진농도 • 계조계의 값(농도차/농도)', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '11111111-1111-1111-1111-111111111104', 'mcq', '와이어로프의 구성요소가 아닌 것은?', 2, 322)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c395391-8717-81a8-33b9-42ce59831f65', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '소선', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('903e2c8e-f962-5ae5-9c81-21cf50c5d64e', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '클립', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07535a7b-0f1a-89eb-c03b-e0401630c06a', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '스트랜드 (Strand)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a442c38-ae52-e8a6-9845-ffcecf1bd375', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '심강(Core)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '903e2c8e-f962-5ae5-9c81-21cf50c5d64e', '② 클립', '정답 ②. 3 클립은 와이어로프를 고정하는 기구이다. 와이어로프 구성요소 소선, 스트랜드(Strand), 심강(Core), 심선', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 323)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32302100-f671-8676-0240-e12826063bb0', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f67abd5c-1a40-320b-51d7-967524bee2a8', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0e3d9de-02dc-0e82-6edc-f658ca0577ae', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6a84b60-09fb-26c9-b350-3557a2a26a7b', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '상하 좌우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', 'e0e3d9de-02dc-0e82-6edc-f658ca0577ae', '③ 강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', '정답 ③. Ka 밀링작업 시 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. fWIEI', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('94948349-671d-6a84-40d0-601dc14eb374', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명은 보일러의 장해 원인 중 어느 것에 해당되는가? 보일러 수중에 용해고형분이나 수분이 발생, 증기 중에 다량 함유되어 증기의 순도를 저하시킴으로써 관내 응축수가 생겨 워터해머의 원인이 되고 증기과열기나 터빈 등의 고장의 원인 이 된다.', 2, 324)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9851c43d-b20f-9be7-b551-33a84209282f', '94948349-671d-6a84-40d0-601dc14eb374', '프라이 밍 (Priming)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082900df-8774-edc7-9d67-4c1bfd13c4e1', '94948349-671d-6a84-40d0-601dc14eb374', '포밍 (Foaming)', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf73f42b-66a3-c689-1122-0883d791e70c', '94948349-671d-6a84-40d0-601dc14eb374', '캐리오버 (Carry Over)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c9ba1a6-9ac5-f9b6-a753-548906341508', '94948349-671d-6a84-40d0-601dc14eb374', '역화(Back Fire)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('94948349-671d-6a84-40d0-601dc14eb374', 'cf73f42b-66a3-c689-1122-0883d791e70c', '③ 캐리오버 (Carry Over)', '정답 ③. 누W 캐리오버(Carry Over) 보일러 증기관 쪽에 보내는 증기에 대량의 물방울이 포함되는 경우가 있는 데 이것을 캐리오버라 하며, 프라이밍이나 포밍이 생기면 필연적으로 캐리 오버가 발생한다. I 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #68
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '11111111-1111-1111-1111-111111111104', 'mcq', '일반 허용접촉전압과 그 종별을 짝지은 것으로 틀린 것은?', 2, 325)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제1종: 0.5[V] 이하', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26474057-9b6e-3dcb-659e-d9e00eebb352', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제2종: 25[V] 이하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4eb8d3ac-20e6-26ef-4d0b-fe27a1ec6ebb', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제3종: 5O[V] 이하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebe5fbd6-4a0c-66ff-def6-818a87df78d6', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제4종: 제한 없음', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '① 제1종: 0.5[V] 이하', '정답 ①. 허용접촉전압 종별 허용접촉전압 제 1종 Z5[V] 이하 제 2종 25[V] 이하 제 3종 50[V] 이하 제 4종 제한 없음 I 1 아1APTER 02 감전재해 및 방지대책', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #69
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 / 」等 [mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 326)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c45a6453-23aa-7228-cf13-e9725daec9d6', '47192335-1c4e-fbe2-caba-b7931471f777', '13.6', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c7686ce-6f12-244a-7282-a9ddffd09633', '47192335-1c4e-fbe2-caba-b7931471f777', '16.2', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91ebd79d-0824-623f-8c21-c4135bd2d2c3', '47192335-1c4e-fbe2-caba-b7931471f777', '27.2', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc09a761-3c50-928c-9914-4a4293ef10c7', '47192335-1c4e-fbe2-caba-b7931471f777', '32.4', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', 'c45a6453-23aa-7228-cf13-e9725daec9d6', '① 13.6', '정답은 ① 입니다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 피뢰설비에서 외부피뢰시스템 의 수뢰부시스템으로 적합하지 않은 것은?', 2, 327)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6588442b-ab47-efa9-c9f5-efd8ab24a123', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '돌침', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1048f2c-d549-fceb-db5c-9723098b560e', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '수평도체', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d700dc5f-6d02-b6f9-6187-6196db3b5c21', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '그물망도체', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '환상도체', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '④ 환상도체', '정답 ④. E9 수뢰부시스템은 돌침. 수평도체. 그물망도체의 요소 중에 한 가 지 또는 이를 조합한 형식으로 시설하여야 한다. 1151 아dAPTER 05 전기설비 위험요인관리 2022년 3회 CBT 복원문제 • 335 08', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 유기과산화물로 분류되는 것은?', 2, 328)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b9c203-f383-7e40-bbce-1f2d37342c9b', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '메틸에틸케톤', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec38ea26-cc99-cde7-8574-b2854762f371', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과망간산칼륨', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d84eeeb8-9aae-550a-5b19-437a3d132033', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화마그네슘', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화벤조일', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', '④ 과산화벤조일', '정답 ④. K1H 보기에 있는 물질의 분류（「위험물안전관리법령」기준） 메틸에틸케톤: 제4류 위험물로 제1석유류이다. 과망간산칼륨: 제1류 위험물로 산화성 고체이다. 과산화마그네슘: 제1류 위험물로 무기과산화물이다. 과산화벤조일 : 제5류 위험물로 유기과산화물이다. 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 • 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야 하는가?', 2, 329)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9be7448c-20c5-ac71-4b26-c142bd8c9e74', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '15일', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c807267c-c7b2-37d7-4d5a-bf47343a71ad', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '30일', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f0d1ca3-c103-6174-e3b9-da294d1d9182', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '60일', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efa7e15c-6676-d6d0-9665-c4fa121ab072', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '90일', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', 'c807267c-c7b2-37d7-4d5a-bf47343a71ad', '② 30일', '정답 ②. 3 유해하거나 위험한 설비의 설치 • 이전 또는 주요 구조부분의 변 경공사의 착공일 30일 전까지 공정안전보고서를 2부 작성하여 한국산업안 전보건공단에 제출하여야 한다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 제2종 분말소화약제의 주성분은 어느 것인가?', 2, 330)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b1d5634-1840-c484-814d-1cbaab08d549', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NaHCO3', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '34f6e468-12f0-9433-04f5-56b05269f68d', 'KHCO3', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b77325a-77be-dcfe-d8c7-8ab549991bfb', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NH4H2P(으', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42dbf547-9f95-13c8-766e-90b25580f544', '34f6e468-12f0-9433-04f5-56b05269f68d', '(NH2)2CO', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '② KHCO3', '정답 ②. mH 분말소화약제의 분류 • 제1종 소화약제: 탄산수소나트륨(NaHCOJ • 제2종 소화약제: 탄산수소칼륨(KHCO3) • 제3종 소화약제: 제1인산암모늄(NH4H2PO4) • 제4종 소화약제: 탄산수소칼륨+요소(KHCO3+(NH2)2cO)', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce288bf1-ca88-c2d2-7151-b505723bd9c7', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전보고서 중 공정안전자료에 포함하여야 할 세부내 용에 해당하는 것은?', 2, 331)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f15efe1-b278-2275-8528-1bc64b5ca8fd', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '비상조치계획에 따른 교육계획', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b40051c-ef98-5779-acc9-4436896e2faa', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '안전운전지침서', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8a811997-e9bd-cf0b-6e84-257c0a0cbf61', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '각종건물 • 설비의 배치도', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f034cdd1-b103-a26d-e91c-6f320ee7c2e6', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '도급업체 안전관리계획', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce288bf1-ca88-c2d2-7151-b505723bd9c7', '8a811997-e9bd-cf0b-6e84-257c0a0cbf61', '③ 각종건물 • 설비의 배치도', '정답 ③. a ©은 비상조치계획. . ©는 안전운전계획에 포함하여야 할 세 부내용이다. E I51', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '11111111-1111-1111-1111-111111111104', 'mcq', '히빙(Heaving)현상 방지대책으로 틀린 것은?', 2, 332)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70a1b5f9-1f0b-6999-852b-fda8166601ee', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '소단굴착을 실시하여 소단부 흙의 중량이 바닥을 누르', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d997bac9-96dc-d081-7fc8-ee3c8c1a1d89', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체 배면의 지반을 개량하여 흙의 전단강도를', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('285e667a-cad3-d37d-a34f-bb7125891df3', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '부풀어 솟아오르는 바닥면의 토사를 제거한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e58ca86-cce5-3c3d-b7bb-83b139e06c50', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체의 근입 깊이를 깊게 한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '285e667a-cad3-d37d-a34f-bb7125891df3', '③ 부풀어 솟아오르는 바닥면의 토사를 제거한다.', '정답 ③. KS 히빙의 예방대책 • 흙막이벽의 근입 깊이 증가 • 흙막이벽 배면지반의 상재호주 제거 • 저면의 굴착부분을 남겨두어 굴착예정인 부분의 일부를 미리 굴착하여 기초콘크리트 타설 • 굴착주변을 웰 포인트(Well Point) 공법과 병행 • 굴착저면에 토사 등 인공중력 증가', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '11111111-1111-1111-1111-111111111104', 'mcq', '달비 계에 사용하는 와이어로프의 사용금지기준으로 옳지 않은것은?', 2, 333)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d68428bc-c548-9258-a049-a07b0fae6cf9', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '이음매가 있는 것', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26f1058a-e790-3449-1e93-95f942492e7d', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '열과 전기 충격에 의해 손상된 것', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f84a81bf-4b4b-390b-ef53-0366de9f05f8', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '지름의 감소가 공칭지름의 7[%]를 초과하는 것', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47beac02-2a71-277e-1945-932399f6e942', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '47beac02-2a71-277e-1945-932399f6e942', '④ 와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', '정답 ④. 상인 것 K 찌 달비계 와이어로프의 사용금지 조건 •이음매가있는 것 • 와이어로프의 한꼬임（Strand）에서 끊어진 소선의 수가 10[%] 이상인 것 • 지름의 감소가 공칭지름의 7[%]를 초과하는 것 •꼬인것 • 심하게 변형되거나 부식된 것 • 열과 전기충격에 의해 손상된 것 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보안경 착용을 포함하는 안전보건표 지의 종류는?', 2, 334)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fbbaa34-76a8-25df-6251-745ad0f0207f', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '지시표지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a17b85-d71d-15c7-8904-e18f16c66b78', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '안내표지', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba296f3-92dc-9d34-e9fe-f6c02765d570', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '금지표지', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11ec2e51-d49d-f4b4-e868-66eacb98d85b', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '경고표지', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '7fbbaa34-76a8-25df-6251-745ad0f0207f', '① 지시표지', '정답 ①. 지시표지는 작업에 관한 지시, 즉 안전 • 보건 보호구의 착용에 사 용되며. 보안경 착용은 지시표지에 포함된다. 보안경 착용 방독마스크착용 방진마스크착용 보안면착용 안전모 착용 ^ O ^ O © 0 0 0 귀마개 착용 안전화착용 안전장갑착용 안전복착용 衝 A 지시표지의 종류 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '11111111-1111-1111-1111-111111111104', 'mcq', 'Thorndike의 시행착오설에 의한 학습의 원칙이 아닌 것은?', 2, 335)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffec3be7-b4a6-e9ae-4a0b-ce5dc3b79473', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '연습의 원칙', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2d5229-67cc-3ab4-5792-959856796a34', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '효과의 원칙', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082f04ec-e750-7f0c-1fba-079720e25370', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '동일성의원칙', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd1a010c-0451-b8e8-93b1-0ddab6372490', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '준비성의원칙', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '082f04ec-e750-7f0c-1fba-079720e25370', '③ 동일성의원칙', '정답 ③. M#%l 손다이크(Thorndike)의 시행착오설 • 준비성의 법칙 • 연습의 법칙 • 효과의 법칙', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 재해구성비율 “1 : 29 : 300”에서 “29”에 해당 되는 사고발생비율은?', 2, 336)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01b9c2b8-5546-9e38-05b9-45e49e6660ba', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '8.8[%]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f8e3d2d-c32e-f169-c69b-927c5bfb077c', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '9.8[%]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a873040-e990-c486-d4c4-9fe2c5168b63', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '10.8[%]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e8d32bc9-12d4-1cf2-de0d-fd07cdb9056a', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '11.8[%]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '01b9c2b8-5546-9e38-05b9-45e49e6660ba', '① 8.8[%]', '정답 ①. KOI 하인리히의 재해구성비율 중상 또는 사망 : 경상 : 무상해사고 1： 29 ： 300 1+2쯔 3O()X1OO 8.8[%]', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건관리조직의 형태 중 라인—스태프（Line—Staff）형에 관한 설명으로 틀린 것은?', 2, 337)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29059268-1365-92e1-6bd6-161b84de5ba3', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '조직원 전원을 자율적으로 안전 활동에 참여시킬 수 있다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35db8bf7-2c56-0300-416d-242871044edc', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '라인의 관리감독자에게도 안전에 관한 책임과 권한이 부', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71b6cc76-a03c-9088-8a13-268d0819f05f', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f13f5a7e-4a68-aa66-0032-ad7b374d0327', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '안전 활동과 생산업무가 유리될 우려가 없기 때문에 균형', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '71b6cc76-a03c-9088-8a13-268d0819f05f', '③ 중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', '정답 ③. 을유지할수 있어 이상적인 조직형태이다. «§ 라인 • 스태프（UNE-STAFF）형 조직（직계참모조직） • 대규모（1,000명 이상） 사업장에 적합한 조직으로서 라인형과 스태프형의 장점만을 채택한 형태이며. 안전업무를 전담하는 스태프를 두고 생산라 인의 각 계층에서도 각 부서장으로 하여금 안전업무를 수행하도록 하여 스태프에서 안전에 관한 사항이 결정되면 라인을 통하여 실천하도록 편 성된 조직이다. • 안전계획. 평가 및 조사는 스태프에서, 생산기술의 안전대책은 라인에서 실시한다. 1프 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법 령」상 안전인증대상기계 등에 포함되는 기 계, 설비, 방호장치에 해당하지 않는 것은?', 2, 338)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01d60be1-ee84-326f-91e7-69a4cca4dcba', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '롤러기', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f5da111-f6d4-a780-66d2-2ca3947d2c78', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '크레인', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a681010-7bab-c43f-e385-f94a95478ab1', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '동력식 수동대패용 칼날 접촉 방지장치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72ccb8b3-0d96-0635-cb6a-71787fffae82', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '방폭구조（防爆構造） 전기기계 •기구 및 부품', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '9a681010-7bab-c43f-e385-f94a95478ab1', '③ 동력식 수동대패용 칼날 접촉 방지장치', '정답 ③. K9 동력식 수동대패용 칼날 접촉 방지징치는 안전인증대상이 아닌 자율안전확인대 상 방호장치이다. KUE!ZI SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러에 설치해야 하는 안전장치로 거리가 가장 먼 것은?', 2, 339)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c35e47c0-e546-2adf-2451-5fb7fc1f8442', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '해지장치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff9ee67d-338d-55a5-a160-fb00310d8836', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력방출장치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('405d7b3f-ae4e-0db6-a5cf-efbfe2953190', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력제한스위치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df276102-62d6-c165-a72d-e0f3c8aab604', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '고저수위 조절장치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', 'c35e47c0-e546-2adf-2451-5fb7fc1f8442', '① 해지장치', '정답 ①. KOI 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치. 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다. 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 고속회전체의 회전시험을 하는 경우 미리 회전축의 재질 및 형상 등에 상응하는 종류의 비파괴 검사를 해서 결함 유무를 확인해야 한다. 이때 검사대상이 되는 고속회전체의 기준은?', 2, 340)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13c890d7-d5bf-734c-d955-17b33b9bfc0c', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94d55ac-84a2-baaf-84a4-2d4f498c10ac', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20790b2e-3a24-87c1-5d86-e24d5e062e3f', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 10이m/', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('101e097d-ab1c-ae50-907a-99aa61872eaf', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '101e097d-ab1c-ae50-907a-99aa61872eaf', '④ 회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', '정답 ④. s] 이상인 것 KS 고속회전체(회전축의 중량이 1톤을 초과하고 원주속도가 120[m/s] 이상인 것으로 한정)의 회전시험을 하는 경우에 미리 회전축의 재 질 및 형상 등에 상응하는 종류의 비파괴검사를 해서 결함 유무를 확인하여 야한다. fcW!l8l', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스의 손쳐내기식 방호장치 설치기준으로 틀린 것은?', 2, 341)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dbd8161-a2f9-e4f2-9c38-94f967d40b99', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '방호판의 폭이 금형 폭의 1/2 이상이어야 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ee06d29-aecd-b442-dc53-0061e5984501', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('783119e5-8a62-cc9b-005b-7bb2151598d6', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '손쳐내기봉의 행정(Stroke) 길이를 금형의 높이에 따', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca023fc3-a9c1-9746-6f89-019ada1b257e', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 하행정거리의 3/4 위치에서 손을 완전히 밀', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '1ee06d29-aecd-b442-dc53-0061e5984501', '② 슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', '정답 ②. 어내야 한다. 손쳐내기식 방호장치는 슬라이드 행정수가 100[SPM] 이하. 행 정길이가 40[mm] 이상의 것에 사용한다. 바&1唱1 아1APTER 04 프레스 및 전단기의 안전', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 롤러기의 방호장치 설치 시 유의해 야 할 사항으로 가장 적절하지 않은 것은?', 2, 342)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8205f28-1e94-f2eb-6e4b-4b0211e097ff', '9cabd798-3694-f712-101c-9d89e037a36e', '손으로 조작하는 급정지장치의 조작부는 롤러기의 전', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab4e119c-e6b5-a898-862b-807e471470b2', '9cabd798-3694-f712-101c-9d89e037a36e', '앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('236af06e-647e-f7c0-061c-f898a3d34ff1', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 사용 중 늘어져', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a372beb5-b248-fc85-12cb-7f7ffeab37de', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', 'ab4e119c-e6b5-a898-862b-807e471470b2', '② 앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', '정답 ②. 도를 가져야 한다. K3 롤러기 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의 } 이내 30 미만 앞면 롤러 원주의 닐〒 이내 30 이상', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」제319조에 의한 정전전로 에서의 정전작업을 마친 후 전원을 공급하는 경우에 사업주 가 작업에 종사하는 근로자 및 전기기기와 접촉할 우려가 있는 근로자에게 감전의 위험이 없도록 준수해야 할 사항이 아닌 것은?', 2, 343)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21b76957-e720-c246-961e-730142b442b8', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '단락 접지기구 및 작업기구를 제거하고 전기기기 등이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a1d4751-5362-e86b-ec9b-269cb81d154c', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 작업자가 작업이 완료된 전기기기에서 떨어져 있', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8643925f-f646-c4af-76e9-a87af880da6f', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '잠금장치와 꼬리표를 근로자가 직접 설치한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a9bc79b-f673-e79e-bd17-141c510f7ca0', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 이상 유무를 확인한 후 전기기 기 등의 전원을 투', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '8643925f-f646-c4af-76e9-a87af880da6f', '③ 잠금장치와 꼬리표를 근로자가 직접 설치한다.', '정답 ③. 입한다. KOI 정전작업을 마친 후 전원을 공급하는 경우에는 작업에 종사하는 근로자 또는 그 인근에서 작업하거나 정전된 전기기기 등（고정 설치된 것 으로 한정）과 접촉할 우려가 있는 근로자에게 감전의 위험이 없도록 다음 의 사항을 준수하여야 한다. • 작업기구. 단락 접지기구 등을 제거하고 전기기기 등이 안전하게 통전될 수 있는지를 확인할 것 • 모든 작업자가 직업이 완료된 전기기기 등에서 떨어져 있는지를 확인할 것 • 잠금장치와 꼬리표는 설치한 근로자가 직접 철거할 것 • 모든 이상 유무를 확인한 후 전기기기 등의 전원을 투입할 것', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 500[Q]으로 하는 경우 심실세동을 일 으킬 수 있는 에너지는 약 얼마인가?(단, 심실세동전류 / 쯔[mA]로 한다.)', 2, 344)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c88ff628-3ede-2778-3882-08fedc1eedb9', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[J]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204595f7-a32c-8ce3-cba5-5b197bd78225', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[J]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('abd3d45a-8fc9-d220-80b2-ce3dda023721', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[mJ]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7bcdde-f927-a35f-7513-69a117db26ca', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[mJ]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', 'c88ff628-3ede-2778-3882-08fedc1eedb9', '① 13.6[J]', '정답은 ① 입니다', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 과전류차단기로 저압전로에 사 용하는 범용 퓨즈（gG）의 용단전류는 정격전류의 몇 배인 가?（단, 정격전류가 4[A] 이하인 경우이다.）', 2, 345)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('185e5a34-bf56-753f-1f28-ff9cb7b166c0', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.5 배', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('753b7236-8dd6-0965-a4b8-33b8e33dc037', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.6 배', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('838ce4f2-6f87-a9d7-9879-189173952468', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.9 배', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('853542f7-044d-6f17-63d2-1265335e1878', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '2.1 배', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '853542f7-044d-6f17-63d2-1265335e1878', '④ 2.1 배', '정답 ④. KOI 과전류차단기로 저압전로에 사용하는 퓨즈 정격전류의 배수 정격전류의 구뷘A] 시갠분] 불용단전류 용단전류 4 이하 60 1.5배 2.1 배 4 초과 16 미만 60 1.5배 1.9 배 16 이상 63 이하 60 1.25 배 1.6 배 63 초과 160 이하 120 1.25 배 1.6배', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기가 대전된 물체를 제전시키려고 한다. 다음 중 대전 된 물체의 절연저항이 증가되어 제전의 효과를 감소시키는 것은?', 2, 346)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8409726-b447-3da4-e92d-6c713a5aa469', 'ac24a843-02d5-6196-baa8-88b952085d2b', '접지한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b112d95e-2849-d286-2aa2-944bed0071c6', 'ac24a843-02d5-6196-baa8-88b952085d2b', '건조시킨다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad3c4341-8773-d317-f34c-a6d6afc8115d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '도전성 재료를 첨가한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0476061d-3509-a3e8-c117-0c5f8e51577d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '주위를 가습한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', 'b112d95e-2849-d286-2aa2-944bed0071c6', '② 건조시킨다.', '정답 ②. 건조된 물체는 절연저항이 증가되어 제전의 효과를 감소시킨다. WBI 아仏PTER 03 정전기 장 • 재해관리', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #95
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물을「산업안전보건법령」에서 정한 기준량 이상으로 제조하거나 취급하는 설비로서 특수화학설비에 해당되는 것은?', 2, 347)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('321caffc-8c8b-996d-f326-bed112e6a10c', 'df9779b1-709f-381c-a402-cba4859a0769', '가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da833624-d1bd-d5f3-c024-7500b509ee6f', 'df9779b1-709f-381c-a402-cba4859a0769', '상온에서 게이지 압력으로 200[kPa]의 압력으로 운전', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90bab20b-3ccb-9a5b-d285-f502cb7b8fb7', 'df9779b1-709f-381c-a402-cba4859a0769', '대기압 하에서 30이。C]로 운전되는 설비', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('995c2b06-6642-d716-912a-01e6ea6e527d', 'df9779b1-709f-381c-a402-cba4859a0769', '흡열반응이 행하여지는 반응설비', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '321caffc-8c8b-996d-f326-bed112e6a10c', '① 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', '정답 ①. 특수화학설비 • 발열반응이 일어나는 반응장치 • 증류 • 정류 • 증발 • 추출 등 분리를 하는 장치 • 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분해온도 또는 발화 점보다 높은 상태에서 운전되는 설비 • 반응폭주 등 이상 화학반응에 의하여 위험물질이 발생할 우려가 있는 설비 • 온도가 350[℃] 이상이거나 게이지압력이 980[kPa] 이상인 상태에서 운전되는 설비 • 가열로 또는가열기', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 내용에 해당하는 폭발위험장소 는? 20종 장소 밖으로서 분진운 형태의 가연성 분진이 폭발농도 를 형성할 정도의 충분한 양이 정상작동 중에 존재할 수 있는 장소를 말한다.', 2, 348)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3768261f-6c13-e2ac-3504-a9ab094083aa', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '21종 장소', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53dace85-5b0b-1c04-3c09-4f09fd4d28f0', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '22종 장소', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38355390-dcfe-fdf4-abf0-627d375092b4', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '0종 장소', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da7c31e9-3d59-35aa-8679-c0e10a5c0c4f', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '1종 장소', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '3768261f-6c13-e2ac-3504-a9ab094083aa', '① 21종 장소', '정답 ①. Km 21종 장소 20종 장소 밖으로서 분진운 형태의 가연성 분진이 폭발농도를 형성할 정 도의 충분한 양이 정상작동 중에 존재할 수 있는 장소이다. SUBJECT 04 전기설비 안전관리', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인 등 건설장비의 가공전선로 접근 시 안전대책으로 옳 지 않은 것은?', 2, 349)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0399df4f-70e2-edeb-c133-a9cb914c4cbd', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '안전 이격거 리를 유지하고 작업한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비를 가공전선로 밑에 보관한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e438cb70-05ed-53ff-a2df-919478bce975', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비의 조립, 준비 시부터 가공전선로에 대한 감전 방', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3659fe62-984b-879e-c958-d901608f13a9', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비 사용 현장의 장애물, 위험물 등을 점검 후 작업계', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', 'efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '② 장비를 가공전선로 밑에 보관한다.', '정답 ②. 획을수립한다. K9 크레인 등 건설장비는 가공전선로 밑에 보관 시 감전의 위험이 있00.루 가공전선로와 이격된 장소에 보관하여야 한다. 바리IU SUBJECT 04 전기설비 안전관리', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-1 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', '11111111-1111-1111-1111-111111111104', 'mcq', '유해 위험방지계획서를 고용노동부 장관에게 제출하고 심사 를 받아야 하는 대상 건설공사 기준으로 옳지 않은 것은?', 2, 350)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6944bfe0-095c-ecac-94e6-19aea1c29aea', '7aed81b7-edc8-785c-17f9-d8a52b390080', '최대 지간길이가 5이m] 이상인 다리의 건설 등 공사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '7aed81b7-edc8-785c-17f9-d8a52b390080', '지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c8fcf36-3eed-9a90-6969-dc718ba7697f', '7aed81b7-edc8-785c-17f9-d8a52b390080', '깊이 10[m] 이상인 굴착공사', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('478d2a78-b5b1-7b80-a0b3-d0f7caa5239b', '7aed81b7-edc8-785c-17f9-d8a52b390080', '다목적댐, 발전용댐, 저수용량 2천만 톤 이상의 용수', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', 'f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '② 지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', '정답 ②. 전용 댐 및 지방상수도 전용 댐의 건설 등 공사 na 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물. 연면적 30.0001m2] 이상인 건축물 또는 연면적 5.000[m2] 이상의 문화 및 집회시설（전시장 및 동물원 • 식물원 제외）. 판매시설. 운수시설（고속철도의 역사 및 집배 송시설 제외）. 종교시설, 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체（건설 등） 공사 • 연면적 5.000[m2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐, 발전용댐. 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지의 기본모형(형태)이 다른 것은?', 2, 351)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b2b483-4d55-607e-6276-2b7fa793ffdb', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '고압전기 경고', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('954a5dd0-d86b-7762-b232-8e62bb3cbb71', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '방사성물질 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec1570b4-723b-43a6-2888-fe30569ce995', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '폭발성물질 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61c9742-4437-6d63-643e-ffe0fa7d241d', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '매달린물체 경고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', 'ec1570b4-723b-43a6-2888-fe30569ce995', '③ 폭발성물질 경고', '정답 ③. !!! 고압전기경고 방사성물질경고 폭발성물질경고 매달린물체경고 A A <^ A W!0l', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보호구 안전인증대상 방독마스크의 유기화합물용 정화통 외부 측면 표시색으로 옳은 것은?', 2, 352)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fcd647cb-c37d-6970-3a3a-e599fd216730', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '갈색', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d9269c5-99f1-ae50-bd76-c15f9f5aa29e', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '녹색', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7baa671-26a2-108b-4524-80c704e36878', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '회색', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69503672-9e94-c9b6-d629-943059f23dbd', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '노랑색', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', 'fcd647cb-c37d-6970-3a3a-e599fd216730', '① 갈색', '정답 ①. MEB 정화통 외부 측면의 표시색 종류 표시색 유기화합물용 정화통 갈색 할로겐용 정화통 황화수소용 정화통 회색 시안화수소용 정화통 아황산용 정화통 노란색 암모니아용 정화통 녹색', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '11111111-1111-1111-1111-111111111104', 'mcq', '재해원인 분석기법의 하나인 특성요인도의 작성 방법에 대 한 설명으로 틀린 것은?', 2, 353)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b8936dd-997d-cb9a-e050-affd88d15568', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '큰뼈는 특성이 일어나는 요인이라고 생각되는 것을 크', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('716dc2ae-b409-86a0-4ba2-43423da325ad', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b629e800-7d63-1b1f-48f4-304f0ada83ca', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '특성의 결정은 무엇에 대한 특성요인도를 작성할 것인', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6021e41-ea99-fb91-b770-b7c20c9a68d4', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '중뼈는 특성이 일어나는 큰뼈의 요인마다 다시 미세하', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '716dc2ae-b409-86a0-4ba2-43423da325ad', '② 등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', '정답 ②. 게 원인을 결정하여 기 입한다. 특성요인도 특성과 요인관계를 두ff 루 하여 어골상으로 세분화한 분석법으로 원인과 결과를 연계하여 상호관계를 파악한다. 오른쪽 끝의 박스 안에 앞에서 정 한 특성을 기입하고 왼쪽에서 오른쪽으로 굵은 화살표를 표시한다. tWBI SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #24
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', '11111111-1111-1111-1111-111111111104', 'mcq', '감각저장으로부터 정보를 작업기억으로 전달하기 위한 코 드화 분류에 해당되지 않는 것은?', 2, 354)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd5a6257-febe-7388-2fb8-30f67d413d41', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '시각코드', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '촉각코드', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3764b7f7-bda6-3f6e-1508-c0c0ec8c5726', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '음성코드', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd917ab6-bf72-34aa-3685-fe0257f13b4a', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '의미코드', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', 'ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', '② 촉각코드', '정답 ②. 짜 일반적으로 작업기억의 정보는 시각(Visual), •음성(Phonetic). 의미(Semantic) 코드로 저장된다. 시각 및 음성 코드는 자극의 시각적 또 는 청각적인 표현이며. 이 각각은 반대 유형의 자극에 의하거나 장기기억에 서 내부적으로 발생할 수 있다. 의미코드는 자극에 의해 발생되는 상이나 음 이 아니라 자극 의미의 추상적인 표현으로서 장기기억에서 중요한 요소이다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등 금형을 부착 • 해체 또는 조정하는 작업을 할 때, 슬라이드가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위해 사용 해야 하는 것은?(단, 해당 작업에 종사하는 근로자의 신체 가 위험한계 내에 있는 경우이다.)', 2, 355)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('721ec1c8-38d3-e79f-da7a-7a2323ba8fa5', '18a79c5a-b660-6995-92a8-b35a81882906', '방진구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ff29067-51df-ddc1-9977-0705383cfb56', '18a79c5a-b660-6995-92a8-b35a81882906', '안전블록', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9fe5ec4-bc6e-1354-ebfa-dea891e7ee77', '18a79c5a-b660-6995-92a8-b35a81882906', '시건장치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ab5e6dc-c556-c3d0-da62-2525dc6abe90', '18a79c5a-b660-6995-92a8-b35a81882906', '날접촉예방장치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '8ff29067-51df-ddc1-9977-0705383cfb56', '② 안전블록', '정답 ②. I 프레스 등의 금형을 부착 • 해체 또는 조정하는 작업을 할 때에 해 당 작업에 종사하는 근로자의 신체가 위험한계 내에 있는 경우 슬라이드가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위 하여 안전블록을 사용하는 등 필요한 조치를 하여야 한다. 圓', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 드릴작업의 안전사항으로 틀린 것은?', 2, 356)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e73b3879-e370-4ae0-d202-a806660e6617', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '옷소매가 길거나 찢어진 옷은 입지 않는다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1ed676b-6f15-5f5b-6c62-84f56366d25e', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '회전하는 드릴에 걸레 등을 가까이 하지 않는다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fda8c0f-2df8-a4f3-f831-6b7533ac5186', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '스핀들에서 드릴을 뽑아낼 때에는 드릴 아래에 손을 내', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '② 작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', '정답 ②. 밀지 않는다. K9 드릴링 머신의 안전작업수칙 • 일감은 견고하게 고정시켜야 하며 손으로 쥐고 구멍을 뚫는 것은 위험하다. • 작업시작 전 척 렌치(Chuck Wrench)를 반드시 뺀다. • 장갑을 끼고 작업을 하지 않아야 하고. 회전하는 드릴에 걸레 등을 가까 이 하지 않는다. • 구멍을 뚫을 때 관통된 것을 획인하기 위하여 손을 집어넣지 않아야 한다. • 칩은 회전을 중지시킨 후 브러시로 제거하여야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16ce7709-481c-200a-6d20-df790948544b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기의 과부하방지장치에서 요구 하는 일반적인 성능기준으로 가장 적절하지 않은 것은?', 2, 357)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('255b34d7-426d-bc5c-5ce9-fa3f706dae03', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치 작동 시 경보음과 경보램프가 작동되', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a92382c-bd21-c7d8-7f4d-c09e124906d1', '16ce7709-481c-200a-6d20-df790948544b', '외함의 전선 접촉부분은 고무 등으로 밀폐되어 물과 먼', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6d53d-1272-166a-4dab-9d7da8a5c59e', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치와 타 방호장치는 기능에 서로 장애를', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '16ce7709-481c-200a-6d20-df790948544b', '방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16ce7709-481c-200a-6d20-df790948544b', '9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '④ 방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', '정답 ④. 동시에 원활하게 작동하는 구조이며 정지해서는 안 된다. 양중기 과부하방지장치의 일반적인 성능기준 방호장치의 기능을 제거 또는 정지할 때 양중기의 기능도 동시에 정지할 수 있는 구조이어야 한다. 뽀I', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇의 작동범위 내에서 그 로봇에 관하여 교시 등 작업을 행하는 때 작업시작 전 점검사항으 로 옳은 것은?(단, 로봇의 동력원을 차단하고 행하는 것은 제외)', 2, 358)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b33858-a38a-63e6-eb4c-451d20996b70', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '과부하방지장치의 이상 유무', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38839e3e-881e-0cb4-0b23-3b9c97542875', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '압력제한스위치의 이상 유무', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf2aafc-6765-a83e-eff7-2db4be4569fb', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '외부 전선의 피복 또는 외장의 손상 유무', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61a98a5-37a3-2fdf-36c4-313cff79e91e', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '권과방지장치의 이상유무', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', 'ebf2aafc-6765-a83e-eff7-2db4be4569fb', '③ 외부 전선의 피복 또는 외장의 손상 유무', '정답 ③. KS 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차 작업시작 전 점검사항으로 거리가 가장 먼 것은?', 2, 359)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b5ee9f3-4a1d-69d5-e38a-9fafaeed5502', '52083862-c8df-e49e-0174-57c32e717f2b', '제동장치 및 조종장치 기능의 이상 유무', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43d81af1-51b4-f454-86fc-2378448cb05b', '52083862-c8df-e49e-0174-57c32e717f2b', '압력방출장치의 작동 이상 유무', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('999a88c8-2e3f-d366-b9fd-52fdb42c9657', '52083862-c8df-e49e-0174-57c32e717f2b', '바퀴의 이상유무', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c798629-9a1c-4205-5432-15610483fe45', '52083862-c8df-e49e-0174-57c32e717f2b', '전조등• 후미등• 방향지시기 및 경보장치 기능의 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '43d81af1-51b4-f454-86fc-2378448cb05b', '② 압력방출장치의 작동 이상 유무', '정답 ②. 유무 a 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 지게차 작업시작 전 점검사항 • 제동장치 및 조종장치 기능의 이상 유무 • 하역장치 및 유압장치 기능의 이상 유무 • 바퀴의 이상유무 • 전조등 • 후미등 - 방향지시기 및 경보장치 기능의 이상 유무 E 81', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2021-2 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '11111111-1111-1111-1111-111111111104', 'mcq', '지락이 생긴 경우 접촉상태에 따라 접촉전압을 제한할 필요 가 있다. 인체의 접촉상태에 따른 허용접촉전압을 나타낸 것으로 다음 중 옳지 않은 것은?', 2, 360)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ef41d37-7cdf-a658-d0f7-533e432dddf5', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제1종: 2.5［V］ 이하', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2dbfa5a7-2658-c325-8063-31c35174d7fa', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제2종: 25［V］ 이하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49916f43-52aa-52b9-2fde-134b6d2e5ff7', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제3종: 35［V］ 이하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d87e516e-cb66-f771-4119-378835ebb974', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제4종: 제한 없음', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '49916f43-52aa-52b9-2fde-134b6d2e5ff7', '③ 제3종: 35［V］ 이하', '정답 ③. B 허용접촉전압 종별 허용접촉전압 제1 종 Z5[V] 이하 제2종 25[V] 이하 제 3종 50[V] 이하 제 4종 제한 없음 아UPTER 02 감전재해 및 방지대책 06', array['산업안전기사','2021-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
