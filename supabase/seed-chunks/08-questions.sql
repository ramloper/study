-- chunk 8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('62361668-73df-54b6-8de8-456859f088a9', '11111111-1111-1111-1111-111111111104', 'mcq', '회전하는 부분의 접선방향으로 물려 들어갈 위험이 존재하 는 점으로 주로 체인, 풀리, 벨트, 기어와 랙 등에서 형성되 는 위험점은?', 2, 281)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3eb23557-1e19-0914-6313-d535348023d4', '62361668-73df-54b6-8de8-456859f088a9', '끼임점', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01376845-dfae-5eb9-bd7f-47b50a06f022', '62361668-73df-54b6-8de8-456859f088a9', '협착점', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8ab2187-a1ba-fee7-2862-07329b6467fa', '62361668-73df-54b6-8de8-456859f088a9', '절단점', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db6a5db4-a17d-06ac-d4cb-9089f7ef8a4a', '62361668-73df-54b6-8de8-456859f088a9', '접선물림점', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('62361668-73df-54b6-8de8-456859f088a9', 'db6a5db4-a17d-06ac-d4cb-9089f7ef8a4a', '④ 접선물림점', '정답 ④. 접선물림점', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09207a60-2c59-2552-d943-e7680b62d16b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기에 해당하지 않는 것은?', 2, 282)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('929c7e89-0c24-01b8-879f-181e8bc12221', '09207a60-2c59-2552-d943-e7680b62d16b', '곤돌라', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99b38946-3903-b654-1b97-1991ed5e62cd', '09207a60-2c59-2552-d943-e7680b62d16b', '이동식 크레인', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4dee612f-901f-5b69-65eb-2d434b2a8d4b', '09207a60-2c59-2552-d943-e7680b62d16b', '적재하중 0.05톤의 이삿짐운반용 리프트', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc90f416-d045-f5cd-6cfd-ac4b58f47402', '09207a60-2c59-2552-d943-e7680b62d16b', '화물용 엘리베이터', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09207a60-2c59-2552-d943-e7680b62d16b', '4dee612f-901f-5b69-65eb-2d434b2a8d4b', '③ 적재하중 0.05톤의 이삿짐운반용 리프트', '정답 ③. 양중기의 종류 • 크레인(호이스트 (Hoist) 포함) •이동식 크레인 • 리프트(이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로한정) •곤돌라 •승강기 WW', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차에서 통상적으로 갖추고 있어 야 하나, 마스트의 후방에서 화물이 낙하함으로써 근로자에 게 위험을 미칠 우려가 없는 때에는 반드시 갖추지 않아도 되는 것은?', 2, 283)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76bc6874-32bf-5abf-754a-865753147fd1', '66c5d13a-81b6-6885-9770-3f44af91db11', '전조등', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78a83d45-0e48-6e90-4988-6e78b3723585', '66c5d13a-81b6-6885-9770-3f44af91db11', '헤드가드', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ab2726-682c-8389-ef4b-0157fbd6daf1', '66c5d13a-81b6-6885-9770-3f44af91db11', '백레스트', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84042037-476b-5d88-918f-a14a89cf242e', '66c5d13a-81b6-6885-9770-3f44af91db11', '포크', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '19ab2726-682c-8389-ef4b-0157fbd6daf1', '③ 백레스트', '정답 ③. 백레스트', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', '11111111-1111-1111-1111-111111111104', 'mcq', ',300/220[V], 2O[kVA]인 3상 변압기로부터 공급받고 있 는 저압 전선로의 절연 부분의 전선과 대지 간의 절연저항 의 최솟값은 약 몇 [Q]인가?（단, 변압기의 저압 측 중성점 에 접지가 되어 있다.）', 2, 284)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4a5906e-9658-5ce5-22c0-ceb77d4c790d', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '1,240', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa9d54f6-f869-a8bd-fd8f-2d64590660e6', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '2,794', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbc9ee85-204e-0597-69be-961de50ee1fb', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '4,840', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df2142e5-36d1-7364-0db5-1b6959e049c3', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '8,383', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', 'df2142e5-36d1-7364-0db5-1b6959e049c3', '④ 8,383', '정답 ④. 8,383', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '11111111-1111-1111-1111-111111111104', 'mcq', '감전사고로 인한 전격사의 메커니즘으로 가장 거리가 먼 것 은?', 2, 285)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84ac13b9-6c26-9f83-fc84-29899a1ba195', '5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '흉부수축에 의한 질식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae48807d-4269-a3bf-bd4f-ef6c61f3ca8b', '5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '심실세동에 의한 혈액 순환기능의 상실', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('751f89f3-809a-59bd-8214-1627fc825ccf', '5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '내장파열에 의한 소화기계통의 기능 상실', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d17e892-f0b5-7c09-5780-1ae69f6ab070', '5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '호흡중추신경 마비에 따른 호흡기능 상실', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f19cbc3-96d0-a9aa-7344-b776955a4a8a', '751f89f3-809a-59bd-8214-1627fc825ccf', '③ 내장파열에 의한 소화기계통의 기능 상실', '정답 ③. 내장파열에 의한 소화기계통의 기능 상실', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '11111111-1111-1111-1111-111111111104', 'mcq', '욕조나 샤워시설이 있는 욕실 또는 화장실에 콘센트가 시설 되어 있다. 해당 전로에 설치된 누전차단기의 정격감도전류 와동작시간은?', 2, 286)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25d3f7bf-0eda-48fa-67a4-fc7373dffec1', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하, 동작시간 0.01 초 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d183fbe5-ef0d-d704-e06f-1ff72081a5f0', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80d6179c-e177-3e71-1fe1-6a65315aa42c', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 30[mA] 이하, 동작시간 0.이초 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('658962c0-1608-3f31-b113-f351fa6d57aa', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정 격감도전류 30[mA] 이하, 동작시간 0.03초 이하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', 'd183fbe5-ef0d-d704-e06f-1ff72081a5f0', '② 정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', '정답 ②. 정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', '11111111-1111-1111-1111-111111111104', 'mcq', '이kW], 60[Hz] 3상 유도전동기가 380[V] 전원에 접속된 경우 흐르는 전류[A]는 약 얼마인가?（단, 역률은 80[%]이 다.）', 2, 287)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4131206-1b6f-816d-962f-9829384c172a', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '82.24', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2fd9e9e-4544-2479-a2c1-39d38b83e297', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '94.96', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59be7530-8213-2c2e-772b-c64cc1b2aaa8', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '116.30', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec397eba-c300-ad68-03eb-e8fccd4e437d', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '164.47', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', 'c2fd9e9e-4544-2479-a2c1-39d38b83e297', '② 94.96', '정답 ②. 94.96', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '11111111-1111-1111-1111-111111111104', 'mcq', '접지 목적에 따른 분류에서 병원설비의 의료용 전기전자 (M • E)기기와 모든 금속부분 또는 도전바닥에도 접지하여 전위를 동일하게 하기 위한 접지를 무엇이라 하는가?', 2, 288)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a61df74-5410-e6dc-22b5-b886ef198e0f', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '계통접지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '등전위 접지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73fe1f92-f1b7-9514-1918-f23a4567ae50', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '노이즈방지용 접지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1df2b1e4-09f4-bed9-20b0-b0ce64b580ee', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '정전기 장해 방지 이용 접지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', 'eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '② 등전위 접지', '정답 ②. 접지의 목적에 따른 종류 접지의 종류 접지목적 계통접지 고압전로와 저압전로 혼촉 시 감전이나 화재 방지 정전기방지용 접지 정전기의 축적에 의한 폭발재해 방지 등전위 접지 병원에 있어서의 의료기기 사용 시의 안전 확보 잡음대책용 접지 잡음에 의한 전자장치의 파괴나 오동작 방지 아4APTER 05 전기설비 위험요인관리 07', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순서 와 투입순서가 안전수칙에 가장 적합한 것은? DS O.C.B DS 전원 ----사、丄O--------1~O o|--------C斗‘丄O 부하 0 © @', 2, 289)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ba01a4-3ca7-8677-3d05-be4fc553bfc2', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: ®—*® — @, 투입:® … ® — @', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2f6141b-76dc-cfbb-5c34-0745d6006156', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: Q> —（타）一®，투입:© — @ — @', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2aca0b1-243a-f488-02f6-edd48e465a3f', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: @ —（9）— ®, 투입:©） — ® — ©', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: © — © — @, 투입:©—-® —（9）', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', 'dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', '④ 차단: © — © — @, 투입:©—-® —（9）', '정답 ④. 차단: © — © — @, 투입:©—-® —（9）', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기 화재폭발 원인으로 인체대전에 대한 예방대책으로 옳지 않은 것은?', 2, 290)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aac71c7f-a595-4039-090a-6cc9e603b283', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', 'Wrist Strap을 사용하여 접지선과 연결한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd353f2-5a51-ae21-811c-07621008dbd0', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 제를 넣은 제전복을 착용한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d16d3df3-c5a5-d6e2-ac41-1f4969edecdd', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 성능이 있는 안전화를 착용한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5979bac6-bb51-ba3f-a19b-53468ec1b346', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '바닥 재료는 고유저항이 큰 물질을 사용한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '5979bac6-bb51-ba3f-a19b-53468ec1b346', '④ 바닥 재료는 고유저항이 큰 물질을 사용한다.', '정답 ④. 금지하여야 한다.(작업장 바닥에 도전성을 갖추도록 할 것)', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '11111111-1111-1111-1111-111111111104', 'mcq', '정격사용률이 30[%], 정격 2차 전류가 300[A]인 교류아크 용접기를 200[A]로 사용하는 경우의 허용사용률[%]은?', 2, 291)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2731356a-0a74-7e80-ecba-ce8cf965b1a2', '47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '13.3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a56084b-12f9-df51-428b-cff470ec8001', '47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '67.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e66a3771-49b5-f0e3-c3da-d5b305d86df9', '47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '110.3', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2edb8dc9-13b8-8161-ff7c-e303c6f70afd', '47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '157.5', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('47aa5cbc-b3a9-eeef-2661-a657b84b6c78', '1a56084b-12f9-df51-428b-cff470ec8001', '② 67.5', '정답 ②. 67.5', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', '11111111-1111-1111-1111-111111111104', 'mcq', '처음 온도가 20[℃]인 공기를 절대압력 1 기압에서 3기압으 로 단열압축하면 최종온도는 약 몇 [℃]인가?（단, 공기의 비열비는 1.4 이다.）', 2, 292)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('366bd292-65d1-543f-3426-118f415cfb6d', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '68[幻]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('904d32db-09b8-1d01-d007-715b2b3b8b90', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '75[t]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be505dbd-cf65-346b-7bd9-2f113360fded', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '128[t]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55c05667-db02-0ca8-4bf4-22fe27098db4', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '164[℃]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', 'be505dbd-cf65-346b-7bd9-2f113360fded', '③ 128[t]', '정답 ③. 128[t]', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '11111111-1111-1111-1111-111111111104', 'mcq', '물질의 누출방지용으로써 접합면을 상호 밀착시키기 위하 여 사용하는 것은?', 2, 293)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4db3d846-a9df-cba2-8ef4-00475120c809', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '개스킷', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e767d71c-a43e-a367-252b-daec8e30495e', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '체크밸브', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af348f41-8c8a-f9be-0795-a69d0a06e3db', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '플러그', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('777d23a2-e40a-28cd-1cf1-d2658e072950', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '콕크', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '4db3d846-a9df-cba2-8ef4-00475120c809', '① 개스킷', '정답 ①. 시 W 개스킷（Gasket） 관 플랜지 고정 접합면에 끼워 볼트 및 기타 방법으로 죄어 유체의 누설을 방지하는 부속품이다. W릐', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('50209412-b57d-a29d-3284-65c63766ee50', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류에서 “폭발성 물질 및 유기과산화물”에 해당하는 것은?', 2, 294)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('610e357f-94ab-9d10-5412-0b94995c3820', '50209412-b57d-a29d-3284-65c63766ee50', '디아조화합물', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a0af211-ea24-8e89-0e84-865b3555a478', '50209412-b57d-a29d-3284-65c63766ee50', '황린', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f4d95e2-bbc5-902b-bc4e-059079efb3a1', '50209412-b57d-a29d-3284-65c63766ee50', '알킬알루미늄', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d90a8582-69ac-acb0-645f-d6ec7113b639', '50209412-b57d-a29d-3284-65c63766ee50', '마그네슘 분말', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('50209412-b57d-a29d-3284-65c63766ee50', '610e357f-94ab-9d10-5412-0b94995c3820', '① 디아조화합물', '정답 ①. 디아조화합물은 폭발성 물질 및 유기과산화물에 해당한다. 오답래설 황린. ® 알킬알루미늄. ® 마그네슘 분말은 물반응성 물질 및 인화성 고체에 해당한다. EWEI', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a6e462d-39e5-900c-411d-bf98f3cef8fb', '11111111-1111-1111-1111-111111111104', 'mcq', '화염방지기의 설치에 관한 사항으로（ ）에 알맞은 것은? 사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화학 설비에서 증기나 가스를 대기로 방출하는 경우에는 외부로부 터의 화염을 방지하기 위하여 화염방지기를 그 설비（ ） 에 설치하여야 한다.', 2, 295)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8577952-d204-b2e2-7404-86f4567cef73', '1a6e462d-39e5-900c-411d-bf98f3cef8fb', '상단', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('515b7320-f535-ebcd-1ecf-d2a9bc655f74', '1a6e462d-39e5-900c-411d-bf98f3cef8fb', '하단', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01f3a82d-36a4-50f9-3ce1-34cbf4ab8dc3', '1a6e462d-39e5-900c-411d-bf98f3cef8fb', '중앙', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d87f9865-c1a9-b0b2-58e3-01c1346bbe2f', '1a6e462d-39e5-900c-411d-bf98f3cef8fb', '무게중심', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a6e462d-39e5-900c-411d-bf98f3cef8fb', 'c8577952-d204-b2e2-7404-86f4567cef73', '① 상단', '정답 ①. 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다. !', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a30896ab-6e10-c8fe-f2c6-c6cc3332d459', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전보고서 중 공정안전자료에 포함하여야 할 세부내 용에 해당하는 것은?', 2, 296)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8127fbb-3e05-2033-bd5f-ff69defa1c72', 'a30896ab-6e10-c8fe-f2c6-c6cc3332d459', '비상조치계획에 따른 교육계획', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdbd8eee-639b-a70a-45bb-f0485eafdc2c', 'a30896ab-6e10-c8fe-f2c6-c6cc3332d459', '안전운전지침서', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('deb8e4e0-74c9-457d-f4f7-d8b768be12f1', 'a30896ab-6e10-c8fe-f2c6-c6cc3332d459', '각종건물•설비의 배치도', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e66ad17-9cdf-ca7d-11da-5c149036ff70', 'a30896ab-6e10-c8fe-f2c6-c6cc3332d459', '도급업체 안전관리계획', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a30896ab-6e10-c8fe-f2c6-c6cc3332d459', 'deb8e4e0-74c9-457d-f4f7-d8b768be12f1', '③ 각종건물•설비의 배치도', '정답 ③. 은 비상조치계획, @, 는 안전운전계획에 포함하여야 할 세 부내용이다. t gi', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f72af80-6249-4ad6-92ae-c27b512b2266', '11111111-1111-1111-1111-111111111104', 'mcq', '디에틸에테르의 연소범위에 가장 가까운 값은?', 2, 297)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8751790a-9e5e-11ad-0157-4212e694d678', '5f72af80-6249-4ad6-92ae-c27b512b2266', '2〜 10.4[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f6419dc-4f3f-ebfc-eb82-c04efd49aad3', '5f72af80-6249-4ad6-92ae-c27b512b2266', '1.9〜48[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef832881-ba03-91fa-bcc8-1eb965aa4f3c', '5f72af80-6249-4ad6-92ae-c27b512b2266', '2.5〜15[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('922bc6da-b60e-2874-8b44-319c6739fc7f', '5f72af80-6249-4ad6-92ae-c27b512b2266', '1.5〜7.8[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f72af80-6249-4ad6-92ae-c27b512b2266', '3f6419dc-4f3f-ebfc-eb82-c04efd49aad3', '② 1.9〜48[%]', '정답 ②. 1.9〜48[%]', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', '11111111-1111-1111-1111-111111111104', 'mcq', '가스누출감지경보기 설치에 관한 기술상의 지침으로 틀린 것은?', 2, 298)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2fcdcb0-85ac-4f69-75e0-70fd43075a18', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '암모니아를 제외한 가연성 가스 누출감지경보기는 방', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6480aeb-3c9a-4703-8290-07171edd5b5c', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '독성 가스누출감지경보기는 해당 독성가스 허용농도의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88d84e88-97a7-131b-ae98-f43aeefc00c6', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '하나의 감지대상가스가 가연성이면서 독성인 경우에는', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e4c84e6-55c1-fc07-9e59-e44cf97d3ab9', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '건축물 안에 설치되는 경우, 감지대상가스의 비중이 공', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', 'e6480aeb-3c9a-4703-8290-07171edd5b5c', '② 독성 가스누출감지경보기는 해당 독성가스 허용농도의', '정답 ②. 폭성능을 갖는 것이어야 한다. 독성 가스누출감지경보기는 해당 독성가스 허용농도의 2519] 이하에서 경보가 울리도록 설정하여야 한다. (8 하나의 감지대상가스가 가연성이면서 독성인 경우에는 독성가스를 기준하여 가스누출감지경보기를 선정하여 건축물 안에 설치되는 경우, 감지대상가스의 비중이 공 기보다 무거운 경우에는 건축물 내의 하부에 설치하여 가연성 가스누출감지경보기는 감지대상 가스의 폭발하한계 25(%] 이하, 독성 가스누출감지경보기는 해당 독성가스의 허용농도 이하 에서 경보가 울리도록 설정한다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7213523e-96fb-1da9-98b5-dfef514d1bc0', '11111111-1111-1111-1111-111111111104', 'mcq', '단관비계가 넘어지는 것을 방지하기 위하여 사용하는 벽이 음의 간격기준으로 옳은 것은?', 2, 299)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc2351c5-7808-4880-067f-4581d2e56c82', '7213523e-96fb-1da9-98b5-dfef514d1bc0', '수직방향 5[m] 이하. 수평방향 5[m] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdcb785c-b8c5-ef89-9ab8-b68836bcbeac', '7213523e-96fb-1da9-98b5-dfef514d1bc0', '수직방향 6[m] 이하. 수평방향 6[m] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('beb77e60-c08f-783f-5a7f-660172e4b4ef', '7213523e-96fb-1da9-98b5-dfef514d1bc0', '수직방향 7[m] 이하, 수평방향 7[m] 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45aa2c2f-40c3-4b89-7da8-8e35473318b1', '7213523e-96fb-1da9-98b5-dfef514d1bc0', '수직방향 8[m] 이하, 수평방향 8[m] 이하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7213523e-96fb-1da9-98b5-dfef514d1bc0', 'fc2351c5-7808-4880-067f-4581d2e56c82', '① 수직방향 5[m] 이하. 수평방향 5[m] 이하', '정답 ①. 단관비계의 벽이음은 수직방향 5[m]. 수평방향 5[m] 이내로 조립 하여야 한다. E#gl', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '11111111-1111-1111-1111-111111111104', 'mcq', '유한사면에서 원형활동면에 의해 발생하는 일반적인 사면 파괴의 종류에 해당하지 않는 것은?', 2, 300)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffc51923-85f8-d238-2bc9-7862072ffc02', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 내 파괴 （Slope Failure）', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64372fce-54da-909d-08e8-217c212f3563', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 선단 파괴 （Toe Failure）', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 인장 파괴 （Tension Failure）', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94e5c094-04aa-88d5-a649-262e859037f1', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 저부 파괴 （Base Failure）', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '③ 사면 인장 파괴 （Tension Failure）', '정답 ③. 사면 인장 파괴 （Tension Failure）', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 화물자동차의 승강설비 에 관한 사항이다.（ ）안에 알맞은 내용으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）이상 인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하는 경 우에는 근로자의 추가 위험을 방지하기 위하여 해당 작업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전하게 오르내리기 위한 설비를 설치하여야 한다.', 2, 301)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55629a17-c678-cdd1-2b49-4158375d1c38', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '2[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85762ef7-dedd-9727-03b8-78854f15ae23', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '4[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54bfa901-2ccc-a60f-7243-9ac44172ccfe', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '8[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60ccdb9c-e25b-15d3-53bd-a3b8fdff3e6d', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '107', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '55629a17-c678-cdd1-2b49-4158375d1c38', '① 2[m]', '정답 ①. 2[m]', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('93d41b89-8804-5ecf-3b5e-7049d951bac6', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 사용되는 작업발판 일체형 거푸집의 종류에 해당되지 않는 것은?', 2, 302)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5c234e9-7497-c19f-1900-a89e99373e11', '93d41b89-8804-5ecf-3b5e-7049d951bac6', '갱 폼(gang form)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72222a37-fb6d-8c79-d830-07093cad7adf', '93d41b89-8804-5ecf-3b5e-7049d951bac6', '슬립 폼(slip form)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83bec4a1-04b2-1306-52cd-54acb24a221e', '93d41b89-8804-5ecf-3b5e-7049d951bac6', '클라이 밍 폼(climbing form)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d43614b3-d872-3e65-f7b5-e02b93254b61', '93d41b89-8804-5ecf-3b5e-7049d951bac6', '유로 폼(euro form)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('93d41b89-8804-5ecf-3b5e-7049d951bac6', 'd43614b3-d872-3e65-f7b5-e02b93254b61', '④ 유로 폼(euro form)', '정답 ④. 유로 폼(euro form)', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 작업으로 인하여 물체가 떨어지거나 날아올 위험이 있는 경우에 대한 안전조치에 해당하지 않는 것은?', 2, 303)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc41b5e2-06aa-07d3-f7d6-018357256569', '8339acbd-0258-a79c-4e07-d5311226035a', '수직보호망 설치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59f04ead-666c-70af-f459-4171c61404cc', '8339acbd-0258-a79c-4e07-d5311226035a', '방호선반 설치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('edad398a-f7c2-fdea-7657-65bd834da674', '8339acbd-0258-a79c-4e07-d5311226035a', '울타리 설치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930d9d38-e8f0-fdfd-ab69-68e89e0ad3a1', '8339acbd-0258-a79c-4e07-d5311226035a', '낙하물 방지망 설치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', 'edad398a-f7c2-fdea-7657-65bd834da674', '③ 울타리 설치', '정답 ③. 작업으로 인하여 물체가 떨어지거나 날아올 위험이 있는 경우 낙 하물 방지망. 수직보호망 또는 방호선반의 설치. 출입금지구역의 설정. 보 호구의 착용 등 위험을 방지하기 위하여 필요한 조치를 하여야 한다. ▽181', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5006984a-b3dc-0b6a-24fd-ec462ce84606', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업안전보건위원회의 구성 • 운영에 관한 설명 중 틀린 것은?', 2, 304)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0648133b-1aba-19f3-1710-5305a5ae1481', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '정기회의는 분기마다 소집한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93e6576e-8dce-1c39-a978-495ce16f19ab', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '위원장은 위원 중에서 호선（互選）한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da135c7b-19ad-7dae-a556-45ffe4850b52', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '근로자대표가 지명하는 명예산업안전감독관은 근로자', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6277b84-2266-898e-6f80-65b8c987b57d', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '공사금액 100억 원 이상의 건설업의 경우 산업안전보', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5006984a-b3dc-0b6a-24fd-ec462ce84606', 'c6277b84-2266-898e-6f80-65b8c987b57d', '④ 공사금액 100억 원 이상의 건설업의 경우 산업안전보', '정답 ④. 공사금액 100억 원 이상의 건설업의 경우 산업안전보', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4258d70d-b813-0e54-5df0-45ba2caebb40', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 잠함（潛函） 또는 잠수작업 등 높은 기압에서 작업하는 근로자의 근로시간 기준은?', 2, 305)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3abfa025-3428-1bc2-78f6-e6a658ede3fe', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 6시간, 1주 32시간 초과금지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7a01876-09f5-d82d-d95b-6a6b003f75ee', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 6시간. 1주 34시간 초과금지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cb0d7ed-f084-7a0b-ab4d-b79ab0dcc6e1', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 8시간, 1주 32시간 초과금지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48d2b789-9208-aa43-e859-0eca7565844a', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 8시간, 1주 34시간 초과금지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4258d70d-b813-0e54-5df0-45ba2caebb40', 'b7a01876-09f5-d82d-d95b-6a6b003f75ee', '② 1일 6시간. 1주 34시간 초과금지', '정답 ②. 유해 • 위험작업에 대한 근로시간 제한 사업주는 잠함 또는 잠수작업 등 높은 기압에서 작업하는 근로자에게는 1 일 6시간. 1주 34시간을 초과하여 근로하게 해서는 아니 된다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef854532-a3c5-df4b-91ce-8403cc8f74b9', '11111111-1111-1111-1111-111111111104', 'mcq', '산업현장에서 재해발생 시 조치순서로 옳은 것은?', 2, 306)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db6ce75f-3cc0-968e-d463-9875aa207b72', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '긴급처리 一 재해조사一 원인분석 — 대책수립', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('396c39ad-e335-c237-9d2e-a62aaa87f129', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '긴급처리 一 원인분석 一 대책수립 一 재해조사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94863669-e054-494e-a40e-ecbb186df5ab', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '재해조사 一 원인분석 一 대책수립 一 긴급처리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d18b98be-322f-17d1-12a3-949cbf4d35c3', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '재해조사 一 대책수립 ~ 원인분석 一 긴급처리', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef854532-a3c5-df4b-91ce-8403cc8f74b9', 'db6ce75f-3cc0-968e-d463-9875aa207b72', '① 긴급처리 一 재해조사一 원인분석 — 대책수립', '정답 ①. 긴급처리 一 재해조사一 원인분석 — 대책수립', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2ee6983e-79d1-474d-7341-3bf307f60a17', '11111111-1111-1111-1111-111111111104', 'mcq', '산업재해보험적용 근로자 1,000명인 플라스틱 제조 사업장 에서 작업 중 재해 5건이 발생하였고, 1 명이 사망하였을 때 이 사업장의 사망만인율은?', 2, 307)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1b06563f-0f8f-4a79-3e72-72532a5de1b8', '2ee6983e-79d1-474d-7341-3bf307f60a17', '2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9467eff-60a8-531c-a6fd-3acf85974ad1', '2ee6983e-79d1-474d-7341-3bf307f60a17', '5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('946d43b4-3d25-d30c-92db-9e6a95176069', '2ee6983e-79d1-474d-7341-3bf307f60a17', '10', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80e9f949-59f5-cbbf-054b-b4dfd80f1b88', '2ee6983e-79d1-474d-7341-3bf307f60a17', '20', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2ee6983e-79d1-474d-7341-3bf307f60a17', '946d43b4-3d25-d30c-92db-9e6a95176069', '③ 10', '정답 ③. 임금근로자 수 10,000명당 발생하는 사망자 수의 비율이다', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('67676942-1d2a-3fee-0431-e6553fd47f8d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자 안전보건교육 대상에 따른 교육시간 기준 중 틀린 것은?（단, 상시작업이며, 일용근로 자 및 근로계약기간이 1개월 이하인 기간제근로자는 제외 한다.）', 2, 308)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('334dfe52-3bc1-810d-1368-d5bbaffcd118', '67676942-1d2a-3fee-0431-e6553fd47f8d', '특별교육 - 16시간 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf909c4f-6e9b-666c-1d52-9ad704665fbf', '67676942-1d2a-3fee-0431-e6553fd47f8d', '채용 시 교육 - 8시간 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22fc0211-4d44-82a7-8a5f-0190eceb53f5', '67676942-1d2a-3fee-0431-e6553fd47f8d', '작업내용 변경 시 교육 - 2시간 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdd45fad-370d-e28b-f4d9-71a632bbf789', '67676942-1d2a-3fee-0431-e6553fd47f8d', '사무직 종사 근로자 정기교육 - 매반기 2시간 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('67676942-1d2a-3fee-0431-e6553fd47f8d', 'fdd45fad-370d-e28b-f4d9-71a632bbf789', '④ 사무직 종사 근로자 정기교육 - 매반기 2시간 이상', '정답 ④. 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 판매업무에 직접 종사하는 매반기 6시간 이상 정기교육 그 밖의 근로자 근로자 판매업무에 직접 종사하는 매반기 12시간이상 근로자 외의 근로자 일용근로자 및 근로계약기간이 1주일 1 시간이상 이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월이 4시간아상 하인 기간제근로자 그 밖의 근로자 8시간이상 일용근로자 및 근로계약기간이 1주일 작업내용 1시간이상 이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시간이상 건설업 기초 건설 일용근로자 4시간이상 안전 • 보건교육 ※ 이 문제는 개정된 법령에 따라 수정한 문제입니다', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '11111111-1111-1111-1111-111111111104', 'mcq', '안전점검을 점검시기에 따라 구분할 때 다음에서 설명하는 안전점검은? 작업담당자 또는 해당 관리감독자가 맡고 있는 공정의 설비, 기계, 공구 등을 매일 작업 전 또는 작업 중에 일상적으로 실 시하는 안전점검', 2, 309)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48843a29-2dca-fabd-e31c-c06c4cc2d1ee', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '정기점검', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2bec1d49-2a0d-bca4-b50a-42465b2b36f6', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '수시점검', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adee9357-b688-2ad9-a38e-3acdc4c268b2', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '특별점검', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('894781fb-2589-65b4-b87e-a4ba2d01d327', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '임시점검', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '2bec1d49-2a0d-bca4-b50a-42465b2b36f6', '② 수시점검', '정답 ②. 안전점검의 종류 종류 내용 일상점검 (수시점검) 작업 전 •중 •후 수시로 실시하는 점검 정기점검 정해진 기간에 정기적으로 실시하는 점검 기계 • 기구의 신설 및 변경 시 고장 수리 등에 의해 부정기 특별점검 적으로 실시하는 점검. 안전강조기간에 실시하는 점검 등 임시점검 이상 발견 시 또는 재해발생 시 임시로 실시하는 점검', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ca04ac25-ef17-b0d6-fa0a-74a137305d64', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 그림과 같은 기본모형이 나타내는 안 전보건표지의 표시사항으로 옳은 것은?(단, L은 안전보건표 지를 인식할 수 있거나 인식해야 할 안전거리를 말한다.) -b ☆0.0224L b2=0.8b', 2, 310)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42f8fe8f-1ce6-95ba-14f7-b0a117c6d783', 'ca04ac25-ef17-b0d6-fa0a-74a137305d64', '금지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657ddf9d-7b5b-923f-47a9-08d6ffeba695', 'ca04ac25-ef17-b0d6-fa0a-74a137305d64', '경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12137c81-62ff-ae55-aac7-c919e4540b7f', 'ca04ac25-ef17-b0d6-fa0a-74a137305d64', '지시', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa482acd-5ddf-096e-119a-71a21e9ff461', 'ca04ac25-ef17-b0d6-fa0a-74a137305d64', '안내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ca04ac25-ef17-b0d6-fa0a-74a137305d64', 'fa482acd-5ddf-096e-119a-71a21e9ff461', '④ 안내', '정답 ④. 안내', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('10e2702d-69a5-8610-2c8f-1f6c651a926b', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련의 문제해결 4라운드에 해당하지 않는 것은?', 2, 311)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12df432d-ecba-ce09-38f6-eb450a259a7d', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '현상파악', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac69f551-4218-ee90-c5ee-f95bbbe795b7', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '본질추구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aaf1e3ab-6dbc-62d9-aee9-aa4c275191d2', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '대책수립', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('683a9543-1f7f-7668-c192-d77288b5045e', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '원인결정', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('10e2702d-69a5-8610-2c8f-1f6c651a926b', '683a9543-1f7f-7668-c192-d77288b5045e', '④ 원인결정', '정답 ④. 위험예지훈련의 추진을 위한 문제해결 4단계 © 1 라운드: 현상파악(사실의 파악)-어떤 위험이 잠재하고 있는가? © 2라운드: 본질추구(원인조사)-이것이 위험의 포인트이다. © 3라운드: 대책수립(대책을 세운다)-당신이라면 어떻게 하겠는가? ⑨ 4라운드: 목표설정(행동계획 작성)-우리들은 이렇게 하재 W116I', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f', '11111111-1111-1111-1111-111111111104', 'mcq', '서브시스템 분석에 사용되는 분석방법으로 시스템 수명주 기에서', 2, 312)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6aa3d01-69d9-1b34-49e3-2b959d0a3aa5', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', '에 들어갈 위험분석기법은?', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef362efd-50bf-c014-7b08-30dbafe625e0', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'PHA', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2497fcca-bf82-73d9-cb5b-14573059b47f', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'FTA', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e8e6c21-7426-3391-f80b-e9155fa45b0c', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'ETA', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'ef362efd-50bf-c014-7b08-30dbafe625e0', '② PHA', '정답 ②. 나려MH 결함위험분석（FHA； Fault Hazards Analysis） 분업에 의해 여럿이 분담 설계한 서브시스템 간의 인터페이스를 조정하여 각각의 서브시스템 및 전체 시스템에 악영향을 미치지 않게 하기 위한 분 석 방식으로 시스템 정의단계와 시스템 개발단계에서 적용한다. tOZin', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b8230229-7467-3c0a-3aa5-dfdf7d079224', '11111111-1111-1111-1111-111111111104', 'mcq', 'A사의 안전관리자는 자사 화학설비의 안전성 평가를 실시 하고 있다. 그중 제2단계인 정성적 평가를 진행하기 위하여 평가 항목을 설계관계 대상과 운전관계 대상으로 분류하였 을 때 설계관계 항목이 아닌 것은?', 2, 313)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c77e036f-3fba-7078-1b97-d28b35a7e0ff', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '소방설비', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3461002f-a13c-b4e7-e3a7-4e2f0a5d3642', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '공장 내 배치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('77041d63-0bdf-1ae5-4a99-9ffdffa126e5', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '입지조건', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('865a5bff-a1c5-2e1c-ed56-bc63c30be6bf', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '원재료, 중간제품', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b8230229-7467-3c0a-3aa5-dfdf7d079224', '865a5bff-a1c5-2e1c-ed56-bc63c30be6bf', '④ 원재료, 중간제품', '정답 ④. 안전성 평가 제2단계(정성적 평가) • 설계관계: 입지조건. 공장 내 배치, 건조물, 소방설비. 공정기기 등 • 운전관계: 원재료. 운송. 저장 등 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('72bf2aab-5e3a-9601-b711-d28fa6606287', '11111111-1111-1111-1111-111111111104', 'mcq', '통화이해도 척도로서 통화이해도에 영향을 주는 잡음의 영 향을 추정하는 지수는?', 2, 314)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ac963fd-0d65-60db-1448-57f87a005eee', '72bf2aab-5e3a-9601-b711-d28fa6606287', '명료도 지수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ff66c88-9109-2934-17a8-f07e2d4b76e6', '72bf2aab-5e3a-9601-b711-d28fa6606287', '통화 간섭 수준', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86ee1342-4b8f-439c-5530-819935f672a8', '72bf2aab-5e3a-9601-b711-d28fa6606287', '이해도점수', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03182c39-658a-d2d9-3669-58b02f820711', '72bf2aab-5e3a-9601-b711-d28fa6606287', '통화공진수준', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('72bf2aab-5e3a-9601-b711-d28fa6606287', '9ff66c88-9109-2934-17a8-f07e2d4b76e6', '② 통화 간섭 수준', '정답 ②. 통화 간섭 수준', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0bf49175-e978-8fd7-e641-630d86bcf1b5', '11111111-1111-1111-1111-111111111104', 'mcq', '예비위험분석(PHA)에서 식별된 사고의 범주가 아닌 것은?', 2, 315)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('616ed1ee-d050-803b-b876-55829b374662', '0bf49175-e978-8fd7-e641-630d86bcf1b5', '중대 (Critical)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca539029-a21e-0992-0237-a2ece7953338', '0bf49175-e978-8fd7-e641-630d86bcf1b5', '한계 적 (Marginal)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b0cc5c-1eb7-1464-78ce-d6ffc062f85e', '0bf49175-e978-8fd7-e641-630d86bcf1b5', '파국적 (Catastrophic)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60b38e52-e6d6-18f1-c2a4-015385ca3412', '0bf49175-e978-8fd7-e641-630d86bcf1b5', '수용가능(Acceptable)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0bf49175-e978-8fd7-e641-630d86bcf1b5', '60b38e52-e6d6-18f1-c2a4-015385ca3412', '④ 수용가능(Acceptable)', '정답 ④. 수용가능(Acceptable)', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('78e2ed45-864d-6156-3e68-3b655887655d', '11111111-1111-1111-1111-111111111104', 'mcq', '양중기 과부하방지장치의 일반적인 공통사항에 대한 설명 중부적합한 것은?', 2, 316)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b23730a-c177-fa1a-86aa-6cd300800243', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치와 타 방호장치는 기능에 서로 장애를', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('524fb5cf-9f0e-db74-feb3-28243bc4c703', '78e2ed45-864d-6156-3e68-3b655887655d', '방호장치의 기능을 변형 또는 보수할 때 양중기의 기능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52464aea-a3e7-8a8a-c9cc-323f785f0378', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치에는 정상동작상태의 녹색 램프와 과부', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e37cf900-f79a-2a6d-eaa8-e11fea4235e6', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치 작동 시 경보음과 경보램프가 작동되', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('78e2ed45-864d-6156-3e68-3b655887655d', '524fb5cf-9f0e-db74-feb3-28243bc4c703', '② 방호장치의 기능을 변형 또는 보수할 때 양중기의 기능', '정답 ②. 어야 하며 양중기는 작동이 되지 않아야 한다. 다만, 크 레인은 과부하 상태 해지를 위하여 권상된 만큼 권하시 킬수 있다. EOi 양중기 과부하방지장치의 일반적인 성능기준 방호장치의 기능을 제거 또는 정지할 때 양중기의 기능도 동시에 정지할 수 있는 구조이어야 한다. 밖組SI', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('971372df-de8f-78da-f4f8-8867db65916d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 작업시작 전 점검해야 할 사 항에 해당하는 것은?', 2, 317)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b33da46-3313-6b54-576b-feefe31b03a6', '971372df-de8f-78da-f4f8-8867db65916d', '와이어로프가 통하고 있는 곳 및 작업장소의 지반상태', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e49992ab-176d-f359-da6d-577f5ad33381', '971372df-de8f-78da-f4f8-8867db65916d', '하역장치 및 유압장치 기능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('106a2e8a-a291-34fd-d5da-f4632edee6b5', '971372df-de8f-78da-f4f8-8867db65916d', '권과방지장치 및 그 밖의 경보장치의 기능', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33d9324e-72a7-b104-244b-50341f876db4', '971372df-de8f-78da-f4f8-8867db65916d', '1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('971372df-de8f-78da-f4f8-8867db65916d', '33d9324e-72a7-b104-244b-50341f876db4', '④ 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능', '정답 ④. 프레스 등의 작업시작 전의 점검사항 •클러치 및 브레이크의 기능 • 크랭크축 - 플라이휠 • 슬라이드 • 연결봉 및 연결 나사의 풀림 유무 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('475e1583-b598-19f7-0c96-274aabebd797', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 목재가공용 기계에 사용되는 방호장 치의 연결이 옳지 않은 것은?', 2, 318)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43079da5-9849-68a6-1ebf-0e1cc30ed73b', '475e1583-b598-19f7-0c96-274aabebd797', '둥근톱기계: 톱날접촉예방장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e311166-c93b-e73d-76d7-dc2c348bb611', '475e1583-b598-19f7-0c96-274aabebd797', '띠톱기계: 날접촉예방장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5505262-1690-4d5b-7e25-3abf949fcc8d', '475e1583-b598-19f7-0c96-274aabebd797', '모떼기기계: 날접촉예방장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('138bafda-a7bf-224d-856c-5968fa84505a', '475e1583-b598-19f7-0c96-274aabebd797', '동력식 수동대패기계: 반발예방장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('475e1583-b598-19f7-0c96-274aabebd797', '138bafda-a7bf-224d-856c-5968fa84505a', '④ 동력식 수동대패기계: 반발예방장치', '정답 ④. 대패기계의 날접촉예방장치 사업주는 작업대상물이 수동으로 공급되는 동력식 수동대패기계에 날접촉 예방장치를 설치하여야 한다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 정한 양중기의 종류에 해당하지 않는것은?', 2, 319)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc32a8dc-9693-767c-ff15-b045951d01db', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '크레 인[호이스트（hoist）를 포함]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbb0d717-0e12-5968-e3bd-f090e281cfc4', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '도르래', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ff2745c-9154-0a5a-3054-aa6bb287a482', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '곤돌라', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c2cf4c3-7280-8575-c6d1-3cc9b1c0843e', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '승강기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', 'dbb0d717-0e12-5968-e3bd-f090e281cfc4', '② 도르래', '정답 ②. 양중기의 종류 • 크레인（호이스트 （Hoist） 포함） • 이동식 크레인 • 리프트（이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로한정） •곤돌라 •승강기 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f95d1f84-58b5-dff3-3550-1f9367f5011f', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러의 급정지를 위한 방호장치를 설치하고자 한다. 앞면 롤러 직경이 36[cm]이고, 분당 회전속도가 50[rpm]이라면 급정지거리는 약 얼마 이내이어야 하는가?（단, 무부하동작 에 해당한다.）', 2, 320)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4f53d6c-8786-c2a7-03a6-f1244076f031', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '45 [cm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e7d8af8-f8af-5874-7fe3-7f03cef200e9', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '50[cm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d687852-de91-62af-c9ec-d43714b355bb', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '55 [cm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a45c849c-e4fe-42ed-5578-0149d44a6b6b', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '60[cm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f95d1f84-58b5-dff3-3550-1f9367f5011f', 'c4f53d6c-8786-c2a7-03a6-f1244076f031', '① 45 [cm]', '정답 ①. 45 [cm]', array['산업안전기사','2022-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
