-- 산업안전기사 bulk seed (OCR 2-column extract)
-- 526 MCQs. 개인 학습용. 공개 재배포 금지.
insert into public.subjects (id, name, slug, sort_order) values
  ('11111111-1111-1111-1111-111111111104', '산업안전기사', 'industrial-safety', 5)
on conflict (slug) do update set name = excluded.name, is_active = true;

-- 2025-1 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cba81080-d88d-8428-bf0d-e655077b030f', '11111111-1111-1111-1111-111111111104', 'mcq', '방진마스크의 사용 조건 중 산소농도의 최소기준으로 옳은 것은?', 2, 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b38853a8-24e7-b150-d047-638edfe3715e', 'cba81080-d88d-8428-bf0d-e655077b030f', '16[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('505e261d-eaee-0d04-f4c8-0ce4f132ef9a', 'cba81080-d88d-8428-bf0d-e655077b030f', '18[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc2d8097-4c47-3004-f460-e08f7cafb5e2', 'cba81080-d88d-8428-bf0d-e655077b030f', '21[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee3be259-6b95-ea77-c1c6-2438f675980d', 'cba81080-d88d-8428-bf0d-e655077b030f', '23. 5[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cba81080-d88d-8428-bf0d-e655077b030f', '505e261d-eaee-0d04-f4c8-0ce4f132ef9a', '② 18[%]', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 특정 행위의 지시 및 사실의 고 지에 사용되는 안전보건표지의 색도기준으로 옳은 것은?', 2, 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8b79e9c-86ac-d0ee-5976-e604fb6b3079', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '2.5G 4/10', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('139d7ab8-75cf-ae67-7293-bc4dcc3c4c79', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '2.5PB4/10', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6be4a89-ffe8-4a6b-0739-cb824fe7fada', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '5Y 8.5/12', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1176253-0663-b043-f109-e3996e2cca80', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '7.5R 4/14', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '139d7ab8-75cf-ae67-7293-bc4dcc3c4c79', '② 2.5PB4/10', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6169f163-1fc5-3f6a-4151-9f07e49d667d', '11111111-1111-1111-1111-111111111104', 'mcq', '인간관계의 메커니즘 중 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기와 비슷한 것을 발견 하는 것은?', 2, 3)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf9160da-87d6-e3d9-f4b6-b01af32d3851', '6169f163-1fc5-3f6a-4151-9f07e49d667d', '동일화', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f01e504d-fac3-fee7-da3f-d8304e76898f', '6169f163-1fc5-3f6a-4151-9f07e49d667d', '일체화', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a531118-a0dd-63c4-1478-a75d49b85a2a', '6169f163-1fc5-3f6a-4151-9f07e49d667d', '투사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d907a6a-5e4d-64a2-9ee9-1647e29266e2', '6169f163-1fc5-3f6a-4151-9f07e49d667d', '공감', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6169f163-1fc5-3f6a-4151-9f07e49d667d', 'bf9160da-87d6-e3d9-f4b6-b01af32d3851', '① 동일화', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4e3a3d94-6364-3444-1a30-ddb15b481dc8', '11111111-1111-1111-1111-111111111104', 'mcq', '유기화합물용 방독마스크 시험가스의 종류가 아닌 것은?', 2, 4)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14284ba5-d12c-cf3e-f94e-33f779b7a95d', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '염소가스 또는 증기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1bc438a-a198-5f12-7882-a7617a1c5708', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '시클로헥산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f3d31b-eb55-0dd4-2e20-f09f42fc8a15', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '디메틸에테르', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f1c1783-5340-9adb-99f8-2880b509321e', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '이소부탄', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4e3a3d94-6364-3444-1a30-ddb15b481dc8', '14284ba5-d12c-cf3e-f94e-33f779b7a95d', '① 염소가스 또는 증기', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6b52d57-48da-de07-e718-80447c30640f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건관리책임자 등에 대한 교육 시간 기준으로 틀린 것은?', 2, 5)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49bc4b19-1086-88de-b62e-99553c74e647', 'd6b52d57-48da-de07-e718-80447c30640f', '보건관리자, 보건관리전문기관의 종사자 보수교육: 24', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4d24d02-e18c-0a3f-9234-02461ff5c96e', 'd6b52d57-48da-de07-e718-80447c30640f', '안전관리자. 안전관리전문기관의 종사자 신규교육: 34', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('948022e9-88ac-06b0-6148-045f539ef587', 'd6b52d57-48da-de07-e718-80447c30640f', '안전보건관리책임자 보수교육: 6시간 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe155008-8ce8-9bee-9e84-aa74e41d2de4', 'd6b52d57-48da-de07-e718-80447c30640f', '건설재해예방전문지도기관의 종사자 신규교육: 24시', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6b52d57-48da-de07-e718-80447c30640f', 'fe155008-8ce8-9bee-9e84-aa74e41d2de4', '④ 건설재해예방전문지도기관의 종사자 신규교육: 24시', '2025-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8763138a-89b8-e83e-65bf-6ffc610e9c63', '11111111-1111-1111-1111-111111111104', 'mcq', 'Line-Staff형 안전보건관리조직에 관한 특징이 아닌 것은?', 2, 6)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86828604-bd34-b233-e42e-603c6a6edbc5', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad921ac8-b998-347e-6c1f-8b9a2cc5f293', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '스태프가 월권행위할 경우가 있으며 라인스태프에 의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba3eb5bb-dd41-61ac-6868-36a8beb783c2', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '생산부문은 안전에 대한 책임과 권한이 없다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e6a4e4d-f938-7030-0491-2510ecdb7939', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '명령계통과 조언의 권고적 참여가 혼동되기 쉽다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8763138a-89b8-e83e-65bf-6ffc610e9c63', 'ba3eb5bb-dd41-61ac-6868-36a8beb783c2', '③ 생산부문은 안전에 대한 책임과 권한이 없다.', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('af702af6-e205-9e10-65b6-db87cef86dd4', '11111111-1111-1111-1111-111111111104', 'mcq', '직무적성검사의 특징과 가장 거리가 먼 것은?', 2, 7)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8026384f-de36-ec9d-4e2b-3596de1861b4', 'af702af6-e205-9e10-65b6-db87cef86dd4', '재현성', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fd5cf4d-a15f-f6e8-aef5-80138019bfcd', 'af702af6-e205-9e10-65b6-db87cef86dd4', '객관성', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00951d12-464a-c36b-4b8d-1e8db2babc15', 'af702af6-e205-9e10-65b6-db87cef86dd4', '타당성', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73d88475-5e34-e14a-d8cb-6be949efb21b', 'af702af6-e205-9e10-65b6-db87cef86dd4', '표준화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('af702af6-e205-9e10-65b6-db87cef86dd4', '8026384f-de36-ec9d-4e2b-3596de1861b4', '① 재현성', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f50b6aa-5899-ee15-b213-69e5f13619f1', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구위계이론 중 제2단계 욕구에 해 당하는 것은?', 2, 8)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a317661-2dd6-6b04-c778-1cc66b72263e', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '자아실현의 욕구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bce903af-efad-021e-9496-d8dfdfc5b1b7', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '안전에 대한 욕구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c52a4dc-8eca-95b0-fc84-dee4c5b7fcad', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '사회적욕구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cbf5faf-9746-1b2b-1c00-9a639527faf3', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '생리적욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f50b6aa-5899-ee15-b213-69e5f13619f1', 'bce903af-efad-021e-9496-d8dfdfc5b1b7', '② 안전에 대한 욕구', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #23
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4a56d7e9-c594-a426-a9f5-3267021847c5', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법(FTA)에서의 미니멀 컷섯।과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 9)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('629cd9c8-7dd9-3c9b-7b42-1fc7d9b24992', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36f4024d-58a9-5868-980c-28e0bfcfd4a2', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a5da199-c1d1-5f6f-f302-6d9bac771f20', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf7ac815-825a-2beb-2762-65c19f77af73', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4a56d7e9-c594-a426-a9f5-3267021847c5', 'cf7ac815-825a-2beb-2762-65c19f77af73', '④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', '2025-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('297b293d-5e44-0b9e-910b-3d32ce502640', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 신호검출이론(SDT)에서 두 정규분포 곡선이 교차 하는 부분에 판별기준이 놓였을 경우 Beta 값으로 옳은 것은?', 2, 10)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab14dc93-5ccb-f313-596f-f8f58e19a65c', '297b293d-5e44-0b9e-910b-3d32ce502640', 'Beta=0', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0333355-fa04-081f-9d0a-3c4dceec90b6', '297b293d-5e44-0b9e-910b-3d32ce502640', 'Beta<l', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('366b4171-dce7-1de9-fbf3-61d56c4cf44f', '297b293d-5e44-0b9e-910b-3d32ce502640', 'Beta= 1', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e49dcb8-c589-fe38-ca8a-f35d62a223e8', '297b293d-5e44-0b9e-910b-3d32ce502640', 'Beta> 1', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('297b293d-5e44-0b9e-910b-3d32ce502640', '366b4171-dce7-1de9-fbf3-61d56c4cf44f', '③ Beta= 1', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #26
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c72c4b96-c0e3-ac07-bb54-591a92c2a544', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH 지침에서 최대허용한계(MPL)는 활동한계(AL)의 몇 배인가?', 2, 11)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3c4220f-da0d-a1bd-9f59-fa2db420edfe', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '1배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57aba7e8-75aa-65fe-20af-a57ef8f76ba3', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '3배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8e5f6f8-8b22-9c99-b702-823dfecdcee8', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '5배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eef7b9fa-786c-fbec-e025-44e62a3c1367', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '9배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c72c4b96-c0e3-ac07-bb54-591a92c2a544', '57aba7e8-75aa-65fe-20af-a57ef8f76ba3', '② 3배', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('437d9bde-eb0e-fab0-d38b-f5346853ce09', '11111111-1111-1111-1111-111111111104', 'mcq', '재해조사 시 유의사항으로 적절하지 않은 것은?', 2, 12)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6a71037-4149-74dd-fe83-4194305a9da9', '437d9bde-eb0e-fab0-d38b-f5346853ce09', '조사는 신속하게 행한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be0af296-48e4-fce8-9259-c5357e727106', '437d9bde-eb0e-fab0-d38b-f5346853ce09', '긴급조치를 하여 2차 재해방지를 도모한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('113d7308-3f02-040e-d2f2-5a1502aef20a', '437d9bde-eb0e-fab0-d38b-f5346853ce09', '조사는 2인 이상이 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72a4ddc0-418d-cc45-5700-0984da03aa9f', '437d9bde-eb0e-fab0-d38b-f5346853ce09', '책임추궁을 우선으로 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('437d9bde-eb0e-fab0-d38b-f5346853ce09', '72a4ddc0-418d-cc45-5700-0984da03aa9f', '④ 책임추궁을 우선으로 한다.', '2025-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('79fac8b9-1408-bc02-b758-999fc1d66662', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 비파괴시험의 종류에 해당하지 않는 것은?', 2, 13)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930acb4d-7b70-155c-9613-86be099ca657', '79fac8b9-1408-bc02-b758-999fc1d66662', '와류탐상시험', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('527426f3-c91c-cfd0-1194-6ba4f4be30fc', '79fac8b9-1408-bc02-b758-999fc1d66662', '초음파탐상시험', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a44143e-f9fb-f76a-c8ae-3d5247c9aa45', '79fac8b9-1408-bc02-b758-999fc1d66662', '인장시험', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00c250ca-c476-7f52-1208-57409e924f5e', '79fac8b9-1408-bc02-b758-999fc1d66662', '방사선투과시험', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('79fac8b9-1408-bc02-b758-999fc1d66662', '3a44143e-f9fb-f76a-c8ae-3d5247c9aa45', '③ 인장시험', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd8db9be-568d-9d08-0c19-bafcebeddd80', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 그림은 심장맥동주기를 나타낸 것이다. T파는 어떤 경 우인가?', 2, 14)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04f9a31d-3f75-ff1d-d4e6-de3b004c40a1', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심방의 수축에 따른 파형', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e2a6064-b486-43e9-e681-63ecb3b3dd29', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심실의 수축에 따른 파형', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a9fc70c-bc1f-d367-00b6-4e6c9a326e81', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심실의 휴식 시 발생하는 파형', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8081a4c8-5943-0b4b-9c7f-3428d132d43f', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심방의 휴식 시 발생하는 파형', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd8db9be-568d-9d08-0c19-bafcebeddd80', '3a9fc70c-bc1f-d367-00b6-4e6c9a326e81', '③ 심실의 휴식 시 발생하는 파형', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #63
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('38cedacf-cfd1-5528-3836-0c9033ab7dbf', '11111111-1111-1111-1111-111111111104', 'mcq', '화염일주한계에 대한 설명으로 옳은 것은?', 2, 15)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56b8fac7-edf6-8e6d-edaf-7ae928bd2112', '38cedacf-cfd1-5528-3836-0c9033ab7dbf', '폭발성 가스와 공기의 혼합기에 온도를 높인 경우 화염', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b88b9631-5c81-ae69-2961-533b12b604fd', '38cedacf-cfd1-5528-3836-0c9033ab7dbf', '폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87afaa10-62f4-31bf-e5df-71b94826174c', '38cedacf-cfd1-5528-3836-0c9033ab7dbf', '폭발성 분위기 속에서 전기불꽃에 의하여 폭발을 일으', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23ebe96e-c01d-a634-1951-48e75d84d106', '38cedacf-cfd1-5528-3836-0c9033ab7dbf', '방폭설비에서 이상이 발생하여 불꽃이 생성된 경우에', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('38cedacf-cfd1-5528-3836-0c9033ab7dbf', 'b88b9631-5c81-ae69-2961-533b12b604fd', '② 폭발성 분위기에 있는 용기의 접합면 틈새를 통해 화염', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c31e762-7e22-cd91-d7b8-ee69ec560369', '11111111-1111-1111-1111-111111111104', 'mcq', '사업장에서 많이 사용되고 있는 이동식 전기기계 • 기구의 안전대책으로 가장 거리가 먼 것은?', 2, 16)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae20597c-3438-2c34-8ee0-f8e2f8f41daf', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '충전부 전체를 절연한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3093b7a0-af73-f694-b794-9f80831ddc80', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '절연이 불량인 경우 접지저항을 측정한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6256a3d2-5776-38d5-6671-89f630a860d2', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '금속제 외함이 있는 경우 접지를 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a783adb9-2a90-84c6-9424-4fdf09fcdf21', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '습기가 많은 장소는 누전차단기를 설치한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c31e762-7e22-cd91-d7b8-ee69ec560369', '3093b7a0-af73-f694-b794-9f80831ddc80', '② 절연이 불량인 경우 접지저항을 측정한다.', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05b88569-e4cd-2454-3162-35c09ce96cfe', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 WQ]이라 한다면, 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값 /=쯔 [mA]의 Dalziel의 식을 이용하며, 통전시간은 1 초로 한다.)', 2, 17)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0479eeab-ea1c-cef5-3bee-a2439066893a', '05b88569-e4cd-2454-3162-35c09ce96cfe', '11.5', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('302a6f19-ad88-f7ee-3c4c-4ee320d7efef', '05b88569-e4cd-2454-3162-35c09ce96cfe', '13.6', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc82a157-0736-1bdc-2ed4-1e2ee394051f', '05b88569-e4cd-2454-3162-35c09ce96cfe', '15.3', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d868e510-ad32-22de-62a6-a54397d94860', '05b88569-e4cd-2454-3162-35c09ce96cfe', '16.2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05b88569-e4cd-2454-3162-35c09ce96cfe', '302a6f19-ad88-f7ee-3c4c-4ee320d7efef', '② 13.6', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 피부 전기저항은 여러 가지의 제반조건에 의해서 변 화를 일으키는데 제반조건으로서 가장 가까운 것은?', 2, 18)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adad863b-c5ba-15b0-fe33-9c0b28a3506b', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '피부의청결', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1e6df46-c61f-60c9-cd77-2869abed894e', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '피부의노화', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2d0b1be-631a-86de-6cfc-fc5ee512bc67', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '인가전압의 크기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56edaba8-f916-d1c0-b954-1385ba97cebb', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '통전경로', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', 'e2d0b1be-631a-86de-6cfc-fc5ee512bc67', '③ 인가전압의 크기', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #74
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f36d7d0-73f2-883a-fdab-c9fdd379b189', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 대부분이 수중에 있는 상태에서 허용접촉전압은 몇 [V] 이하인가?', 2, 19)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87792bf5-a33d-406a-053c-3d1e950596c2', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '2.5[V]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7045e12-3372-18d8-3c3b-9260f7477894', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '25[V]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35006957-3a6f-723c-b06f-af24c8431cc5', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '30[V]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13f4e5fc-1a31-7307-8be3-7a8c5c87f19c', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '50[V]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f36d7d0-73f2-883a-fdab-c9fdd379b189', '87792bf5-a33d-406a-053c-3d1e950596c2', '① 2.5[V]', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6266a964-246d-0b68-01be-b2c7f4d93ded', '11111111-1111-1111-1111-111111111104', 'mcq', '인체통전으로 인한 전격(Electric Shock)의 정도를 정함에 있어 그 인자로서 가장 거리가 먼 것은?', 2, 20)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24e39c9-4c53-d4d2-73a5-62f1888ce2a9', '6266a964-246d-0b68-01be-b2c7f4d93ded', '전압의 크기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a67ace3d-0cda-46c1-be43-7a53e6f13044', '6266a964-246d-0b68-01be-b2c7f4d93ded', '통전시간', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd5846d4-501e-0efa-ba86-2d739f192a4e', '6266a964-246d-0b68-01be-b2c7f4d93ded', '전류의 크기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2b768c7-3b83-47a6-ff73-35f0faf84f2b', '6266a964-246d-0b68-01be-b2c7f4d93ded', '통전경로', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6266a964-246d-0b68-01be-b2c7f4d93ded', 'b24e39c9-4c53-d4d2-73a5-62f1888ce2a9', '① 전압의 크기', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #77
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '11111111-1111-1111-1111-111111111104', 'mcq', '자동차가 통행하는 도로에서 고압의 지중전선로를 직접 매 설식으로 시설할 때 사용되는 전선으로 가장 적합한 것은?', 2, 21)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7c79f70-9dc0-0ecd-1358-78711ab30bb5', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '비닐외장케이블', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d8e2590-0e20-81d8-45b6-dbaba9c9f824', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '폴리에틸렌외장케이블', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d29eddd0-9298-bef5-ff93-ec9c0cd2f595', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '클로로프렌외장케이블', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07c1d786-73c5-0d66-5b60-9ea1775536db', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '콤바인덕트 케이블(Combine Duct Cable)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '07c1d786-73c5-0d66-5b60-9ea1775536db', '④ 콤바인덕트 케이블(Combine Duct Cable)', '2025-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ee21f7f4-3252-4c35-bed5-1d4598477962', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조는 다음 중 어느 경우에 가장 가까운가?', 2, 22)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('220a0974-857f-f7ec-1237-19e1b380b0f6', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '점화능력의 본질적 억제', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('456a2131-ccb6-041f-412c-cc833ec2e74f', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '점화원의 방폭적 격리', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90e238d5-c6b4-70bd-34ad-a7167e7617a0', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '전기설비의 안전도 증강', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dcfbf88-83ac-e6ee-1b93-5e74bf0b35f3', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '전기설비의 밀폐화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ee21f7f4-3252-4c35-bed5-1d4598477962', '456a2131-ccb6-041f-412c-cc833ec2e74f', '② 점화원의 방폭적 격리', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 활선근접작업 시의 안전조치로 적절하지 않은 것은?', 2, 23)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b40c9892-9afd-9049-f87e-00252300646b', 'a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', '근로자가 절연용 방호구의 설치 - 해체작업을 하는 경우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e631e42f-47c0-75c5-5440-6fb70076943d', 'a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', '저압인 경우에는 해당 전기작업자가 절연용 보호구를', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b506f98c-391b-9d4f-651d-e1644e95e474', 'a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', '유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('051bf331-ca76-6734-8a03-7bd74c9b662e', 'a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', '고압 및 특별고압의 전로에서 전기작업을 하는 근로자', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a36a9cdb-fc44-3a5b-001c-c276ebe7f97d', 'b506f98c-391b-9d4f-651d-e1644e95e474', '③ 유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #89
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '11111111-1111-1111-1111-111111111104', 'mcq', '「위험물안전관리법령」에 의한 위험물의 분류 중 제1류 위험 물에 속하는 것은?', 2, 24)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e81cbba-bf6e-8453-01d0-e4469f9a73a0', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '염소산염류', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28859e66-3536-8c58-3c30-e6d16b19b9cd', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '황린', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47fd0c13-7202-801d-1f4a-cad31b61b4cf', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '질산에스테르', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69b64eb2-e9a7-2204-6e46-fd1ee2566c01', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '칼륨: 제3류 위험물（자연발화성 물질 및 금수성 물질）', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '3e81cbba-bf6e-8453-01d0-e4469f9a73a0', '① 염소산염류', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물의 저장방법으로 적절하지 않은 것은?', 2, 25)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ff0c6c1-b112-7140-6c94-38de7912ce6b', 'cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '탄화칼슘은 물속에 저장한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6e35467-f37e-c516-9496-dd3a5ff2a74e', 'cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '벤젠은 산화성 물질과 격리시킨다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a63b54b2-2da0-9a60-e3a0-f2a858d3da99', 'cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '금속나트륨은 석유 속에 저장한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64a225c3-c667-7eed-197d-a00edf9e389c', 'cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '질산은 갈색병에 넣어 냉암소에 보관한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cba33d45-9e4d-c1e3-aaf3-d96279cfe3d0', '1ff0c6c1-b112-7140-6c94-38de7912ce6b', '① 탄화칼슘은 물속에 저장한다.', '2025-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('596e42f7-7b61-096f-dc74-133564404f8e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 차량계 건설기계 중 낙하물 보호구조를 갖추어야 하는 기계가 아닌 것은?', 2, 26)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdfbe217-4dbc-aac1-ae1d-e9c51a407c25', '596e42f7-7b61-096f-dc74-133564404f8e', '불도저', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4de41cc-fec6-ae13-9c05-5b0bd4ac0f4e', '596e42f7-7b61-096f-dc74-133564404f8e', '트랙터', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25931ee5-87da-4dc9-895b-94c73e67c4f2', '596e42f7-7b61-096f-dc74-133564404f8e', '타워크레인', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d40bb02-def4-9f85-8e99-e18b872407cf', '596e42f7-7b61-096f-dc74-133564404f8e', '덤프트럭', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('596e42f7-7b61-096f-dc74-133564404f8e', '25931ee5-87da-4dc9-895b-94c73e67c4f2', '③ 타워크레인', '2025-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-1 #111
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 높이 5[m] 이상인 콘크리트 교량의 설치작업 을 하는 경우 재해예방을 위해 준수해야 할 사항으로 옳지 않은것은?', 2, 27)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc39b970-0d85-ec56-5aac-6073fb90911a', 'a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', '작업을 하는 구역에는 관계 근로자가 아닌 사람의 출입', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8c3c1fd-39bb-f319-2a6e-2eb8641f9991', 'a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', '재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c7de99b-ecc6-927b-66d8-678595fcc554', 'a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', '중량물 부재를 크레인 등으로 인양하는 경우에는 부재', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('65202be0-504c-82a3-a13f-917e8be898d7', 'a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', '자재나 부재의 낙하 • 전도 또는 붕괴 등에 의하여 근로', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6b4f29c-2ceb-7714-80fe-e7ccfdf02e70', 'f8c3c1fd-39bb-f319-2a6e-2eb8641f9991', '② 재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근', '2025-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-1'])
on conflict (question_id) do nothing;

-- 2025-2 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fa0e29ca-4d33-4e67-2e1f-498c593eb240', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히(Heinrich)의 재해구성비율에 따른 58건의 경상이 발생한 경우 무상해사고는 몇 건이 발생하겠는가?', 2, 28)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd053dcc-8b7c-1e32-e10d-84a476f04cdf', 'fa0e29ca-4d33-4e67-2e1f-498c593eb240', '58건', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be25513d-2630-f47f-d871-410f41bfc0bb', 'fa0e29ca-4d33-4e67-2e1f-498c593eb240', '116건', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ada48f42-3b58-3459-5320-e5779f842e18', 'fa0e29ca-4d33-4e67-2e1f-498c593eb240', '600건', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5be7b2f3-6ef6-3603-7d7a-768af3d203ad', 'fa0e29ca-4d33-4e67-2e1f-498c593eb240', '900건', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fa0e29ca-4d33-4e67-2e1f-498c593eb240', 'ada48f42-3b58-3459-5320-e5779f842e18', '③ 600건', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('47751e9d-3d22-f88f-ab66-a31de6b01b5f', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육의 단계에 있어 교육대상자가 스스로 행함으로써 습득하게 하는 교육은?', 2, 29)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29273422-35fa-adf1-af82-4edbd8b736d0', '47751e9d-3d22-f88f-ab66-a31de6b01b5f', '의식교육', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fae0b88-c8c7-ff29-4e24-f6a01c466744', '47751e9d-3d22-f88f-ab66-a31de6b01b5f', '기능교육', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('edb521a2-5a6a-8329-f147-770b01ddb32f', '47751e9d-3d22-f88f-ab66-a31de6b01b5f', '지식교육', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5de9e11-7b39-6bf7-daa9-253e4bcd532b', '47751e9d-3d22-f88f-ab66-a31de6b01b5f', '태도교육', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('47751e9d-3d22-f88f-ab66-a31de6b01b5f', '6fae0b88-c8c7-ff29-4e24-f6a01c466744', '② 기능교육', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e5f1a87-f6df-0260-191b-904ecc7ded1f', '11111111-1111-1111-1111-111111111104', 'mcq', '브레인스토밍（Brain-storming） 기법의 4원칙에 관한 설명 으로 틀린 것은?', 2, 30)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc34c5ce-119e-84ef-30b7-b7603ccada4a', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '한 사람이 많은 의견을 제시할 수 있다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7de33915-dde8-0d7f-a486-be829145d8ce', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '타인의 의견을 수정하여 발언할 수 있다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('addae297-1a04-9ea4-2e9d-64a0445c7891', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '타인의 의견에 대하여 비판, 비평하지 않는다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b8007c-0ad3-b647-1902-9babfd62f28c', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e5f1a87-f6df-0260-191b-904ecc7ded1f', 'f6b8007c-0ad3-b647-1902-9babfd62f28c', '④ 의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c149c105-44d1-d4a6-f471-63a23f9b1c44', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 안내표지에 해당하지 않는 것은?', 2, 31)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('349b6d95-0283-5a0e-7bb9-896e5ebb0f2b', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '들것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0446538d-81e0-d95f-d2fe-9f0d2e52938c', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '비상용기구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('538d14ba-0766-89b0-122d-7c523674070f', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '출입구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ba3690d-b9d3-b570-1d7f-9eafeecbf031', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '세안장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c149c105-44d1-d4a6-f471-63a23f9b1c44', '538d14ba-0766-89b0-122d-7c523674070f', '③ 출입구', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 안전보건관리규정에 포함되어 야 할 세부내용이 아닌 것은?', 2, 32)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c5fb54e-cf39-4ed2-906d-5541530e7608', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '위험성 감소대책 수립 및 시행에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('561bb80c-46ed-8419-f47c-215691cce562', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '하도급 사업장에 대한 안전 ■ 보건관리에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bf810de-cec5-1940-68e1-486737a2826c', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '질병자의 근로 금지 및 취업 제한 등에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81fb9498-da3f-1eae-dd76-8bbfec97dd5f', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '물질안전보건자료에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '81fb9498-da3f-1eae-dd76-8bbfec97dd5f', '④ 물질안전보건자료에 관한 사항', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #30
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a75ef8e-8e29-ad70-7fa2-b252a4160750', '11111111-1111-1111-1111-111111111104', 'mcq', '연속제어 조종장치에서 정확도보다 속도가 중요하다면 조 종반응의 비율（C/R）은 어떻게 하여야 하는가?', 2, 33)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b17e91b8-7c07-d971-7084-11ac56f0159a', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1로 조절하여야 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1aa5366b-b055-7968-7e0b-6bcb14c0037b', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1보다 낮게 조절하여야 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4188fb0c-60c8-b74f-2f6a-be245b674832', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1보다 높게 조절하여야 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94b6efd4-6c40-686a-b087-3c383028ded0', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 조절할 필요가 없다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a75ef8e-8e29-ad70-7fa2-b252a4160750', '1aa5366b-b055-7968-7e0b-6bcb14c0037b', '② C/R 비율을 1보다 낮게 조절하여야 한다.', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #31
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('69208970-a551-174c-a70d-99434c714d48', '11111111-1111-1111-1111-111111111104', 'mcq', 'OOO 음향기기 부품 생산공장에서 안전업무를 담당하는 대리는 공장 내부에 경보등을 설치하는 과정에서 도움이 될 만한 몇 가지 지식을 적용하고자 한다. 적용 지식 중 맞는 것은?', 2, 34)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47b3b3ae-4158-e242-7ca7-38eb63553937', '69208970-a551-174c-a70d-99434c714d48', '신호 대 배경의 휘도대비가 작을 때는 백색신호가 효과', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50520090-6e25-be26-0948-708efec8a818', '69208970-a551-174c-a70d-99434c714d48', '광원의 노출시간이 1초보다 작으면 광속발산도는 작아', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af5fb552-592e-d14d-69d8-4a077e08503b', '69208970-a551-174c-a70d-99434c714d48', '표적의 크기가 커짐에 따라광도의 역치가 안정되는노', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0b4e4e-b162-c8e8-269b-201b6afceea7', '69208970-a551-174c-a70d-99434c714d48', '배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('69208970-a551-174c-a70d-99434c714d48', '0b0b4e4e-b162-c8e8-269b-201b6afceea7', '④ 배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eadbec63-b3fd-3822-d371-4284106b10b5', '11111111-1111-1111-1111-111111111104', 'mcq', '작업장 배치 시 유의사항으로 적절하지 않은 것은?', 2, 35)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf20bf12-b4db-b931-f221-3a8ff53f43a5', 'eadbec63-b3fd-3822-d371-4284106b10b5', '작업의 흐름에 따라 기계를 배치한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24b2b552-0f03-44da-eeef-52e36ada2235', 'eadbec63-b3fd-3822-d371-4284106b10b5', '생산효율 증대를 위해 기계설비 주위에 재료나 반제품', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('876d63ba-6e08-1db4-562b-7a1c95592dd5', 'eadbec63-b3fd-3822-d371-4284106b10b5', '공장 내외에는 안전한 통로를 두어야 하며, 통로는 선', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e96f6cd5-ad8e-a736-d9b8-15cc8291b296', 'eadbec63-b3fd-3822-d371-4284106b10b5', '비상시에 쉽게 대비할 수 있는 통로를 마련하고 사고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eadbec63-b3fd-3822-d371-4284106b10b5', '24b2b552-0f03-44da-eeef-52e36ada2235', '② 생산효율 증대를 위해 기계설비 주위에 재료나 반제품', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cd42b9eb-e5fb-d9b8-34d7-5429415881da', '11111111-1111-1111-1111-111111111104', 'mcq', '산업안전표지에서 경고표지는 삼각형 , 안내표지는 사각형 , 지시표지는 원형 등으로 부호가 고안되어 있다. 이처럼 부 호가 이미 고안되어 이를 사용자가 배워야 하는 부호는 다 음 중 무엇이라 하는가?', 2, 36)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9fb8d23-3564-b1db-14ad-9e62f6454f5e', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '묘사적 부호', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e666154c-f1d1-2e3d-c411-f99adf2df401', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '추상적 부호', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39156df4-869c-e1dd-f20b-df1007835b9d', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '임의적 부호', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a27de09-64ad-603d-891a-76322278ef54', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '사실적 부호', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cd42b9eb-e5fb-d9b8-34d7-5429415881da', '39156df4-869c-e1dd-f20b-df1007835b9d', '③ 임의적 부호', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #40
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5745703c-b324-8e93-169d-80ad3020e860', '11111111-1111-1111-1111-111111111104', 'mcq', '한 대의 기계를 10시간 가동하는 동안 4회의 고장이 발생 하였고, 이때의 고장수리시간이 다음 표와 같을 때 MT「R(Mean Time To Repair)은 얼마인가? 가동시갠시간] 수리시갠시간] T,=27 Ta=0.1 T2=1.8 7b=0.2 T3=1.5 Tc=0.3 T4=i3 Ta=0.3', 2, 37)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec', '5745703c-b324-8e93-169d-80ad3020e860', '0.225［시간/회］', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ed06f6f-42f6-c27f-2d9f-a549d74a37bb', '5745703c-b324-8e93-169d-80ad3020e860', '0.325［시간/회］', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fd37617-e7f0-3fc5-1cfb-5d7ad4983fb4', '5745703c-b324-8e93-169d-80ad3020e860', '0.425［시간/회］', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73e2b386-66c4-bf0f-c023-c227247ebaf9', '5745703c-b324-8e93-169d-80ad3020e860', '0.525［시간/회］', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5745703c-b324-8e93-169d-80ad3020e860', 'bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec', '① 0.225［시간/회］', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 탁상용 연삭기의 덮개는 작업 받침 대와 연삭숫돌과의 간격을 몇 [mm] 이하로 조정할 수 있어 야하는가?', 2, 38)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48c5119e-1be0-c61a-26f8-22b27e6fa1eb', 'bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '3', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('500ef786-70cf-def9-53d7-057684afa0f8', 'bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '4', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb2d44b-4eb7-bc55-abf1-b2b23e14c33f', 'bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bcf6b7c5-1f2f-be83-f364-e4e6e667a805', 'bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '10', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bc81fc4e-e7f6-c432-0913-07bdd3eaa36a', '48c5119e-1be0-c61a-26f8-22b27e6fa1eb', '① 3', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9b9d3e81-7a25-2b25-b28c-9057535c8890', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 용접장치의 안전에 관한 준수사항으 로 옳은 것은?', 2, 39)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('feeb8cd3-e616-482b-4604-3607544ea9a5', '9b9d3e81-7a25-2b25-b28c-9057535c8890', '아세틸렌 용접장치의 발생기실을 옥외에 설치한 경우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('551d75ee-5323-214e-b71f-887cb3a08038', '9b9d3e81-7a25-2b25-b28c-9057535c8890', '가스집합장치로부터 7[m] 이내의 장소에서는 화기의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('541bca8b-990c-3b8c-c9c1-0b4c76af75f0', '9b9d3e81-7a25-2b25-b28c-9057535c8890', '아세틸렌 발생기에서 10[m] 이내 또는 발생기실에서', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e27879a-a008-6933-3d2e-cdb3f5bb5cf7', '9b9d3e81-7a25-2b25-b28c-9057535c8890', '아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9b9d3e81-7a25-2b25-b28c-9057535c8890', '4e27879a-a008-6933-3d2e-cdb3f5bb5cf7', '④ 아세틸렌 용접장치를 사용하여 용접작업을 할 경우 게', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('83036aaf-3043-da61-d161-e79be3e7f524', '11111111-1111-1111-1111-111111111104', 'mcq', '비파괴시험의 종류가 아닌 것은?', 2, 40)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01cd6aec-fd97-f313-0a0b-4e8b9598e97b', '83036aaf-3043-da61-d161-e79be3e7f524', '자분탐상시험', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34ffb845-2d63-6803-331d-cf72f8c46018', '83036aaf-3043-da61-d161-e79be3e7f524', '침투탐상시험', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c86bf22c-29b5-c780-e018-7f7caf1d0a7d', '83036aaf-3043-da61-d161-e79be3e7f524', '와류탐상시험', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe503ad-aaa2-b4e0-e4d6-ab3aaef752a0', '83036aaf-3043-da61-d161-e79be3e7f524', '샤르피 충격시험', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('83036aaf-3043-da61-d161-e79be3e7f524', '7fe503ad-aaa2-b4e0-e4d6-ab3aaef752a0', '④ 샤르피 충격시험', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #47
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cc964b0f-da21-baa6-1272-2d41e8663138', '11111111-1111-1111-1111-111111111104', 'mcq', '초음파탐상법의 종류에 해당하지 않는 것은?', 2, 41)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83474df9-73ee-8f50-eb90-912f09cabbb5', 'cc964b0f-da21-baa6-1272-2d41e8663138', '반사식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5288175-871f-96cb-ba18-bbca6ef124b9', 'cc964b0f-da21-baa6-1272-2d41e8663138', '투과식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84f07656-9922-3f24-774e-0151b283842d', 'cc964b0f-da21-baa6-1272-2d41e8663138', '공진식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('280fd133-41b7-43fd-c673-9341b5a964a1', 'cc964b0f-da21-baa6-1272-2d41e8663138', '침투식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cc964b0f-da21-baa6-1272-2d41e8663138', '280fd133-41b7-43fd-c673-9341b5a964a1', '④ 침투식', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('64d1f2af-db87-e8b7-8f17-504f7b413b5d', '11111111-1111-1111-1111-111111111104', 'mcq', '로봇의 작동범위 내에서 그 로봇에 관하여 교시 등(로봇의 동력원을 차단하고 행하는 것을 제외함)의 작업을 행할 때 작업시작 전 점검사항으로 옳은 것은?', 2, 42)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4773fecd-e7fb-a114-c063-5e1904f94dcc', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '과부하방지장치의 이상 유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b607be13-b08a-3bee-2f5a-6c130ec676a5', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '압력제한 스위치 등의 기능의 이상 유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a82e6b5f-9d68-c736-fa95-2aa06e31b919', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '외부 전선의 피복 또는 외장의 손상 유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b119c8f5-ee24-d6ce-8012-c327443c9c12', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '권과방지장치의 이상유무', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('64d1f2af-db87-e8b7-8f17-504f7b413b5d', 'a82e6b5f-9d68-c736-fa95-2aa06e31b919', '③ 외부 전선의 피복 또는 외장의 손상 유무', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fe8d629e-f27c-f678-4757-a306cd943270', '11111111-1111-1111-1111-111111111104', 'mcq', '아세 틸 렌 용접장치에 사용하는 역화방지기에서 요구되는 일반적인 구조로 옳지 않은 것은?', 2, 43)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c', 'fe8d629e-f27c-f678-4757-a306cd943270', '재사용 시 안전에 우려가 있으므로 역화방지 후 바로', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('560de3d1-6566-af43-83e6-11d87c1b33c1', 'fe8d629e-f27c-f678-4757-a306cd943270', '다듬질 면이 매끈하고 사용상 지장이 있는 부식, 흠, 균', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('948b08d8-b565-f498-60f3-d0dd3ffef10d', 'fe8d629e-f27c-f678-4757-a306cd943270', '가스의 흐름방향은 지워지지 않도록 돌출 또는 각인하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8f439e7-106a-4378-86bf-17bef2ead4cd', 'fe8d629e-f27c-f678-4757-a306cd943270', '소염소자는 금망, 소결금속, 스틸울(Steel Wool), 다공', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fe8d629e-f27c-f678-4757-a306cd943270', 'bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c', '① 재사용 시 안전에 우려가 있으므로 역화방지 후 바로', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #51
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '11111111-1111-1111-1111-111111111104', 'mcq', '보일러 압력방출장치의 종류에 해당하지 않는 것은?', 2, 44)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e475ab17-4ac9-118e-a098-4ef876142cc1', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '스프링식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68116f3d-841f-d267-bae2-15b3d0a9acaa', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '중추식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01cebf14-5fc7-2abc-f2b0-5272f0bf32a4', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '플런저식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe4af74b-7b93-8f4f-f427-86f80b03e0f9', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '지렛대식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '01cebf14-5fc7-2abc-f2b0-5272f0bf32a4', '③ 플런저식', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ad42eb0a-6a53-e142-febb-642404520e91', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스 방호장치에서 수인식 방호장치를 사용하기에 가장 적합한기준은?', 2, 45)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d45cb626-b086-04a5-550a-6aefcb7b3add', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 100[mm] 이상, 슬라이드 행정수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ac30333-eab8-5ec9-124e-fcaa43ee278a', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('630e9ef8-4586-05eb-9635-3690c2b99193', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 10이mm] 이상, 슬라이드 행정수', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fabf4a1-a085-1699-4a2e-115bf524e2ad', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 5이mm] 이상, 슬라이드 행정수', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ad42eb0a-6a53-e142-febb-642404520e91', '6ac30333-eab8-5ec9-124e-fcaa43ee278a', '② 슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2556e0dd-0831-e8e2-a811-ec1d324e28e4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나. 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.', 2, 46)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('198e2e6d-d126-0292-a323-3d2c18d3ee07', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '선반', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f911bd6-a7e4-7e8d-171a-f8928717a219', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '밀링', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('913e0d13-8406-c563-4c9e-5a9619878e88', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '플레이너', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b1c35bb-185d-ef27-3dd9-2dc238e8e00a', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '연삭기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2556e0dd-0831-e8e2-a811-ec1d324e28e4', '0f911bd6-a7e4-7e8d-171a-f8928717a219', '② 밀링', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('46dff958-aa24-0680-d656-4f5232e3a77c', '11111111-1111-1111-1111-111111111104', 'mcq', '누전차단기의 구성요소가 아닌 것은?', 2, 47)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d12162fd-a7ae-5a63-b1cf-f2f2d97a6ecf', '46dff958-aa24-0680-d656-4f5232e3a77c', '누전검출부', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4896f85f-9c5b-f7a9-88a1-398d281aa0bf', '46dff958-aa24-0680-d656-4f5232e3a77c', '영상변류기', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('659e6c10-44b1-92fd-bcc4-8a023dc06ce5', '46dff958-aa24-0680-d656-4f5232e3a77c', '차단장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9255cdc8-3646-a1d8-0c2c-196d846df3dc', '46dff958-aa24-0680-d656-4f5232e3a77c', '전력퓨즈', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('46dff958-aa24-0680-d656-4f5232e3a77c', '9255cdc8-3646-a1d8-0c2c-196d846df3dc', '④ 전력퓨즈', '2025-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b6cad857-756a-02fa-3ca1-3d24f30f167a', '11111111-1111-1111-1111-111111111104', 'mcq', '인입개폐기를 개방하지 않고 전등용 변압기 1 차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 COS0II 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?', 2, 48)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8affa317-91c3-12e0-1fe2-9056093ac1af', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '안전장구 미사용', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d0bafb1-e71f-88e1-3be3-448498d0a434', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '동력용 변압기 cos 미개방', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('153c1727-beb7-cf4c-ad26-661db91ea19c', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '전등용 변압기 2차 측 COS 미개방', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d9cf8f53-9e52-6abf-01f7-055c7efb5caa', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '인입구 개폐기 미개방한 상태에서 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b6cad857-756a-02fa-3ca1-3d24f30f167a', '153c1727-beb7-cf4c-ad26-661db91ea19c', '③ 전등용 변압기 2차 측 COS 미개방', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '11111111-1111-1111-1111-111111111104', 'mcq', '금속제 외함을 가지는 기계 • 기구에 전기를 공급하는 전로 에 지락이 발생했을 때에 자동적으로 전로를 차단하는 누전 차단기 등을 설치하여야 한다. 누전차단기를 설치해야 되는 경우로 옳은 것은?', 2, 49)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c85da6e7-ba7b-c405-bd24-d04cae158a2f', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '기계 . 기구가 고무. 합성수지 기타 절연물로 피복된 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dec83e6c-9127-b453-9fed-509d765e2275', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '기계 • 기구가 유도전동기의 2차 측 전로에 접속되는 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59cfcfd9-d731-e376-67a3-35bdefd8cfa1', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afd74e93-4970-0428-0fab-88a034ca76bd', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '「전기용품 및 생활용품 안전관리법」의 적용을 받는 이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '59cfcfd9-d731-e376-67a3-35bdefd8cfa1', '③ 대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구', '2025-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7396aea2-db0c-2f9a-80c2-1b7360da18c1', '11111111-1111-1111-1111-111111111104', 'mcq', '정전유도를 받고 있는 접지되어 있지 않은 도전성 물체에 접촉한 경우 전격을 당하게 되는데, 이때 물체에 유도된 전 압［V］을 옳게 나타낸 것은?（단, E는 송전선의 대지전압, C, 은 송전선과 물체 사이의 정전용량, C2는 물체와 대지 사이 의 정전용량이며, 물체와 대지 사이의 저항은 무시한다.）', 2, 50)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', '스유 오', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2678ddc-ce85-2713-cba5-e48181cb36c4', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'V=^^-E', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eeda511a-feb4-7260-3ed2-8335f9869f67', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', '」—', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12a36ca4-7e51-f7ba-d22b-3ec3525ba2b0', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'v=으스요. E', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61', '① 스유 오', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #82
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('744fc568-b131-32b4-6b00-0eeb7f368245', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」상 국소배기장치의 후드 설치기준이 아닌 것은?', 2, 51)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('334b1c10-6673-c041-cb9c-855dcecc0377', '744fc568-b131-32b4-6b00-0eeb7f368245', '유해물질이 발생하는 곳마다 설치할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27d71191-7bb9-6b07-94fd-96f2914b3172', '744fc568-b131-32b4-6b00-0eeb7f368245', '후드의 개구부 면적은 가능한 한 크게 할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa3935f0-5cca-651f-36e4-7d7899b026c5', '744fc568-b131-32b4-6b00-0eeb7f368245', '외부식 또는 리시버식 후드는 해당 분진 등의 발산원에', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab982776-3a95-5cec-ae73-3b4147445b04', '744fc568-b131-32b4-6b00-0eeb7f368245', '후드 형식은 가능하면 포위식 또는 부스식 후드를 설치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('744fc568-b131-32b4-6b00-0eeb7f368245', '27d71191-7bb9-6b07-94fd-96f2914b3172', '② 후드의 개구부 면적은 가능한 한 크게 할 것', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '11111111-1111-1111-1111-111111111104', 'mcq', '헥산 1[vol%], 메탄 2[vol%], 에틸렌 2[vol%], 공기 95[vol%]로 된 혼합가스의 폭발하한계값[vol%]은 약 얼마 인가?（단, 헥산, 메탄, 에틸렌의 폭발하한계 값은 각각 1.1, 5.0, 2.7[vol%]이다.）', 2, 52)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '2.44', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b8f5f86-7a37-1852-3d81-e1dd0410fa1c', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '12.89', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('255ed229-ae10-77e4-30b2-9bd8e30a8f4f', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '21.78', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8a5856c-ddc0-7ed6-96b0-b664cb9de2a9', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '48.78', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', 'c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7', '① 2.44', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8b516047-7b2f-e923-b42c-d16cdfe09117', '11111111-1111-1111-1111-111111111104', 'mcq', '중대산업재해 대비를 위한 대응조치로 옳지 않은 것은?', 2, 53)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32f249e3-86fd-b544-8ff5-566ba1bb926e', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 급박한 위험이 발생한 경우 근로자들이 스스', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4e5f7df-8965-cdcc-c171-80f6ee61f50c', '8b516047-7b2f-e923-b42c-d16cdfe09117', '근로자는 작업 진행 중 본인 또는 인근에서 수행되는', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f4da638-a886-90fd-9c7d-4ee0c09d1d44', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 사업장의 특성을 반영하여 급박한 위험의 판', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('576009e6-5eb8-1d9b-6344-242c3e015a06', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 급박한 위험 시 작업중지를 한 근로자에 대하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8b516047-7b2f-e923-b42c-d16cdfe09117', 'e4e5f7df-8965-cdcc-c171-80f6ee61f50c', '② 근로자는 작업 진행 중 본인 또는 인근에서 수행되는', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3e9f3977-e755-7e25-e628-924b0145017e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 밀폐공간 내 작업 시의 조치사항으로 가장 거리가 먼 것은?', 2, 54)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('550d5e3d-dd1a-5a35-bf9b-a2577f4c2fef', '3e9f3977-e755-7e25-e628-924b0145017e', '산소결핍이 우려되거나 유해가스 등의 농도가 높아서', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14ec2caf-1120-eef2-6cb8-55558092b929', '3e9f3977-e755-7e25-e628-924b0145017e', '해당 작업장을 적정한 공기상태로 유지되도록 환기하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1387200-2279-ecbf-d17e-bf0bb1945d18', '3e9f3977-e755-7e25-e628-924b0145017e', '해당 장소에 근로자를 입장시킬 때와 퇴장시킬 때에 각', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfe67e56-d30a-2bd7-b7b5-b72d55c26051', '3e9f3977-e755-7e25-e628-924b0145017e', '해당 작업장과 외부의 감시 인 사이에 상시 연락을 취할', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3e9f3977-e755-7e25-e628-924b0145017e', '550d5e3d-dd1a-5a35-bf9b-a2577f4c2fef', '① 산소결핍이 우려되거나 유해가스 등의 농도가 높아서', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #95
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16c01ffd-0da3-2b89-8e37-e2b71f382f7b', '11111111-1111-1111-1111-111111111104', 'mcq', '할론소화약제 중 Halon 2402의 화학식으로 옳은 것은?', 2, 55)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d4328da-b2af-08b7-f219-134a39919a63', '16c01ffd-0da3-2b89-8e37-e2b71f382f7b', 'e2日4匕허', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be7237e1-f1cc-1547-7572-877c29987f60', '16c01ffd-0da3-2b89-8e37-e2b71f382f7b', 'C2H4휴2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88b40264-935e-75d7-318f-226942384969', '16c01ffd-0da3-2b89-8e37-e2b71f382f7b', 'CrBp4H2', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c05ba6cb-cd2f-a862-f500-01d7ecc96d79', '16c01ffd-0da3-2b89-8e37-e2b71f382f7b', '心么匕퍼耳么', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16c01ffd-0da3-2b89-8e37-e2b71f382f7b', '6d4328da-b2af-08b7-f219-134a39919a63', '① e2日4匕허', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('28f22818-2011-0409-4fc7-d50db6b5acc5', '11111111-1111-1111-1111-111111111104', 'mcq', '비계의 높이가 2[m] 이상인 작업장소에 설치하는 작업발판 의 설치기준으로 옳지 않은 것은?（단, 달비계, 달대비계 및 말비계는 제외한다.）', 2, 56)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c35244f-1eb9-257d-6f6c-9faec6b5cea2', '28f22818-2011-0409-4fc7-d50db6b5acc5', '작업발판의 폭은 40[cm] 이상으로 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f264975a-e6b7-a11c-dd8c-17e24cc796d0', '28f22818-2011-0409-4fc7-d50db6b5acc5', '작업발판의 재료는 뒤집히거나 떨어지지 않도록 하나', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96ccf415-d31d-458d-4fd5-a7559d314c8a', '28f22818-2011-0409-4fc7-d50db6b5acc5', '발판재료 간의 틈은 3[cm] 이하로 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6aaf7210-6895-3976-b003-8dd70f737d52', '28f22818-2011-0409-4fc7-d50db6b5acc5', '작업발판의 지지물은 하중에 의하여 파괴될 우려가 없', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('28f22818-2011-0409-4fc7-d50db6b5acc5', 'f264975a-e6b7-a11c-dd8c-17e24cc796d0', '② 작업발판의 재료는 뒤집히거나 떨어지지 않도록 하나', '2025-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-2 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서 첨부서류에 해당되지 않는 것은?', 2, 57)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2383869-a20c-d785-5245-af2fe900e4da', 'f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', '안전관리를 위한 교육자료', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35348779-4cfd-020b-716c-f902fe3a9458', 'f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', '안전관리 조직표', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('727bd0b5-4c87-6e22-32e3-b51cf754b835', 'f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', '전체 공정표', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e8f8fbc-d457-21a4-7242-1f8b1ef37844', 'f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', '재해발생 위험 시 연락 및 대피방법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f96ed21d-921f-b8ac-887e-9b4c2eefa4a0', 'a2383869-a20c-d785-5245-af2fe900e4da', '① 안전관리를 위한 교육자료', '2025-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-2'])
on conflict (question_id) do nothing;

-- 2025-3 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef32cc9d-af4b-0750-942f-59db3b477067', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우(Maslow)의 욕구위계이론 중 2단계에 해당되는 것은?', 2, 58)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6512186a-d8c7-efd1-331b-581dbf9be09f', 'ef32cc9d-af4b-0750-942f-59db3b477067', '생리적 욕구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e', 'ef32cc9d-af4b-0750-942f-59db3b477067', '안전에 대한 욕구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79d6e727-d8da-ff35-1c59-b7cf9192fe3c', 'ef32cc9d-af4b-0750-942f-59db3b477067', '자아실현의 욕구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10fc0601-fc12-ab91-e8ed-31f6a32eaa83', 'ef32cc9d-af4b-0750-942f-59db3b477067', '존경과 긍지에 대한 욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef32cc9d-af4b-0750-942f-59db3b477067', 'b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e', '② 안전에 대한 욕구', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5b63fe55-904a-58a1-8033-3c3005c7d17b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건교육 교육대상별 교육내용 중 관리감독자 정기교육의 내용으로 틀린 것은?', 2, 59)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e394fde-293d-b998-507f-b1def1084799', '5b63fe55-904a-58a1-8033-3c3005c7d17b', '정리정돈 및 청소에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b363eb7-90a5-b0cc-e888-5dc7a9f72823', '5b63fe55-904a-58a1-8033-3c3005c7d17b', '유해 • 위험 작업환경 관리에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c19dd78b-4840-bc79-6a32-5ba9c6c2804a', '5b63fe55-904a-58a1-8033-3c3005c7d17b', '표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6262244-3d28-e400-12cc-6350fb8e4905', '5b63fe55-904a-58a1-8033-3c3005c7d17b', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5b63fe55-904a-58a1-8033-3c3005c7d17b', '9e394fde-293d-b998-507f-b1def1084799', '① 정리정돈 및 청소에 관한 사항', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('42f9ba30-59a6-8110-128c-0b6e8ad87300', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은?', 2, 60)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7c1977f-23f3-5677-b964-0e768bdf31d5', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '단기간의 교육시간 내에 비교적 많은 내용을 전달할 수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f377be0-d6b6-c8f1-6f87-62ff5ead3e5e', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '다수의 수강자를 대상으로 동시에 교육할 수 있다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99cea04b-aaf2-c8d8-949b-30c75ffaa61f', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '다른 교육방법에 비해 수강자의 참여가 제약된다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a23843bb-3bf6-490b-e82d-6d9aa18fdbd3', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '수강자 개개인의 학습진도를 조절할 수 있다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('42f9ba30-59a6-8110-128c-0b6e8ad87300', 'a23843bb-3bf6-490b-e82d-6d9aa18fdbd3', '④ 수강자 개개인의 학습진도를 조절할 수 있다.', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #23
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '11111111-1111-1111-1111-111111111104', 'mcq', 'Rasmussen은 행동을 세 가지로 분류하였는데, 그 분류에 해당하지 않는 것은?', 2, 61)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('874f3b50-9740-1b07-b139-efb9289bdb05', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '숙련 기반 행동(skill—based behavior)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63033634-0808-9dbc-73b0-2ebecf4b5ee1', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '지 식 기 반 행동(knowledge—based behavior)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b54a962b-18b3-932c-1511-b84d249120ea', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '경험 기반 행동(experience—based behavior)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38e666f0-1a53-7e88-c3ce-ce097e971462', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '규칙 기반 행동(rule—based behavior)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', 'b54a962b-18b3-932c-1511-b84d249120ea', '③ 경험 기반 행동(experience—based behavior)', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #24
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92d4f185-f569-de19-2c6d-d748a12ce11d', '11111111-1111-1111-1111-111111111104', 'mcq', '모든 시스템안전 분석에서 제일 첫 번째 단계의 분석으로, 실행되고 있는 시스템을 포함한 모든 것의 상태를 인식하고 시스템의 개발단계에서 시스템 고유의 위험상태를 식별하 여 예상되고 있는 재해의 위험수준을 결정하는 것을 목적으 로 하는 위험분석 기법은?', 2, 62)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0f13251-1dde-0567-7069-2626a4912e5e', '92d4f185-f569-de19-2c6d-d748a12ce11d', '결함위험분석 (FHA； Fault Hazard Analysis)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b157e37-ed50-a4ce-d4c7-37a6334c846d', '92d4f185-f569-de19-2c6d-d748a12ce11d', '시스템위험분석(SHA； System Hazard Analysis)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f5dc1d2-ac7c-be0f-1fe3-4d1e28e44b84', '92d4f185-f569-de19-2c6d-d748a12ce11d', '예비위험분석(PHA； Preliminary Hazard Analysis)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d572fe35-458a-26f2-ab42-cb365d98f01d', '92d4f185-f569-de19-2c6d-d748a12ce11d', '운용위험분석 (OHA； Operating Hazard Analysis)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92d4f185-f569-de19-2c6d-d748a12ce11d', '5f5dc1d2-ac7c-be0f-1fe3-4d1e28e44b84', '③ 예비위험분석(PHA； Preliminary Hazard Analysis)', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #26
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('37f14e75-22ef-70dd-c7ca-5ac182666bb3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험성평가의 실시내용 및 결과의 기록. 보존에 관한 설명으로 옳지 않은 것은?', 2, 63)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53bc7e02-33ba-80bf-5b13-1fd2447ad36e', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성평가 대상의 유해 ■ 위험요인이 포함되어야 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14743531-9f74-7d16-5bf6-dbf29be05cef', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성 결정 및 결정에 따른 조치의 내용이 포함되어야', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef76651c-83d5-b7a1-54c6-a9f19e9db46a', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성평가의 실시내용을 확인하기 위하여 필요한 사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('130cdf7d-52d8-aabb-fbd0-8009cfd6fc76', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('37f14e75-22ef-70dd-c7ca-5ac182666bb3', '130cdf7d-52d8-aabb-fbd0-8009cfd6fc76', '④ 사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f735dcf8-94d7-f398-4c39-f212e97d149b', '11111111-1111-1111-1111-111111111104', 'mcq', '기술 개발과정에서 효율성과 위험성을 종합적으로 분석 • 판단할 수 있는 평가방법으로 가장 적절한 것은?', 2, 64)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84e389a8-2f75-2ed2-1bf4-7e099901dda1', 'f735dcf8-94d7-f398-4c39-f212e97d149b', 'Risk Assessment', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39cfcb88-a5f1-67dc-35b0-7155a9353658', 'f735dcf8-94d7-f398-4c39-f212e97d149b', 'Risk Management', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2194d9d3-a2e5-e1b9-e90a-c63067c16c7f', 'f735dcf8-94d7-f398-4c39-f212e97d149b', 'Safety Assessment', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f83054ac-6c06-a37d-b371-949a222baf8b', 'f735dcf8-94d7-f398-4c39-f212e97d149b', 'Technology Assessment', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f735dcf8-94d7-f398-4c39-f212e97d149b', 'f83054ac-6c06-a37d-b371-949a222baf8b', '④ Technology Assessment', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('53f39d02-4c3e-7197-4514-c118afd6a8fe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차의 최대하중의 2배 값이 6톤 일 경우 헤드가드의 강도는 몇 톤의 등분포정하중에 견딜 수 있어야 하는가?', 2, 65)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47319227-3692-c8e6-32e8-3a9c27a4dd2b', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '4', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d2a2e6e-588b-fd4c-5f4d-d3fefc30d126', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '6', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00e86f8d-f959-5f6f-eb12-28d231a31b72', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '8', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4736d371-5fda-1e80-ebb0-e2cd9d4bf530', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '10', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('53f39d02-4c3e-7197-4514-c118afd6a8fe', '47319227-3692-c8e6-32e8-3a9c27a4dd2b', '① 4', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #46
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de0213e1-ba4d-6e20-4f4e-228890a03f80', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?(단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.)', 2, 66)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ec826de-9565-3609-94ab-bd058bf9e54a', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '0.9[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa933f51-6e9f-9229-6cf8-ccb6361abf73', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.2[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17e32b97-349d-3b28-7fb9-9be8bb4cdce3', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.5[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f135a2c8-cb15-9c63-3987-8899979c53bb', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.8[m]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de0213e1-ba4d-6e20-4f4e-228890a03f80', 'f135a2c8-cb15-9c63-3987-8899979c53bb', '④ 1.8[m]', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bb214757-49ae-4c79-fb78-d4094b3e9162', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 승강기의 종류에 해당하지 않는 것은?', 2, 67)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97ac9993-c2cf-e714-8cbe-0b184889efb1', 'bb214757-49ae-4c79-fb78-d4094b3e9162', '리프트', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ba32c68-4cb0-0e79-4e97-0f6bb8bae16f', 'bb214757-49ae-4c79-fb78-d4094b3e9162', '에스컬레이터', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e57e7e8-fe25-4645-ba9a-e5644ed9603e', 'bb214757-49ae-4c79-fb78-d4094b3e9162', '화물용 엘리베이터', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34a3cf06-e962-e0ae-e772-73f346e53ae4', 'bb214757-49ae-4c79-fb78-d4094b3e9162', '승객용 엘리베이터', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bb214757-49ae-4c79-fb78-d4094b3e9162', '97ac9993-c2cf-e714-8cbe-0b184889efb1', '① 리프트', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #51
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('72b61aef-ecf9-bf88-ef95-1d259714f1e0', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업용 로봇의 작업시작 전 점검사 항으로 가장 거리가 먼 것은?', 2, 68)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56669450-3da2-d364-6045-4908c01b1dc4', '72b61aef-ecf9-bf88-ef95-1d259714f1e0', '외부 전선의 피복 또는 외장의 손상 유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d1582f5-2d4c-fc00-6b81-21564a96849d', '72b61aef-ecf9-bf88-ef95-1d259714f1e0', '압력방출장치의 이상유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('224af466-9914-cc0e-cf18-fd699a639c5d', '72b61aef-ecf9-bf88-ef95-1d259714f1e0', '매니퓰레이터 작동 이상 유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc880841-8883-84bb-5802-21ef21ac9e63', '72b61aef-ecf9-bf88-ef95-1d259714f1e0', '제동장치 및 비상정지장치의 기능', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('72b61aef-ecf9-bf88-ef95-1d259714f1e0', '5d1582f5-2d4c-fc00-6b81-21564a96849d', '② 압력방출장치의 이상유무', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '11111111-1111-1111-1111-111111111104', 'mcq', '대형기계의 회전체가 있는 위험점으로부터 900[mm] 거리 에 고정가드를 설치하고자 한다. 가드의 개구부에 최적간격 은 얼마로 하여야 하는가?', 2, 69)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7a8c664-8c24-9546-c4d8-5e55d3527236', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '141[mm]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b26d2568-f15f-8e70-6d72-ad4415f1e737', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '106[mm]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31d4c176-445c-8c56-6bb7-0563f57bae8c', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '96[mm]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('441f3ab8-85ca-e10d-afc7-5fbe6f99d882', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '91 [mm]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '31d4c176-445c-8c56-6bb7-0563f57bae8c', '③ 96[mm]', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '11111111-1111-1111-1111-111111111104', 'mcq', '광전자식 방호장치의 광선에 신체의 일부가 감지된 후로부 터 급정지기구가 작동 개시하기까지의 시간이 4O[ms]이고, 광축의 최소 설치거리（안전거리）가 200[mm]일 때 급정지 기구가 작동 개시한 때로부터 프레스기의 슬라이드가 정지 될 때까지의 시간은 약 몇 [ms]인가?', 2, 70)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3512d1f2-6084-9563-ac56-315d273f2235', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '60[ms]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61fbb522-fd6e-9057-7fb7-fd18bb104be6', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '85[ms]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('179fc9a4-f8ae-6a80-9ccb-71fc6fe18fa1', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '105[ms]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76c7591b-7c48-37e6-8f62-ba08d9988035', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '13이ms]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '61fbb522-fd6e-9057-7fb7-fd18bb104be6', '② 85[ms]', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c42da96a-94c9-185f-7dc6-98e5fbed82b6', '11111111-1111-1111-1111-111111111104', 'mcq', '설비의 고장형태를 크게 초기고장, 우발고장, 마모고장으로 구분할 때 다음 중 마모고장과 가장 거리가 먼 것은?', 2, 71)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6e74fb0-7450-425d-8431-b952bab5c202', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '부품, 부재의 마모', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0eda330-4fd1-42b4-fbf1-b2e50b4641d1', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '열화에 생기는 고장', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cab8b36-75d6-fd45-346b-cbb45817697d', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '부품, 부재의 반복피로', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b245266-9997-fbb4-bfab-53944a92b070', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '순간적 외력에 의한 파손', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c42da96a-94c9-185f-7dc6-98e5fbed82b6', '3b245266-9997-fbb4-bfab-53944a92b070', '④ 순간적 외력에 의한 파손', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업에서 주의해야 할 사항으로 옳지 않은 것은?', 2, 72)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3aeb27-5fc2-2f24-e9c8-811659fb796e', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '보안경을 쓴다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c7f819e-d63e-046b-d9a3-5a63e55773b7', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '일감 절삭 중 치수를 측정한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7329471-8932-3122-094e-ad35283b0e25', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '커터에 옷이 감기지 않게 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('555fdcb7-eda7-ba6b-161a-26bd5d2952ae', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '커터는 될 수 있는 한 컬럼에 가깝게 설치한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '6c7f819e-d63e-046b-d9a3-5a63e55773b7', '② 일감 절삭 중 치수를 측정한다.', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('104187d2-bb05-3a36-15d8-9d24ad3eedf1', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?(단, 심실세동전류 는 쯔[mA]이며, 통전시간 7는 1초, 전원은 정현파 교류 이다.)', 2, 73)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9fc51208-7ef0-ace5-4479-aea0166adc39', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '13.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12ca526f-d8ef-63b1-f2a3-60822527bc50', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '27.2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6caec001-a791-894c-190d-cbddec5523f9', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '136.6', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4469871f-6ee3-a6cd-f00a-13fdee6aa3d4', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '272.2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('104187d2-bb05-3a36-15d8-9d24ad3eedf1', '12ca526f-d8ef-63b1-f2a3-60822527bc50', '② 27.2', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8edd4a29-6070-24c4-0878-e2bc57e90bb9', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조의 기본적 성능에 관한 사항으로 틀린 것은?', 2, 74)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14651839-2f7b-ae8c-6fd1-cf9e209a1230', '8edd4a29-6070-24c4-0878-e2bc57e90bb9', '내부에서 폭발할 경우 그 압력에 견딜 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe5b0760-19bd-160c-e3bd-2d60f3677b72', '8edd4a29-6070-24c4-0878-e2bc57e90bb9', '폭발화염이 외부로 유출되지 않을 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('915d6ad9-7c3c-e6c6-b40c-01a0b1989583', '8edd4a29-6070-24c4-0878-e2bc57e90bb9', '습기 침투에 대한 보호가 될 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d6f9cef-bde5-27b0-abb5-62c5ce12ca04', '8edd4a29-6070-24c4-0878-e2bc57e90bb9', '외함 표면온도가 주위의 가연성 가스에 점화하지 않을 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8edd4a29-6070-24c4-0878-e2bc57e90bb9', '915d6ad9-7c3c-e6c6-b40c-01a0b1989583', '③ 습기 침투에 대한 보호가 될 것', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #72
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 50[A] 미만이다.）', 2, 75)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25c6c815-8fdd-6a55-a376-1af52913b4f7', '989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', '15[mA] 이하, 0.1 초 이내', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dded54cf-8168-b5e6-56f4-8db700b762e4', '989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', '3O[mA] 이하, 0.03초 이내', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e1b675a-0e38-a71d-88b1-50c68e8bde3b', '989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', '50[mA] 이하, 0.5초 이내', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d92cfbd6-3d0f-23a5-d86a-fa8eff737ec2', '989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', '100[mA] 이하, 0.05초 이내', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('989ebd1e-1bdb-93cf-4395-d9f7fb7bde4b', 'dded54cf-8168-b5e6-56f4-8db700b762e4', '② 3O[mA] 이하, 0.03초 이내', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('39dd0e98-ff1e-18fc-a72d-f39c879792b6', '11111111-1111-1111-1111-111111111104', 'mcq', '역률개선용 커패시터(Capacitor)가 접속되어 있는 전로에 서 정전작업을 할 경우 다른 정전작업과는 달리 주의 깊게 취해야 할 조치사항으로 옳은 것은?', 2, 76)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d793d559-b563-41a9-c886-483dd220fd63', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '안전표지 부착', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fbe81c1-eae6-65dc-17fa-041c8dc3963f', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '개폐기 전원투입 금지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8901265c-a97f-d2fc-2ad8-ecf7a301a924', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '잔류전하 방전', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13f6cc1a-bdd6-2b95-f0a1-9fd8f5efe01b', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '활선 근접작업에 대한 방호', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('39dd0e98-ff1e-18fc-a72d-f39c879792b6', '8901265c-a97f-d2fc-2ad8-ecf7a301a924', '③ 잔류전하 방전', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('900126fb-65dc-e777-a395-bc7a1b18ad41', '11111111-1111-1111-1111-111111111104', 'mcq', '송풍기의 회전차 속도가 1,300[rpm]일 때 송풍량이 분당 300[m3]였다. 송풍량을 분당 400[m3]로 증가시키고자 한 다면 송풍기의 회전차 속도는 약 몇 [rpm]으로 하여야 하는 가?', 2, 77)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebfa8e56-5b9f-f28d-ba2c-e7917adeb2cc', '900126fb-65dc-e777-a395-bc7a1b18ad41', '1,533', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7210db9b-70bf-792d-6294-ceca045496db', '900126fb-65dc-e777-a395-bc7a1b18ad41', '1,733', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f54a47ce-e0e9-6957-d2b8-46cbcb19d22e', '900126fb-65dc-e777-a395-bc7a1b18ad41', '1,967', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76c2fa03-33ef-e0d7-952c-d31738d73ef1', '900126fb-65dc-e777-a395-bc7a1b18ad41', '2,167', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('900126fb-65dc-e777-a395-bc7a1b18ad41', '7210db9b-70bf-792d-6294-ceca045496db', '② 1,733', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #89
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '11111111-1111-1111-1111-111111111104', 'mcq', '중대산업재해 발생 시 응급조치 환자 신고요령으로 옳지 않 은 것은?', 2, 78)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2bb6a21-edac-69e8-ed17-4e241f7a1fc4', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '심각한 응급환자 발생 시 신속히 응급처치 후 119 등에', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3926587e-50dd-4d93-262d-052610e4b9b8', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '119 연결 시 환자의 상황을 침착하고 정확하게 전달한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db001190-74de-eeda-1ec5-93a25f778bc8', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '환자를 제대로 고정하지 않고 이송하는 것은 상태를 악', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea2f6bc8-b5dc-2697-f506-89bb4df86846', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '환자의 몸을 조이는 옷과 장신구 등을 느슨하게 풀어주', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', 'b2bb6a21-edac-69e8-ed17-4e241f7a1fc4', '① 심각한 응급환자 발생 시 신속히 응급처치 후 119 등에', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 위험물질의 종류 중 부 식성 염기류에 관한 내용이다.（ ）안에 알맞은 수치는? 농도가（ ）[%] 이상인 수산화나트륨, 수산화칼륨, 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류', 2, 79)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2528320-5d68-ea40-48cd-e5629e09aca1', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '20', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce2a6243-69e7-fbb3-9492-50cfa6ebee9f', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '40', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b1b1e01-7fdf-daa7-2d7c-3589cebcff4f', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '60', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66e13043-6639-5efc-9806-eaaf38b8129a', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '80', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc', 'ce2a6243-69e7-fbb3-9492-50cfa6ebee9f', '② 40', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #94
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6a23d17-f883-c911-4883-728b88c29ab4', '11111111-1111-1111-1111-111111111104', 'mcq', '펌프의 사용 시 공동현상（Cavitation）을 방지하고자 할 때의 조치사항으로 틀린 것은?', 2, 80)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 회전수를 높인다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b75fd477-2e81-7232-18b0-ffdd3207bb26', 'd6a23d17-f883-c911-4883-728b88c29ab4', '흡입 비 속도를 작게 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a520c3b2-c882-5837-a8c5-dc6150c7f49c', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 흡입관의 두（Head） 손실을 줄인다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5fc9114-e9b9-24a9-7e8f-bde91124900d', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6a23d17-f883-c911-4883-728b88c29ab4', '24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd', '① 펌프의 회전수를 높인다.', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는「산업안전보건법령」에서 정한 설비에 대해서는 과압에 따른 폭발을 방지하기 위하여 안전밸브 등을 설치하 여야 한다. 다음 중 이에 해당하는 설비가 아닌 것은?', 2, 81)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('105c27cd-7abf-7d91-ec2b-66123e3529b0', '7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '원심펌프', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b45d7f8c-02e0-7a45-5d2b-02caab410250', '7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '정변위 압축기', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e245fb96-67bd-1408-24a3-70ebc5941400', '7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '정변위 펌프（토출 측에 차단밸브가 설치된 것만 해당함）', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbc04116-015f-e32f-25d1-1e68ae40b62b', '7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '배관（2개 이상의 밸브에 의하여 차단되어 대기온도에', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7a5e21e8-3e70-0207-b47f-d9faee9edf4e', '105c27cd-7abf-7d91-ec2b-66123e3529b0', '① 원심펌프', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7485d8f-19f9-3b82-4b23-8d467ec69052', '11111111-1111-1111-1111-111111111104', 'mcq', '곤돌라형 달비계에 사용이 불가한 와이어로프의 기준으로 옳지 않은 것은?', 2, 82)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b385120c-1f92-0ec4-3e20-0979f66d16a6', 'c7485d8f-19f9-3b82-4b23-8d467ec69052', '이음매가 있는 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3294ddaf-3fee-3708-12e8-08d451c7f877', 'c7485d8f-19f9-3b82-4b23-8d467ec69052', '와이어로프의 한 꼬임에서 끊어진 소선의 수가 1이%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1062abde-7ae8-4808-81db-1f0cb75eb0db', 'c7485d8f-19f9-3b82-4b23-8d467ec69052', '지름의 감소가 공칭지름의 5[%]를 초과하는 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54989171-7854-362c-194f-8afd8f7fe582', 'c7485d8f-19f9-3b82-4b23-8d467ec69052', '심하게 변형되거나 부식된 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7485d8f-19f9-3b82-4b23-8d467ec69052', '1062abde-7ae8-4808-81db-1f0cb75eb0db', '③ 지름의 감소가 공칭지름의 5[%]를 초과하는 것', '2025-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #103
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63434760-db37-aa41-1087-baf9c0df68da', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 양중기에 해당되지 않는 것 은?', 2, 83)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a3bd9345-4ed1-6f8e-4560-e90bafdffcb6', '63434760-db37-aa41-1087-baf9c0df68da', '어스드릴', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2509a6d-1a65-0dcf-cc0c-bb398ebf9f88', '63434760-db37-aa41-1087-baf9c0df68da', '크레인', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('447249b3-34d9-4f8e-adfa-3e786c7c6fbe', '63434760-db37-aa41-1087-baf9c0df68da', '리프트', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('648dae77-48f4-f757-6247-0e5a4348587b', '63434760-db37-aa41-1087-baf9c0df68da', '곤돌라', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63434760-db37-aa41-1087-baf9c0df68da', 'a3bd9345-4ed1-6f8e-4560-e90bafdffcb6', '① 어스드릴', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7c00b11c-8a0d-82e0-abec-a042501e1f7c', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에 설치하는 사다리식 통로의 설치기준으로 옳지 않은 것은?', 2, 84)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a133a7a9-377d-8740-d97d-83d948020c20', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '발판과 벽과의 사이는 15[cm] 이상의 간격을 유지할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8672c21-8b49-ff7f-9a61-1ca2654ec2e6', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '발판의 간격은 일정하게 할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('921d0aa2-d981-5ea5-cdf6-c4f42b34f30d', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '사다리의 상단은 걸쳐놓은 지점으로부터 60[cm] 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0277562-99ec-e7d0-179e-6b32b28598b6', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7c00b11c-8a0d-82e0-abec-a042501e1f7c', 'b0277562-99ec-e7d0-179e-6b32b28598b6', '④ 사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac804284-479b-2618-9100-d62badcd8954', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비의 사용 내역에 대하여 도급인은 공사 시작 후 몇 개월마다 1 회 이상 발주자 또는 감리자의 확인을 받아야 하는가?', 2, 85)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e8ba583-e476-0964-ca26-445934cc6436', 'ac804284-479b-2618-9100-d62badcd8954', '3개월', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b9e1266f-0c45-a821-3740-96a68d0a13c0', 'ac804284-479b-2618-9100-d62badcd8954', '4개월', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75a8aa00-8f0d-f5c6-3b8a-d5097506b27e', 'ac804284-479b-2618-9100-d62badcd8954', '5개월', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4bcaa3ad-a6cd-7385-52c6-6dfa8488c5d2', 'ac804284-479b-2618-9100-d62badcd8954', '6개월', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac804284-479b-2618-9100-d62badcd8954', '4bcaa3ad-a6cd-7385-52c6-6dfa8488c5d2', '④ 6개월', '2025-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」에 따르면 풍화암의 토사 붕괴를 예방하기 위한 기울기는 얼마인가?', 2, 86)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3b5f627-239a-90a3-8200-81c7d2d28281', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.8', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 1.0', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d98818c7-e144-455f-9c76-6b241ebb7f3d', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d3279dd-dd14-358f-d187-ed8b4b9661e6', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.3', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b', '② 1 ： 1.0', '2025-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2025-3 #117
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b5d417a0-0157-e365-f9d5-fd1bd86c21da', '11111111-1111-1111-1111-111111111104', 'mcq', '거푸집 해체작업 시 유의사항으로 옳지 않은 것은?', 2, 87)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a4bba70-ee8e-8582-9982-f4c6bb61bd89', 'b5d417a0-0157-e365-f9d5-fd1bd86c21da', '일반적으로 수평부재의 거푸집은 연직부재의 거푸집보', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0b4ffb1-696b-04a8-b571-724676ce1289', 'b5d417a0-0157-e365-f9d5-fd1bd86c21da', '해체된 거푸집이나 각목 등에 박혀있는 못 또는 날카로', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('988df890-30e6-a870-e5f9-e0d2b0c5425d', 'b5d417a0-0157-e365-f9d5-fd1bd86c21da', '상하 동시작업은 원칙적으로 금지하며 부득이한 경우', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca6ad095-85f5-96e3-f004-2af923bfb863', 'b5d417a0-0157-e365-f9d5-fd1bd86c21da', '거푸집 해체 작업장 주위에는 관계자를 제외하고는 출', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b5d417a0-0157-e365-f9d5-fd1bd86c21da', '3a4bba70-ee8e-8582-9982-f4c6bb61bd89', '① 일반적으로 수평부재의 거푸집은 연직부재의 거푸집보', '2025-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2025-3'])
on conflict (question_id) do nothing;

-- 2024-1 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('efcb7722-049d-426f-f792-7389fac70f02', '11111111-1111-1111-1111-111111111104', 'mcq', 'r산업안전보건법령」상 안전보건표지의 색채와 용도의 연결 이 틀린 것은?', 2, 88)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('475e7e5f-4009-5866-1f77-d31364246eb9', 'efcb7722-049d-426f-f792-7389fac70f02', '검은색-금지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0f34df2-2f5a-0731-28cb-16e238bb4c57', 'efcb7722-049d-426f-f792-7389fac70f02', '파란색-지시', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28088f1a-77bd-eea2-5b2a-21e38b3d7e2d', 'efcb7722-049d-426f-f792-7389fac70f02', '녹색 - 안내', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84d936b7-9b25-ea38-c661-2b15f72cb1f9', 'efcb7722-049d-426f-f792-7389fac70f02', '노란색 - 경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('efcb7722-049d-426f-f792-7389fac70f02', '475e7e5f-4009-5866-1f77-d31364246eb9', '① 검은색-금지', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4f44b3cd-2481-7730-f972-8f87843040d3', '11111111-1111-1111-1111-111111111104', 'mcq', '라인（Line）형 안전관리조직의 특징으로 옳은 것은?', 2, 89)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49968414-16d2-c328-7224-902625ae6751', '4f44b3cd-2481-7730-f972-8f87843040d3', '안전에 관한 기술의 축적이 용이하다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84742727-48f6-eb99-d127-e3dc1191e3e8', '4f44b3cd-2481-7730-f972-8f87843040d3', '안전에 관한 지시나 조치가 신속하다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f8ff66d-6eb0-3c7b-ef2c-b3eda714b014', '4f44b3cd-2481-7730-f972-8f87843040d3', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eeafb5eb-f023-7fea-dfd4-89d5a28d6c07', '4f44b3cd-2481-7730-f972-8f87843040d3', '권한 다툼이나 조정 때문에 통제수속이 복잡해지며, 시', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4f44b3cd-2481-7730-f972-8f87843040d3', '84742727-48f6-eb99-d127-e3dc1191e3e8', '② 안전에 관한 지시나 조치가 신속하다.', '2024-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '11111111-1111-1111-1111-111111111104', 'mcq', '아담스(Edward Adams)의 사고연쇄반응이론 5단계에서 불안전 행동 및 불안전 상태는 어느 단계에 해당되는가?', 2, 90)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eabbdbec-7f9f-96f5-dce5-5b22c3803b75', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제1단계: 관리구조', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657d29db-8dc8-10cf-9c94-035cad787510', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제2단계: 작전적 에러', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a85efff-c4db-0e32-9829-51206188342a', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제 3단계: 전술적 에러', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04d89d7e-00cd-cf5b-f1fb-1862a8422c95', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제4단계: 사고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '3a85efff-c4db-0e32-9829-51206188342a', '③ 제 3단계: 전술적 에러', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a0132c58-5a47-3871-7236-ebd82ff6b87d', '11111111-1111-1111-1111-111111111104', 'mcq', '파블로프(Pavlov)의 조건반사설에 의한 학습이론의 원리가 아닌 것은?', 2, 91)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8cf42f09-1d86-0ecc-3d83-01e1c2221657', 'a0132c58-5a47-3871-7236-ebd82ff6b87d', '일관성의 원리', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c833bccf-1fbc-dde8-cb18-eae34a2f7f4e', 'a0132c58-5a47-3871-7236-ebd82ff6b87d', '계속성의 원리', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2379c5af-09aa-9f1a-a3ab-b1f38d2711fa', 'a0132c58-5a47-3871-7236-ebd82ff6b87d', '준비성의 원리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0becc93-7b17-3a94-3b60-64226d30449e', 'a0132c58-5a47-3871-7236-ebd82ff6b87d', '강도의 원리', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a0132c58-5a47-3871-7236-ebd82ff6b87d', '2379c5af-09aa-9f1a-a3ab-b1f38d2711fa', '③ 준비성의 원리', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6f3182f8-0021-0a85-d9f2-6e61c5317646', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업재해통계업무처리규정」상 사망만인율 계산 시 적용하 는 사망자 수에 대한 설명으로 옳지 않은 것은?', 2, 92)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9bd0b4c1-9b80-16c8-cef3-d97276d5b56c', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '사고발생일로부터 1년을 경과하여 사망한 경우는 제외', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db6f0890-bab8-fde3-2cb0-34a0b10cd834', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '통상의 출퇴근에 의한 사망자는 제외한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6336223-6bf2-e6c4-4388-3c053b3777c5', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '체육행사에 의한 사망자는 제외한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1375002e-e12f-d2a7-2b7e-bf60b9090880', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '근로복지공단의 유족급여가 지급된 사망자(지방고용노', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6f3182f8-0021-0a85-d9f2-6e61c5317646', '1375002e-e12f-d2a7-2b7e-bf60b9090880', '④ 근로복지공단의 유족급여가 지급된 사망자(지방고용노', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '11111111-1111-1111-1111-111111111104', 'mcq', '기술지원규정(KOSHA GUIDE)에 대한 설명으로 옳지 않은 것은?', 2, 93)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e92bbe28-f755-22e4-f970-5c5ec5106326', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '가이드 표시, 분야별 분류기호, 세부분야별 분류기호,', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5f7cdd1-ce13-2a8d-c912-8dba9d1d0dc8', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '법적 기준이 아닌 사업장의 이해를 돕기 위해 작성된', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68b047cf-be23-d0c4-648f-bd7b6e3cfbb1', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '안전보건 향상을 위해 참고할 수 있는 기술적 내용을', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b38de69-74e8-82a1-ad6b-5baad7881efd', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '한국산업안전보건공단에 의해 제 - 개정되고 있다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '68b047cf-be23-d0c4-648f-bd7b6e3cfbb1', '③ 안전보건 향상을 위해 참고할 수 있는 기술적 내용을', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7914f468-0350-876a-9fb2-af76dc5c31b7', '11111111-1111-1111-1111-111111111104', 'mcq', '교육심리학의 기본이론 중 학습지도의 원리가 아닌 것은?', 2, 94)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('089575ec-de7c-9a56-1dbb-60f9627e2270', '7914f468-0350-876a-9fb2-af76dc5c31b7', '직관의 원리', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eac63686-f2c6-2ad0-721c-64a63ad53bfc', '7914f468-0350-876a-9fb2-af76dc5c31b7', '개별화의 원리', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('317f7e6d-3e18-4ae2-b82a-3d2586a35d4c', '7914f468-0350-876a-9fb2-af76dc5c31b7', '계속성의 원리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5801cfee-8b75-24f1-d559-47641cadcbd1', '7914f468-0350-876a-9fb2-af76dc5c31b7', '사회화의 원리', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7914f468-0350-876a-9fb2-af76dc5c31b7', '317f7e6d-3e18-4ae2-b82a-3d2586a35d4c', '③ 계속성의 원리', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #26
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH Ufting Guideline에서 권장무게한계(RWL) 산출에 사용되는 계수가 아닌 것은?', 2, 95)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7355aea3-3656-cefa-60f7-4849e628ecc6', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '휴식계수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18415fac-0c2d-516c-f931-663a3859209d', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '수평계수', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d910441e-2dbf-fa4d-aec1-7b46a3950973', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '수직계수', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e4596db-ece1-6544-6482-05ed17703d9d', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '비대칭계수', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '7355aea3-3656-cefa-60f7-4849e628ecc6', '① 휴식계수', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bd7e5a95-40d0-4423-df53-dec4f07df33f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 아세틸렌 용접장치 발생기실의 구조에 관한 설명으로 옳지 않은 것은?', 2, 96)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5588d641-b3cb-5d41-c0df-5dad18cd9aea', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '벽은불연성 재료로 할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93a05f81-0dbf-896a-0722-1e62247be665', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '지붕과 천장에는 얇은 철판과 같은 가벼운 불연성 재료', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4235d5b6-014e-e043-b0af-d0c0767d5a9f', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '벽과 발생기 사이에는 작업에 필요한 공간을 확보할 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0809281d-ca64-a459-6c7f-5ffbdeff2a55', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '배기통을 옥상으로 돌출시키고 그 개구부를 출입구로', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bd7e5a95-40d0-4423-df53-dec4f07df33f', '0809281d-ca64-a459-6c7f-5ffbdeff2a55', '④ 배기통을 옥상으로 돌출시키고 그 개구부를 출입구로', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('827910d7-a2b4-f4f3-e48d-3cb82eb986cf', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러 방호장치로 거리가 가장 먼 것은?', 2, 97)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b5346f4-e471-c273-1a00-6977d6ccaf5f', '827910d7-a2b4-f4f3-e48d-3cb82eb986cf', '고저수위 조절장치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dee22a87-9995-3509-69bc-0afb5f15cfd6', '827910d7-a2b4-f4f3-e48d-3cb82eb986cf', '아웃트리거', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50935b11-86f4-14b6-ab60-d2ce062278f9', '827910d7-a2b4-f4f3-e48d-3cb82eb986cf', '압력방출장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01ccb652-517f-c18d-4a2c-ee2f0263c701', '827910d7-a2b4-f4f3-e48d-3cb82eb986cf', '압력제한스위치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('827910d7-a2b4-f4f3-e48d-3cb82eb986cf', 'dee22a87-9995-3509-69bc-0afb5f15cfd6', '② 아웃트리거', '2024-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #46
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3246dc1b-d72b-feaf-ea66-52d26de168fb', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스기의 비상정지스위치 작동 후 슬라이드가 하사점까 지 도달시간이 0.15초 걸렸다면 양수기동식 방호장치의 안 전거리는 최소 몇 [cm] 이상이어야 하는가?', 2, 98)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('975d15cd-4b42-2156-02bb-20f8f1e3e274', '3246dc1b-d72b-feaf-ea66-52d26de168fb', '24', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('907ca052-7cf3-7e46-65d2-077b6e081291', '3246dc1b-d72b-feaf-ea66-52d26de168fb', '240', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee27e3a1-3818-318b-2657-f97769c88464', '3246dc1b-d72b-feaf-ea66-52d26de168fb', '15', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0758c5e8-fbe8-56ce-0f8d-3a04b16095e1', '3246dc1b-d72b-feaf-ea66-52d26de168fb', '150', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3246dc1b-d72b-feaf-ea66-52d26de168fb', '975d15cd-4b42-2156-02bb-20f8f1e3e274', '① 24', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #47
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bccb04d0-9aa4-d751-44a9-0a015472a874', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해 • 위험 방지를 위한 방호조치가 필요한 기계 기구가 아닌 것은?', 2, 99)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dda744a7-2b46-f71a-f917-25437db33e4d', 'bccb04d0-9aa4-d751-44a9-0a015472a874', '예초기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6503b31d-dd27-a0ce-2334-23aeb6daaeb3', 'bccb04d0-9aa4-d751-44a9-0a015472a874', '지게차', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed2e8c47-6c4a-e50a-c71e-df82a6dc690c', 'bccb04d0-9aa4-d751-44a9-0a015472a874', '금속절단기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8971418-4bcd-590b-c2ff-fbe773b1d755', 'bccb04d0-9aa4-d751-44a9-0a015472a874', '금속탐지기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bccb04d0-9aa4-d751-44a9-0a015472a874', 'd8971418-4bcd-590b-c2ff-fbe773b1d755', '④ 금속탐지기', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 금속의 용접, 용단에 사용하는 가스 용기를 취급할 때 유의사항으로 틀린 것은?', 2, 100)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a885c9f1-42d8-4be1-f882-8544b1919c8b', 'c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '밸브의 개폐는 서서히 할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cb9dd9e-cb66-b5ef-4bc0-7d7226e77ed1', 'c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '운반하는 경우에는 캡을 벗길 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4334053d-1641-9596-62a3-b107718cf260', 'c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '용기의 온도는 4이0C] 이하로 유지할 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fad6d6e8-090f-8372-22ec-c0ba1d41e2ad', 'c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '통풍이나 환기가 불충분한 장소에는 설치하지 말 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c26639c0-72b0-36b4-2fdf-ebdb477bc30a', '9cb9dd9e-cb66-b5ef-4bc0-7d7226e77ed1', '② 운반하는 경우에는 캡을 벗길 것', '2024-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5cd09b83-4a1d-be2c-8089-048b783de7fd', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 산업용 로봇의 작동범위에서 교시 등의 작업을 하는 경우에 로봇에 의한 위험을 방지하 기 위한 조치사항으로 틀린 것은?', 2, 101)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f09a0e06-1eb6-a7fb-2e08-bfa51dd3f729', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '2명 이상의 근로자에게 작업을 시킬 경우의 신호방법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d18eebd6-cd9a-3c0c-8b46-ecb6545a7ebb', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업 중의 매니퓰레이터 속도에 관한 지침을 정하고 그', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d294f088-c5fc-6bab-8249-4e05bbcf9094', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업을 하는 동안 다른 작업자가 작동시킬 수 없도록', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebcca066-dedc-f4be-5ce5-a0c0093a997f', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업에 종사하고 있는 근로자가 이상을 발견하면 즉시', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5cd09b83-4a1d-be2c-8089-048b783de7fd', 'ebcca066-dedc-f4be-5ce5-a0c0093a997f', '④ 작업에 종사하고 있는 근로자가 이상을 발견하면 즉시', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c64d2a10-e571-5674-c1c1-2561b85871e9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전인증대상 기계 • 기구 및 설비가 아닌 것은?', 2, 102)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fe67c91-bde1-dbe3-c5f1-5150693eaa89', 'c64d2a10-e571-5674-c1c1-2561b85871e9', '연삭기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977300bd-dfd9-8092-c9f7-21250de292ef', 'c64d2a10-e571-5674-c1c1-2561b85871e9', '롤러기', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d27eb90-9db9-8ae4-89cb-854d2302b8c4', 'c64d2a10-e571-5674-c1c1-2561b85871e9', '압력용기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2491c915-cd09-e7fd-ea68-32382f03fae7', 'c64d2a10-e571-5674-c1c1-2561b85871e9', '고소（高所）작업대', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c64d2a10-e571-5674-c1c1-2561b85871e9', '1fe67c91-bde1-dbe3-c5f1-5150693eaa89', '① 연삭기', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7176a29-e5d4-f1c4-727d-7174381d7d30', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）', 2, 103)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b07845-8083-d043-048b-c41e00de1767', 'c7176a29-e5d4-f1c4-727d-7174381d7d30', '0.9[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee6858a2-352f-e245-478f-1719d8ff0495', 'c7176a29-e5d4-f1c4-727d-7174381d7d30', '1.2[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40398449-35c4-cea7-6949-4e5395d697da', 'c7176a29-e5d4-f1c4-727d-7174381d7d30', '1.5[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06880989-3283-e7cc-fd53-33de4553d5f5', 'c7176a29-e5d4-f1c4-727d-7174381d7d30', '1.8[m]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7176a29-e5d4-f1c4-727d-7174381d7d30', '06880989-3283-e7cc-fd53-33de4553d5f5', '④ 1.8[m]', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('30ab0ba9-99aa-7555-f316-31717da856ad', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 변전소에서 고장전류가 유입되었을 때 도전성 구조물 과 그 부근 지표상의 점과의 사이（약 1[m｝）의 허용접촉전압 씌으 은 약 몇 [V]인가?（단, 심실세동전류: 4= [A], 인체 의 저항: 1,OOO[Q], 지표면의 저항률: 150[Q • m], 통전시 간을 1초로 한다.）', 2, 104)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9739b2d5-3808-a955-204a-bcfc0b20a994', '30ab0ba9-99aa-7555-f316-31717da856ad', '164', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('851c6203-5d04-db0a-26a9-c1303142619d', '30ab0ba9-99aa-7555-f316-31717da856ad', '186', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eadb6be3-316c-325c-923f-9e55c7b7d091', '30ab0ba9-99aa-7555-f316-31717da856ad', '202', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51ef42ae-fed4-fbfb-d370-7785f86bbd18', '30ab0ba9-99aa-7555-f316-31717da856ad', '228', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('30ab0ba9-99aa-7555-f316-31717da856ad', 'eadb6be3-316c-325c-923f-9e55c7b7d091', '③ 202', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('420ff15c-6112-daab-a554-3d33e82790de', '11111111-1111-1111-1111-111111111104', 'mcq', '유입차단기의 약어로 옳은 것은?', 2, 105)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09cc6ab9-6175-ff87-6bb0-378e7cbfa33a', '420ff15c-6112-daab-a554-3d33e82790de', 'OCB', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be0e7272-a4b0-f870-756d-b69c93698c09', '420ff15c-6112-daab-a554-3d33e82790de', 'ELB', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c779285-4ade-4e79-bce8-3efa3f867c9b', '420ff15c-6112-daab-a554-3d33e82790de', 'VCB', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6927992e-3ed7-92fb-e125-e268f5fdb8c1', '420ff15c-6112-daab-a554-3d33e82790de', 'MCCB', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('420ff15c-6112-daab-a554-3d33e82790de', '09cc6ab9-6175-ff87-6bb0-378e7cbfa33a', '① OCB', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #78
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a1d28050-0526-0ec2-9095-160e42d83f53', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」제319조에 따라 감전될 우려가 있는 장소에서 작업을 하기 위해서는 전로를 차단하 여야 한다. 전로 차단을 위한 시행 절차 중 틀린 것은?', 2, 106)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d5aa150-896c-ac34-5f52-9ddeb5c6428e', 'a1d28050-0526-0ec2-9095-160e42d83f53', '전기기기 등에 공급되는 모든 전원을 관련 도면, 배선', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79a6b325-1a98-f54a-8151-3b2ae4363d1d', 'a1d28050-0526-0ec2-9095-160e42d83f53', '각 단로기를 개방한 후 전원 차단', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49b6fc4a-1c95-530b-8986-38ab4552b6f8', 'a1d28050-0526-0ec2-9095-160e42d83f53', '단로기 개방 후 차단장치나 단로기 등에 잠금장치 및', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('622a2c3e-abb2-27f2-e413-a2578f3251d6', 'a1d28050-0526-0ec2-9095-160e42d83f53', '잔류전하 방전 후 검전기를 이용하여 작업 대상 기기가', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a1d28050-0526-0ec2-9095-160e42d83f53', '79a6b325-1a98-f54a-8151-3b2ae4363d1d', '② 각 단로기를 개방한 후 전원 차단', '2024-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9d09ea62-e5d0-0de9-1089-93dee82655d2', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 위험물질의 종류와 해당 물 질이 올바르게 연결된 것은?', 2, 107)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f32f372d-3927-d982-44df-20c17f0afc57', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '부식성 산류-아세트산（농도 90[%]）', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1b0f01e0-979d-22b8-67a1-0f18269228ec', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '부식성 염기류—아세톤（농도 90[%]）', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc91ab85-f702-b78e-fe30-fea387545ca0', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '인화성 가스-이황화탄소', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8d4a288-e2c8-ed07-539c-d46f7ba6d22e', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '인화성 가스-수산화칼륨', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9d09ea62-e5d0-0de9-1089-93dee82655d2', 'f32f372d-3927-d982-44df-20c17f0afc57', '① 부식성 산류-아세트산（농도 90[%]）', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c33c0b92-9556-d4cf-e192-3663e062534d', '11111111-1111-1111-1111-111111111104', 'mcq', '할론소화약제 중 H기on 2402의 화학식으로 옳은 것은?', 2, 108)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a5db05d-2d46-161b-6e0b-58742a8ae33f', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2F4Br2', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40933588-bdbe-773e-f416-bc1869416533', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2H4Br2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('614fd856-9ce6-88e4-9ca8-d66992ebd26a', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2Br4H2', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50a0dbb9-e568-70f0-0562-93f3ddb62320', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2Br4F2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c33c0b92-9556-d4cf-e192-3663e062534d', '3a5db05d-2d46-161b-6e0b-58742a8ae33f', '① C2F4Br2', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #89
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09fb702f-b409-d829-397a-96be2a089dae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 인화성 가스가 발생할 우려가 있는 지하작업장에서 작업하는 경우 조치사항으로 적절하 지 않은 것은?', 2, 109)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddac6da0-066b-5172-bb42-064995110efb', '09fb702f-b409-d829-397a-96be2a089dae', '매일 작업을 시작하기 전 해당 가스의 농도를측정한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a940feb0-6e5b-87be-6677-f5881955e0a1', '09fb702f-b409-d829-397a-96be2a089dae', '가스의 누출이 의심되는 경우 해당 가스의 농도를 측정', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0bde3af5-1a26-57f0-2eb5-68bcaa2d092b', '09fb702f-b409-d829-397a-96be2a089dae', '장시간 작업을 계속하는 경우 6시간마다 해당 가스의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6340d6a7-2ecd-ba53-d8cb-bcb04c9d193d', '09fb702f-b409-d829-397a-96be2a089dae', '가스의 농도가 인화하한계 값의 25[%] 이상으로 밝혀', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09fb702f-b409-d829-397a-96be2a089dae', '0bde3af5-1a26-57f0-2eb5-68bcaa2d092b', '③ 장시간 작업을 계속하는 경우 6시간마다 해당 가스의', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9e983ec-94f3-5c37-a4ff-390465589512', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지반의 종류에 따른 굴착면의 기울 기 기준으로 옳지 않은 것은?', 2, 110)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f7b277f-88dd-e3a2-42a2-288150626278', 'f9e983ec-94f3-5c37-a4ff-390465589512', '경암一 1 ： 1.0', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19243dc4-f750-cd49-ae6d-f29385e91b17', 'f9e983ec-94f3-5c37-a4ff-390465589512', '연암 및 풍화암 -i：i.o', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55d686e9-a293-ef07-1f12-32e6f8612e01', 'f9e983ec-94f3-5c37-a4ff-390465589512', '모래 — 1 ： 1.8', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a12928c-3132-d15b-b9db-38366c42b957', 'f9e983ec-94f3-5c37-a4ff-390465589512', '그 밖의 흙 - 1 : 1.2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9e983ec-94f3-5c37-a4ff-390465589512', '8f7b277f-88dd-e3a2-42a2-288150626278', '① 경암一 1 ： 1.0', '2024-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d34e2e22-dbf0-eb44-7459-cd756c817cc7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 타워크레인을 와이어로프로 지 지하는 경우, 와이어로프의 설치각도는 수평면에서 몇 도 이내로 해야 하는가?', 2, 111)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1b2f231-7fae-c254-6785-20cb755b8cb3', 'd34e2e22-dbf0-eb44-7459-cd756c817cc7', '30°', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d01bd87-df77-99e5-cb9e-d8174c466290', 'd34e2e22-dbf0-eb44-7459-cd756c817cc7', '45°', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ed00d5f-d4e7-1274-4c56-62fe974c8e8e', 'd34e2e22-dbf0-eb44-7459-cd756c817cc7', '60°', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c9d45b1-7abf-2e9d-fa90-1161241433f5', 'd34e2e22-dbf0-eb44-7459-cd756c817cc7', '75。', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d34e2e22-dbf0-eb44-7459-cd756c817cc7', '8ed00d5f-d4e7-1274-4c56-62fe974c8e8e', '③ 60°', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0c84e609-0e5d-05e7-5fb7-66fe52bb8281', '11111111-1111-1111-1111-111111111104', 'mcq', '화물을 적재하는 경우의 준수사항으로 옳지 않은 것은?', 2, 112)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c4822ee-0587-c3aa-4475-618f92c1baf9', '0c84e609-0e5d-05e7-5fb7-66fe52bb8281', '침하 우려가 없는 튼튼한 기반 위에 적재할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdf5086f-e0c0-98f6-9784-2f7b232a4ae9', '0c84e609-0e5d-05e7-5fb7-66fe52bb8281', '건물의 칸막이나 벽 등이 화물의 압력에 견딜 만큼의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('898fbcf3-f6e7-d615-44a9-53be483c26cb', '0c84e609-0e5d-05e7-5fb7-66fe52bb8281', '불안정할 정도로 높이 쌓아 올리지 말 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f814b897-d4e6-0730-4e17-d62ce536b028', '0c84e609-0e5d-05e7-5fb7-66fe52bb8281', '하중이 한쪽으로 치우치더라도 화물을 최대한 효율적', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0c84e609-0e5d-05e7-5fb7-66fe52bb8281', 'f814b897-d4e6-0730-4e17-d62ce536b028', '④ 하중이 한쪽으로 치우치더라도 화물을 최대한 효율적', '2024-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-1 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('241aec3e-c679-1dae-6102-71576b554b4b', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주가 유해위험방지계획서 제출 후 건설공사 중 6개월 이내마다 안전보건공단의 확인을 받아야 할 내용이 아닌 것은?', 2, 113)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c60a01ec-f79a-febd-e2c3-c700d31007d0', '241aec3e-c679-1dae-6102-71576b554b4b', '유해위험방지계획서의 내용과 실제공사 내용이 부합하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('798bfe85-8f09-4ba2-bbd4-4defa11815b4', '241aec3e-c679-1dae-6102-71576b554b4b', '유해위험방지계획서 변경내용의 적정성', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d9a11f1-0414-0329-3af2-b3c2ee0d5191', '241aec3e-c679-1dae-6102-71576b554b4b', '자율안전관리업체 유해위험방지계획서 제출 - 심사 면제', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d511ffe-c55e-9a6a-b6a6-f41f5d7e18b7', '241aec3e-c679-1dae-6102-71576b554b4b', '추가적인 유해 • 위험요인의 존재 여부', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('241aec3e-c679-1dae-6102-71576b554b4b', '0d9a11f1-0414-0329-3af2-b3c2ee0d5191', '③ 자율안전관리업체 유해위험방지계획서 제출 - 심사 면제', '2024-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-1'])
on conflict (question_id) do nothing;

-- 2024-2 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('90337d61-eee8-5bfd-2c22-8e14d9fde183', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 외부 측면의 표시색이 회색이 아닌 것은?', 2, 114)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1575ab4-3346-0e77-4746-c37e3c555e2d', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '할로겐용 정화통', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f01b8338-ac47-1c9d-677b-4c7e1cf86a10', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '황화수소용 정화통', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fab0f04f-8ecd-f266-f474-19f1548de08f', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '시안화수소용 정화통', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('013e9013-5835-6392-09c8-bf7f65fbb67b', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '암모니아용정화통', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('90337d61-eee8-5bfd-2c22-8e14d9fde183', '013e9013-5835-6392-09c8-bf7f65fbb67b', '④ 암모니아용정화통', '2024-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1e445429-a7fe-306d-6a71-45149903f73b', '11111111-1111-1111-1111-111111111104', 'mcq', '길포드의 Y-G 성격검사에서 정서불안적, 활동적, 외향적 성향에 해당하는 형의 종류는?', 2, 115)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7c652fa-8040-7795-3b93-9c4779d76c16', '1e445429-a7fe-306d-6a71-45149903f73b', 'A형', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89757dab-830a-c79a-5475-0b91a8ae757e', '1e445429-a7fe-306d-6a71-45149903f73b', 'B형', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('673435de-259a-5764-103c-22d4404d8c2a', '1e445429-a7fe-306d-6a71-45149903f73b', 'C형', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45166fa4-b4e9-837a-0cf0-a0bdd5751e69', '1e445429-a7fe-306d-6a71-45149903f73b', 'D형', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1e445429-a7fe-306d-6a71-45149903f73b', '89757dab-830a-c79a-5475-0b91a8ae757e', '② B형', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #19
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5e9ce289-3b12-52e7-60ad-503c0062763f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 중대재해에 해당되지 않는 것은?', 2, 116)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6080d178-7c71-95c2-68fc-4c9fa8486751', '5e9ce289-3b12-52e7-60ad-503c0062763f', '3개월 이상의 요양을 요하는 부상자가 동시에 2명 이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2', '5e9ce289-3b12-52e7-60ad-503c0062763f', '직업성 질병자가동시에 5명 이상 발생한 재해', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d30e1bb6-3c59-8a59-f847-199036c66373', '5e9ce289-3b12-52e7-60ad-503c0062763f', '부상자가 동시에 10명 이상 발생한 재해', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59072d8b-252a-878e-5b5f-a2d3cff5cd2b', '5e9ce289-3b12-52e7-60ad-503c0062763f', '사망자가 1명 이상 발생한 재해', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5e9ce289-3b12-52e7-60ad-503c0062763f', 'bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2', '② 직업성 질병자가동시에 5명 이상 발생한 재해', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #23
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법(FTA)에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 117)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb6fa231-5f0e-e93c-b215-5d6f2afa475b', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1bce5a9f-9f25-8f77-f01c-581a9527cdf3', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7712bd4-9fa5-c360-bc04-da3d75d4191a', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbb99be9-d385-cee2-33c8-9f6c437fbba2', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b', 'fbb99be9-d385-cee2-33c8-9f6c437fbba2', '④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', '2024-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('516bcc9d-b621-a87b-08a9-73314143d8aa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 제조업 등 유해위험방지계획서 를 작성하고자 할 때 관련 규정에 따라 1 명 이상 포함시켜 야 하는 사람의 자격으로 적합하지 않은 것은?', 2, 118)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d65e62d-da66-f05b-a424-66d91e9f8f94', '516bcc9d-b621-a87b-08a9-73314143d8aa', '한국산업안전보건공단이 실시하는 관련교육을 8시간', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68f1a6fb-a3e4-6c15-7e4f-c41b17476159', '516bcc9d-b621-a87b-08a9-73314143d8aa', '기계, 재료, 화학, 전기, 전자, 안전관리 또는 환경분야', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d10601f-ef20-12d4-e8b9-c3cd0050dc77', '516bcc9d-b621-a87b-08a9-73314143d8aa', '관련분야 기사 자격을 취득한 사람으로서 해당 분야에', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2e89a0d-84b2-79b8-2d8f-f485c5509e12', '516bcc9d-b621-a87b-08a9-73314143d8aa', '기계안전, 전기안전, 화공안전분야의 산업안전지도사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('516bcc9d-b621-a87b-08a9-73314143d8aa', '5d65e62d-da66-f05b-a424-66d91e9f8f94', '① 한국산업안전보건공단이 실시하는 관련교육을 8시간', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aac70f7b-6567-0969-9468-b9cf52a80531', '11111111-1111-1111-1111-111111111104', 'mcq', '예비위험분석(PHA)에서 식별된 사고의 범주가 아닌 것은?', 2, 119)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8cd926f4-7cd6-b961-948a-3a023805e01a', 'aac70f7b-6567-0969-9468-b9cf52a80531', '중대 (Critical)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1b0211d-a789-ab0c-fc66-f7643eb1e678', 'aac70f7b-6567-0969-9468-b9cf52a80531', '한계 적 (Marginal)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8749539e-144f-93c7-f66e-8e8d341c8813', 'aac70f7b-6567-0969-9468-b9cf52a80531', '파국적 (Catastrophic)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2939dedd-3e40-0f58-b0f2-056560e50ea6', 'aac70f7b-6567-0969-9468-b9cf52a80531', '수용가능(Acceptable)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aac70f7b-6567-0969-9468-b9cf52a80531', '2939dedd-3e40-0f58-b0f2-056560e50ea6', '④ 수용가능(Acceptable)', '2024-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('abc36319-c16f-0171-493c-71eda1f117cb', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 및 전단기에서 안전블록을 사용해야 하는 작업으로 가장 거리가 먼 것은?', 2, 120)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2850fbe6-393a-db22-a154-0e8e5965c67c', 'abc36319-c16f-0171-493c-71eda1f117cb', '금형 가공작업', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e0e0f01-2d99-7fac-5ee2-2765c22a69cc', 'abc36319-c16f-0171-493c-71eda1f117cb', '금형 해체작업', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d4c7a83-f573-6e4f-3f39-8a8af234720e', 'abc36319-c16f-0171-493c-71eda1f117cb', '금형 부착작업', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('786c99bb-d553-a726-4250-0e4686896548', 'abc36319-c16f-0171-493c-71eda1f117cb', '금형 조정작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('abc36319-c16f-0171-493c-71eda1f117cb', '2850fbe6-393a-db22-a154-0e8e5965c67c', '① 금형 가공작업', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭숫돌의 파괴원인으로 거리가 가장 먼 것은?', 2, 121)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f04e35c-769c-3e68-977a-61483f95ee76', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌이 외부의 큰 충격을 받았을 때', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91242482-26d1-7b31-3667-56e31bdc5382', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌의 회전속도가 너무 빠를 때', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07804abc-6992-3eef-c84a-1a03aebed497', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌 자체에 이미 균열이 있을 때', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('090c311e-ba36-1a3c-40d8-ef1f77b1da23', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '플랜지 직경이 숫돌 직경의 4 이상일 때', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '090c311e-ba36-1a3c-40d8-ef1f77b1da23', '④ 플랜지 직경이 숫돌 직경의 4 이상일 때', '2024-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH 지침에서 최대허용한계（MPL）는 활동한계（AL）의 몇 배인가?', 2, 122)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97f6257-4d1d-c8ad-20fc-ad51186b1444', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '1배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '3배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a1285e3-f588-01c9-0dc3-856a372fc020', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '5배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b11b7296-dada-f2af-ffe5-686ff4d84fed', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '9배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', 'e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '② 3배', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 롤러기의 급정지장치 설치방법으로 틀린 것은?', 2, 123)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34b1c68a-b688-0fee-2cc6-6011ab2270f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '손조작식 급정지장치의 조작부는 밑면에서 1.8[m] 이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4da05446-e624-09fd-1997-69341cdcf3f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '복부조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b135daeb-02fc-6705-62ab-70476dd06029', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('77932eba-5362-22ae-51a2-7036f7cac783', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '급정지장치의 위치는 급정지장치의 조작부 중심점을', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', 'b135daeb-02fc-6705-62ab-70476dd06029', '③ 무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', '2024-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #61
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조의 필요충분조건에 대한 사항으로 틀린 것은?', 2, 124)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a5c2049-59a2-767a-12e9-6abe2e567ac7', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '폭발화염이 외부로 유출되지 않을 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb0b30d-9180-7d0e-c1c6-6964db8a0697', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '습기 침투에 대한 보호를 충분히 할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b1db4de-3d73-6b1c-fbfa-d7583f2edbda', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '내부에서 폭발할 경우 그 압력에 견딜 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4dab5519-d058-f1b4-76cf-a247bda7e9d7', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '외함의 표면온도가 외부의 폭발성 가스를 점화하지 않', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '0fb0b30d-9180-7d0e-c1c6-6964db8a0697', '② 습기 침투에 대한 보호를 충분히 할 것', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?（단, 심실세동전류 는 쯔[mA]이며, 통전시간 7''는 1초, 전원은 정현파 교류 이다.）', 2, 125)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cab2c9bb-9414-d2b8-ef6a-21bd04933dba', '9298f097-426b-9258-b73e-112e4f3c92d5', '13.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '9298f097-426b-9258-b73e-112e4f3c92d5', '27.2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3aea2fb8-4c73-341a-8c89-db2f20181eae', '9298f097-426b-9258-b73e-112e4f3c92d5', '136.6', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27b430fb-c16b-fb81-b9d7-f16df877238a', '9298f097-426b-9258-b73e-112e4f3c92d5', '272.2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '② 27.2', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', '11111111-1111-1111-1111-111111111104', 'mcq', '고속형 누전차단기의 동작시간으로 옳은 것은?', 2, 126)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df64ceda-be3d-8387-3db5-2362d7a0639c', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 o.i 초 이내', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91bb42f6-aab2-1969-f77b-ed81b11a990e', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.3초 이내', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01058185-5b2d-3ea6-9671-f87d1c46d5e1', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.01 초 이내', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8064c86-9db4-e6c7-0eb0-befcd0631ef4', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.03초 이내', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', 'df64ceda-be3d-8387-3db5-2362d7a0639c', '① 정격감도전류에서 o.i 초 이내', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 전원개폐기를 개방하고 검전기로 전선로를 검 전하였더 니 네온램프에 불이 점등되었다. 그 원인으로 옳은 것은?', 2, 127)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cf394dd-48af-284e-7683-1df08c5ad8a9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '유도전압이 발생되었다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f6ff370-b579-1f9a-d34d-8eb5077e4850', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '검전기가고장이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47630aa7-c2c1-77a1-42d8-a9239b8866f9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '단락접지를 하였다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c0983a3-622e-fe51-0df3-f00d5b91e01d', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '작업지휘자가 없었다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '7cf394dd-48af-284e-7683-1df08c5ad8a9', '① 유도전압이 발생되었다.', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야하는가?', 2, 128)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a3452c7-0259-474e-9fd4-4891668646b8', '92c8220c-46fa-c990-6086-ad7df704f1b9', '15일', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c2dbfa2-1e89-3b36-15df-11a0648febf2', '92c8220c-46fa-c990-6086-ad7df704f1b9', '30일', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94533cd7-b53c-1e32-bc80-4b7397d97f91', '92c8220c-46fa-c990-6086-ad7df704f1b9', '60일', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9465bd58-ff21-fca2-15de-5f1217c1c671', '92c8220c-46fa-c990-6086-ad7df704f1b9', '90일', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '5c2dbfa2-1e89-3b36-15df-11a0648febf2', '② 30일', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', '11111111-1111-1111-1111-111111111104', 'mcq', '특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악 하기 위하여 필요한 계측장치로 가장 거리가 먼 것은?', 2, 129)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85d1f266-4c75-9f02-99d8-838e9b7e2011', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '압력계', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6800a912-de9b-8dd4-7659-674ed9a32e7b', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '유량계', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('957b0ffd-1163-892f-7693-6d076c001c51', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '온도계', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '비중계', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', 'ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', '④ 비중계', '2024-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d4c464e0-7913-91a1-01b2-7d4093e055cc', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발하한계에 관한 설명으로 옳지 않은 것은?', 2, 130)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73ca3d39-9cb9-aeb6-c59f-1c85e9011983', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계에서 화염의 온도는 최저치로 된다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59d87825-583c-a6e9-e0f1-ea65b044f865', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계에 있어서 산소는 연소하는 데 과잉으로 존', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('072f3ac1-81ee-c553-0930-f5adbfb8d74f', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '화염이 하향전파인 경우 일반적으로 온도가 상승함에', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cceddef-7870-1fc6-8983-8b3fbd414669', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계는 혼합가스의 단위체적당의 발열량이 일정', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d4c464e0-7913-91a1-01b2-7d4093e055cc', '072f3ac1-81ee-c553-0930-f5adbfb8d74f', '③ 화염이 하향전파인 경우 일반적으로 온도가 상승함에', '2024-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #88
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('70f45854-01d5-717f-f642-3b96a3a3cd7e', '11111111-1111-1111-1111-111111111104', 'mcq', '화염방지기의 설치에 관한 사항으로（ ）에 알맞은 것은? 사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화학 설비에서 증기나 가스를 대기로 방출하는 경우에는 외부로부 터의 화염을 방지하기 위하여 화염방지기를 그 설비（ ） 에 설치하여야 한다.', 2, 131)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5289a6c-dd77-d0b5-2159-7aef13e3624c', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '상단', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2849ffcd-dcb9-0386-3ebc-43a0f15a9f3d', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '하단', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85fb2e51-3182-b399-4374-1405d03b0661', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '중앙', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ae0f37e-e6a4-db63-989c-430ceac8a11c', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '무게중심', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('70f45854-01d5-717f-f642-3b96a3a3cd7e', 'c5289a6c-dd77-d0b5-2159-7aef13e3624c', '① 상단', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', '11111111-1111-1111-1111-111111111104', 'mcq', '물질안전보건자료를 작성할 때에 혼합물인 제품들이 해당 제품들을 대표하여 하나의 물질안전보건자료를 작성할 수 있는 충족요건 중 각 구성성분의 함유량 변화는 얼마 이하 이어야 하는가?', 2, 132)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac9dc7f-ebdf-9285-e1b0-d4fe600bdd55', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '5[%p]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef2cbecc-0712-250c-ef54-a0124834d9cc', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '10[%p]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3057381-4ec3-3d8a-2f19-5418e012050c', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '15[%p]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b311d29-d0d1-cb18-1f0a-08bbf7f555b4', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '30[%p]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', 'ef2cbecc-0712-250c-ef54-a0124834d9cc', '② 10[%p]', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', '11111111-1111-1111-1111-111111111104', 'mcq', '제2종 분말소화약제의 주성분에 해당하는 것은?', 2, 133)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('411ce014-b905-58a9-110c-0368a2e06be8', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소나트륨', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소칼륨', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2129aa81-e767-11ed-ae85-de5ed2ab98d9', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '인산암모늄', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('277f23c6-4875-bc33-4506-6a902b5477e3', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '수산화암모늄', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', 'dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', '② 탄산수소칼륨', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b89b6450-2784-0f43-a960-915a791ac94e', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출하려고 할 때 그 첨부서류와 가 장 거리가 먼 것은?', 2, 134)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a633a98-fbc5-a48a-6616-d682f66b5bdb', 'b89b6450-2784-0f43-a960-915a791ac94e', '공사개요서', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8339dbe8-ed4c-ac73-8a3c-77bf5a059acb', 'b89b6450-2784-0f43-a960-915a791ac94e', '산업안전보건관리 비 작성요령', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec761289-06a1-ab83-07ef-ca9f6053b8f6', 'b89b6450-2784-0f43-a960-915a791ac94e', '전체 공정표', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2ce0ce1-141d-694e-fd82-10acb8e49cc4', 'b89b6450-2784-0f43-a960-915a791ac94e', '재해 발생 위험 시 연락 및 대피방법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b89b6450-2784-0f43-a960-915a791ac94e', '8339dbe8-ed4c-ac73-8a3c-77bf5a059acb', '② 산업안전보건관리 비 작성요령', '2024-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기에 해당하지 않는 것은?', 2, 135)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94a2eb61-f36b-2363-a94c-99e3447b27e5', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '어스드릴', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2590653-289d-1f1f-2fd1-e7d91bb1b94c', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '크레인', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af092d67-01f6-fbbc-146a-8ac10b732e7d', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '리프트', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3762150b-8b3b-142d-2fe3-1bf0fc0609f5', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '곤돌라', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '94a2eb61-f36b-2363-a94c-99e3447b27e5', '① 어스드릴', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '11111111-1111-1111-1111-111111111104', 'mcq', '항만하역작업에서의 선박승강설비 설치기 준으로 옳지 않은 것은?', 2, 136)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05683051-b4c6-8d3c-13f3-e3831cc71876', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '400톤급 이상의 선박에서 하역작업을 하는 경우에 근', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7189e5ba-0115-ebfc-9ca3-88ab99e08821', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리는 견고한 재료로 제작된 것으로 너비는', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37e124d0-2b80-bf6c-bef0-a3f8a1a47b84', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리의 양측에는 82[cm] 이상의 높이로 울타리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4cbad8a-2c5a-a1dd-04a9-19d8b91552e9', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리는 근로자의 통행에만 사용하여야 하며. 화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '05683051-b4c6-8d3c-13f3-e3831cc71876', '① 400톤급 이상의 선박에서 하역작업을 하는 경우에 근', '2024-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-2'])
on conflict (question_id) do nothing;

-- 2024-3 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('112e6fe2-4652-40bb-4986-86cde8349a8e', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 학습자가 이미 설명을 듣거나 시범을 보고 알게 된 지식이나 기능을 강사의 감독 아래 직접적으로 연 습하여 적용할 수 있도록 하는 교육방법은?', 2, 137)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e0fac0a-d916-eaba-c15a-2647f2920800', '112e6fe2-4652-40bb-4986-86cde8349a8e', '모의법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a517380-060c-97f8-c8d2-4299b3903c6b', '112e6fe2-4652-40bb-4986-86cde8349a8e', '토의법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85de3d13-3b1b-de14-0ffd-42b4f4682c5c', '112e6fe2-4652-40bb-4986-86cde8349a8e', '실연법', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdc8039c-d654-38ff-fe9b-dbd9a16ab215', '112e6fe2-4652-40bb-4986-86cde8349a8e', '반복법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('112e6fe2-4652-40bb-4986-86cde8349a8e', '85de3d13-3b1b-de14-0ffd-42b4f4682c5c', '③ 실연법', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우(Maslow)의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 138)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4119880-fe9f-6853-937e-a41fca33802f', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '생리적욕구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fe75974-990b-f348-b7b0-10409f7620bd', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '사회적욕구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '자아실현의 욕구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee4b3a75-4ead-79b3-9acc-b95b9b77dcc7', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '안전의 욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '③ 자아실현의 욕구', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d3a719b-d089-f5ce-df95-52b8f3933936', '11111111-1111-1111-1111-111111111104', 'mcq', '재해손실비를 다음과 같이 산정한 것은 어느 방식인가? 총 재해코스트 = 보험코스트 + 비보험코스트', 2, 139)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27bef558-c6bc-3f1d-0802-10e84364ba45', '7d3a719b-d089-f5ce-df95-52b8f3933936', '하인리히 방식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57be8ce9-1fdf-3b30-7d24-ea81de4cb232', '7d3a719b-d089-f5ce-df95-52b8f3933936', '버드의 방식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d1b4ed6-f384-34a2-1127-b30e2e46f96b', '7d3a719b-d089-f5ce-df95-52b8f3933936', '시몬즈 방식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4e6115e-6b63-17b3-e638-14d6cf7b33f4', '7d3a719b-d089-f5ce-df95-52b8f3933936', '콤패스 방식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d3a719b-d089-f5ce-df95-52b8f3933936', '0d1b4ed6-f384-34a2-1127-b30e2e46f96b', '③ 시몬즈 방식', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육의 교육시간에 관한 설명으로 옳은 것은?', 2, 140)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f265969-cdc7-75ec-1433-6c71b0b42b4c', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자의 작업내용 변경 시의 교육은 2시간 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2373fb2f-e258-49a4-73d8-554f02cd609d', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '사무직에 종사하는 근로자의 정기교육은 매반기 6시간', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06fa6235-0e76-05f0-c9c0-273594dd65c8', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근로', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc519020-c951-271d-60ca-a6041c5fde32', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '관리감독자의 지위에 있는 사람의 정기교육은 연간 8', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '2373fb2f-e258-49a4-73d8-554f02cd609d', '② 사무직에 종사하는 근로자의 정기교육은 매반기 6시간', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 산업안전보건위원회의 사용자위원 구 성원이 아닌 것은?（단, 각 사업장은 해당하는 사람을 선임 하여야 하는 대상 사업장으로 한다.）', 2, 141)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a11e149a-648e-b329-cbcc-f2a094811cbd', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '안전관리자', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d1eb7f-51b8-e3b9-24f6-f2f6e899ba3b', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '보건관리자', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdbed70e-fe43-672a-19c1-a2c6fdba1cda', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '산업보건의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e015094-c6f1-a73e-2a8c-a89726aa6ef8', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '명예산업안전감독관', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '6e015094-c6f1-a73e-2a8c-a89726aa6ef8', '④ 명예산업안전감독관', '2024-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d552a61-3620-283a-a74b-0484dd92ff74', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전인증대상 안전모의 성능기준 항목이 아닌 것 은?', 2, 142)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4cf3a0e4-9ebc-09f0-61ca-3c59188f4c71', '7d552a61-3620-283a-a74b-0484dd92ff74', '내열성', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7e40c19-20eb-f259-1615-dd5c34f45c64', '7d552a61-3620-283a-a74b-0484dd92ff74', '턱끈풀림', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4d09948-2f9d-4eea-8d00-ace1c9ca3b3e', '7d552a61-3620-283a-a74b-0484dd92ff74', '내관통성', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('234d3293-b0cd-7ecf-7bd1-6c03ce264981', '7d552a61-3620-283a-a74b-0484dd92ff74', '충격흡수성', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d552a61-3620-283a-a74b-0484dd92ff74', '4cf3a0e4-9ebc-09f0-61ca-3c59188f4c71', '① 내열성', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 중 작업현장에서 그때 그 장소의 상황에 즉응 하여 실시하는 것은?', 2, 143)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('262c7b77-11b4-5e98-10bd-717c67e085bd', 'f2cd2586-cda8-f684-6403-78aef825c58e', '자문자답 위험예지훈련', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c81f494-af30-1177-9c67-278e5e9a06f2', 'f2cd2586-cda8-f684-6403-78aef825c58e', 'TBM 위험예지훈련', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2756a7ca-5f96-5409-cc3d-ca0bcf404872', 'f2cd2586-cda8-f684-6403-78aef825c58e', '시나리오 역할연기훈련', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ae73019-7d5d-29d4-680c-9e72e6c4fb41', 'f2cd2586-cda8-f684-6403-78aef825c58e', '1인 위험예지훈련', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '1c81f494-af30-1177-9c67-278e5e9a06f2', '② TBM 위험예지훈련', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #22
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('61de9d3d-fd40-2eba-7b05-2b4abbdf517b', '11111111-1111-1111-1111-111111111104', 'mcq', '시스템안전 프로그램에서의 최초 단계 해석으로 시스템의 위험요소가 어떤 위험 상태에 있는가를 정성적으로 평가하 는 방법은?', 2, 144)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12c52213-fe42-018f-350b-39e618e8093c', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'PHA', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4025c085-1018-3256-7063-f8c822ee1c40', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FHA', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df324d42-ccbf-db68-8a12-5fde6c4b8f46', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FMEA', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5965bf72-8581-3c38-b26a-c51898c7c1ca', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FTA', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('61de9d3d-fd40-2eba-7b05-2b4abbdf517b', '12c52213-fe42-018f-350b-39e618e8093c', '① PHA', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #29
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 해당 사업주가 유해위험방지계획서 를 작성하여 제출해야 하는 대상은?', 2, 145)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b30d470e-44ab-db1e-fc05-04f57ddc202a', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '시•도지사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5956bd4a-fa5f-a924-7545-b9086366641f', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '관할구청장', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('259604a1-42d5-5fa6-ad6f-bb88bc7cb37e', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '고용노동부장관', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e5e0e45a-9a37-f868-ba57-0a10f459c31c', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '행정안전부장관', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '259604a1-42d5-5fa6-ad6f-bb88bc7cb37e', '③ 고용노동부장관', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTDs)의 발생인자와 가장 거리가 먼 것은?', 2, 146)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e366cea6-af39-2870-550e-57d40503376a', '5d53167a-3489-ef42-1329-d9e679c4366a', '무리한 힘', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf12b59-a677-be67-2903-e3e5fc201dcd', '5d53167a-3489-ef42-1329-d9e679c4366a', '다습한 환경', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e678bda2-4408-bbbc-e1d0-f2cd6d137d5e', '5d53167a-3489-ef42-1329-d9e679c4366a', '장시 간의 진동', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef399b72-ea46-6f96-6066-f5bed542828d', '5d53167a-3489-ef42-1329-d9e679c4366a', '반복도가 높은 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', 'ebf12b59-a677-be67-2903-e3e5fc201dcd', '② 다습한 환경', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '11111111-1111-1111-1111-111111111104', 'mcq', '철강업 등에서 10일 간격으로 10시간 정도의 정기 수리일 을 마련하여 대대적인 수리, 수선을 하게 되는데 이와 같이 일정기간마다 설비보전활동을 하는 것을 무엇이라 하는가?', 2, 147)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('055426c6-318b-5c10-1270-2f50f90bb068', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '사후보전 (Break down Maintenance, BM)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('937ad240-a8a2-896e-61c7-1a89c843af83', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '시간기준보전 (Time Based Maintenance, TBM)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee87787-882b-af8d-8574-8ebcd60c321c', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '개량보전(Concentration Maintenance, CM)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ea9d63-5ab0-5e4a-9ee3-14cb63938276', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '상태기준보전(Condition Based Maintenance,', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '937ad240-a8a2-896e-61c7-1a89c843af83', '② 시간기준보전 (Time Based Maintenance, TBM)', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdd6ca81-a77e-b999-8118-73d7624351b7', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계설비에서 반대로 회전하는 두 개의 회전체가 맞닿는 사이에 발생하는 위험점으로 가장 적절한 것은?', 2, 148)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23282a22-79f0-4658-ad06-251ff9af6b31', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '물림점', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c870a0e-39bd-851f-a164-8dec1738f2c4', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '협착점', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a96ed7d5-5d1a-72b3-5638-73dd03a6d42a', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '끼임점', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c6a4f28-1fcc-fe7e-7352-c5d02039fbce', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '절단점', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdd6ca81-a77e-b999-8118-73d7624351b7', '23282a22-79f0-4658-ad06-251ff9af6b31', '① 물림점', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #61
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2c52cc50-d676-e671-6795-15633393ae05', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발위험장소의 분류 중 인화성 액체의 증기 또는 가연성 가스에 의한 폭발위험이 지속적으로 또는 장기간 존재하는 장소는 몇 종 장소로 분류되는가?', 2, 149)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e57a886e-d5b6-c1b5-ce1f-eebd6c65de05', '2c52cc50-d676-e671-6795-15633393ae05', 'o종 장소', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bf47170-708c-1071-e3c1-370ada72140f', '2c52cc50-d676-e671-6795-15633393ae05', '1종 장소', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b884081-10c9-5448-3abb-8197aa772db9', '2c52cc50-d676-e671-6795-15633393ae05', '2종 장소', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b19875b-dd4d-1c3c-d70e-61a898cd9c34', '2c52cc50-d676-e671-6795-15633393ae05', '3종 장소', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2c52cc50-d676-e671-6795-15633393ae05', 'e57a886e-d5b6-c1b5-ce1f-eebd6c65de05', '① o종 장소', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('61accc89-9a18-dffb-c436-6916ce916be4', '11111111-1111-1111-1111-111111111104', 'mcq', '감전사고 시 전선이나 개폐기 터미널 등의 금속분자가 고열 로 용융됨으로서 피부 속으로 녹아 들어가는 것은?', 2, 150)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb0252b5-6ee2-2052-5f6d-ff64343754c6', '61accc89-9a18-dffb-c436-6916ce916be4', '피부의광성변화', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0e39f95-ce68-417c-84c0-f7a99bc5e677', '61accc89-9a18-dffb-c436-6916ce916be4', '전문', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e482f32-a976-2bf0-4d2d-6c87ac73c6e0', '61accc89-9a18-dffb-c436-6916ce916be4', '표피박탈', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7e4da4f-0751-8171-b8b7-c7428995626b', '61accc89-9a18-dffb-c436-6916ce916be4', '전류반점', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('61accc89-9a18-dffb-c436-6916ce916be4', 'bb0252b5-6ee2-2052-5f6d-ff64343754c6', '① 피부의광성변화', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 그림은 심장맥동주기를 나타낸 것이다. ■「파는 어떤 경 우인가?', 2, 151)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0efbdfe2-e9f5-51d7-4292-8c0ab7b4f7b5', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 수축에 따른 파형', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89a2b779-5bc5-f6b8-f056-1c7405e7f072', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 수축에 따른 파형', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c076624-8a20-7050-c81b-e8e9c0bc1231', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 휴식 시 발생하는 파형', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d413fb9-4237-290d-03b3-5b91a9fc4301', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 휴식 시 발생하는 파형', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '4c076624-8a20-7050-c81b-e8e9c0bc1231', '③ 심실의 휴식 시 발생하는 파형', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크용접기의 자동전격 장치는 전격의 위험을 방지하기 위하여 아크 발생이 중단된 후 약 1초 이내에 출력 측 무부 하 전압을 자동적으로 몇 [v] 이하로 저하시켜야 하는가?', 2, 152)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c34e456-479c-48e1-f9a2-ebb008f550d8', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '85', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2a3aed7-c784-c97e-a294-956d5446b0f2', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '70', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('264b7e1d-a733-9782-02af-222dbf26fea9', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '50', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '25', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '④ 25', '2024-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', '11111111-1111-1111-1111-111111111104', 'mcq', '활선작업 및 활선근접 작업 시 반드시 작업지휘자를 정하여 야 한다. 작업지휘자의 임무 중 가장 중요한 것은?', 2, 153)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('062626d6-d406-cc2e-46b2-d0b2093b57ed', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '설계의 계획에 의한 시공의 관리, 감독', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '활선에 접근 시 즉시 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3bfb39-fbdf-fa79-81a0-18b523f8147f', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '필요한 전기 기자재의 보급', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cac4ce-974a-d1d2-3a37-a9378da4cecf', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '작업의 신속한 처리', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', 'bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '② 활선에 접근 시 즉시 경고', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #68
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰침의 제한전압이 800[kV], 충격 절연강도가 1,OOO[kV] 라 할 때, 보호여유도는 몇 [%]인가?', 2, 154)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1471c895-0fc1-0634-6084-00bd76b40725', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '25', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a57ba95-5eaa-5b74-eb2a-ccb3101bbd90', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '33', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d7e1bfb-ea87-6d28-7d27-0d575e3af4cf', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '47', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2611947f-b59e-57e3-26da-b634842cadf2', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '63', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '1471c895-0fc1-0634-6084-00bd76b40725', '① 25', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [v] 이하 인가?', 2, 155)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9055b9a-2705-57e0-5aa6-21a634ba2606', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '30[V]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5902163-8102-16b1-2e63-ff9e69525fb1', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '50[V]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a4624fb-c0a2-d5c8-6963-81bd2cb0b467', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '60[V]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d041b3dd-7a6e-e9a3-e96a-52d16f4854b9', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '70[V]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', 'f9055b9a-2705-57e0-5aa6-21a634ba2606', '① 30[V]', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 최소감지전류에 대한 설명으로 알맞은 것은?', 2, 156)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb88edca-2e79-bd8a-65f3-9cc882a8f697', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '인체가 고통을 느끼는 전류이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39564a15-59a0-75c0-1639-a598227be9f4', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 한 값이며, 성인 남자의 경우 약 l[mA]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfc46282-01bb-79a1-e821-6dfa5bb022dc', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 여자의 경우 성인 남자의 7이%]인', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', 'f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', '② 성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '11111111-1111-1111-1111-111111111104', 'mcq', '인입개폐기를 개방하지 않고 전등용 변압기 1차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 cos에 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?', 2, 157)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0be931c4-939c-c42e-9ef3-d1e1d91bc5c7', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '안전장구 미사용', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('846102ac-685e-3b56-5777-a18c24f9e594', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '동력용 변압기 cos 미개방', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('837ffaad-0dd2-c26d-a032-5e0e387a5664', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '전등용 변압기 2차 측 COS 미 개방', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31be3915-6372-8ed7-f607-4a4cdda6d1f8', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '인입구 개폐기 미개방한 상태에서 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '837ffaad-0dd2-c26d-a032-5e0e387a5664', '③ 전등용 변압기 2차 측 COS 미 개방', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----cT''o--------1 |--------（스、-----부히 ⑭ @ @', 2, 158)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aab78a85-89f9-061c-d79d-0710f1ab948c', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: ®-+@ — ©, 투입:®—*g）— @', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddc2c23c-8f5c-da7d-0f67-3133b784f40e', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: Q）—- @ —■ ®, 투입: Q） —> @ —* ®', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1188d5c1-798c-033b-c4d8-e62a89c6ee60', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: （타）一© — ®, 투입:© — ® — ©', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97929bf2-a4c8-5578-e6ac-73a03daf7d8d', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: © — @으®, 투입: ©--（가）一®', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '97929bf2-a4c8-5578-e6ac-73a03daf7d8d', '④ 차단: © — @으®, 투입: ©--（가）一®', '2024-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '11111111-1111-1111-1111-111111111104', 'mcq', '인화성 가스가 발생할 우려가 있는 지하작업장에서 작업을 할 경우 폭발이나 화재를 방지하기 위한 조치사항 중 가스 의 농도를 측정하는 기준으로 적절하지 않은 것은?', 2, 159)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7bc2867-3835-9232-87ff-52d7360fa966', '393530b5-e003-0eba-e6fa-d6038b424b21', '매일 작업을 시작하기 전에 측정한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70d42fd-2da1-9000-1aef-0255d3eeb09f', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스의 누출이 의심되는 경우 측정한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08cbd857-2d25-3907-ee35-c20cefac2722', '393530b5-e003-0eba-e6fa-d6038b424b21', '장시간 작업할 때에는 매 8시간마다 측정한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('723547b0-1c27-d459-23a2-65020787b1c4', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스가 발생하거나 정체할 위험이 있는 장소에 대하여', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '08cbd857-2d25-3907-ee35-c20cefac2722', '③ 장시간 작업할 때에는 매 8시간마다 측정한다.', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1853742d-8f83-9016-9fde-df5bd05ab178', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판가스 1[m3]를 완전연소시키는 데 필요한 이론 공기 량은 몇 [m3]인가?（단, 공기 중의 산소농도는 20[vol%]이 다.）', 2, 160)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13007ced-670e-61a0-a12a-801a6fecff8f', '1853742d-8f83-9016-9fde-df5bd05ab178', '20', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af9c00c3-79b9-7109-c17e-ba8ff531d301', '1853742d-8f83-9016-9fde-df5bd05ab178', '25', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89b8880e-6df9-82d1-8dbb-19d7df8664a6', '1853742d-8f83-9016-9fde-df5bd05ab178', '30', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c5ced3a-0a6e-df47-ef35-803178796397', '1853742d-8f83-9016-9fde-df5bd05ab178', '35', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1853742d-8f83-9016-9fde-df5bd05ab178', 'af9c00c3-79b9-7109-c17e-ba8ff531d301', '② 25', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '11111111-1111-1111-1111-111111111104', 'mcq', '소화설비와 주된 소화적용방법의 연결이 옳은 것은?', 2, 161)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a185ba76-042c-29fb-d348-635f82f2e9c0', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '포소화설비 - 질식효과', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4463185-0bc9-b7b8-39a7-356c239781ef', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '스프링클러설비 - 억제효과', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9546555a-e54e-8ba3-253c-1f5db37b69f6', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '이산화탄소소화설비 - 제거소화', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbca6990-2d2c-342a-afb0-d4457d9dba06', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '할로겐화합물소화설비 - 냉각소화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', 'a185ba76-042c-29fb-d348-635f82f2e9c0', '① 포소화설비 - 질식효과', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '11111111-1111-1111-1111-111111111104', 'mcq', '후압이 존재하고 증기압 변화량을 제어할 목적의 경우 어떠 한 안전방출장치를 사용해야 하는가?', 2, 162)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d7e41a-d6d3-b5a5-5c5c-e88863a220cc', '8f32052f-6024-18cf-a151-776d0f1f044f', '스프링식 안전방출장치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c165eee-5d8c-ac30-64f1-63540a95ac6b', '8f32052f-6024-18cf-a151-776d0f1f044f', '파열판식 안전방출장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e54b1d-4dec-4fe3-4a87-a2699f4589b3', '8f32052f-6024-18cf-a151-776d0f1f044f', '릴리프식 안전방출장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2963b56b-0939-8680-7b05-0757a19831b9', '8f32052f-6024-18cf-a151-776d0f1f044f', '벨로스(Bellows)식 안전방출장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '2963b56b-0939-8680-7b05-0757a19831b9', '④ 벨로스(Bellows)식 안전방출장치', '2024-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68b51484-9aff-696c-c0cd-2356db421c05', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우에 준수하여야 할 기준으로 옳지 않은 것은?', 2, 163)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da32a5df-da84-b769-c13d-07193b211e39', '68b51484-9aff-696c-c0cd-2356db421c05', '승강용 사다리는 견고하게 설치할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f91a9e15-cd99-31d9-1b28-bd0bc03112c3', '68b51484-9aff-696c-c0cd-2356db421c05', '비계의 최상부에서 작업을 하는 경우에는 안전난간을', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6d22518-a6ee-f360-4504-980680d02493', '68b51484-9aff-696c-c0cd-2356db421c05', '작업발판의 최대적재하중은 400[kg]을 초과하지 않도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c7c57b3-cb71-1aa8-d946-ec3726ae78ed', '68b51484-9aff-696c-c0cd-2356db421c05', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68b51484-9aff-696c-c0cd-2356db421c05', 'c6d22518-a6ee-f360-4504-980680d02493', '③ 작업발판의 최대적재하중은 400[kg]을 초과하지 않도', '2024-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 와이어로프로 지지하는 경우에 준수해야 할 사항으로 옳지 않은 것은?', 2, 164)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38333dc8-b20c-a669-f421-88eee08932ee', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66b4850c-ac95-d604-36b7-b53c264ee5b1', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프 설치각도는 수평면에서 60° 이상으로 하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be5435f7-45e4-22d0-4289-61902b6f0398', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a394d3a-aff8-753c-3a11-ee3c68a34f2b', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '66b4850c-ac95-d604-36b7-b53c264ee5b1', '② 와이어로프 설치각도는 수평면에서 60° 이상으로 하', '2024-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a20d0eb0-bce1-115f-bb65-f29c4c51248d', '11111111-1111-1111-1111-111111111104', 'mcq', '단관비계가 넘어지는 것을 방지하기 위하여 사용하는 벽이 음의 간격기준으로 옳은 것은?', 2, 165)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e34cb7d-4dee-4a7f-d801-a02d67666bdb', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 5[m] 이하, 수평 방향 5[m] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69c34487-71cf-4691-5551-c6a69ef1ef97', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 6[m] 이하, 수평 방향 6[m] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b5bf86d-8ae0-ebc4-2107-ac15736d1cbe', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 7[m] 이하, 수평 방향 7[m] 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6289b997-a6aa-f120-dff6-b3c8341b20fe', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 8[m] 이하, 수평 방향 8[m] 이하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a20d0eb0-bce1-115f-bb65-f29c4c51248d', '5e34cb7d-4dee-4a7f-d801-a02d67666bdb', '① 수직 방향 5[m] 이하, 수평 방향 5[m] 이하', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #114
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '11111111-1111-1111-1111-111111111104', 'mcq', '부두 등의 하역작업장에서 부두 또는 안벽의 선을 따라 통 로를 설치하는 경우, 최소 폭 기준은?', 2, 166)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56db5eb0-0083-7827-d3e3-570d72cf6c53', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '90[cm] 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('feac5b12-b38c-65eb-2485-3a18d0011ac5', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '75[cm] 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19753cda-e31b-cb18-e0dc-2d6038238423', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '60[cm] 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25a9a383-604e-1fc2-7717-0e9766e6b135', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '45[cm] 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '56db5eb0-0083-7827-d3e3-570d72cf6c53', '① 90[cm] 이상', '2024-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2024-3 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '11111111-1111-1111-1111-111111111104', 'mcq', '항타기 또는 항발기의 권상장치 드럼축과 권상장치로부터 첫 번째 도르래의 축 간의 거리는 권상장치 드럼폭의 몇 배 이상으로 하여야 하는가?', 2, 167)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce5b256f-bc71-1c05-140a-35b78b8c97cf', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '5배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6be539d7-c853-50bb-219f-50fcf389fa86', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '8배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0f123b1-0296-268e-1ef7-5b61bfd350c9', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '10배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84b1b16b-135f-3185-d194-2d601281d60e', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '15배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '84b1b16b-135f-3185-d194-2d601281d60e', '④ 15배', '2024-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2024-3'])
on conflict (question_id) do nothing;

-- 2023-1 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 바탕은 파 란색, 관련 그림은 흰색을 사용하는 표지는?', 2, 168)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af065b72-b66c-3c7b-dfea-103387bd845d', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '사용금지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e334a6f-534b-69e5-33e5-502fa50d596f', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '세안장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00e3aac8-3e6a-e9d1-58d4-f392ed912a93', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '몸균형상실 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('924ec823-03f2-1bfe-13d0-65130851e680', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '안전복 착용', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '924ec823-03f2-1bfe-13d0-65130851e680', '④ 안전복 착용', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c0854780-cd0f-99dc-fb29-c16f21a489cf', '11111111-1111-1111-1111-111111111104', 'mcq', '재해분석도구 중 재해발생의 유형을 어골상（魚骨像）으로 분류하여 분석하는 것은?', 2, 169)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d3c94a7f-51d7-5019-f442-1cb3af295f09', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '파레토도', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf662d20-d892-e390-997d-bc103cead0f8', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '특성요인도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aaebcee7-364d-189e-c3cc-b4ca6e20d67f', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '관리도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('795af566-a687-1d36-9331-0c11132e83e7', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '클로즈분석도', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c0854780-cd0f-99dc-fb29-c16f21a489cf', 'bf662d20-d892-e390-997d-bc103cead0f8', '② 특성요인도', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1f37b860-4f62-6990-bcea-703fd85aca76', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전보건교육의 단계별 교육과정 순서로 옳은 것은?', 2, 170)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ee192a0-e792-609f-9a8b-bbfb460b69f2', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 태도교육 一 안전 지식교육 一 안전 기능교육', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('305783ac-281b-207c-5bff-e163ee25e713', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 지식교육 一 안전 기능교육—안전 태도교육', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c1d5ebf-5858-4f3b-3de7-c84cbe1cb367', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 기능교육 一 안전 지식교육 一 안전 태도교육', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('175001f7-c7f7-b3fe-7fab-8ac7302f39ec', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 자세교육 •一 안전 지식교육 - 안전 기능교육', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1f37b860-4f62-6990-bcea-703fd85aca76', '305783ac-281b-207c-5bff-e163ee25e713', '② 안전 지식교육 一 안전 기능교육—안전 태도교육', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #19
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8970671b-7028-0675-1792-082e1997f79b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육시간에 관한 설명으로 옳지 않은 것은?', 2, 171)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073f6631-d9e7-a4e5-9d15-349ff4824584', '8970671b-7028-0675-1792-082e1997f79b', '사무직 종사 근로자 정기교육: 매반기 6시간 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b57bf4f6-dd57-455c-ffe7-7e3f09515245', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dca6939c-9ae0-81d9-340a-bbbbe769cda5', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 작업내용 변경 시 교육: 2시간 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91912107-9c4a-bf88-9b0f-cdafd6aeca5c', '8970671b-7028-0675-1792-082e1997f79b', '건설 일용근로자 건설업 기초안전 • 보건교육: 4시간 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8970671b-7028-0675-1792-082e1997f79b', 'dca6939c-9ae0-81d9-340a-bbbbe769cda5', '③ 일용근로자 작업내용 변경 시 교육: 2시간 이상', '2023-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의식 교육을 1시간 하려고 한다. 다음 중 가장 시간이 많이 소비되는 단계는?', 2, 172)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00c7c6a1-aff5-9565-db21-0bc14a1982da', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '도입', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b5ab025-be10-8794-1e43-7c646f6c7fd4', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '제시', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e5a8dd1-64d4-802a-9e77-c682bc6e5bde', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '적용', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97b057ac-7cbc-674d-73dc-d20df5fa2aa3', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '확인', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '7b5ab025-be10-8794-1e43-7c646f6c7fd4', '② 제시', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구 순서대로 나열한 것은? O정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성 ⑨ 각 사상의 재해원인 규명', 2, 173)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6bdfab0-cdc1-6bf7-47d2-0d49fd63a024', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0>—*©—*© — (§)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4abfc455-6b88-46a2-ac3a-452fe9347e32', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0—>@—*©--©', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('895ae29f-9da5-999a-c7d4-e0a59f4811bb', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '©-©—*©—*(§)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b443d30-0349-3e34-a2eb-cb3323ff884e', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '(9—>@-+© —©', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '7b443d30-0349-3e34-a2eb-cb3323ff884e', '④ (9—>@-+© —©', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #31
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법（FTA）에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 174)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5daf9669-d187-62fa-80d3-2c0f0f41f8fd', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ad1763-713e-e37b-7cd1-7fce3ad8a9b9', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fd7956c-d972-4a0d-ce20-0c7428ff4a79', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc1690d7-62f2-0f8c-b1df-4358e76a6b80', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', 'bc1690d7-62f2-0f8c-b1df-4358e76a6b80', '④ 미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '11111111-1111-1111-1111-111111111104', 'mcq', '인간공학 연구방법 중 실제의 제품이나 시스템이 추구하는 특성 및 수준이 달성되는지를 비교하고 분석하는 연구는?', 2, 175)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('579aff0e-424a-8a59-570c-2db53b133076', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '조사연구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01b8de69-ef87-8447-ef2e-a537a477d16b', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '실험연구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5461373-a24f-2ec5-3b34-087696e03d42', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '분석연구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5dd32804-43cf-037f-e404-23cca386d1ac', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '평가연구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '5dd32804-43cf-037f-e404-23cca386d1ac', '④ 평가연구', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 상시 작업에 종사하는 장소에 서 보통작업을 하고자 할 때 작업면의 최소 조도[I니X]로 맞 는것은?', 2, 176)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3bd57c-33ee-5cd3-dbd0-4865c8fa3818', '39a168be-3965-66d8-cbb2-3b0b399ce490', '75', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '39a168be-3965-66d8-cbb2-3b0b399ce490', '150', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a13250f5-3f98-1b34-521f-2fa6180f67b3', '39a168be-3965-66d8-cbb2-3b0b399ce490', '300', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ef3fde9-7be9-cc1f-1d28-f67a0e055d3d', '39a168be-3965-66d8-cbb2-3b0b399ce490', '750', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '② 150', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '11111111-1111-1111-1111-111111111104', 'mcq', '광원으로부터 직사휘광을 처리하기 위한 방법으로 틀린 것은?', 2, 177)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f605cc0-3966-b770-168b-88c108bc6f0e', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 휘도를 줄인다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e6887d1-f14e-3810-3f6b-2a29d629f84d', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '가리개나 차양을 사용한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85b2d5fc-21ec-c767-eb0f-fe59a7582b43', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원을 시선에서 멀리 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fefa86e-7d28-e193-1755-4c4ec39fd615', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 주위를 어둡게 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '1fefa86e-7d28-e193-1755-4c4ec39fd615', '④ 광원의 주위를 어둡게 한다.', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭작업에서 숫돌의 파괴원인으로 가장 적절하지 않은 것은?', 2, 178)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2f914d9-81ab-52b9-ac0c-297045f3086f', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌의 회전속도가 너무 빠를 때', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05f5c266-c101-6bcb-48a4-9397c1077148', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '연삭작업 시 숫돌의 정면을 사용할 때', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a91bf85-a0fa-cce8-bc81-b9a7d1ebcbb0', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌에 큰 충격을 줬을때', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06517596-b0f6-d8f3-b04f-acd404eb4fb9', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌의 회전중심이 제대로 잡히지 않았을 때', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '05f5c266-c101-6bcb-48a4-9397c1077148', '② 연삭작업 시 숫돌의 정면을 사용할 때', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비에서 기계 고장률의 기본모형으로 옳지 않은 것은?', 2, 179)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '조립고장', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('566de4a0-73d4-cfa6-3e04-046520196c1e', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '초기고장', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e16e3b9-c14e-8267-57c5-f8530984ad9b', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '우발고장', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f58264ca-cea9-0247-52bb-6c45f621a22c', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '마모고장', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', '① 조립고장', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비가 이상이 있을 때 기계를 급정지시키거나 방호장 치가 작동되도록 하는 것과 전기회로를 개선하여 오동작을 방지하거나 별도의 안전한 회로에 의해 정상기능을 찾을 수 있도록 하는 것은?', 2, 180)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b8a71ce-2ab3-2136-7ba1-c8ab2f174ffb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '외형의 안전화', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28c3e9f0-a59a-470e-3604-c20004a9c9fb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '기능상의 안전화', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('921fe360-3f9e-b12b-60d6-b8ecdb1f2ea3', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업의안전화', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('271c8ce3-d082-fb89-5cec-d5d8bb339953', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업점의안전화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '28c3e9f0-a59a-470e-3604-c20004a9c9fb', '② 기능상의 안전화', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '11111111-1111-1111-1111-111111111104', 'mcq', '보일러의 안전한 가동을 위하여 압력방출장치를 2개 설치 한 경우에 작동방법으로 옳은 것은?', 2, 181)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b90a37bd-0622-a26e-d93b-6c1226a1267b', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 2개가 동시 작동', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe74f7a-111a-ba0e-8476-0b99a5c9389c', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a7775e-cdd6-fdc4-d1fb-25b8fddb1c07', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f084691-fa37-99a6-bebf-bf29c0faf31e', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력의 1.1 배 이하에서 2개가 동시 작동', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '7fe74f7a-111a-ba0e-8476-0b99a5c9389c', '② 최고사용압력 이하에서 1개가 작동되고 다른 것은 최', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 아세틸렌 용접장치에서 역화의 원인으로 가장 거리 가 먼 것은?', 2, 182)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1a2644e-9338-56c0-db90-b14b8de8f4a7', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '아세틸렌의 공급과다', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5def6de2-d78c-93b0-9fba-e88eb9e50a67', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 성능의 부실', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82350cee-cec0-b65a-4677-3fafbf48a24e', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '압력조정기의 고장', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b2614e-c655-e67b-6512-9a6638460f91', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 팁에 이물질이 묻은 경우', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', 'd1a2644e-9338-56c0-db90-b14b8de8f4a7', '① 아세틸렌의 공급과다', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('11a9b13c-c625-0156-888a-12c02c5c0894', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 산업용 로봇에 의한 작업 시 안전조치사항으로 적 절하지 않은 것은?', 2, 183)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d917dd8-8fb5-bbfa-b2df-59fc3805bdf0', '11a9b13c-c625-0156-888a-12c02c5c0894', '로봇의 운전으로 인해 근로자가 로봇에 부딪칠 위험이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c73304fb-a75f-2555-6ad4-05c3f4ee3430', '11a9b13c-c625-0156-888a-12c02c5c0894', '작업을 하고 있는 동안 로봇의 기동스위치 등은 작업에', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7449b41e-2238-fd6c-aac6-7979a6d0a46b', '11a9b13c-c625-0156-888a-12c02c5c0894', '로봇의 조작방법 및 순서, 작업 중의 매니퓰레이터의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('365df7bd-ff76-c9a0-e357-00a85c514450', '11a9b13c-c625-0156-888a-12c02c5c0894', '작업에 종사하는 근로자가 이상을 발견하면 관리감독', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('11a9b13c-c625-0156-888a-12c02c5c0894', '365df7bd-ff76-c9a0-e357-00a85c514450', '④ 작업에 종사하는 근로자가 이상을 발견하면 관리감독', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 /=5g_[mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 184)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce515dfa-46e3-9fae-733c-61de9922dc57', '70754ff7-fca7-8388-5049-a664d0b6d53e', '13.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e325e3-7342-8841-f46a-cedf9fa27108', '70754ff7-fca7-8388-5049-a664d0b6d53e', '16.2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4617e1e-85e9-6161-163a-baffb2915692', '70754ff7-fca7-8388-5049-a664d0b6d53e', '27.2', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45ba3c11-0c3c-94fd-da03-db8dacee65c6', '70754ff7-fca7-8388-5049-a664d0b6d53e', '32.4', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', 'ce515dfa-46e3-9fae-733c-61de9922dc57', '① 13.6', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰기의 여유도가 33[%]이고, 충격절연강도가 1,OOO[kV] 라고 할 때 피뢰기의 제한전압은 약 몇 [W]인가?', 2, 185)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94dd79c-bf86-f096-2105-d6715ead8d9f', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '852', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d79333c8-9f1f-9e4a-7000-48d8aa270a65', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '752', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4c58ad8-c829-be44-fa95-5bd9679543a4', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '652', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fcc5ff6-1b4e-af7f-c7d8-44470c5b48a5', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '552', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', 'd79333c8-9f1f-9e4a-7000-48d8aa270a65', '② 752', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #78
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 고압 활선작업 시 감전의 위험이 발생할 우려가 있 을 때의 조치사항으로 옳지 않은 것은?', 2, 186)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9dd72e-2964-7847-29a7-ed9f543a1483', '2dc8481a-a273-f778-749f-f30f221f0267', '접근한계거리 유지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a4d570-0237-b7fe-92f9-914b308faa84', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 보호구 착용', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a6e53dc-1519-bb33-e0c5-0c5fe10e008d', '2dc8481a-a273-f778-749f-f30f221f0267', '활선작업용 기구 사용', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac4d8425-5643-2a5a-c0e8-9e5cd5f608f2', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 방호용구 설치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '1c9dd72e-2964-7847-29a7-ed9f543a1483', '① 접근한계거리 유지', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e0349306-9850-4f22-3619-e67127397e41', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항 저감방법으로 틀린 것은?', 2, 187)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a922baee-9f38-b117-f738-9dafc36620aa', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 병렬 접지를 실시한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a89beac-12ca-a8f5-c687-9668c0b74d4c', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 매설 깊이를증가시킨다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('617d5658-9164-caf9-042c-59fd60d3f215', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 크기를 최대한 작게 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb7fe9d7-196c-dbe4-2267-9c427e60aa8f', 'e0349306-9850-4f22-3619-e67127397e41', '접지극 주변의 토양을 개량하여 대지 저항률을 떨어뜨', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e0349306-9850-4f22-3619-e67127397e41', '617d5658-9164-caf9-042c-59fd60d3f215', '③ 접지극의 크기를 최대한 작게 한다.', '2023-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬, 칼륨, 나트륨, 황, 황린. 황화인, 적린', 2, 188)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35ac0c80-5d49-e319-c3bf-95750547c954', 'f93d0311-a9b2-8e74-9873-865b6b224708', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a401a58-fa89-e530-95fe-8ca5652235f9', 'f93d0311-a9b2-8e74-9873-865b6b224708', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', 'f93d0311-a9b2-8e74-9873-865b6b224708', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdf4fcc8-afca-894e-cb78-54ff1091ba02', 'f93d0311-a9b2-8e74-9873-865b6b224708', '급성 독성 물질', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', '③ 물반응성 물질 및 인화성 고체', '2023-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?（단, Le Chatelier의 법칙을 이용한다.）', 2, 189)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39764f1b-7aab-f123-0e3c-a60b571b0171', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e9e5feb-5e1e-26d4-e7fe-97acd0681721', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 30[vol%], 에탄 30[vol%], 프로판 40[vol%]의 혼', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72c8c44d-3482-e995-5ff3-1760880a07e8', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dc7b511-5f9d-dece-32a8-d5d6a2abb913', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 50[vol%]. 에탄 30[vol%]. 프로판 20[vol%]의 혼', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '39764f1b-7aab-f123-0e3c-a60b571b0171', '① 메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 190)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa73235-a8cf-47e4-1ce1-2d2de89e405d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 상단', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56da38c0-a4c1-e803-4560-2eb28b3e8ce5', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 하단', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('008cc2c5-6ff4-b520-6614-eb6b9b86fe4d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 측면', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b0c2ad0-2e67-8c49-85c3-3b67282e6018', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 조작부', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '6fa73235-a8cf-47e4-1ce1-2d2de89e405d', '① 설비의 상단', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('210c4245-726b-2783-25c7-8e160aa1a797', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 인화성 액체 위험물을 액 체 상태로 저장하는 저장탱크를 설치하는 경우에는 위험물 질이 누출되어 확산되는 것을 방지하기 위하여 무엇을 설치 하여야 하는가?', 2, 191)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9249ac1-4878-4454-c034-c2accb9b8f8e', '210c4245-726b-2783-25c7-8e160aa1a797', 'Flame arrester', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14c6683e-d377-9767-ee1b-06b41769a7ed', '210c4245-726b-2783-25c7-8e160aa1a797', 'Vent Stack', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80963c2e-79f2-ff7a-f9ac-3323b07c4fd0', '210c4245-726b-2783-25c7-8e160aa1a797', '긴급방출장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0099325-1f92-2f4e-6310-89398e082592', '210c4245-726b-2783-25c7-8e160aa1a797', '방유제', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('210c4245-726b-2783-25c7-8e160aa1a797', 'c0099325-1f92-2f4e-6310-89398e082592', '④ 방유제', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '11111111-1111-1111-1111-111111111104', 'mcq', '[℃], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇『C]가 되겠는가?(단, 공기의 비열비는 1.4이다.)', 2, 192)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24810209-7d84-97bb-1c3b-f88d27786dfb', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '32', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dffd6c96-3f1d-c7ac-8712-2eb03727756d', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '191', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55550b16-4d55-b3a3-7876-1f0f98519ef2', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '305', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96ecbfa3-a297-d777-3777-83c6db4c00d3', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '464', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', 'dffd6c96-3f1d-c7ac-8712-2eb03727756d', '② 191', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '11111111-1111-1111-1111-111111111104', 'mcq', '탄산수소나트륨을 주요성분으로 하는 것은 제 몇 종 분말소 화기인가?', 2, 193)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c84d28d2-d42a-dbf6-3791-e33974de364a', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제1종', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7df3656b-6d1b-bc4b-f18d-aa01fe2ec3b0', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제2종', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64032cff-ffcc-b528-3cb4-f153b774b3ea', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제3종', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('942ca45c-7595-e9c1-41b8-cfa7c168b777', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제4종', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', 'c84d28d2-d42a-dbf6-3791-e33974de364a', '① 제1종', '2023-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #100
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악하기 위하여 필요한 계측장치를 설 치하여야 한다. 이러한 계측장치로 거리가 먼 것은?', 2, 194)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5634b9bf-eee1-8a68-5093-36aa6d4d9720', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '압력계', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2f0c42f-32b8-5bde-cd0e-adc29e503cee', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '유량계', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c5ab221-d29d-2db9-7b17-0262b84129d5', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '온도계', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0bf8d552-b34f-7491-39c3-4d7a63b3a99c', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '비중계', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '0bf8d552-b34f-7491-39c3-4d7a63b3a99c', '④ 비중계', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('edba4ffa-2826-3171-b607-d69afc4acc1b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 195)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33b2ff1b-c031-39a5-454a-e018591a45a2', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '풍속이 초당 10[m] 이상인 경우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f3dd1f3-4909-077e-4d4a-6495f9525a05', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '강우량이 시간당 l[mm] 이상인 경우', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2734854a-c256-84ac-1080-b685c0353e1f', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('673cd632-4a58-095c-3408-418592e11da6', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '기온이 영하 5[幻] 이하인 경우', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('edba4ffa-2826-3171-b607-d69afc4acc1b', '673cd632-4a58-095c-3408-418592e11da6', '④ 기온이 영하 5[幻] 이하인 경우', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cfcb62cf-b839-adb4-293d-2474ac8c04f9', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출해야 할 대상 공사의 조건으로 옳지 않은 것은?', 2, 196)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17d0520d-3d3a-1fa1-64bc-6ff8398127e5', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '터널건설 등의 공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ea6a385-f3f0-199a-6f9c-b98fa9e78daa', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '최대 지간길이가 5이m] 이상인 다리의 건설 등의 공사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a31c3ecb-afa9-a79f-dbbc-cc70cdb049a1', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '다목적댐 - 발전용댐, 저수용량 2천만 톤 이상의 용수', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55904c26-3c1c-05d9-7299-21e516eb5c80', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '깊이가 5[m] 이상인 굴착공사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cfcb62cf-b839-adb4-293d-2474ac8c04f9', '55904c26-3c1c-05d9-7299-21e516eb5c80', '④ 깊이가 5[m] 이상인 굴착공사', '2023-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '11111111-1111-1111-1111-111111111104', 'mcq', '사면보호공법 중 구조물에 의한 보호공법에 해당되지 않는 것은?', 2, 197)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d0ee7b-678c-e7e9-aeb3-03a3a75fbfc5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '블럭공', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97ac684a-1a7a-1f58-0c85-699bf5aecbb5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '식생구멍공', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f731750-e4ea-485d-4ec4-97e711001e56', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '돌쌓기공', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7aacc14b-966e-cccb-fd0b-14ad005ac827', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '현장타설 콘크리트 격자공', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '97ac684a-1a7a-1f58-0c85-699bf5aecbb5', '② 식생구멍공', '2023-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-1 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a5870435-4308-633e-a8e8-96752234fc70', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 작업발판 일체형 거푸집에 해 당되지 않는 것은?', 2, 198)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da4e3725-e0e5-dca0-3a19-4dbe68ee9a7b', 'a5870435-4308-633e-a8e8-96752234fc70', '갱 폼 (Gang Form)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7169fff-97fd-2f31-fb44-004690d4462b', 'a5870435-4308-633e-a8e8-96752234fc70', '슬립 폼(Slip Form)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a354b28b-75ef-911b-9bee-4d86424c1cf8', 'a5870435-4308-633e-a8e8-96752234fc70', '유로 폼(Euro Form)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ee3bb48-3097-01da-e931-c6c6f5a4fb84', 'a5870435-4308-633e-a8e8-96752234fc70', '클라이밍 폼(Climbing Form)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a5870435-4308-633e-a8e8-96752234fc70', 'a354b28b-75ef-911b-9bee-4d86424c1cf8', '③ 유로 폼(Euro Form)', '2023-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-1'])
on conflict (question_id) do nothing;

-- 2023-2 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 종류와 외부 측면의 표시색이 잘못 연결된 것은?', 2, 199)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7d696e3-8e23-75e9-c8c3-c3f072ddebd1', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '할로겐용 - 회색', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('671b0059-5313-f7d5-ef84-345c495edd7e', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '황화수소용 - 회색', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0c58652-0043-daf7-9717-5f1c2a001771', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '암모니아용 - 회색', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3ac2273-da9f-75ff-f908-51fcd7db6cfc', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '시안화수소용 - 회색', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', 'e0c58652-0043-daf7-9717-5f1c2a001771', '③ 암모니아용 - 회색', '2023-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('34bc548e-5c1f-ae23-6e77-716a32178ef9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자에 대한 일반건강진단의 실시 시기 기준으로 옳은 것은?', 2, 200)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22a9af3c-4644-2f8e-ee1c-b77f70b2cb5e', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직에 종사하는 근로자: 1년에 1회 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b05a209-2d5b-c25c-6bac-2eeb7d6ae27f', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직에 종사하는 근로자: 2년에 1회 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f46420eb-d7ec-d3f0-1268-9a1b26151c8c', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직 외의 업무에 종사하는 근로자: 6월에 1회 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb5fce22-1883-920a-fe61-021dbe8a1120', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직 외의 업무에 종사하는 근로자: 2년에 1회 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('34bc548e-5c1f-ae23-6e77-716a32178ef9', '3b05a209-2d5b-c25c-6bac-2eeb7d6ae27f', '② 사무직에 종사하는 근로자: 2년에 1회 이상', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?（단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.） ^5', 2, 201)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da71f7b3-e407-1a58-3630-6102751c09fd', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '폭발성물질 경고', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18e6d847-577b-9869-3989-b462c3d57213', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '산화성물질 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89ebf31d-bb25-e989-2aec-d70bdbf06e6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '부식성물질 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('191d2d80-a103-ab95-d5a9-48c2e95e9c6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '급성독성물질 경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '191d2d80-a103-ab95-d5a9-48c2e95e9c6f', '④ 급성독성물질 경고', '2023-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구위계이론 중 2단계에 해당되는 것은?', 2, 202)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cac1319e-9bb1-9045-4812-1ded01cc4ea6', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '생리적 욕구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c133bc09-f073-6f15-aec5-35e055ea9fac', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '안전에 대한 욕구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f0ecc06-a471-f51e-beb3-86adfb53653b', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '자아실현의 욕구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ab52aa3-47d0-d3ef-8299-4dbc4a146860', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '존경과 긍지에 대한 욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', 'c133bc09-f073-6f15-aec5-35e055ea9fac', '② 안전에 대한 욕구', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3884f58-d203-4bfb-7303-fd4e21269dad', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전에서 평균수리시간을 나타내는 것은?', 2, 203)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ae7b482-7e9e-1ae3-71c1-27e8cb1898c6', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTBF', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8578d3e-0883-a38b-dafe-19407d8373c5', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTTR', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb7bc8c7-09ec-d8ad-b581-4b6653d38854', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTTF', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eaeed699-60dd-c3a5-64e8-44a944488cb8', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTBP', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3884f58-d203-4bfb-7303-fd4e21269dad', 'a8578d3e-0883-a38b-dafe-19407d8373c5', '② MTTR', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #27
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 시스템 내의 위험요소가 어떤 상태에 있는가를 정 성적으로 분석 ■ 평가하는 첫 번째 위험분석기법은?', 2, 204)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16b81d69-a4c6-8bba-1784-f0105ec16025', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함수분석', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('072df14d-f72f-c596-626e-c76810b886aa', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '예비위험분석', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5085aab-f800-323a-d8b7-85e36916ce90', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함위험분석', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4451557-4950-0ec6-6249-bfb70c6e382c', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '운용위험분석', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '072df14d-f72f-c596-626e-c76810b886aa', '② 예비위험분석', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 맞는 것은?', 2, 205)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae402dbb-3482-2fcd-0f03-5da29d3e8ea4', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8924100-53f2-95fc-7f8a-9cfa728bb19a', '214d56d1-865f-e92c-a5d8-fca433ae734b', 'TOP사상을 발생시키는 조합이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5856eff5-b10b-72c2-2b37-0736c1064c87', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템이 고장 나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19eb62ec-bec9-5f1f-d978-d52da23d6841', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '5856eff5-b10b-72c2-2b37-0736c1064c87', '③ 시스템이 고장 나지 않도록 하는 사상의 조합이다.', '2023-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해위험방지계획서의 제출대상 제 조업은 전기 계약용량이 얼마 이상인 경우에 해당되는가? （단, 기타 예외사항은 제외한다.）', 2, 206)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c5d9bee-0bdf-248d-b6bf-2f79cc430f42', '520415e0-0a82-94d4-cf06-a7e698a7b771', '50[kW]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f84ae4e-5269-6d75-0b50-a24808d6980e', '520415e0-0a82-94d4-cf06-a7e698a7b771', '100[kW]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac2ee9ab-8305-b031-942d-a8fe52c4616b', '520415e0-0a82-94d4-cf06-a7e698a7b771', '200[kW]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '520415e0-0a82-94d4-cf06-a7e698a7b771', '300[kW]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '④ 300[kW]', '2023-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #40
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('318292b6-07cc-7bc2-6667-7babe90aab98', '11111111-1111-1111-1111-111111111104', 'mcq', '인간의 오류모형에서 “알고 있음에도 의도적으로 따르지 않거나 무시한 경우”를 무엇이라 하는가?', 2, 207)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('241d6988-312f-82e0-aaef-1d0ca97856eb', '318292b6-07cc-7bc2-6667-7babe90aab98', '실수(Slip)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3970221-263a-6a31-e8a8-9ca34916ae22', '318292b6-07cc-7bc2-6667-7babe90aab98', '착오(Mistake)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf9cdae5-e9e1-6d5b-0e8a-5c24f6c6962f', '318292b6-07cc-7bc2-6667-7babe90aab98', '건망증(Lapse)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48138953-cc20-a8de-f815-8de476c1423b', '318292b6-07cc-7bc2-6667-7babe90aab98', '위반(Violation)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('318292b6-07cc-7bc2-6667-7babe90aab98', '48138953-cc20-a8de-f815-8de476c1423b', '④ 위반(Violation)', '2023-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등의 작업시작 전 점검사항 이 아닌 것은?', 2, 208)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b5b5512-c8d8-582f-f9e0-90c598be59cd', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '슬라이드 또는 칼날에 의한 위험방지 기구의 기능', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6c66ccd-cb27-5225-c9f5-2d06c2ab5b16', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '프레스의 금형 및 고정볼트 상태', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2716335d-f4f6-9ac4-779c-fff79339b941', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '전단기의 칼날 및 테이블의 상태', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('deaa6b66-29f6-5171-e930-91cde88257a4', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '권과방지장치 및 그 밖의 경보장치의 기능', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', 'deaa6b66-29f6-5171-e930-91cde88257a4', '④ 권과방지장치 및 그 밖의 경보장치의 기능', '2023-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 안전인증대상 방호장치에 해당하지 않는 것은?', 2, 209)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eba9c312-251a-8ad7-1662-1544e5c58922', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '연삭기 덮개', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ea3dc36-cb29-8582-336e-6a053a1b98ca', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '압력용기 압력방출용 파열판', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f026c42c-1947-f040-d5c1-0663d39df901', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '압력용기 압력방출용 안전밸브', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2b652cd-71e2-015d-82a4-c3f3f6d08746', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '방폭구조(防爆構造) 전기기계 • 기구 및 부품', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', 'eba9c312-251a-8ad7-1662-1544e5c58922', '① 연삭기 덮개', '2023-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명 중 （ ） 안에 알맞은 내용은? |■산업안전보건법령」상 롤러기의 급정지장치는 롤러를 무부하 로 회전시킨 상태에서 앞면 롤러의 표면속도가 30[m/min] 미 만일 때에는 급정지거리가 앞면 롤러 원주의 （ ） 이내 에서 롤러를 정지시킬 수 있는 성능을 보유하여야 한다.', 2, 210)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2f77bd2-abed-a974-cd9c-833f324a1e5a', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/4', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aba26d33-e003-ad43-4adb-05f8130cb38c', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/3', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29216bcb-d379-c81b-c52a-0c7413a9a4a3', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2.5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5223f17c-fd2e-7e94-021e-93eb5aa36134', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', 'aba26d33-e003-ad43-4adb-05f8130cb38c', '② 1/3', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 목재가공용 둥근톱 작업에서 분할날 과 톱날 원주면과의 간격은 최대 얼마 이내가 되도록 조정 하는가?', 2, 211)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54062b3a-d159-71f4-ea71-aaeec6131a53', '6b97ad26-7fef-3e82-684c-acff02a467be', '10[mm]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '6b97ad26-7fef-3e82-684c-acff02a467be', '12[mm]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f93ed1e4-e19b-dea0-a91f-000e02f23c30', '6b97ad26-7fef-3e82-684c-acff02a467be', '14[mm]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('470679d6-be41-a6c0-481a-45760764bf12', '6b97ad26-7fef-3e82-684c-acff02a467be', '16 [mm]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', 'd97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '② 12[mm]', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나, 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.', 2, 212)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1661895e-c91a-44a3-d207-a80fe3b6f3f1', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '선반', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83bc4ade-3a36-2495-e689-b7ae6e36db3d', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '밀링', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c07def0-dc72-e96d-4b39-4b357640abac', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '플레이너', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2b7b6f4-0eaa-ca2b-b470-5f9f761f93f5', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '연삭기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '83bc4ade-3a36-2495-e689-b7ae6e36db3d', '② 밀링', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '11111111-1111-1111-1111-111111111104', 'mcq', '금속성의 전기기계 • 기구나 구조물에 인체의 일부가 상시 접촉되어 있는 상태의 허용접촉전압으로 옳은 것은?', 2, 213)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fbe368-799c-7581-2fdb-fae9247063d2', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '2.5[V] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc755ae2-f099-cc51-4f2e-62a60bc6277a', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '25[V] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28ee56cb-6b05-8331-5aee-db0d3fb2b08b', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '50[V] 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a52f8110-3fd8-7ecb-b4ea-1f7cc8d5ebab', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '제한 없음', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', 'bc755ae2-f099-cc51-4f2e-62a60bc6277a', '② 25[V] 이하', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #95
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류에서 “폭발성 물질 및 유기과산화물”에 해당하는 것은?', 2, 214)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('656acbfc-ed96-84f5-3b07-d33f2eaf7bb7', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '리튬', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c59a8cb0-36d2-31ee-98de-ed180ba4fa8f', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '아조화합물', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('203c2897-8c34-e9bc-b999-512f7839f001', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '아세틸렌', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3890ef3-d9f6-c700-7ef5-2a43455930e3', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '셀룰로이드류', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', 'c59a8cb0-36d2-31ee-98de-ed180ba4fa8f', '② 아조화합물', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 산화성 액체 및 산화성 고체 에 해당하지 않는 것은?', 2, 215)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a209c34-a0ca-c5f6-34e0-874f18bc8cd9', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '염소산', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2be9882e-8969-e95b-b1ae-d6db849f5581', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과망간산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cccfd54a-c700-8d69-0cf4-d6250709bdf7', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과산화수소', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '피크린산', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '④ 피크린산', '2023-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '11111111-1111-1111-1111-111111111104', 'mcq', '금속의 용접 - 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 옳지 않은 것은?', 2, 216)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc5e4bfa-9a58-b873-390f-07910fcfc221', '106208c0-3936-6afc-b014-8337d954d99a', '밸브의 개폐는 서서히 할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76611713-0522-45bc-0080-652970863b71', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 온도를 40[℃] 이하로 유지할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e1cfdeb-7218-6950-88cf-c98e31752764', '106208c0-3936-6afc-b014-8337d954d99a', '운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa310063-0cfa-6c1a-1dc6-b17f06a7cb37', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 부식 • 마모 또는 변형상태를 점검한 후 사용할 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '9e1cfdeb-7218-6950-88cf-c98e31752764', '③ 운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', '2023-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3d310025-4685-f952-300a-6d7ba2e38cfa', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준은「산업안전 보건법」의 건설공사 중 총 공사금액이 얼마 이상인 공사에 적용하는가?（단, 단가계약에 의한 공사는 제외）', 2, 217)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83e5f51d-bb92-3d15-88d8-4d3a2c818eb9', '3d310025-4685-f952-300a-6d7ba2e38cfa', '4천만 원', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1bbd587a-b0ec-61bc-7ad7-e9c1349c25b5', '3d310025-4685-f952-300a-6d7ba2e38cfa', '3천만 원', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37b7a592-a5de-a45c-e1dd-c07551a314da', '3d310025-4685-f952-300a-6d7ba2e38cfa', '2천만 원', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ee91055-84f0-7046-3f9d-308b6229fd30', '3d310025-4685-f952-300a-6d7ba2e38cfa', '1천만 원', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3d310025-4685-f952-300a-6d7ba2e38cfa', '37b7a592-a5de-a45c-e1dd-c07551a314da', '③ 2천만 원', '2023-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령』에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 218)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977b965d-4b96-5507-4cbc-ca74296bca5c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '기온이 영상 28[℃] 이상인 경우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('179c38f8-0178-1755-1a9a-04ab7cadb59c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '풍속이 초당 10[m] 이상인 경우', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6b9754d-7e01-c7da-3b86-1a0a52a481c4', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('354a500b-78a9-9ae2-af4a-9eaa85949704', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강우량이 시간당 l[mm] 이상인 경우', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '977b965d-4b96-5507-4cbc-ca74296bca5c', '① 기온이 영상 28[℃] 이상인 경우', '2023-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 말비계를 조립하여 사용하는 경우에 관한 준수사항 이다.( )안에 들어갈 내용으로 옳은 것은? • 지주부재와 수평면의 기울기를 ( A )。이하로 하고 지주 부재와 지주부재 사이를 고정시키는 보조부재를 설치할 것 • 말비계의 높이가 2[m]를 초과하는 경우에는 작업발판의 폭 을( B )[cm] 이상으로할것', 2, 219)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ce3c1a3-f01a-2369-b5c4-36a7d484e883', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A：75, B：30', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24ab3ffb-2846-19d7-21d7-48eba3e25717', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 75, B： 40', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc53e427-b210-292d-6252-42ae720c1513', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 85, B： 30', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76e17a31-e76d-146c-4131-7b065874d96d', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 85, B： 40', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', '24ab3ffb-2846-19d7-21d7-48eba3e25717', '② A： 75, B： 40', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #111
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 셔블로더의 운영방법으로 옳은 것은?', 2, 220)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5c485c5-0dc8-4444-0adc-16d0964d0b1c', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '점검 시 버킷은 가장 상위의 위치에 올려놓는다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('146a301a-4cde-5f09-48c4-616e1c4a5df8', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '시동 시에는 사이드 브레이크를 풀고서 시동을 건다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '경사면을 오를 때에는 전진으로 주행하고 내려올 때는', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41b458cd-8bfe-b036-988d-9696a653cfa4', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '운전자가 운전석에서 나올 때는 버킷을 올려 놓은 상태', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', 'f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '③ 경사면을 오를 때에는 전진으로 주행하고 내려올 때는', '2023-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 시스템비계의 구조에 관한 사항이다.（ ）안에 들어갈 내용으로 옳은 것은? 비계 밑단의 수직재와 받침철물은 밀착되도록 설치하고. 수직 재와 받침철물의 연결부의 겹침길이는 받침철물 전체길이의 （ ）이상이되도록할것', 2, 221)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6c37063-98b0-dbf8-ba87-c40d1fe93986', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '2분의 1', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1765d907-67b8-cdbc-b6f0-77190b0ab75e', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '3분의 1', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5786e8-5da6-f01e-c4a3-4f7ca5ee5527', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '4분의 1', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b592e9c6-f7cd-9d32-bf66-17c288323318', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '5분의 1', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '1765d907-67b8-cdbc-b6f0-77190b0ab75e', '② 3분의 1', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-2 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '11111111-1111-1111-1111-111111111104', 'mcq', '차량계 하역운반기계의 안전조치사항 중 옳지 않은 것은?', 2, 222)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07d5c201-4079-d2bf-8ca5-b3fd7ed474be', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '최대제한속도가 시속 10[km]를 초과하는 차량계 건설', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e48696f-54e3-7ee3-a631-994360cd9dae', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기계의 운전자가 운전위치를 이탈하는 경', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18167fa1-0dfd-a019-6f17-3f8fd2bdd507', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 하역운반기계 등에 화물을 적재하는 경우 하중', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9e66d12-fe47-4c5a-418e-0ce0078c1d5a', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기 계를 사용하여 작업을 하는 경우 승차석', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '1e48696f-54e3-7ee3-a631-994360cd9dae', '② 차량계 건설기계의 운전자가 운전위치를 이탈하는 경', '2023-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-2'])
on conflict (question_id) do nothing;

-- 2023-3 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('27437fbb-b86c-ded6-aa14-f463f6089884', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음의 안전보건표지 중 기본모형이 다른 것은?', 2, 223)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dabc04ce-5a2e-363d-d605-a5b888941a5e', '27437fbb-b86c-ded6-aa14-f463f6089884', '위험장소경고', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24a973b-fec2-e7ee-d7b4-9be1aedb8865', '27437fbb-b86c-ded6-aa14-f463f6089884', '레이저광선경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('037e80f1-f707-3e37-921d-c324e564624e', '27437fbb-b86c-ded6-aa14-f463f6089884', '방사성물질경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f01cd47-7276-192f-69bd-77cb580bb6e2', '27437fbb-b86c-ded6-aa14-f463f6089884', '부식성물질경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('27437fbb-b86c-ded6-aa14-f463f6089884', '0f01cd47-7276-192f-69bd-77cb580bb6e2', '④ 부식성물질경고', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49e92883-e46d-3cf9-ebda-bb5608125673', '11111111-1111-1111-1111-111111111104', 'mcq', '브레인스토밍 기법에 관한 설명으로 옳은 것은?', 2, 224)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35dfe2de-5f88-6e8c-460a-86bc179fe1da', '49e92883-e46d-3cf9-ebda-bb5608125673', '타인의 의견을 수정하지 않는다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32e2aab0-b4ef-9fe2-0ff0-d982858fb361', '49e92883-e46d-3cf9-ebda-bb5608125673', '지정된 표현방식에서 벗어나 자유롭게 의견을 제시', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d46d775-aabf-958d-1dfe-81b238cdaae2', '49e92883-e46d-3cf9-ebda-bb5608125673', '참여자에게는 동일한 횟수의 의견제시 기회가 부여', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02fde279-8874-dfe1-ac90-8bdc8ba13db5', '49e92883-e46d-3cf9-ebda-bb5608125673', '주제와 내용이 다르거나 잘못된 의견은 지적하여 조정', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49e92883-e46d-3cf9-ebda-bb5608125673', '32e2aab0-b4ef-9fe2-0ff0-d982858fb361', '② 지정된 표현방식에서 벗어나 자유롭게 의견을 제시', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자 정기교육 내용에 해당하지 않는것은?', 2, 225)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('404e1a4a-79c9-b264-a206-0566105d73d3', '88c99b75-2663-2f2a-a55a-d72232ab5729', '산업안전 및 산업재해 예방에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d65c6dd7-713b-c80d-3582-9b17c6bac9d9', '88c99b75-2663-2f2a-a55a-d72232ab5729', '안전보건교육 능력 배양에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('427ea1f5-c018-be71-458f-02d3a1f47d70', '88c99b75-2663-2f2a-a55a-d72232ab5729', '유해 • 위험 작업환경 관리에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c6e3912-cb17-d790-7b42-d03805600208', '88c99b75-2663-2f2a-a55a-d72232ab5729', '직무스트레스 예방 및 관리에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', 'd65c6dd7-713b-c80d-3582-9b17c6bac9d9', '② 안전보건교육 능력 배양에 관한 사항', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인(이동식 크레인 제외), 리프트(이삿짐운반용 리프트 제외) 및 곤돌라는 사업장에 설치가 끝난 날부터 ( (9 ) 이 내에 최초의 안전검사를 실시하되, 그 이후부터 ( © )마다 실시해야 한다. ( ) 안에 알맞은 것은?(단, 건설현장에서 사용하는 것은 제외한다.)', 2, 226)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('65ebd161-4a6d-e892-fd6b-dd9ee3c1b7ae', '13515c62-fae1-b264-360d-6b74f3e0924a', '<3： 2년, ©： 3년', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©： 2년', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f32049e-6eb0-5057-1bca-11d4e0be5044', '13515c62-fae1-b264-360d-6b74f3e0924a', '19： 2년, ©: 2년', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fbdd7c4-86a8-1fa6-0b5a-a468ecc28733', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©: 3년', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', 'ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '② @： 3년, ©： 2년', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전보건교육계획을 수립할 때 고려할 사항으로 가 장거리가 먼 것은?', 2, 227)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('633d23a1-7f0c-8b6c-55de-43eb2550ae5f', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '현장의 의견을 충분히 반영한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bccd0189-0dd0-94fd-6999-649256a4c000', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '대상자의 필요한 정보를 수집한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e0cc9dc-7ed6-cf2b-8f12-d81bb372d963', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '안전교육시행체계와의 연관성을 고려한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60ca3ce9-2670-1dfd-2141-187ff19a858d', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '정부 규정에 의한 교육에 한정하여 실시한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '60ca3ce9-2670-1dfd-2141-187ff19a858d', '④ 정부 규정에 의한 교육에 한정하여 실시한다.', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 228)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfebf709-e0b2-aaca-48c9-7512bcebd4a2', '81736865-fcc6-c1e0-b533-1ea39f454515', '생리적욕구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('577c446d-2128-ba35-f96d-49cb99b36f86', '81736865-fcc6-c1e0-b533-1ea39f454515', '사회적욕구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91757fca-40be-8db7-8c6e-5f4ecc430cac', '81736865-fcc6-c1e0-b533-1ea39f454515', '자아실현의 욕구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5608d316-9565-9c5a-7962-b5336efadd16', '81736865-fcc6-c1e0-b533-1ea39f454515', '안전의 욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '91757fca-40be-8db7-8c6e-5f4ecc430cac', '③ 자아실현의 욕구', '2023-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 방진마스크의 구비조건으로 적절하지 않은 것은?', 2, 229)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1736d531-7352-0b45-330b-90a97b82751c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡기밸브는 미약한 호흡에 대하여 확실하고 예민하게', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6a1b848-f8d3-c633-ca37-4630f72c720c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '쉽게 착용되어야 하고 착용하였을 때 안면부가 안면에', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc6c52b2-c043-d640-d9da-477e7db34333', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '여과재는 여과성능이 우수하고 인체에 장해를 주지 않', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afeddd4e-aa27-fd64-ee8e-098f33a98726', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', 'afeddd4e-aa27-fd64-ee8e-098f33a98726', '④ 흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '11111111-1111-1111-1111-111111111104', 'mcq', '어떤 결함수를 분석하여 Minimal Cut Set을 구한 결과 다음 과 같았다. 각 기본사상의 발생확률을 q„/=1, 2, 3이라 할 때 정상사상의 발생확률함수로 옳은 것은? 서 = [1. 2], 스 = [1, 3], 息 = [2, 3]', 2, 230)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5ab8619-e5e1-fa6f-17de-669c74b089d7', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Q1Q2+Q1Q2—q2q3', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d0c0b15-8726-be23-f368-248a38d8c29d', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '切切十91<53-9293', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fca3a452-f092-d975-4027-8dbd011cc3c3', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'qiqj+qiQa+qzQs-qi^aQs', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19358aa7-5fe9-c8cd-50c4-08790ec9384f', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Chqj+qKzH乃sq；!—2(?乃293', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '19358aa7-5fe9-c8cd-50c4-08790ec9384f', '④ Chqj+qKzH乃sq；!—2(?乃293', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH Lifting Guideline에서 권장무게한계(RWL)산출에 사용되는 계수가 아닌 것은?', 2, 231)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a138d45c-b9b0-3c31-87fb-8049ab0504cc', '1a733659-4428-afe3-ab60-ff2393bd9ace', '휴식계수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2999822f-3286-e2a3-7cdd-026cceb593da', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수평계수', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d9c619a-5a4b-002e-7632-1f65c7ddeac3', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수직계수', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d2a90e4-cbc2-c3df-8a19-b34db793f6a7', '1a733659-4428-afe3-ab60-ff2393bd9ace', '비대칭계수', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', 'a138d45c-b9b0-3c31-87fb-8049ab0504cc', '① 휴식계수', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 진동작업을 하는 근로자에 게 충분히 알려야 할 사항과 거리가 가장 먼 것은?', 2, 232)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5079907f-529f-a27b-ff76-4aed03856ee8', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '인체에 미치는 영향과 증상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ac9051-3532-0517-fb6c-9d19248f7a25', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 기계 •기구관리방법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62bc30fa-3438-a63a-31bb-2a685996c698', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '보호구 선정과 착용방법', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 재해 시 비상연락체계', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '④ 진동 재해 시 비상연락체계', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 설비의 진단방법에 있어 비파괴시험이나 검사에 해 당하지 않는 것은?', 2, 233)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b35f364-aea7-623a-df02-13058c5ce98b', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '피로시험', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd81098b-2604-6de7-fb57-ba407349e324', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '음향탐상검사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc07864d-d33f-c689-7141-ed75362eae82', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '방사선투과시험', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c3aa4df-5852-2bc4-09f9-a787d887f629', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '초음파탐상검사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '9b35f364-aea7-623a-df02-13058c5ce98b', '① 피로시험', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #46
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9a2379f3-3a92-4db3-2460-cd09df023028', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러의 안전한 가동을 위하여 보 일러 규격에 맞는 압력방출장치가 2개 이상 설치된 경우에 최고사용압력 이하에서 1개가 작동되고, 다른 압력방출장 치는 최고 사용압력의 몇 배 이하에서 작동되도록 부착하여 야 하는가?', 2, 234)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d15b980-4202-7f45-f93e-d1391380c882', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.03 배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('caa45313-d2aa-d354-d025-d01a88f23ace', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.05 배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d637d4a-07ae-f8ec-af66-44e0bbf1e376', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.2 배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('579e6be5-94e7-6525-6502-6636c74065ef', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.5 배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9a2379f3-3a92-4db3-2460-cd09df023028', 'caa45313-d2aa-d354-d025-d01a88f23ace', '② 1.05 배', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 선반의 안전장치 및 작업 시 주의사항으로 잘못된 것은?', 2, 235)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7cd5a8e-c30d-003c-7f2e-4db18e0ce50a', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 바이트는 되도록 짧게 물린다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('672c4609-a8e9-0b0d-fab4-f50eb638bc44', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc691de-7b6b-fa7f-8d76-ad5e93a887d8', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 베드 위에는 공구를 올려놓지 않는다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea70e10b-b921-0ff4-1d99-46eaa2282a45', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '칩 브레이커는 바이트에 직접 설치한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '672c4609-a8e9-0b0d-fab4-f50eb638bc44', '② 방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 용해아세틸렌의 가스집합 용접장치 의 배관 및 부속기구에는 구리나 구리 함유량이 몇 퍼센트 이상인 합금을 사용할 수 없는가?', 2, 236)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e867cca3-5f40-2aed-2830-9871578d1b4f', 'aa0b1aab-7513-290e-b142-924697a553fc', '40[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff16dd19-e78e-8cbc-5819-39497d0a9aa7', 'aa0b1aab-7513-290e-b142-924697a553fc', '50[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6805ba2-2195-0c0b-a90e-edf6b6a20c32', 'aa0b1aab-7513-290e-b142-924697a553fc', '60[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9986909-da27-a058-ac45-e8cc623fe3dc', 'aa0b1aab-7513-290e-b142-924697a553fc', '70[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', 'e9986909-da27-a058-ac45-e8cc623fe3dc', '④ 70[%]', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '11111111-1111-1111-1111-111111111104', 'mcq', '. 「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）', 2, 237)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5bfe223-1eaa-9951-5c4f-5ef9cccd6750', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '0.9[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b93f2b12-9cf3-9c67-16b0-7618838a5652', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.2[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab093c41-43a2-d807-5d1d-265bb6654331', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.5[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81ca72eb-e31a-1910-777d-fd10208f4d2f', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.8[m]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '81ca72eb-e31a-1910-777d-fd10208f4d2f', '④ 1.8[m]', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68a0ac92-770c-373f-f75d-7091e6ab96b7', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기기기에 “Ex ia IIC T4 Ga”라고 표시되어 있다. 해 당 기기에 대한 설명으로 틀린 것은?', 2, 238)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a37fbc44-1bb8-03ce-f2af-bf427322b18c', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '정상 작동, 예상된 오작동에 또는 드문 오작동 중에 점', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('223ae705-9296-bd09-2c4f-abacfba16b42', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '온도등급이 T4이므로 최고표면온도가 150[幻]를 초과', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29c8fc76-2f22-9370-0753-2dfd94327b19', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '본질안전방폭구조로 0종 장소에서 사용이 가능하다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b56c65d3-1832-2d17-a1f7-e5e363d96642', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '수소 및 아세틸렌 등의 가스가 존재하는 곳에 사용이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68a0ac92-770c-373f-f75d-7091e6ab96b7', '223ae705-9296-bd09-2c4f-abacfba16b42', '② 온도등급이 T4이므로 최고표면온도가 150[幻]를 초과', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항값을 저하시키는 방법 중 거리가 먼 것은?', 2, 239)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('58de22a7-eca0-624c-94af-c195b2e26218', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉에 도전성이 좋은 금속을 도금한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('313e2f27-0e7a-9e3e-4f85-1a2990635114', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 병렬로 연결한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0fc0bce-9731-14bf-0668-e5006e5cfc3c', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '도전성 물질을 접지극 주변의 토양에 주입한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fe8e574-0661-ebd8-49ad-0e3b54cd1c44', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 땅속 깊이 매설한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '58de22a7-eca0-624c-94af-c195b2e26218', '① 접지봉에 도전성이 좋은 금속을 도금한다.', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c32667d3-aea5-1f6a-c372-4e7feb222e43', '11111111-1111-1111-1111-111111111104', 'mcq', '절연물의 절연계급을 최고허용온도가 낮은 온도에서 높은 온도 순으로 배치한 것은?', 2, 240)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ba5ed18-4804-592e-3495-2e5f0ee5c96a', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'Y종 — A종으 E종 — B종', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70976341-7331-b472-7c92-1242247a9775', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'A종 一 B종 一 E종—• Y종', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('030bd85a-31e0-97db-eba7-0dabe67f458c', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'Y종 一 E종—♦ B종으 A종', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fed380e-3344-dde3-588f-9a7783ceacf5', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'B종 一 Y종一♦ A종一♦ E종', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c32667d3-aea5-1f6a-c372-4e7feb222e43', '2ba5ed18-4804-592e-3495-2e5f0ee5c96a', '① Y종 — A종으 E종 — B종', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('284d1ca1-94cd-3475-8a4d-1734c26871a0', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?(단, Le Chatelier의 법칙을 이용한다.)', 2, 241)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37e4903d-dba1-3d85-7bb6-65108145b59a', '284d1ca1-94cd-3475-8a4d-1734c26871a0', '메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97b75fed-0372-a1a2-df04-d19cc9be0c9f', '284d1ca1-94cd-3475-8a4d-1734c26871a0', '메탄 30[vol%], 에탄 30[vol%], 프로판 40[vol%]의 혼', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7de40c4b-8b6b-6d74-f8da-36c68cfc9cde', '284d1ca1-94cd-3475-8a4d-1734c26871a0', '메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c291caa-6432-e0b0-f429-99bf00455757', '284d1ca1-94cd-3475-8a4d-1734c26871a0', '메탄 50[vol%], 에탄 30[vol%], 프로판 20[vol%]의 혼', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('284d1ca1-94cd-3475-8a4d-1734c26871a0', '37e4903d-dba1-3d85-7bb6-65108145b59a', '① 메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '11111111-1111-1111-1111-111111111104', 'mcq', '펌프의 사용 시 공동현상(Cavitation)을 방지하고자 할 때의 조치사항으로 틀린 것은?', 2, 242)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ae0b97d-49a5-26e1-62a3-9c2ebdb441df', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 회전수를 높인다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f9f1479-e6c7-e14b-96f5-8422b620c77d', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '흡입비 속도를 작게 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('30210f3f-b992-c23e-9808-d578ea831bd7', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 흡입관의 두(Head) 손실을 줄인다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d6887d9-e4a8-69bb-f807-d5e3c903a0d0', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '1ae0b97d-49a5-26e1-62a3-9c2ebdb441df', '① 펌프의 회전수를 높인다.', '2023-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4e236c54-0651-addf-9d61-db906f86e746', '11111111-1111-1111-1111-111111111104', 'mcq', '추락재해에 대한 예방차원에서 고소작업의 감소를 위한 근 본적인 대책으로 옳은 것은?', 2, 243)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('248eb8be-adf4-be48-e8b8-f73a64653c55', '4e236c54-0651-addf-9d61-db906f86e746', '방망 설치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b66cbf97-7579-2cbe-f07c-8ada0668f8fa', '4e236c54-0651-addf-9d61-db906f86e746', '지붕트러스의 일체화 또는 지상에서 조립', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fc69cea-eee1-8d35-0401-319f11d23a6f', '4e236c54-0651-addf-9d61-db906f86e746', '안전대 사용', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89a6ae06-a807-d090-555a-b4899db33c8d', '4e236c54-0651-addf-9d61-db906f86e746', '비계등에 의한 작업대 설치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4e236c54-0651-addf-9d61-db906f86e746', 'b66cbf97-7579-2cbe-f07c-8ada0668f8fa', '② 지붕트러스의 일체화 또는 지상에서 조립', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('00281e0e-ddd7-77ef-9184-187dce4eba53', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업의 공사금액이 850억 원일 경우「산업안전보건법령」 에 따른 안전관리자의 수로 옳은 것은?（단, 전체 공사기간 을 100으로할 때 공사전 후 15에 해당하는 경우는고려 하지 않는다.）', 2, 244)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e341ee66-c034-d894-2232-24fd35cf79ec', '00281e0e-ddd7-77ef-9184-187dce4eba53', '1명이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a4e835e-0a6d-d08e-8e65-333168eda4c7', '00281e0e-ddd7-77ef-9184-187dce4eba53', '2명이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e2eac31-575a-e776-c96c-6065d09085f0', '00281e0e-ddd7-77ef-9184-187dce4eba53', '3명 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3643db76-7330-7e3a-57eb-5918e48692f3', '00281e0e-ddd7-77ef-9184-187dce4eba53', '4명 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('00281e0e-ddd7-77ef-9184-187dce4eba53', '7a4e835e-0a6d-d08e-8e65-333168eda4c7', '② 2명이상', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6b15c3f6-81a5-f073-5251-16b1439327dc', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 차량계 건설기계에 해당되지 않는 것은?', 2, 245)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adf7e910-1211-f1df-5082-40ea6e5a3104', '6b15c3f6-81a5-f073-5251-16b1439327dc', '불도저', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e55c0a2b-bf57-80f0-681e-2110516d4b92', '6b15c3f6-81a5-f073-5251-16b1439327dc', '어스드릴', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14bab536-afd3-0e25-3e28-a3d20f10d035', '6b15c3f6-81a5-f073-5251-16b1439327dc', '콘크리트펌프카', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5dab4880-7e1f-9377-87b8-e1feea568d12', '6b15c3f6-81a5-f073-5251-16b1439327dc', '105', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6b15c3f6-81a5-f073-5251-16b1439327dc', '14bab536-afd3-0e25-3e28-a3d20f10d035', '③ 콘크리트펌프카', '2023-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a5cbb42-390e-40e0-c59a-560e31600c0b', '11111111-1111-1111-1111-111111111104', 'mcq', '추락방호망의 그물코 크기의 기준으로 옳은 것은?', 2, 246)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad3fd5cf-11a7-8868-3b16-0683398c6219', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '5[cm] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '10[cm] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d919531-d475-3b17-d6c6-1464391ca91d', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '20[cm] 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba906ced-5f0e-3ab3-f2b8-b4f2a3479447', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '3O[cm] 이하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a5cbb42-390e-40e0-c59a-560e31600c0b', 'dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc', '② 10[cm] 이하', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab5d4880-33be-828a-9462-dad1b453fd26', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 사용되는 작업발판 일체형 거푸집의 종류에 해당되지 않는 것은?', 2, 247)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d662e7b8-bc4c-1ad9-045b-dd6dab11ebd6', 'ab5d4880-33be-828a-9462-dad1b453fd26', '갱 폼(gang form)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa388adc-8637-60ae-4c47-378597c9d796', 'ab5d4880-33be-828a-9462-dad1b453fd26', '슬립 폼(slip form)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4865e5ff-99d5-7d20-1837-630fe1e7e8bb', 'ab5d4880-33be-828a-9462-dad1b453fd26', '클라이 밍 폼(climbing form)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('92d28940-b19b-f5b4-8906-28949ba262f4', 'ab5d4880-33be-828a-9462-dad1b453fd26', '유로 폼(euro form)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab5d4880-33be-828a-9462-dad1b453fd26', '92d28940-b19b-f5b4-8906-28949ba262f4', '④ 유로 폼(euro form)', '2023-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #111
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('417d212a-a753-70b6-7343-8a8952b850a6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다. ( ) 안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도 ( ) 감기고 남을 수 있는 충분한 길이일 것', 2, 248)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46a025e3-16bd-e4cc-12b6-66023baa1e97', '417d212a-a753-70b6-7343-8a8952b850a6', '1회', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ce48df0-967e-3a48-af66-da07e4177851', '417d212a-a753-70b6-7343-8a8952b850a6', '2회', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('163fd12a-8fc9-4aab-4f60-9db8bd29da3c', '417d212a-a753-70b6-7343-8a8952b850a6', '4회', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c456f2b0-a2a5-32ba-53fc-71fab93a8537', '417d212a-a753-70b6-7343-8a8952b850a6', '6회', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('417d212a-a753-70b6-7343-8a8952b850a6', '5ce48df0-967e-3a48-af66-da07e4177851', '② 2회', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c3d36636-9a21-9ce1-6374-01dc9af228b7', '11111111-1111-1111-1111-111111111104', 'mcq', '터널공사 시 인화성 가스가 농도 이상으로 상승하는 것을 조기에 파악하기 위하여 자동경보장치를 설치하여야 하는 데 작업시작 전에 점검해야 할 사항이 아닌 것은?', 2, 249)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2bf0bbe-b0df-e70e-088e-6fbbdca8c92c', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '계기의이상유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '발열여부', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00f87e92-d41c-583f-5fb9-ab0eddc03045', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '검지부의 이상 유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02895217-20ab-2b57-4bb0-9bab86af2727', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '경보장치의 작동상태', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c3d36636-9a21-9ce1-6374-01dc9af228b7', '7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a', '② 발열여부', '2023-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2023-3 #114
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('40dfd443-4399-7f39-f790-13471788d85d', '11111111-1111-1111-1111-111111111104', 'mcq', '점토질 지반의 침하 및 압밀 재해를 막기 위하여 실시하는 지반개량 탈수공법으로 적합하지 않은 것은?', 2, 250)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b9de8f9a-fc89-2940-8213-00ed8619c8f0', '40dfd443-4399-7f39-f790-13471788d85d', '샌드드레인공법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff443081-1789-d27b-1704-b248b6cdce1a', '40dfd443-4399-7f39-f790-13471788d85d', '생석회공법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06eb731b-5c45-b0d6-c821-ffd197205543', '40dfd443-4399-7f39-f790-13471788d85d', '진동공법', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('616ed395-0fb6-1cc8-5d54-ba8d550df469', '40dfd443-4399-7f39-f790-13471788d85d', '페이퍼드레인공법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('40dfd443-4399-7f39-f790-13471788d85d', '06eb731b-5c45-b0d6-c821-ffd197205543', '③ 진동공법', '2023-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2023-3'])
on conflict (question_id) do nothing;

-- 2022-1 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5006984a-b3dc-0b6a-24fd-ec462ce84606', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업안전보건위원회의 구성 • 운영에 관한 설명 중 틀린 것은?', 2, 251)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0648133b-1aba-19f3-1710-5305a5ae1481', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '정기회의는 분기마다 소집한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93e6576e-8dce-1c39-a978-495ce16f19ab', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '위원장은 위원 중에서 호선（互選）한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da135c7b-19ad-7dae-a556-45ffe4850b52', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '근로자대표가 지명하는 명예산업안전감독관은 근로자', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6277b84-2266-898e-6f80-65b8c987b57d', '5006984a-b3dc-0b6a-24fd-ec462ce84606', '공사금액 100억 원 이상의 건설업의 경우 산업안전보', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5006984a-b3dc-0b6a-24fd-ec462ce84606', 'c6277b84-2266-898e-6f80-65b8c987b57d', '④ 공사금액 100억 원 이상의 건설업의 경우 산업안전보', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4258d70d-b813-0e54-5df0-45ba2caebb40', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 잠함（潛函） 또는 잠수작업 등 높은 기압에서 작업하는 근로자의 근로시간 기준은?', 2, 252)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3abfa025-3428-1bc2-78f6-e6a658ede3fe', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 6시간, 1주 32시간 초과금지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7a01876-09f5-d82d-d95b-6a6b003f75ee', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 6시간. 1주 34시간 초과금지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cb0d7ed-f084-7a0b-ab4d-b79ab0dcc6e1', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 8시간, 1주 32시간 초과금지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48d2b789-9208-aa43-e859-0eca7565844a', '4258d70d-b813-0e54-5df0-45ba2caebb40', '1일 8시간, 1주 34시간 초과금지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4258d70d-b813-0e54-5df0-45ba2caebb40', 'b7a01876-09f5-d82d-d95b-6a6b003f75ee', '② 1일 6시간. 1주 34시간 초과금지', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef854532-a3c5-df4b-91ce-8403cc8f74b9', '11111111-1111-1111-1111-111111111104', 'mcq', '산업현장에서 재해발생 시 조치순서로 옳은 것은?', 2, 253)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db6ce75f-3cc0-968e-d463-9875aa207b72', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '긴급처리 一 재해조사一 원인분석 — 대책수립', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('396c39ad-e335-c237-9d2e-a62aaa87f129', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '긴급처리 一 원인분석 一 대책수립 一 재해조사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94863669-e054-494e-a40e-ecbb186df5ab', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '재해조사 一 원인분석 一 대책수립 一 긴급처리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d18b98be-322f-17d1-12a3-949cbf4d35c3', 'ef854532-a3c5-df4b-91ce-8403cc8f74b9', '재해조사 一 대책수립 ~ 원인분석 一 긴급처리', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef854532-a3c5-df4b-91ce-8403cc8f74b9', 'db6ce75f-3cc0-968e-d463-9875aa207b72', '① 긴급처리 一 재해조사一 원인분석 — 대책수립', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('67676942-1d2a-3fee-0431-e6553fd47f8d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자 안전보건교육 대상에 따른 교육시간 기준 중 틀린 것은?（단, 상시작업이며, 일용근로 자 및 근로계약기간이 1개월 이하인 기간제근로자는 제외 한다.）', 2, 254)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('334dfe52-3bc1-810d-1368-d5bbaffcd118', '67676942-1d2a-3fee-0431-e6553fd47f8d', '특별교육 - 16시간 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf909c4f-6e9b-666c-1d52-9ad704665fbf', '67676942-1d2a-3fee-0431-e6553fd47f8d', '채용 시 교육 - 8시간 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22fc0211-4d44-82a7-8a5f-0190eceb53f5', '67676942-1d2a-3fee-0431-e6553fd47f8d', '작업내용 변경 시 교육 - 2시간 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdd45fad-370d-e28b-f4d9-71a632bbf789', '67676942-1d2a-3fee-0431-e6553fd47f8d', '사무직 종사 근로자 정기교육 - 매반기 2시간 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('67676942-1d2a-3fee-0431-e6553fd47f8d', 'fdd45fad-370d-e28b-f4d9-71a632bbf789', '④ 사무직 종사 근로자 정기교육 - 매반기 2시간 이상', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '11111111-1111-1111-1111-111111111104', 'mcq', '안전점검을 점검시기에 따라 구분할 때 다음에서 설명하는 안전점검은? 작업담당자 또는 해당 관리감독자가 맡고 있는 공정의 설비, 기계, 공구 등을 매일 작업 전 또는 작업 중에 일상적으로 실 시하는 안전점검', 2, 255)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48843a29-2dca-fabd-e31c-c06c4cc2d1ee', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '정기점검', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2bec1d49-2a0d-bca4-b50a-42465b2b36f6', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '수시점검', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adee9357-b688-2ad9-a38e-3acdc4c268b2', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '특별점검', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('894781fb-2589-65b4-b87e-a4ba2d01d327', '6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '임시점검', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6a6daeb4-aae3-a9ad-32bf-2e7c225f8465', '2bec1d49-2a0d-bca4-b50a-42465b2b36f6', '② 수시점검', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('10e2702d-69a5-8610-2c8f-1f6c651a926b', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련의 문제해결 4라운드에 해당하지 않는 것은?', 2, 256)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12df432d-ecba-ce09-38f6-eb450a259a7d', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '현상파악', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac69f551-4218-ee90-c5ee-f95bbbe795b7', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '본질추구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aaf1e3ab-6dbc-62d9-aee9-aa4c275191d2', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '대책수립', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('683a9543-1f7f-7668-c192-d77288b5045e', '10e2702d-69a5-8610-2c8f-1f6c651a926b', '원인결정', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('10e2702d-69a5-8610-2c8f-1f6c651a926b', '683a9543-1f7f-7668-c192-d77288b5045e', '④ 원인결정', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #23
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f', '11111111-1111-1111-1111-111111111104', 'mcq', '서브시스템 분석에 사용되는 분석방법으로 시스템 수명주 기에서', 2, 257)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6aa3d01-69d9-1b34-49e3-2b959d0a3aa5', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', '에 들어갈 위험분석기법은?', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef362efd-50bf-c014-7b08-30dbafe625e0', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'PHA', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2497fcca-bf82-73d9-cb5b-14573059b47f', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'FTA', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e8e6c21-7426-3391-f80b-e9155fa45b0c', '2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'ETA', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2bf579fe-f0bd-15b4-8716-ed8c30c3360f', 'ef362efd-50bf-c014-7b08-30dbafe625e0', '② PHA', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b8230229-7467-3c0a-3aa5-dfdf7d079224', '11111111-1111-1111-1111-111111111104', 'mcq', 'A사의 안전관리자는 자사 화학설비의 안전성 평가를 실시 하고 있다. 그중 제2단계인 정성적 평가를 진행하기 위하여 평가 항목을 설계관계 대상과 운전관계 대상으로 분류하였 을 때 설계관계 항목이 아닌 것은?', 2, 258)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c77e036f-3fba-7078-1b97-d28b35a7e0ff', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '소방설비', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3461002f-a13c-b4e7-e3a7-4e2f0a5d3642', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '공장 내 배치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('77041d63-0bdf-1ae5-4a99-9ffdffa126e5', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '입지조건', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('865a5bff-a1c5-2e1c-ed56-bc63c30be6bf', 'b8230229-7467-3c0a-3aa5-dfdf7d079224', '원재료, 중간제품', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b8230229-7467-3c0a-3aa5-dfdf7d079224', '865a5bff-a1c5-2e1c-ed56-bc63c30be6bf', '④ 원재료, 중간제품', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('78e2ed45-864d-6156-3e68-3b655887655d', '11111111-1111-1111-1111-111111111104', 'mcq', '양중기 과부하방지장치의 일반적인 공통사항에 대한 설명 중부적합한 것은?', 2, 259)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b23730a-c177-fa1a-86aa-6cd300800243', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치와 타 방호장치는 기능에 서로 장애를', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('524fb5cf-9f0e-db74-feb3-28243bc4c703', '78e2ed45-864d-6156-3e68-3b655887655d', '방호장치의 기능을 변형 또는 보수할 때 양중기의 기능', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52464aea-a3e7-8a8a-c9cc-323f785f0378', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치에는 정상동작상태의 녹색 램프와 과부', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e37cf900-f79a-2a6d-eaa8-e11fea4235e6', '78e2ed45-864d-6156-3e68-3b655887655d', '과부하방지장치 작동 시 경보음과 경보램프가 작동되', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('78e2ed45-864d-6156-3e68-3b655887655d', '524fb5cf-9f0e-db74-feb3-28243bc4c703', '② 방호장치의 기능을 변형 또는 보수할 때 양중기의 기능', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #46
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('971372df-de8f-78da-f4f8-8867db65916d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 작업시작 전 점검해야 할 사 항에 해당하는 것은?', 2, 260)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b33da46-3313-6b54-576b-feefe31b03a6', '971372df-de8f-78da-f4f8-8867db65916d', '와이어로프가 통하고 있는 곳 및 작업장소의 지반상태', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e49992ab-176d-f359-da6d-577f5ad33381', '971372df-de8f-78da-f4f8-8867db65916d', '하역장치 및 유압장치 기능', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('106a2e8a-a291-34fd-d5da-f4632edee6b5', '971372df-de8f-78da-f4f8-8867db65916d', '권과방지장치 및 그 밖의 경보장치의 기능', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33d9324e-72a7-b104-244b-50341f876db4', '971372df-de8f-78da-f4f8-8867db65916d', '1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('971372df-de8f-78da-f4f8-8867db65916d', '33d9324e-72a7-b104-244b-50341f876db4', '④ 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('475e1583-b598-19f7-0c96-274aabebd797', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 목재가공용 기계에 사용되는 방호장 치의 연결이 옳지 않은 것은?', 2, 261)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43079da5-9849-68a6-1ebf-0e1cc30ed73b', '475e1583-b598-19f7-0c96-274aabebd797', '둥근톱기계: 톱날접촉예방장치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e311166-c93b-e73d-76d7-dc2c348bb611', '475e1583-b598-19f7-0c96-274aabebd797', '띠톱기계: 날접촉예방장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5505262-1690-4d5b-7e25-3abf949fcc8d', '475e1583-b598-19f7-0c96-274aabebd797', '모떼기기계: 날접촉예방장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('138bafda-a7bf-224d-856c-5968fa84505a', '475e1583-b598-19f7-0c96-274aabebd797', '동력식 수동대패기계: 반발예방장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('475e1583-b598-19f7-0c96-274aabebd797', '138bafda-a7bf-224d-856c-5968fa84505a', '④ 동력식 수동대패기계: 반발예방장치', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 정한 양중기의 종류에 해당하지 않는것은?', 2, 262)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc32a8dc-9693-767c-ff15-b045951d01db', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '크레 인[호이스트（hoist）를 포함]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbb0d717-0e12-5968-e3bd-f090e281cfc4', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '도르래', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ff2745c-9154-0a5a-3054-aa6bb287a482', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '곤돌라', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c2cf4c3-7280-8575-c6d1-3cc9b1c0843e', 'dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', '승강기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dfb40575-068d-3c89-8d1b-4bf87bc2bcf9', 'dbb0d717-0e12-5968-e3bd-f090e281cfc4', '② 도르래', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #51
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f95d1f84-58b5-dff3-3550-1f9367f5011f', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러의 급정지를 위한 방호장치를 설치하고자 한다. 앞면 롤러 직경이 36[cm]이고, 분당 회전속도가 50[rpm]이라면 급정지거리는 약 얼마 이내이어야 하는가?（단, 무부하동작 에 해당한다.）', 2, 263)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4f53d6c-8786-c2a7-03a6-f1244076f031', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '45 [cm]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e7d8af8-f8af-5874-7fe3-7f03cef200e9', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '50[cm]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d687852-de91-62af-c9ec-d43714b355bb', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '55 [cm]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a45c849c-e4fe-42ed-5578-0149d44a6b6b', 'f95d1f84-58b5-dff3-3550-1f9367f5011f', '60[cm]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f95d1f84-58b5-dff3-3550-1f9367f5011f', 'c4f53d6c-8786-c2a7-03a6-f1244076f031', '① 45 [cm]', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('42e0e4c7-ccff-5b40-c64f-6f17e209422b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 금형 설치 • 해체작업의 일반적인 안전사항으로 틀린 것은?', 2, 264)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15421a64-6473-5d6b-0b27-71830f82568a', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '고정볼트는 고정 후 가능하면 나사산이 3〜4개 정도 짧', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c680aaf-5f77-c6f2-fa31-bc0ad9ec8703', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형 고정용 브래킷（물림판）을 고정시킬 때 고정용 브', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fb77446-0642-b4d6-2e8d-2821345a419c', '42e0e4c7-ccff-5b40-c64f-6f17e209422b', '금형의 설치용구는 프레스의 구조에 적합한 형태로 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('42e0e4c7-ccff-5b40-c64f-6f17e209422b', '5d6b39c7-3305-cdc0-bcbb-a1e0aa1c8ed8', '③ 금형을 설치하는 프레스의 T홈 안길이는 설치볼트 직', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 보일러에 설치하는 압력방 출장치에 대하여 검사 후 봉인에 사용되는 재료로 가장 적 합한 것은?', 2, 265)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de06c6fb-5120-143c-6d9f-3d7762eab2a6', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '납', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fc86eec-68e6-f12c-0d7e-d0b4077ec8f7', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '주석', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4779d421-465d-e95f-3578-ac11504d862a', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '구리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c9f7841-9b38-c709-f0a1-a6f0ed1dbc67', '4711d6f0-1285-d0ff-3e5d-5615f5db47e4', '알루미늄', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4711d6f0-1285-d0ff-3e5d-5615f5db47e4', 'de06c6fb-5120-143c-6d9f-3d7762eab2a6', '① 납', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('608e2907-c66f-f8ab-8bdc-6e1461abc31b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 사업주는 근로자가 안전하게 통행할 수 있도록 통로에 얼마 이상의 채광 또는 조명시설 을 하여야 하는가?', 2, 266)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2854d31a-578e-a3a5-a3dd-78fb17b05328', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '50럭스', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf801658-a091-cd3a-324e-e14bb90ea9bb', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '75럭스', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('767dab25-c4bd-ae20-dff6-7c08ddb6efb4', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '90럭스', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ca9ba17-69d0-d969-1a3e-d04eff277bc8', '608e2907-c66f-f8ab-8bdc-6e1461abc31b', '100럭스', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('608e2907-c66f-f8ab-8bdc-6e1461abc31b', 'cf801658-a091-cd3a-324e-e14bb90ea9bb', '② 75럭스', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('36933e1e-ee40-6f68-2e36-73fedb6dabfa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 중 보일러의 방호장치와 가장 거리가 먼 것은?', 2, 267)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fce8c849-46d6-4b79-d0cf-9d14493b0e96', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '언로드밸브', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3dae36a-e4c1-5974-4482-b9b4d75cf4f6', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '압력방출장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59348ae4-9f6e-cf65-27d7-75be56a0de0c', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '압력제한스위치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab147f75-3aee-528d-518e-4b4c32c0ca47', '36933e1e-ee40-6f68-2e36-73fedb6dabfa', '고저수위 조절장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('36933e1e-ee40-6f68-2e36-73fedb6dabfa', 'fce8c849-46d6-4b79-d0cf-9d14493b0e96', '① 언로드밸브', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 롤러기 급정지장치의 종류가 아닌 것은?', 2, 268)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7b38b30-366c-f226-0de8-361039a4de8b', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '어깨조작식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb0678fc-af79-af56-9d0a-3383aef169b5', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '손조작식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b57107f4-ad6e-2fc8-160b-cfdabdc1447c', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '복부조작식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c62c68f-67d2-7492-5a70-79b55bf8d210', 'cb9111be-b45e-3c7c-476d-fdbdcd29a8af', '무릎조작식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cb9111be-b45e-3c7c-476d-fdbdcd29a8af', 'b7b38b30-366c-f226-0de8-361039a4de8b', '① 어깨조작식', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #69
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 빈칸에 들어갈 내용으로 알맞은 것은? “교류 특고압 가공전선로에서 발생하는 극저주파 전자계는 지표상 1[m]에서 전계가 ( @ )，자계가 ( ® )가 되도 록 시설하는 등 상시 정전유도 및 전자유도작용에 의하여 사 람에게 위험을 줄 우려가 없도록 시설하여야 한다.”', 2, 269)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdedb298-644c-3cac-3893-2268497d59a5', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '@ 0.35[kV/m] 이하 ® 0.833*] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fb6d597-1f1b-c24e-42a8-89a0ca449ffb', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '® 3.5[kV/m] 이하 ® 8.33[/zT] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb94f73f-2f17-727a-3ea6-118d1bad7740', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '® 3.5[kV/m] 이하 ®83.3[/zT] 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a5f5879-6871-cd61-8580-5922476c2143', '0f7d72f4-c7a3-85e1-d85d-c102ca67823d', '@ 35[kV/m] 이하 ® 83301 이하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f7d72f4-c7a3-85e1-d85d-c102ca67823d', 'cb94f73f-2f17-727a-3ea6-118d1bad7740', '③ ® 3.5[kV/m] 이하 ®83.3[/zT] 이하', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '11111111-1111-1111-1111-111111111104', 'mcq', '외부피뢰시스템에서 접지극은 지표면에서 몇 [m] 이상 깊 이로 매설하여야 하는가?(단, 동결심도는 고려하지 않는 경 우이다.)', 2, 270)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50eb3450-0722-feed-f14b-973d80df4a4c', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '0.5', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('802a9ffc-35ab-5ee3-6ab2-875a7231faf6', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '0.75', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e495172-72df-6887-f14e-fdfba549db5c', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '1', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('873dcf3c-1d36-1ee0-804b-cbd721ee3ceb', '51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '1.25', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('51cde91e-77c0-4d0b-e5fd-a2fe905f342f', '802a9ffc-35ab-5ee3-6ab2-875a7231faf6', '② 0.75', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #78
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 0.5[kQ]이라고 하면 심실세동을 일으 키는 위험한계에너지는 몇 [J]인가?（단, 심실세동전류값 /=쯔[mA]의 Dalziel의 식을 이용하며, 통전시간은 1초 로 한다.）', 2, 271)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b728f922-7ea3-88bf-f6c4-11a98f24d53c', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '13.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f176f010-6d53-d83d-6828-c49c8e39fdaa', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '12.6', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0077902-b6ad-8cd1-0a78-12ddfbc785a6', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '11.6', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66edc7b6-64fe-c100-53ce-e14f5cdbd6ae', 'bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', '10.6', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bcc1cc6a-d284-b631-7d1e-e1bbfc694d2f', 'b728f922-7ea3-88bf-f6c4-11a98f24d53c', '① 13.6', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63ccf0b2-29c1-f862-4598-8ff3229381cd', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 한국전기설비규정에 따른 전압의 구분으로 틀린 것 은?', 2, 272)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4748bcc-ab3f-8658-38e7-859ea7d4141a', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '저압: 직류 l[kV] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ae8816a-a0de-f8e7-9686-259410308cc1', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '고압: 교류 l[kV] 초과 7[kV] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f065ae0-40a5-53da-b934-97f724f15c08', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '특고압: 직류 7[kV] 초과', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02633d29-0863-ac1b-a4d0-c3b7e4595c23', '63ccf0b2-29c1-f862-4598-8ff3229381cd', '특고압: 교류 7[kV] 초과', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63ccf0b2-29c1-f862-4598-8ff3229381cd', 'd4748bcc-ab3f-8658-38e7-859ea7d4141a', '① 저압: 직류 l[kV] 이하', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명이 의미하는 것은? 온도. 압력 등 제어상태가 규정의 조건을 벗어나는 것에 의해 반응속도가 지수함수적으로 증대되고. 반응용기 내의 온도, 압력이 급격히 이상 상승되어 규정 조건을 벗어나고, 반응이 과격화되는 현상', 2, 273)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23b20271-cedb-5f90-7b2a-36fe6b12aba0', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '비등', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5872eec-d76a-8509-2578-d317b4961d07', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '과열. 과압', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36d2faaf-14c2-8ca5-cd59-d53423bc636c', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '폭발', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e052c14-a81d-c3bf-2342-84547b2b6980', 'e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '반응폭주', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2326f0f-d7e5-b647-bc39-76cf0cf9dc66', '1e052c14-a81d-c3bf-2342-84547b2b6980', '④ 반응폭주', '2022-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('974cdd57-7f90-a391-8884-293bf3114da9', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물을 저장 • 취급하는 화학설비 및 그 부속설비를 설치 할 때 ‘단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이’의 안전거리는 설비의 바깥면으로부터 몇 [m] 이상이 되어야 하는가?', 2, 274)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a48552b8-b0ef-ed46-2b4e-e003740752ff', '974cdd57-7f90-a391-8884-293bf3114da9', '5[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be53c559-6886-bea7-7070-c6e1aa154cda', '974cdd57-7f90-a391-8884-293bf3114da9', '10[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf89ee86-6679-4470-2493-dfcd80b1aa06', '974cdd57-7f90-a391-8884-293bf3114da9', '15[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b717867f-78aa-98b5-e70e-c4202ff7cb99', '974cdd57-7f90-a391-8884-293bf3114da9', '20[m]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('974cdd57-7f90-a391-8884-293bf3114da9', 'be53c559-6886-bea7-7070-c6e1aa154cda', '② 10[m]', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aad126d2-0d4f-627b-489e-8717863fd442', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 각 물질이 해당하는 위험물질의 종 류를 옳게 연결한 것은?', 2, 275)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4ac9c90-f177-7751-1303-f955aff8cd45', 'aad126d2-0d4f-627b-489e-8717863fd442', '아세트산（농도 90[%]） - 부식성 산류', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c576b0e2-1cf2-2fc2-1211-3e0b03399057', 'aad126d2-0d4f-627b-489e-8717863fd442', '아세톤（농도 9이%]） - 부식성 염기류', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('278b31b3-4bf7-0d66-9c19-d2f2fa269086', 'aad126d2-0d4f-627b-489e-8717863fd442', '이황화탄소 - 인화성 가스', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3be6a5-4a0d-095e-0abf-326442ae15ae', 'aad126d2-0d4f-627b-489e-8717863fd442', '수산화칼륨 - 인화성 가스', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aad126d2-0d4f-627b-489e-8717863fd442', 'a4ac9c90-f177-7751-1303-f955aff8cd45', '① 아세트산（농도 90[%]） - 부식성 산류', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('58664e89-386c-b7a7-255e-0f2f6c13de1f', '11111111-1111-1111-1111-111111111104', 'mcq', '자연발화성을 가진 물질이 자연발화를 일으키는 원인으로 거리가 먼 것은?', 2, 276)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('186f15fe-7103-e234-bbd9-46ac55f12327', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '분해열', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c26494f6-edf9-c87b-8edd-acf79cb0d513', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '증발열', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efb9fe20-db5b-f2ca-6a9e-fd1a74a86563', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '산화열', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('931bcb7f-2d7d-263a-120a-d484d479fc55', '58664e89-386c-b7a7-255e-0f2f6c13de1f', '중합열', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('58664e89-386c-b7a7-255e-0f2f6c13de1f', 'c26494f6-edf9-c87b-8edd-acf79cb0d513', '② 증발열', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cde65e39-cc51-f4b9-db34-61adcc34fdc6', '11111111-1111-1111-1111-111111111104', 'mcq', '건설작업장에서 근로자가 상시 작업하는 장소의 작업면 조 도기준으로 옳지 않은 것은?（단, 갱내 작업장과 감광재료를 취급하는 작업장의 경우는 제외한다.）', 2, 277)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52d064b5-79d5-1988-1743-6cd889538d58', 'cde65e39-cc51-f4b9-db34-61adcc34fdc6', '초정밀작업 : 600[lux] 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5cb47ce-7a89-67e0-f1fd-62b1cd70dd7a', 'cde65e39-cc51-f4b9-db34-61adcc34fdc6', '정밀작업 : 300[lux] 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef75bc67-8274-4f1f-1804-011896f63f94', 'cde65e39-cc51-f4b9-db34-61adcc34fdc6', '보통작업: 15O[lux] 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2735ba07-7622-78a3-64c6-0de331fc8195', 'cde65e39-cc51-f4b9-db34-61adcc34fdc6', '초정밀. 정밀, 보통작업을 제외한 기타 작업: 75[lux] 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cde65e39-cc51-f4b9-db34-61adcc34fdc6', '52d064b5-79d5-1988-1743-6cd889538d58', '① 초정밀작업 : 600[lux] 이상', '2022-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '11111111-1111-1111-1111-111111111104', 'mcq', '옥외에 설치되어 있는 주행크레인에 대하여 이탈방지장치 를 작동시키는 등 그 이탈을 방지하기 위한 조치를 하여야 하는 순간풍속에 대한 기준으로 옳은 것은?', 2, 278)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71d566ec-032a-78e1-ba6e-7b08bb61447a', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 10[m]를 초과하는 바람이 불어올 우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('182de562-c07d-0e1c-3186-7c0a2da2fc77', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 20[m]를 초과하는 바람이 불어올 우', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e59df59d-fe28-1b9f-934d-722717bdae59', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffb76c2b-20f5-afed-b6fa-804ea76ed02b', '290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', '순간풍속이 초당 40[m]를 초과하는 바람•이 불어올 우', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('290c5fd7-9bb8-2f08-25ea-fcc72506d0c4', 'e59df59d-fe28-1b9f-934d-722717bdae59', '③ 순간풍속이 초당 3O[m]를 초과하는 바람이 불어올 우', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #111
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('11b59e63-ca8f-7e38-a958-f12fe55a41e0', '11111111-1111-1111-1111-111111111104', 'mcq', '철골 작업 철골부재에서 근로자가 수직방향으로 이동하는 경우에 설치하여야 하는 고정된 승강로의 최소 답단 간격은 얼마 이내인가?', 2, 279)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a85ae54-bb66-719f-67d3-02f42265dd5c', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '20[cm]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bfa239b-482d-8d82-46bf-5209c6c3d45e', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '25 [cm]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '30[cm]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7135baa-a159-84b5-9e5b-912166e0e563', '11b59e63-ca8f-7e38-a958-f12fe55a41e0', '40[cm]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('11b59e63-ca8f-7e38-a958-f12fe55a41e0', '3cfb250c-1f4e-4e2f-7dd2-9b62182ed8f0', '③ 30[cm]', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #112
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '11111111-1111-1111-1111-111111111104', 'mcq', '흙막이벽의 근입 깊이를 깊게 하고, 전면의 굴착부분을 남 겨두어 흙의 중량으로 대항하게 하거나, 굴착예정부분의 일 부를 미리 굴착하여 기초콘크리트를 타설하는 등의 대책과 가장 관계 깊은 것은?', 2, 280)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('390af2d4-f8c7-74c2-0fd3-22475db23b96', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '파이핑현상이 있을 때', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05e7874d-903f-e240-6251-8d030abbf742', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '히빙현상이 있을 때', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83def8a2-9db9-a1fb-b645-f3cde5c9e287', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '지하수위가 높을때', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b576124b-4ab9-7006-6591-3f1da6c5b3e5', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '굴착깊이가 깊을때', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '05e7874d-903f-e240-6251-8d030abbf742', '② 히빙현상이 있을 때', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준（고용노동부 고시）은「산업안전보건법」의 건설공사 중 총 공사금액이 얼 마 이상인 공사에 적용하는가?', 2, 281)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b505b157-c5c6-dcbd-5d5b-546d2dd3e03e', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '4천만 원', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fdbcc1-ce07-d615-9e76-09bb3c8705ac', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '3천만 원', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c24603fe-b5f2-11a2-aa8d-8295d630b365', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '2천만 원', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd09d329-be76-64b5-14c4-9f6d746189c5', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '1천만 원', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', 'c24603fe-b5f2-11a2-aa8d-8295d630b365', '③ 2천만 원', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', '11111111-1111-1111-1111-111111111104', 'mcq', '건립 중 강풍에 의한 풍압 등 외압에 대한 내력이 설계에 고 려되었는지 확인해야 하는 철골구조물의 기준으로 옳지 않 은 것은?', 2, 282)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6600e426-5f49-44e8-13aa-5fb738b718bc', '421b0eff-8d9c-5463-e80d-49824ebf6109', '높이 2O[m] 이상의 구조물', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d50a5f-85cf-4cfc-6ebf-db91e4e68ca8', '421b0eff-8d9c-5463-e80d-49824ebf6109', '구조물의 폭과 높이의 비가 1： 4 이상인 구조물', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('caaf472b-c309-5387-8809-d780cb5e5976', '421b0eff-8d9c-5463-e80d-49824ebf6109', '이음부가 공장 제작인 구조물', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3694a3-c753-7055-dcb1-862234f50c47', '421b0eff-8d9c-5463-e80d-49824ebf6109', '연면적당 철골량이 5이kg/m2] 이하인 구조물', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', 'caaf472b-c309-5387-8809-d780cb5e5976', '③ 이음부가 공장 제작인 구조물', '2022-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-1 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '11111111-1111-1111-1111-111111111104', 'mcq', '동바리로 사용하는 파이프서포트는 최대 몇 개 이상 이어서 사용하지 않아야 하는가?', 2, 283)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79e9bca6-65a7-12fa-7cf2-0a5e7301cc73', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '2개', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '3개', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06b81128-b6d9-7e6b-19ea-01badbd0bec8', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '4개', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5571ea39-12c2-698e-b3fb-a9349a0689f1', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '5개', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '② 3개', '2022-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-1'])
on conflict (question_id) do nothing;

-- 2022-2 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 자율안전확인 고시」상 자율안전확인 보호구에 표 시하여야 하는 사항을 모두 고른 것은? H.모델명 !-. 제조번호 □.사용기한 2. 자율안전확인 번호', 2, 284)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e66ed0ca-137f-bb43-9673-75b6b97cc32a', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—«, 느, 三', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—I, 心, 르', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f2e841a-c852-6ce2-245a-d84a348bd84c', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '거, 三，己', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a39ac18d-60aa-e213-a904-cc1b2b8a4d85', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '1-，三，르', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '② —I, 心, 르', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '11111111-1111-1111-1111-111111111104', 'mcq', '학습지도의 형태 중 참가자에게 일정한 역할을 주어 실제적 으로 연기를 시켜봄으로써 자기의 역할을 보다 확실히 인식 시키는 방법은?', 2, 285)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327afac-d325-d033-da56-9c3b23e516c8', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '포럼 (Forum)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d065d864-dfd7-659a-c499-0078df2be35e', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '심 포지 엄 (Symposium)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe623b8-6778-9b75-a5cc-bc15512d2457', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '롤 플레 잉 (Role Playing)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41d6dedc-69eb-3f5d-8f7c-142fd2481059', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '사례연구법 (Case study method)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '7fe623b8-6778-9b75-a5cc-bc15512d2457', '③ 롤 플레 잉 (Role Playing)', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 사고예방원리 5단계 중 교육 및 훈련의 개선, 인사조정, 안전관리규정 및 수칙의 개선 등을 행하는 단계 는?', 2, 286)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e26d117a-d478-8059-3a25-5c5aeaff090e', 'bdfca633-9649-93b9-369d-7603b04307bb', '사실의발견', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5de1a1e-41d1-0d0f-b93d-b35c2ddf61ca', 'bdfca633-9649-93b9-369d-7603b04307bb', '분석평가', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9289eb66-7e4b-3057-448d-323d3d40c30b', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정방법의 선정', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c62e92ef-22e0-ab16-d0e5-36aeb74c71fa', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정책의 적용', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '9289eb66-7e4b-3057-448d-323d3d40c30b', '③ 시정방법의 선정', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건진단을 받아 안전보건개선 계획의 수립 및 명령을 할 수 있는 대상이 아닌 것은?', 2, 287)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d407181-3a34-bd6c-8f64-d2929c5d425a', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '유해인자의 노출기준을 초과한 사업장', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ea4ee1b-b993-e6ec-7417-4f84d36bf302', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '산업재해율이 같은 업종 평균 산업재해율의 2배 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('494bda38-15d5-df48-2bd1-c9f16cfb59b8', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '사업주가 필요한 안전조치 또는 보건조치를 이행하지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c5d4766-b956-014c-69e7-b708dff78e00', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '상시근로자 1천명 이상인 사업장에서 직업성 질병자가', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '9c5d4766-b956-014c-69e7-b708dff78e00', '④ 상시근로자 1천명 이상인 사업장에서 직업성 질병자가', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 거푸집 및 동바리의 조립 또는 해체 작업 시 특별교육 내용이 아닌 것은?（단, 그 밖에 안전 ■ 보 건관리에 필요한 사항은 제외한다.）', 2, 288)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9af634d1-0c56-1a90-2dd1-b810af298639', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '비계의 조립순서 및 방법에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3737a0fa-9e72-6294-30b9-d2b79349788e', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립 • 해체 시의 사고 예방에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81fc026-a308-83f3-9131-2de2477d56f3', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '동바리의 조립방법 및 작업 절차에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad0d7334-9779-2919-54a1-5d1dac5ff171', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립재료의 취급방법 및 설치기준에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '9af634d1-0c56-1a90-2dd1-b810af298639', '① 비계의 조립순서 및 방법에 관한 사항', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '11111111-1111-1111-1111-111111111104', 'mcq', '근골격계질환 작업분석 및 평가 방법인 OWAS의 평가요소 를 모두 고른 것은? —1. 상지 >-. 무게（하중） 仁. 하지 己. 허리', 2, 289)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08dd7262-37d5-eec4-f27c-fd18582c853f', '6956581a-8209-3881-395b-d0a4ca5a784a', '己 亡', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1943bd14-057e-b6a8-b99e-1af703cf7728', '6956581a-8209-3881-395b-d0a4ca5a784a', '1, c, e', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e52a16ab-f766-184f-ff12-cae1070ab5b7', '6956581a-8209-3881-395b-d0a4ca5a784a', '亡, C, S', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '6956581a-8209-3881-395b-d0a4ca5a784a', '그, 亡, c, 5', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '④ 그, 亡, c, 5', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #34
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', '11111111-1111-1111-1111-111111111104', 'mcq', 'n개의 요소를 가진 병렬시스템에 있어 요소의 수명（MTTF） 이 지수분포를 따를 경우, 이 시스템의 수명으로 옳은 것은?', 2, 290)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab50c17e-60f3-13d5-5cd7-de5bd1592b3d', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFxn', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ad43920-a6fa-dbd9-2c17-f4f56fed6412', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFx&', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c154782b-ef51-e8e9-932b-61d93cb2c7da', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l+；+•••+£）', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a73515a-effd-7291-e3ef-f3c67b999098', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l>〈$x …〈느）', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'c154782b-ef51-e8e9-932b-61d93cb2c7da', '③ MTTF（l+；+•••+£）', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 와이어로프의 구성요소가 아닌 것은?', 2, 291)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03a7544e-331a-aa99-e5e6-2aab5353b593', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '클립', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84c1bce0-dae0-3903-2f36-00c1cd0cb16a', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '소선', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('342e35c9-1fca-4e0f-ce19-820130e3c6d9', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '스트랜드', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f90f48f9-fdd6-551d-eba7-03aa5ead9e01', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '심강', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '03a7544e-331a-aa99-e5e6-2aab5353b593', '① 클립', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업용 로봇에 의한 작업 시 안전조 치 사항으로 적절하지 않은 것은?', 2, 292)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cc444e-a485-b990-8cfd-05e9665beecd', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 운전으로 인해 근로자가 로봇에 부딪칠 위험이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6415b6a-e1f7-fb98-cd94-c4f0ab657195', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업을 하고 있는 동안 로봇의 기동스위치 등은 작업에', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bc3bfee-baa7-bc9d-cbd5-1248d4e8ed73', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 조작방법 및 순서, 작업 중의 매니퓰레이터의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업에 종사하는 근로자가 이상을 발견하면 관리감독', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '④ 작업에 종사하는 근로자가 이상을 발견하면 관리감독', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 293)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f810a588-a561-10fd-2790-9d56afd2a253', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3eb25c98-391c-e084-811a-3a98933d9443', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3152f79e-1ceb-5433-dd10-0840b58d2eb4', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d69fd104-fc48-0997-3727-58ff7cf9c4a9', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '상. 하, 좌. 우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '3152f79e-1ceb-5433-dd10-0840b58d2eb4', '③ 강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 강렬한 소음작업에서 데시벨에 따른 노출시간으로 적합하지 않은 것은?', 2, 294)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('433afdbe-cb17-d647-7791-9fafb3e544ad', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'l(X)[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4d24837-3ab6-35c1-da0d-e13abbedb692', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9613af9d-a85c-7059-dc98-5882fa0a0d10', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc80dca8-3a6b-017a-9a85-0253c17ef21f', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'dc80dca8-3a6b-017a-9a85-0253c17ef21f', '④ 120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스기를 사용하여 작업을 할 때 작업시작 전 점검사항으로 틀린 것은?', 2, 295)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0334250e-f4b1-23a9-6d53-71bdbed9f252', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '클러치 및 브레이크의 기능', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ef1c757-33e4-699f-e7de-d5d61f43bd59', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '압력방출장치의 기능', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a002429d-6f7b-b157-6eca-46f6e06b70b0', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '크랭크축 • 플라이휠 • 슬라이드 • 연결봉 및 연결나사의', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf32436f-a876-0511-8161-edebb132bfd6', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '프레스의 금형 및 고정볼트의 상태', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '7ef1c757-33e4-699f-e7de-d5d61f43bd59', '② 압력방출장치의 기능', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전은 예방보전과 사후보전으로 대별된다. 다음 중 예 방보전의 종류가 아닌 것은?', 2, 296)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c317ef8b-7b9d-fa0c-3620-e4e3d0651651', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '시간계획보전', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd812c9d-3bfa-803d-a175-c0456a33c75c', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '개량보전', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e47d6ada-3b31-f390-710a-dbfaa13db707', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '상태기준보전', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327bacc-83d1-c4f1-bb6d-acc3e095b5c9', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '적응보전', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', 'cd812c9d-3bfa-803d-a175-c0456a33c75c', '② 개량보전', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '11111111-1111-1111-1111-111111111104', 'mcq', '천장크레인에 중량 3[kN]의 화물을 2줄로 매달았을 때 매 달기용 와이어（sling wire）에 걸리는 장력은 약 몇 [kN]인 가?（단. 매달기용 와이어（sling wire） 2줄 사이의 각도는 55°이다.）', 2, 297)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66496ca5-cda0-6326-655f-ced7cee86493', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.3', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('540afe1f-2c66-4090-d802-db814f925616', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.7', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f771b8ef-707d-da57-e38d-52def50eca0d', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.0', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5514dcf7-e13b-8c84-a796-afece36522f4', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.3', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '540afe1f-2c66-4090-d802-db814f925616', '② 1.7', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 아세틸렌 용접장치의 아세틸렌 발생 기실을 설치하는 경우 준수하여야 하는 사항으로 옳은 것 은?', 2, 298)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19d7d10c-4422-f31e-9a1f-ed937ecdd813', '173ad79f-edb9-2cb1-0431-a8067bb169af', '벽은 가연성 재료로 하고 철근 콘크리트 또는 그 밖에', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b728f5b-a690-6144-1aaf-2b792eaa5aea', '173ad79f-edb9-2cb1-0431-a8067bb169af', '바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb491eca-d2b1-ebdc-b1f8-34a0c4f8e448', '173ad79f-edb9-2cb1-0431-a8067bb169af', '출입구의 문은 불연성 재료로 하고 두께 1.0밀리미터', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4241360-025c-429a-64af-f274c4eb4870', '173ad79f-edb9-2cb1-0431-a8067bb169af', '발생기실을 옥외에 설치한 경우에는 그 개구부를 다른', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '6b728f5b-a690-6144-1aaf-2b792eaa5aea', '② 바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 사람이 쉽게 접촉할 우려가 있 는 곳에 금속제 외함을 가지는 저압의 기계 • 기구가 시설되 어 있다. 이 기계 • 기구의 사용전압이 몇 [v]를 초과할 때 전기를 공급하는 전로에 누전차단기를 시설해야 하는가? (단, 누전차단기를 시설하지 않아도 되는 조건은 제외한다.)', 2, 299)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a7569c9-0b98-963a-c0bd-0e5e1c92802a', '733bed40-d05f-da9f-4342-2183de37b5a2', '30[V]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d64ffb0-6fe9-b89e-79ca-af70d744b7b5', '733bed40-d05f-da9f-4342-2183de37b5a2', '40[V]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('212334b9-d402-bf03-877c-a55c72fcef2a', '733bed40-d05f-da9f-4342-2183de37b5a2', '50[V]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9e8d497-3b89-fce5-1135-515d3df14b1f', '733bed40-d05f-da9f-4342-2183de37b5a2', '60[V]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '212334b9-d402-bf03-877c-a55c72fcef2a', '③ 50[V]', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '11111111-1111-1111-1111-111111111104', 'mcq', '교류 아크용접기의 사용에서 무부하 전압이 80[V], 아크 전 압 25[V], 아크 전류 300[A]일 경우 효율은 약 몇 [%]인 가?(단, 내부손실은 4[kW]이다.)', 2, 300)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61ab9dcb-787a-dc42-ea2b-851387392526', '50e12b69-919c-1b81-8cca-62cfae26f03b', '65.2', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6762e2dd-e3e2-7d34-13f2-bb12e19c38d5', '50e12b69-919c-1b81-8cca-62cfae26f03b', '70.5', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1613b29e-fc00-6a0e-9609-080b862885fb', '50e12b69-919c-1b81-8cca-62cfae26f03b', '75.3', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cb52e04-fdd0-f722-8a75-6ee72f11f109', '50e12b69-919c-1b81-8cca-62cfae26f03b', '80.6', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '61ab9dcb-787a-dc42-ea2b-851387392526', '① 65.2', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기기보호등급(EPL)에 해당하지 않는 것은?', 2, 301)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bec621af-b127-b5fa-76ef-517977e68fe2', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ga', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8946e00-5cec-0eb8-b011-cb9f5c06038d', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ma', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e10712b-88ab-94cc-819c-dbb9a51dcfe6', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL De', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed173bd-0cc4-6aab-941e-8c9f069eee57', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Me', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '2ed173bd-0cc4-6aab-941e-8c9f069eee57', '④ EPL Me', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #74
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건기준에 관한 규칙」에 따라 누전차단 기를 설치하지 않아도 되는 곳은?', 2, 302)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3af73291-cdfe-9e17-2bf6-38cdf02051e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '철판 • 철골 위 등 도전성이 높은 장소에서 사용하는 이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f4ead73-cbf1-7978-64a4-73fd357260e9', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '대지전압이 22O[V]인 휴대형 전기기 계 • 기구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41759bbd-f823-a057-a443-76f8710326e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '임시배선의 전로가 설치되는 장소에서 사용하는 이동', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c038004d-3ea0-e410-2c0e-6e760fbe86ff', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '절연대 위에서 사용하는 전기기계 • 기구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', 'c038004d-3ea0-e410-2c0e-6e760fbe86ff', '④ 절연대 위에서 사용하는 전기기계 • 기구', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #77
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동전류 /=쯔[mA]라면 심실세동 시 인체에 직접 받는 전기에너지[cal]는 약 얼마인가?（단, 丁는 통전시간으 로 1초이며, 인체의 저항은 500[Q]으로 한다.）', 2, 303)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657ff74e-d8b3-f5c3-3c18-1350426e8a99', '9c03aab2-f457-7716-1ff4-937a67b41842', '0.52', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60bfd10e-d74e-bf68-df6d-2507da45e7c0', '9c03aab2-f457-7716-1ff4-937a67b41842', '1.35', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cfc4751-d1d9-447f-fb2d-4c9179ce45ab', '9c03aab2-f457-7716-1ff4-937a67b41842', '2.14', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657495c8-b12a-f824-3756-edfb55bccb05', '9c03aab2-f457-7716-1ff4-937a67b41842', '3.26', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '657495c8-b12a-f824-3756-edfb55bccb05', '④ 3.26', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 조치사항으로 틀린 것은?', 2, 304)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6371abc-e34f-c2be-a0d6-123fac256eb4', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '작업 전 전기설비의 잔류 전하를 확실히 방전한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f2830fb-4821-ba33-eb30-1ac72430bce0', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개로된 전로의 충전 여부를 검전기구에 의하여 확인한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04b87857-bc03-c25c-9660-f82652612141', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1dd39885-56b7-ae3f-020f-4613d01900f2', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '예비 동력원의 역송전에 의한 감전의 위험을 방지하기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '04b87857-bc03-c25c-9660-f82652612141', '③ 개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 정한 위험물질을 기준량 이상 제 조하거나 취급하는 화학설비로서 내부의 이상상태를 조기 에 파악하기 위하여 필요한 온도계 ■ 유량계 • 압력계 등의 계측장치를 설치하여야 하는 대상이 아닌 것은?', 2, 305)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a25a749-3e58-b0a8-23e8-565283517b95', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '가열로 또는 가열기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('344f6b2f-b99b-e045-4dc9-ca9bddcd1f25', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '증류 •정류 •증발 •추출 등분리를 하는 장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d429f2e4-341b-4b1c-4fb5-eb62780272c6', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '반응폭주 등 이상 화학반응에 의하여 위험물질이 발생', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1304793-a233-719d-bb07-3e04ea9c2098', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '흡열반응이 일어나는 반응장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', 'b1304793-a233-719d-bb07-3e04ea9c2098', '④ 흡열반응이 일어나는 반응장치', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 폭발방호대책과 가장 거리가 먼 것은?', 2, 306)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93bffc62-f324-2337-3fab-9a6bf4425182', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '불활성화', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5537b439-895d-75e2-8da2-042fe2d0b102', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '억제', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15ca6108-a105-6f3e-8ec2-6ed564a98930', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '방산', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('642bc03e-808b-04a9-69f9-7d4b720fc430', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '봉쇄', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '93bffc62-f324-2337-3fab-9a6bf4425182', '① 불활성화', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #89
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 ■ 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 307)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 상단', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86d518d4-9b4a-de8c-5470-b58131842840', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 하단', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31e7e55b-f28a-a90c-1668-3c435dbe0902', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 측면', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a62b8f8-4a80-576b-25fb-d698f61c83f1', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 조작부', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', 'e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '① 설비의 상단', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #103
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사의 유해위험방지계획서 제출 기준일로 옳은 것은?', 2, 308)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2cf5cbc-4008-db66-5068-5c3a806da78b', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 1개월 전까지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('98323b77-9f5d-def3-56e3-8aca2adad1e3', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 전까지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4c226e0-41c8-b58c-a820-a99224f615f7', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 전날까지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c4cd8a7-e2e9-b5ac-0966-f24d2df14c39', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 후까지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', 'd4c226e0-41c8-b58c-a820-a99224f615f7', '③ 당해공사 착공 전날까지', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '11111111-1111-1111-1111-111111111104', 'mcq', '철골건립준비를 할 때 준수하여야 할 사항으로 옳지 않은 것은?', 2, 309)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09ee102f-d978-0859-6df0-6b9ab8bb7c93', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '지상 작업장에서 건립준비 및 기계기구를 배치할 경우', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aeb2006f-5b50-785f-6850-d57cbcaea4b2', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '건립작업에 다소 지장이 있다 하더라도 수목은 제거하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6dbf1f38-1caf-cab3-6c26-7796de749390', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '사용 전에 기계. 기구에 대한 정비 및 보수를 철저히 실', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24bfbfa2-d425-37a6-c91c-db3217bec300', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '기계에 부착된 앵커 등 고정장치와 기초구조 등을 확인', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', 'aeb2006f-5b50-785f-6850-d57cbcaea4b2', '② 건립작업에 다소 지장이 있다 하더라도 수목은 제거하', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '11111111-1111-1111-1111-111111111104', 'mcq', '「가설공사 표준안전 작업지침」에 따른 통로발판을 설치하 여 사용함에 있어 준수사항으로 옳지 않은 것은?', 2, 310)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b7ecb3b-7334-7b69-490a-dc3007960007', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '추락의 위험이 있는 곳에는 안전난간이나 철책을 설치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a270c681-1969-08ae-32e1-44c32a9b76a1', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '작업발판의 최대폭은 1.6[m] 이내이어야 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc41a8c-c4de-2174-f0d7-e1677874f71d', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '비계발판의 구조에 따라 최대 적재하중을 정하고 이를', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb80710a-392d-31b1-fdf9-79ad3f2dc659', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', 'bb80710a-392d-31b1-fdf9-79ad3f2dc659', '④ 발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '11111111-1111-1111-1111-111111111104', 'mcq', '건설작업용 타워크레인의 안전장치로 옳지 않은 것은?', 2, 311)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9175826c-1eb2-03be-0244-f6b35ba17c80', '267b77c0-0000-08b4-f288-b61360884e40', '권과방지장치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ca1fb8-6be4-c209-c70a-96c33b3c51d8', '267b77c0-0000-08b4-f288-b61360884e40', '과부하방지장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69fafe4a-16ca-6de3-5607-c86888130160', '267b77c0-0000-08b4-f288-b61360884e40', '비상정지장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95e040e2-c2e1-25f3-5075-f7672f82eb37', '267b77c0-0000-08b4-f288-b61360884e40', '호이스트 스위치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '95e040e2-c2e1-25f3-5075-f7672f82eb37', '④ 호이스트 스위치', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우의 준수기준으로 옳지 않은 것은?', 2, 312)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17cc2fba-a68c-aa20-a2c0-ab2897701d5a', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '비계의 최상부에서 작업을 할 때에는 안전난간을 설치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61256c69-1a72-c41f-3dbf-bb87bbe88089', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판의 최대적재하중은 400[kg]을 초과하지 않도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9deaade-758b-706e-1f80-6d094eec9117', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '승강용 사다리는 견고하게 설치하여야 한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a33e3c7-0c34-4064-684a-4e50a1161038', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '61256c69-1a72-c41f-3dbf-bb87bbe88089', '② 작업발판의 최대적재하중은 400[kg]을 초과하지 않도', '2022-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #117
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '11111111-1111-1111-1111-111111111104', 'mcq', '사면지반 개량공법으로 옳지 않은 것은?', 2, 313)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d7d6cf4-349a-42c2-5c35-27a223324726', '496ba631-88d6-8df9-b644-cac91e41a571', '전기 화학적 공법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('30703104-3b99-6fdb-5a39-0b3668c6ea43', '496ba631-88d6-8df9-b644-cac91e41a571', '석회안정처리 공법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed8e8f17-f7ad-ac11-69f2-bdfd33d2f2ae', '496ba631-88d6-8df9-b644-cac91e41a571', '이온 교환 공법', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5880533e-070b-c7c9-48e0-bc9cca0791a8', '496ba631-88d6-8df9-b644-cac91e41a571', '옹벽 공법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '5880533e-070b-c7c9-48e0-bc9cca0791a8', '④ 옹벽 공법', '2022-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '11111111-1111-1111-1111-111111111104', 'mcq', '법면 붕괴에 의한 재해 예방조치로서 옳은 것은?', 2, 314)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '지표수와 지하수의 침투를 방지한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('817cbf6a-1b2a-a09c-e2fb-ed085131a818', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '법면의 경사를증가한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d3c260a-44a1-cf08-35b1-0f03dc1c32f0', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '절토 및 성토높이를 증가한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33daf4f5-c930-bac1-371d-b62acebe2988', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '토질의 상태에 관계없이 기울기 조건을 일정하게 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', 'fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '① 지표수와 지하수의 침투를 방지한다.', '2022-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-2 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '11111111-1111-1111-1111-111111111104', 'mcq', '가설통로의 설치기준으로 옳지 않은 것은?', 2, 315)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2009c5-6c8a-1971-e00f-f42d1cafa4c4', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '경사가 15°를 초과하는 때에는 미끄러지지 않는 구조로', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4115d05-1f6f-b1d2-e15e-ed4d217fdaf7', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '건설공사에 사용하는 높이 8[m] 이상인 비계다리에는', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf6fa544-c7b7-e564-771a-90a1352002b9', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e03172bd-9098-5d1b-fbe6-674377ef0f16', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '추락의 위험이 있는 장소에는 안전난간을 설치한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', 'cf6fa544-c7b7-e564-771a-90a1352002b9', '③ 수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', '2022-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-2'])
on conflict (question_id) do nothing;

-- 2022-3 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18396baa-742e-8f46-3098-ddfbcf2c0357', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 브레인스토밍의 4원칙과 가장 거리가 먼 것은?', 2, 316)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ee15721-abd1-349d-b8d5-ef7c5d0761d2', '18396baa-742e-8f46-3098-ddfbcf2c0357', '자유로운 비평', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d8b1667-e2a6-2927-a6ac-2532a9635a91', '18396baa-742e-8f46-3098-ddfbcf2c0357', '자유분방한 발언', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75c62a78-05d4-ba56-eb2f-1ffbb5ef3b2f', '18396baa-742e-8f46-3098-ddfbcf2c0357', '대량적인발언', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0c49a32-e330-23d4-998f-99d614646e81', '18396baa-742e-8f46-3098-ddfbcf2c0357', '타인 의견의수정발언', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18396baa-742e-8f46-3098-ddfbcf2c0357', '9ee15721-abd1-349d-b8d5-ef7c5d0761d2', '① 자유로운 비평', '2022-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구순서대로 나열한 것은? @정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성', 2, 317)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ac87a52-0992-f6e7-8f77-b056089eacf3', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '각 사상의 재해원인 규명', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('558534be-93d6-1e89-4ae6-f3aa369740ce', '04b7b1ff-7232-02dd-cb12-21d293949f5c', 'O —©--©—*®', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd583951-4b64-a814-d924-547d027cc96d', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—*•©—*©—*• (§)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9cd0294-df43-40ee-9bb8-ade26fafbad8', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—’<§)—*’©—” ©', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', 'f9cd0294-df43-40ee-9bb8-ade26fafbad8', '④ (9—’<§)—*’©—” ©', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '11111111-1111-1111-1111-111111111104', 'mcq', '시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[L/min]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?', 2, 318)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d295e75-b124-c222-39b6-0856d4b2242f', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '124［분］', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6c919-8114-38bd-96f8-3693e4602a52', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '134［분］', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39ba19a3-0075-8db5-2f9e-54dfbfb4f388', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '144［분］', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8c37353-f3fe-3ca3-2cc4-1c247756561e', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '154［분］', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '39ba19a3-0075-8db5-2f9e-54dfbfb4f388', '③ 144［분］', '2022-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d553f467-6122-5908-6a72-a251835c946f', '11111111-1111-1111-1111-111111111104', 'mcq', '국내 규정상 1일 노출횟수가 100일 때 최대 음압수준이 몇 [dB]을 초과하는 충격소음에 노출되어서는 아니 되는가?', 2, 319)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d95b305-9841-1fe8-a07b-351a283a3d3d', 'd553f467-6122-5908-6a72-a251835c946f', '110', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d4fe03d-3538-2b94-6676-e5539813331c', 'd553f467-6122-5908-6a72-a251835c946f', '120', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85e925c3-790a-5d13-a805-bbec4c330cd0', 'd553f467-6122-5908-6a72-a251835c946f', '130', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83455000-74f9-b4e1-d432-6ee84dbd579f', 'd553f467-6122-5908-6a72-a251835c946f', '140', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d553f467-6122-5908-6a72-a251835c946f', '83455000-74f9-b4e1-d432-6ee84dbd579f', '④ 140', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '11111111-1111-1111-1111-111111111104', 'mcq', '방사선 투과검사에서 투과사진의 상질을 점검할 때 확인해 야 할 항목으로 거리가 먼 것은?', 2, 320)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f937e2-8028-992d-a9ee-a94fc5a24945', '655ac728-af7a-a96e-e89b-4ef9828a2773', '투과도계의 식별도', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82bdf2eb-03e5-6cf7-52f4-d12fa4759df5', '655ac728-af7a-a96e-e89b-4ef9828a2773', '시험부의 사진농도 범위', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b07e9bb7-5a1d-fa42-4d3a-f4b4e5dde073', '655ac728-af7a-a96e-e89b-4ef9828a2773', '계조계의 값', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eb6b05c-9a55-a3a2-9065-25cd66c11481', '655ac728-af7a-a96e-e89b-4ef9828a2773', '주파수의 크기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '9eb6b05c-9a55-a3a2-9065-25cd66c11481', '④ 주파수의 크기', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '11111111-1111-1111-1111-111111111104', 'mcq', '와이어로프의 구성요소가 아닌 것은?', 2, 321)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c395391-8717-81a8-33b9-42ce59831f65', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '소선', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('903e2c8e-f962-5ae5-9c81-21cf50c5d64e', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '클립', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07535a7b-0f1a-89eb-c03b-e0401630c06a', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '스트랜드 (Strand)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a442c38-ae52-e8a6-9845-ffcecf1bd375', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '심강(Core)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '903e2c8e-f962-5ae5-9c81-21cf50c5d64e', '② 클립', '2022-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 322)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32302100-f671-8676-0240-e12826063bb0', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f67abd5c-1a40-320b-51d7-967524bee2a8', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0e3d9de-02dc-0e82-6edc-f658ca0577ae', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6a84b60-09fb-26c9-b350-3557a2a26a7b', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '상하 좌우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', 'e0e3d9de-02dc-0e82-6edc-f658ca0577ae', '③ 강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', '2022-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('94948349-671d-6a84-40d0-601dc14eb374', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명은 보일러의 장해 원인 중 어느 것에 해당되는가? 보일러 수중에 용해고형분이나 수분이 발생, 증기 중에 다량 함유되어 증기의 순도를 저하시킴으로써 관내 응축수가 생겨 워터해머의 원인이 되고 증기과열기나 터빈 등의 고장의 원인 이 된다.', 2, 323)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9851c43d-b20f-9be7-b551-33a84209282f', '94948349-671d-6a84-40d0-601dc14eb374', '프라이 밍 (Priming)', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082900df-8774-edc7-9d67-4c1bfd13c4e1', '94948349-671d-6a84-40d0-601dc14eb374', '포밍 (Foaming)', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf73f42b-66a3-c689-1122-0883d791e70c', '94948349-671d-6a84-40d0-601dc14eb374', '캐리오버 (Carry Over)', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c9ba1a6-9ac5-f9b6-a753-548906341508', '94948349-671d-6a84-40d0-601dc14eb374', '역화(Back Fire)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('94948349-671d-6a84-40d0-601dc14eb374', 'cf73f42b-66a3-c689-1122-0883d791e70c', '③ 캐리오버 (Carry Over)', '2022-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #68
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '11111111-1111-1111-1111-111111111104', 'mcq', '일반 허용접촉전압과 그 종별을 짝지은 것으로 틀린 것은?', 2, 324)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제1종: 0.5[V] 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26474057-9b6e-3dcb-659e-d9e00eebb352', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제2종: 25[V] 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4eb8d3ac-20e6-26ef-4d0b-fe27a1ec6ebb', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제3종: 5O[V] 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebe5fbd6-4a0c-66ff-def6-818a87df78d6', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제4종: 제한 없음', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '① 제1종: 0.5[V] 이하', '2022-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #69
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 /=」等 [mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 325)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c45a6453-23aa-7228-cf13-e9725daec9d6', '47192335-1c4e-fbe2-caba-b7931471f777', '13.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c7686ce-6f12-244a-7282-a9ddffd09633', '47192335-1c4e-fbe2-caba-b7931471f777', '16.2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91ebd79d-0824-623f-8c21-c4135bd2d2c3', '47192335-1c4e-fbe2-caba-b7931471f777', '27.2', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc09a761-3c50-928c-9914-4a4293ef10c7', '47192335-1c4e-fbe2-caba-b7931471f777', '32.4', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', 'c45a6453-23aa-7228-cf13-e9725daec9d6', '① 13.6', '2022-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 피뢰설비에서 외부피뢰시스템 의 수뢰부시스템으로 적합하지 않은 것은?', 2, 326)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6588442b-ab47-efa9-c9f5-efd8ab24a123', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '돌침', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1048f2c-d549-fceb-db5c-9723098b560e', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '수평도체', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d700dc5f-6d02-b6f9-6187-6196db3b5c21', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '그물망도체', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '환상도체', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '④ 환상도체', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 유기과산화물로 분류되는 것은?', 2, 327)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b9c203-f383-7e40-bbce-1f2d37342c9b', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '메틸에틸케톤', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec38ea26-cc99-cde7-8574-b2854762f371', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과망간산칼륨', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d84eeeb8-9aae-550a-5b19-437a3d132033', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화마그네슘', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화벤조일', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', '④ 과산화벤조일', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 • 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야 하는가?', 2, 328)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9be7448c-20c5-ac71-4b26-c142bd8c9e74', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '15일', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c807267c-c7b2-37d7-4d5a-bf47343a71ad', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '30일', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f0d1ca3-c103-6174-e3b9-da294d1d9182', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '60일', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efa7e15c-6676-d6d0-9665-c4fa121ab072', '6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', '90일', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6e25f2ad-1ea3-e4a0-3007-bd51bf9a6f8b', 'c807267c-c7b2-37d7-4d5a-bf47343a71ad', '② 30일', '2022-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 제2종 분말소화약제의 주성분은 어느 것인가?', 2, 329)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b1d5634-1840-c484-814d-1cbaab08d549', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NaHCO3', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '34f6e468-12f0-9433-04f5-56b05269f68d', 'KHCO3', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b77325a-77be-dcfe-d8c7-8ab549991bfb', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NH4H2P(으', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42dbf547-9f95-13c8-766e-90b25580f544', '34f6e468-12f0-9433-04f5-56b05269f68d', '(NH2)2CO', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '② KHCO3', '2022-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce288bf1-ca88-c2d2-7151-b505723bd9c7', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전보고서 중 공정안전자료에 포함하여야 할 세부내 용에 해당하는 것은?', 2, 330)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f15efe1-b278-2275-8528-1bc64b5ca8fd', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '비상조치계획에 따른 교육계획', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b40051c-ef98-5779-acc9-4436896e2faa', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '안전운전지침서', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8a811997-e9bd-cf0b-6e84-257c0a0cbf61', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '각종건물 • 설비의 배치도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f034cdd1-b103-a26d-e91c-6f320ee7c2e6', 'ce288bf1-ca88-c2d2-7151-b505723bd9c7', '도급업체 안전관리계획', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce288bf1-ca88-c2d2-7151-b505723bd9c7', '8a811997-e9bd-cf0b-6e84-257c0a0cbf61', '③ 각종건물 • 설비의 배치도', '2022-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '11111111-1111-1111-1111-111111111104', 'mcq', '히빙(Heaving)현상 방지대책으로 틀린 것은?', 2, 331)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70a1b5f9-1f0b-6999-852b-fda8166601ee', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '소단굴착을 실시하여 소단부 흙의 중량이 바닥을 누르', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d997bac9-96dc-d081-7fc8-ee3c8c1a1d89', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체 배면의 지반을 개량하여 흙의 전단강도를', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('285e667a-cad3-d37d-a34f-bb7125891df3', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '부풀어 솟아오르는 바닥면의 토사를 제거한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e58ca86-cce5-3c3d-b7bb-83b139e06c50', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체의 근입 깊이를 깊게 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '285e667a-cad3-d37d-a34f-bb7125891df3', '③ 부풀어 솟아오르는 바닥면의 토사를 제거한다.', '2022-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2022-3 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '11111111-1111-1111-1111-111111111104', 'mcq', '달비 계에 사용하는 와이어로프의 사용금지기준으로 옳지 않은것은?', 2, 332)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d68428bc-c548-9258-a049-a07b0fae6cf9', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '이음매가 있는 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26f1058a-e790-3449-1e93-95f942492e7d', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '열과 전기 충격에 의해 손상된 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f84a81bf-4b4b-390b-ef53-0366de9f05f8', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '지름의 감소가 공칭지름의 7[%]를 초과하는 것', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47beac02-2a71-277e-1945-932399f6e942', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '47beac02-2a71-277e-1945-932399f6e942', '④ 와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', '2022-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2022-3'])
on conflict (question_id) do nothing;

-- 2021-1 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보안경 착용을 포함하는 안전보건표 지의 종류는?', 2, 333)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fbbaa34-76a8-25df-6251-745ad0f0207f', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '지시표지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a17b85-d71d-15c7-8904-e18f16c66b78', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '안내표지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba296f3-92dc-9d34-e9fe-f6c02765d570', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '금지표지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11ec2e51-d49d-f4b4-e868-66eacb98d85b', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '경고표지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '7fbbaa34-76a8-25df-6251-745ad0f0207f', '① 지시표지', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '11111111-1111-1111-1111-111111111104', 'mcq', 'Thorndike의 시행착오설에 의한 학습의 원칙이 아닌 것은?', 2, 334)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffec3be7-b4a6-e9ae-4a0b-ce5dc3b79473', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '연습의 원칙', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2d5229-67cc-3ab4-5792-959856796a34', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '효과의 원칙', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082f04ec-e750-7f0c-1fba-079720e25370', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '동일성의원칙', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd1a010c-0451-b8e8-93b1-0ddab6372490', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '준비성의원칙', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '082f04ec-e750-7f0c-1fba-079720e25370', '③ 동일성의원칙', '2021-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 재해구성비율 “1 : 29 : 300”에서 “29”에 해당 되는 사고발생비율은?', 2, 335)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01b9c2b8-5546-9e38-05b9-45e49e6660ba', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '8.8[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f8e3d2d-c32e-f169-c69b-927c5bfb077c', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '9.8[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a873040-e990-c486-d4c4-9fe2c5168b63', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '10.8[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e8d32bc9-12d4-1cf2-de0d-fd07cdb9056a', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '11.8[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '01b9c2b8-5546-9e38-05b9-45e49e6660ba', '① 8.8[%]', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건관리조직의 형태 중 라인—스태프（Line—Staff）형에 관한 설명으로 틀린 것은?', 2, 336)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29059268-1365-92e1-6bd6-161b84de5ba3', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '조직원 전원을 자율적으로 안전 활동에 참여시킬 수 있다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35db8bf7-2c56-0300-416d-242871044edc', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '라인의 관리감독자에게도 안전에 관한 책임과 권한이 부', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71b6cc76-a03c-9088-8a13-268d0819f05f', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f13f5a7e-4a68-aa66-0032-ad7b374d0327', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '안전 활동과 생산업무가 유리될 우려가 없기 때문에 균형', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '71b6cc76-a03c-9088-8a13-268d0819f05f', '③ 중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', '2021-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법 령」상 안전인증대상기계 등에 포함되는 기 계, 설비, 방호장치에 해당하지 않는 것은?', 2, 337)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01d60be1-ee84-326f-91e7-69a4cca4dcba', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '롤러기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f5da111-f6d4-a780-66d2-2ca3947d2c78', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '크레인', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a681010-7bab-c43f-e385-f94a95478ab1', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '동력식 수동대패용 칼날 접촉 방지장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72ccb8b3-0d96-0635-cb6a-71787fffae82', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '방폭구조（防爆構造） 전기기계 •기구 및 부품', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '9a681010-7bab-c43f-e385-f94a95478ab1', '③ 동력식 수동대패용 칼날 접촉 방지장치', '2021-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러에 설치해야 하는 안전장치로 거리가 가장 먼 것은?', 2, 338)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c35e47c0-e546-2adf-2451-5fb7fc1f8442', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '해지장치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff9ee67d-338d-55a5-a160-fb00310d8836', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력방출장치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('405d7b3f-ae4e-0db6-a5cf-efbfe2953190', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력제한스위치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df276102-62d6-c165-a72d-e0f3c8aab604', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '고저수위 조절장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', 'c35e47c0-e546-2adf-2451-5fb7fc1f8442', '① 해지장치', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 고속회전체의 회전시험을 하는 경우 미리 회전축의 재질 및 형상 등에 상응하는 종류의 비파괴 검사를 해서 결함 유무를 확인해야 한다. 이때 검사대상이 되는 고속회전체의 기준은?', 2, 339)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13c890d7-d5bf-734c-d955-17b33b9bfc0c', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94d55ac-84a2-baaf-84a4-2d4f498c10ac', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20790b2e-3a24-87c1-5d86-e24d5e062e3f', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 10이m/', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('101e097d-ab1c-ae50-907a-99aa61872eaf', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '101e097d-ab1c-ae50-907a-99aa61872eaf', '④ 회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', '2021-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스의 손쳐내기식 방호장치 설치기준으로 틀린 것은?', 2, 340)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dbd8161-a2f9-e4f2-9c38-94f967d40b99', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '방호판의 폭이 금형 폭의 1/2 이상이어야 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ee06d29-aecd-b442-dc53-0061e5984501', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('783119e5-8a62-cc9b-005b-7bb2151598d6', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '손쳐내기봉의 행정(Stroke) 길이를 금형의 높이에 따', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca023fc3-a9c1-9746-6f89-019ada1b257e', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 하행정거리의 3/4 위치에서 손을 완전히 밀', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '1ee06d29-aecd-b442-dc53-0061e5984501', '② 슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', '2021-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 롤러기의 방호장치 설치 시 유의해 야 할 사항으로 가장 적절하지 않은 것은?', 2, 341)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8205f28-1e94-f2eb-6e4b-4b0211e097ff', '9cabd798-3694-f712-101c-9d89e037a36e', '손으로 조작하는 급정지장치의 조작부는 롤러기의 전', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab4e119c-e6b5-a898-862b-807e471470b2', '9cabd798-3694-f712-101c-9d89e037a36e', '앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('236af06e-647e-f7c0-061c-f898a3d34ff1', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 사용 중 늘어져', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a372beb5-b248-fc85-12cb-7f7ffeab37de', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', 'ab4e119c-e6b5-a898-862b-807e471470b2', '② 앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', '2021-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」제319조에 의한 정전전로 에서의 정전작업을 마친 후 전원을 공급하는 경우에 사업주 가 작업에 종사하는 근로자 및 전기기기와 접촉할 우려가 있는 근로자에게 감전의 위험이 없도록 준수해야 할 사항이 아닌 것은?', 2, 342)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21b76957-e720-c246-961e-730142b442b8', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '단락 접지기구 및 작업기구를 제거하고 전기기기 등이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a1d4751-5362-e86b-ec9b-269cb81d154c', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 작업자가 작업이 완료된 전기기기에서 떨어져 있', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8643925f-f646-c4af-76e9-a87af880da6f', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '잠금장치와 꼬리표를 근로자가 직접 설치한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a9bc79b-f673-e79e-bd17-141c510f7ca0', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 이상 유무를 확인한 후 전기기 기 등의 전원을 투', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '8643925f-f646-c4af-76e9-a87af880da6f', '③ 잠금장치와 꼬리표를 근로자가 직접 설치한다.', '2021-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 500[Q]으로 하는 경우 심실세동을 일 으킬 수 있는 에너지는 약 얼마인가?(단, 심실세동전류 /=쯔[mA]로 한다.)', 2, 343)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c88ff628-3ede-2778-3882-08fedc1eedb9', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[J]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204595f7-a32c-8ce3-cba5-5b197bd78225', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[J]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('abd3d45a-8fc9-d220-80b2-ce3dda023721', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[mJ]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7bcdde-f927-a35f-7513-69a117db26ca', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[mJ]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', 'c88ff628-3ede-2778-3882-08fedc1eedb9', '① 13.6[J]', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 과전류차단기로 저압전로에 사 용하는 범용 퓨즈（gG）의 용단전류는 정격전류의 몇 배인 가?（단, 정격전류가 4[A] 이하인 경우이다.）', 2, 344)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('185e5a34-bf56-753f-1f28-ff9cb7b166c0', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.5 배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('753b7236-8dd6-0965-a4b8-33b8e33dc037', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.6 배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('838ce4f2-6f87-a9d7-9879-189173952468', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.9 배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('853542f7-044d-6f17-63d2-1265335e1878', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '2.1 배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '853542f7-044d-6f17-63d2-1265335e1878', '④ 2.1 배', '2021-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기가 대전된 물체를 제전시키려고 한다. 다음 중 대전 된 물체의 절연저항이 증가되어 제전의 효과를 감소시키는 것은?', 2, 345)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8409726-b447-3da4-e92d-6c713a5aa469', 'ac24a843-02d5-6196-baa8-88b952085d2b', '접지한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b112d95e-2849-d286-2aa2-944bed0071c6', 'ac24a843-02d5-6196-baa8-88b952085d2b', '건조시킨다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad3c4341-8773-d317-f34c-a6d6afc8115d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '도전성 재료를 첨가한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0476061d-3509-a3e8-c117-0c5f8e51577d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '주위를 가습한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', 'b112d95e-2849-d286-2aa2-944bed0071c6', '② 건조시킨다.', '2021-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #95
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물을「산업안전보건법령」에서 정한 기준량 이상으로 제조하거나 취급하는 설비로서 특수화학설비에 해당되는 것은?', 2, 346)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('321caffc-8c8b-996d-f326-bed112e6a10c', 'df9779b1-709f-381c-a402-cba4859a0769', '가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da833624-d1bd-d5f3-c024-7500b509ee6f', 'df9779b1-709f-381c-a402-cba4859a0769', '상온에서 게이지 압력으로 200[kPa]의 압력으로 운전', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90bab20b-3ccb-9a5b-d285-f502cb7b8fb7', 'df9779b1-709f-381c-a402-cba4859a0769', '대기압 하에서 30이。C]로 운전되는 설비', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('995c2b06-6642-d716-912a-01e6ea6e527d', 'df9779b1-709f-381c-a402-cba4859a0769', '흡열반응이 행하여지는 반응설비', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '321caffc-8c8b-996d-f326-bed112e6a10c', '① 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 내용에 해당하는 폭발위험장소 는? 20종 장소 밖으로서 분진운 형태의 가연성 분진이 폭발농도 를 형성할 정도의 충분한 양이 정상작동 중에 존재할 수 있는 장소를 말한다.', 2, 347)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3768261f-6c13-e2ac-3504-a9ab094083aa', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '21종 장소', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53dace85-5b0b-1c04-3c09-4f09fd4d28f0', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '22종 장소', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38355390-dcfe-fdf4-abf0-627d375092b4', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '0종 장소', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da7c31e9-3d59-35aa-8679-c0e10a5c0c4f', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '1종 장소', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '3768261f-6c13-e2ac-3504-a9ab094083aa', '① 21종 장소', '2021-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인 등 건설장비의 가공전선로 접근 시 안전대책으로 옳 지 않은 것은?', 2, 348)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0399df4f-70e2-edeb-c133-a9cb914c4cbd', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '안전 이격거 리를 유지하고 작업한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비를 가공전선로 밑에 보관한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e438cb70-05ed-53ff-a2df-919478bce975', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비의 조립, 준비 시부터 가공전선로에 대한 감전 방', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3659fe62-984b-879e-c958-d901608f13a9', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비 사용 현장의 장애물, 위험물 등을 점검 후 작업계', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', 'efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '② 장비를 가공전선로 밑에 보관한다.', '2021-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-1 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', '11111111-1111-1111-1111-111111111104', 'mcq', '유해 위험방지계획서를 고용노동부 장관에게 제출하고 심사 를 받아야 하는 대상 건설공사 기준으로 옳지 않은 것은?', 2, 349)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6944bfe0-095c-ecac-94e6-19aea1c29aea', '7aed81b7-edc8-785c-17f9-d8a52b390080', '최대 지간길이가 5이m] 이상인 다리의 건설 등 공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '7aed81b7-edc8-785c-17f9-d8a52b390080', '지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c8fcf36-3eed-9a90-6969-dc718ba7697f', '7aed81b7-edc8-785c-17f9-d8a52b390080', '깊이 10[m] 이상인 굴착공사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('478d2a78-b5b1-7b80-a0b3-d0f7caa5239b', '7aed81b7-edc8-785c-17f9-d8a52b390080', '다목적댐, 발전용댐, 저수용량 2천만 톤 이상의 용수', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', 'f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '② 지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', '2021-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-1'])
on conflict (question_id) do nothing;

-- 2021-2 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지의 기본모형(형태)이 다른 것은?', 2, 350)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b2b483-4d55-607e-6276-2b7fa793ffdb', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '고압전기 경고', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('954a5dd0-d86b-7762-b232-8e62bb3cbb71', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '방사성물질 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec1570b4-723b-43a6-2888-fe30569ce995', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '폭발성물질 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61c9742-4437-6d63-643e-ffe0fa7d241d', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '매달린물체 경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', 'ec1570b4-723b-43a6-2888-fe30569ce995', '③ 폭발성물질 경고', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보호구 안전인증대상 방독마스크의 유기화합물용 정화통 외부 측면 표시색으로 옳은 것은?', 2, 351)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fcd647cb-c37d-6970-3a3a-e599fd216730', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '갈색', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d9269c5-99f1-ae50-bd76-c15f9f5aa29e', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '녹색', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7baa671-26a2-108b-4524-80c704e36878', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '회색', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69503672-9e94-c9b6-d629-943059f23dbd', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '노랑색', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', 'fcd647cb-c37d-6970-3a3a-e599fd216730', '① 갈색', '2021-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '11111111-1111-1111-1111-111111111104', 'mcq', '재해원인 분석기법의 하나인 특성요인도의 작성 방법에 대 한 설명으로 틀린 것은?', 2, 352)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b8936dd-997d-cb9a-e050-affd88d15568', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '큰뼈는 특성이 일어나는 요인이라고 생각되는 것을 크', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('716dc2ae-b409-86a0-4ba2-43423da325ad', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b629e800-7d63-1b1f-48f4-304f0ada83ca', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '특성의 결정은 무엇에 대한 특성요인도를 작성할 것인', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6021e41-ea99-fb91-b770-b7c20c9a68d4', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '중뼈는 특성이 일어나는 큰뼈의 요인마다 다시 미세하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '716dc2ae-b409-86a0-4ba2-43423da325ad', '② 등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #24
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', '11111111-1111-1111-1111-111111111104', 'mcq', '감각저장으로부터 정보를 작업기억으로 전달하기 위한 코 드화 분류에 해당되지 않는 것은?', 2, 353)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd5a6257-febe-7388-2fb8-30f67d413d41', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '시각코드', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '촉각코드', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3764b7f7-bda6-3f6e-1508-c0c0ec8c5726', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '음성코드', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd917ab6-bf72-34aa-3685-fe0257f13b4a', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '의미코드', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', 'ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', '② 촉각코드', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등 금형을 부착 • 해체 또는 조정하는 작업을 할 때, 슬라이드가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위해 사용 해야 하는 것은?(단, 해당 작업에 종사하는 근로자의 신체 가 위험한계 내에 있는 경우이다.)', 2, 354)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('721ec1c8-38d3-e79f-da7a-7a2323ba8fa5', '18a79c5a-b660-6995-92a8-b35a81882906', '방진구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ff29067-51df-ddc1-9977-0705383cfb56', '18a79c5a-b660-6995-92a8-b35a81882906', '안전블록', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9fe5ec4-bc6e-1354-ebfa-dea891e7ee77', '18a79c5a-b660-6995-92a8-b35a81882906', '시건장치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ab5e6dc-c556-c3d0-da62-2525dc6abe90', '18a79c5a-b660-6995-92a8-b35a81882906', '날접촉예방장치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '8ff29067-51df-ddc1-9977-0705383cfb56', '② 안전블록', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 드릴작업의 안전사항으로 틀린 것은?', 2, 355)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e73b3879-e370-4ae0-d202-a806660e6617', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '옷소매가 길거나 찢어진 옷은 입지 않는다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1ed676b-6f15-5f5b-6c62-84f56366d25e', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '회전하는 드릴에 걸레 등을 가까이 하지 않는다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fda8c0f-2df8-a4f3-f831-6b7533ac5186', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '스핀들에서 드릴을 뽑아낼 때에는 드릴 아래에 손을 내', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '② 작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16ce7709-481c-200a-6d20-df790948544b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기의 과부하방지장치에서 요구 하는 일반적인 성능기준으로 가장 적절하지 않은 것은?', 2, 356)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('255b34d7-426d-bc5c-5ce9-fa3f706dae03', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치 작동 시 경보음과 경보램프가 작동되', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a92382c-bd21-c7d8-7f4d-c09e124906d1', '16ce7709-481c-200a-6d20-df790948544b', '외함의 전선 접촉부분은 고무 등으로 밀폐되어 물과 먼', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6d53d-1272-166a-4dab-9d7da8a5c59e', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치와 타 방호장치는 기능에 서로 장애를', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '16ce7709-481c-200a-6d20-df790948544b', '방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16ce7709-481c-200a-6d20-df790948544b', '9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '④ 방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', '2021-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇의 작동범위 내에서 그 로봇에 관하여 교시 등 작업을 행하는 때 작업시작 전 점검사항으 로 옳은 것은?(단, 로봇의 동력원을 차단하고 행하는 것은 제외)', 2, 357)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b33858-a38a-63e6-eb4c-451d20996b70', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '과부하방지장치의 이상 유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38839e3e-881e-0cb4-0b23-3b9c97542875', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '압력제한스위치의 이상 유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf2aafc-6765-a83e-eff7-2db4be4569fb', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '외부 전선의 피복 또는 외장의 손상 유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61a98a5-37a3-2fdf-36c4-313cff79e91e', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '권과방지장치의 이상유무', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', 'ebf2aafc-6765-a83e-eff7-2db4be4569fb', '③ 외부 전선의 피복 또는 외장의 손상 유무', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차 작업시작 전 점검사항으로 거리가 가장 먼 것은?', 2, 358)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b5ee9f3-4a1d-69d5-e38a-9fafaeed5502', '52083862-c8df-e49e-0174-57c32e717f2b', '제동장치 및 조종장치 기능의 이상 유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43d81af1-51b4-f454-86fc-2378448cb05b', '52083862-c8df-e49e-0174-57c32e717f2b', '압력방출장치의 작동 이상 유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('999a88c8-2e3f-d366-b9fd-52fdb42c9657', '52083862-c8df-e49e-0174-57c32e717f2b', '바퀴의 이상유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c798629-9a1c-4205-5432-15610483fe45', '52083862-c8df-e49e-0174-57c32e717f2b', '전조등• 후미등• 방향지시기 및 경보장치 기능의 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '43d81af1-51b4-f454-86fc-2378448cb05b', '② 압력방출장치의 작동 이상 유무', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '11111111-1111-1111-1111-111111111104', 'mcq', '지락이 생긴 경우 접촉상태에 따라 접촉전압을 제한할 필요 가 있다. 인체의 접촉상태에 따른 허용접촉전압을 나타낸 것으로 다음 중 옳지 않은 것은?', 2, 359)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ef41d37-7cdf-a658-d0f7-533e432dddf5', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제1종: 2.5［V］ 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2dbfa5a7-2658-c325-8063-31c35174d7fa', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제2종: 25［V］ 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49916f43-52aa-52b9-2fde-134b6d2e5ff7', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제3종: 35［V］ 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d87e516e-cb66-f771-4119-378835ebb974', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제4종: 제한 없음', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '49916f43-52aa-52b9-2fde-134b6d2e5ff7', '③ 제3종: 35［V］ 이하', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 공정안전보고서에 포함해야 할 세부내용 중 공정안전자료에 해당하지 않는 것은?', 2, 360)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('812c7bac-71e8-2c94-7b24-0a1f0c635bb3', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '안전운전지침서', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f094eb1-bfed-4a8c-a4d0-31d9fc7fb68e', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '각종건물 •설비의 배치도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9c6022e-605c-fb9e-4657-e689d9b6b17c', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '유해하거나 위험한 설비의 목록 및 사양', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9f75f3b-d3dd-fa58-7853-0c9947537c38', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '위험설비의 안전설계 - 제작 및 설치관련 지침서', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '812c7bac-71e8-2c94-7b24-0a1f0c635bb3', '① 안전운전지침서', '2021-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비 사이의 안전거리는 설비의 바깥면부 터 얼마 이상이 되어야 하는가?', 2, 361)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6031f72-f327-cac6-08f3-96d6d652c319', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '5[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '10[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('533ba44b-af15-2283-c9d4-ae7ef24a6ce1', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '15[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e192d43-2198-1869-5b74-0bb67aa06724', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '20fm]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '② 10[m]', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '11111111-1111-1111-1111-111111111104', 'mcq', '불연성이지만 다른 물질의 연소를 돕는 산화성 액체 물질에 해당하는 것은?', 2, 362)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d4f6dc4-7e12-27d4-8372-177aec1c702c', '90073b77-7122-dadd-4e4e-b1f981d75deb', '하이드라진', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93547554-03f2-75ca-6d7d-70692117df33', '90073b77-7122-dadd-4e4e-b1f981d75deb', '과염소산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b1bf29-6f37-0cdc-45e1-fdc4c5717149', '90073b77-7122-dadd-4e4e-b1f981d75deb', '벤젠', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5404b53-7278-e940-0cd4-8dacb8513690', '90073b77-7122-dadd-4e4e-b1f981d75deb', '암모니아', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '93547554-03f2-75ca-6d7d-70692117df33', '② 과염소산', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬. 칼륨, 나트륨. 황. 황린, 황화인. 적린', 2, 363)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac37ff72-0a28-586a-deaf-b6ea7584f596', '682e4864-eb43-84b9-74c7-1457a812014c', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3efcf50f-0b92-44ea-f37c-42fec1fe0727', '682e4864-eb43-84b9-74c7-1457a812014c', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073355e6-0e05-6007-7917-4e2387a9aae2', '682e4864-eb43-84b9-74c7-1457a812014c', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b3f3553-bbc6-d5f6-187f-56af7fc51b0b', '682e4864-eb43-84b9-74c7-1457a812014c', '급성 독성 물질', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '073355e6-0e05-6007-7917-4e2387a9aae2', '③ 물반응성 물질 및 인화성 고체', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '11111111-1111-1111-1111-111111111104', 'mcq', '제1종 분말소화약제의 주성분에 해당하는 것은?', 2, 364)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69763a4e-5ded-2b93-32c8-b3310323c5ee', '03cede15-f4c4-40ec-7772-cab895d6cf20', '사염화탄소', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1096d646-bb8e-976c-7051-1ccdc9e1e131', '03cede15-f4c4-40ec-7772-cab895d6cf20', '브롬화메탄', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('272a8f3a-c213-4fa9-2598-9a0daeb14543', '03cede15-f4c4-40ec-7772-cab895d6cf20', '수산화암모늄', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '03cede15-f4c4-40ec-7772-cab895d6cf20', '탄산수소나트륨', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '④ 탄산수소나트륨', '2021-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사도급인은 건설공사 중에 가설구조물의 붕괴 등 산 업재해가 발생할 위험이 있다고 판단되면 건축 - 토목 분야 의 전문가의 의견을 들어 건설공사 발주자에게 해당 건설공 사의 설계변경을 요청할 수 있는데, 이러한 가설구조물의 기준으로 옳지 않은 것은?', 2, 365)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '882a9cf5-418c-5e18-4c18-67e35843be90', '높이 20[m] 이상인 비계', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('434acb1d-8135-f18b-59ae-87184873d8a4', '882a9cf5-418c-5e18-4c18-67e35843be90', '작업발판 일체형 거푸집 또는 높이 5[m] 이상인 거푸', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7f5a0d-9f7b-1297-2947-337664491be9', '882a9cf5-418c-5e18-4c18-67e35843be90', '터널의 지보공 또는 높이 2[m] 이상인 흙막이 지보공', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d153137-55f0-c1eb-d045-faf20723335a', '882a9cf5-418c-5e18-4c18-67e35843be90', '동력을 이용하여 움직이는 가설구조물', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '① 높이 20[m] 이상인 비계', '2021-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #103
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '11111111-1111-1111-1111-111111111104', 'mcq', '콘크리트 타설 시 안전수칙으로 옳지 않은 것은?', 2, 366)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df0452ca-efa7-be63-82a3-0ccf9aa0d529', '48946813-c13f-98e6-6992-65deaf49932b', '타설순서는 계획에 의하여 실시하여야 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9e1a1c-7f79-8391-6ec3-feef8131a495', '48946813-c13f-98e6-6992-65deaf49932b', '진동기는 최대한 많이 사용하여야 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec73d395-d54e-3b18-a5d2-9798efccecb0', '48946813-c13f-98e6-6992-65deaf49932b', '콘크리트를 치는 도중에는 거푸집, 지보공 등의 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9825fd8a-e376-df4e-1e24-8811e1fa29a2', '48946813-c13f-98e6-6992-65deaf49932b', '손수레로 콘크리트를 운반할 때에는 손수레를 타설하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '1c9e1a1c-7f79-8391-6ec3-feef8131a495', '② 진동기는 최대한 많이 사용하여야 한다.', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 건설공사 중 다리 건설공사의 경우 유해위험방지계획서를 제출하여야 하는 기준으로 옳 은 것은?', 2, 367)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('983a83d5-bed8-858e-5b33-94a004a4a8d1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 40[m] 이상인 다리의 건설등 공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8925e944-c2ad-c1b8-8df8-557508591fcf', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 50[m] 이상인 다리의 건설등 공사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa06d513-86db-470d-289f-01bf4b822308', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 60[m] 이상인 다리의 건설등 공사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8af2c81-f58d-9307-21ca-4646213036f1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 7O[m] 이상인 다리의 건설등 공사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '8925e944-c2ad-c1b8-8df8-557508591fcf', '② 최대 지간길이가 50[m] 이상인 다리의 건설등 공사', '2021-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 준수하여야 할 사항 으로 옳지 않은 것은?', 2, 368)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('523d723f-c9f7-dce3-2419-9365c5858d55', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '비계기둥의 밑둥에는 밑받침철물을 사용할 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1173e542-7f8c-c2db-34bb-47442869510e', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40122837-07e1-8f3e-5402-ac618acd9995', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '길이가 띠장 방향으로 4[m] 이하이고 높이가 1이m]를', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', 'e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '③ 주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 양중기의 종류에 해당하지 않 는것은?', 2, 369)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed974c1-70a6-b25e-c025-466e6626b38c', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '고소작업차', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('674f5072-ef75-e957-86cc-613ed25120b3', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '이동식 크레인', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1e84eb4-3a9f-04a0-e5ab-314aa74929ab', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '승강기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df292d10-9827-75d7-502b-eff00b12cbbe', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '리프트(Lift)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '2ed974c1-70a6-b25e-c025-466e6626b38c', '① 고소작업차', '2021-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '11111111-1111-1111-1111-111111111104', 'mcq', '터널공사의 전기발파작업에 관한 설명으로 옳지 않은 것 은?', 2, 370)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b0fac8f-a300-c745-96b1-8af805df8874', 'd109d14c-531c-2365-60b1-8c3f16868e35', '전선은 점화하기 전에 화약류를 충진한 장소로부터', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb2e5dc9-3f0d-208a-4592-d0fea15e84a4', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 충분한 허용량을 갖는 발파기를 사용하고 규정', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('033ed884-59a7-d3e4-aab1-94cc98be9aef', 'd109d14c-531c-2365-60b1-8c3f16868e35', '발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96f19aed-ee3a-ff18-0803-b317fa7f5c26', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 선임된 발파책임자가 행하고 발파기의 핸들을', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '033ed884-59a7-d3e4-aab1-94cc98be9aef', '③ 발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', '2021-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-2'])
on conflict (question_id) do nothing;

-- 2021-3 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4단계의 진행 순서를 바르게 나열한 것은?', 2, 371)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee998e12-99e3-444b-9528-46f5b586c6fc', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 一 현상파악 - 대책수립 一 본질추구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('492f9e0c-4be6-cf5c-04be-64cd79b67915', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 _ 현상파악 一 본질추구 一 대책수립', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 대책수립 一 목표설정', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0421cc7-b801-f7ac-62ee-22df622895fd', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 목표설정 - 대책수립', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', 'a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '③ 현상파악 一 본질추구 一 대책수립 一 목표설정', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '11111111-1111-1111-1111-111111111104', 'mcq', '상황성 누발자의 재해유발원인이 아닌 것은?', 2, 372)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ed3128e-bfc5-2b7e-779b-c118ccc8440e', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '심신의근심', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f5f3923-8233-22fe-7bd0-81735acdac85', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '작업의어려움', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ba6f8-7c59-f488-1593-10e53cde4545', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '도덕성의결여', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca03f279-2212-1b4e-9df6-a27ea2599402', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '기계설비의결함', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '4a0ba6f8-7c59-f488-1593-10e53cde4545', '③ 도덕성의결여', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업장에서 산업재해 발생 시 사업 주가 기록 • 보존하여야 하는 사항을 모두 고른 것은?（단, 산업재해조사표와 요양신청서의 사본은 보존하지 않았다. ） @ 사업장의 개요 및 근로자의 인적사항 © 재해발생의 일시 및 장소 © 재해발생의 원인 및 과정 @ 재해 재발방지 계획', 2, 373)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74b0299e-1874-cc8d-442a-0b2260e408cb', '22c0b839-5ff8-41ff-e068-0871076e8349', '@, @', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930a4b2c-7d35-41c3-767d-c64bae6f4345', '22c0b839-5ff8-41ff-e068-0871076e8349', '©, ©, @', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('842cfac1-5d10-ca08-67d2-97eaff9c0e75', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('734d82b3-5d40-40b4-6220-9c74fe4496ff', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©, ®', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '734d82b3-5d40-40b4-6220-9c74fe4496ff', '④ (3, ©, ©, ®', '2021-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '11111111-1111-1111-1111-111111111104', 'mcq', '안전점검표（체크리스트） 항목 작성 시 유의사항으로 틀린 것은?', 2, 374)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c2b8594-106c-64f8-bd33-4cfe693f752b', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '정기적으로 검토하여 설비나 작업방법이 타당성 있게', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b0eaf76-d333-83ec-baf5-1b4f974e83e9', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '사업장에 적합한 독자적 내용을 가지고 작성할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb4142b5-7142-41a1-29c9-510157433703', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0d7900-73c7-7184-0999-d1a272d08235', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '점검항목을 이해하기 쉽게 구체적으로 표현할 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', 'fb4142b5-7142-41a1-29c9-510157433703', '③ 위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육에 있어서 동기부여방법으로 가장 거리가 먼 것 은?', 2, 375)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6db7ce54-7df3-596a-c400-ea614e0da9e3', '6ffdac53-54a3-a691-82e3-1b57943deed9', '책임감을 느끼게 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '6ffdac53-54a3-a691-82e3-1b57943deed9', '관리감독을 철저히 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22d47331-4120-3f47-5c96-0095bbbc0b85', '6ffdac53-54a3-a691-82e3-1b57943deed9', '자기 보존본능을 자극한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f6877a2-b0df-a7b5-5d66-ea935855a393', '6ffdac53-54a3-a691-82e3-1b57943deed9', '물질적 이해관계에 관심을 두도록 한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '② 관리감독을 철저히 한다.', '2021-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', '11111111-1111-1111-1111-111111111104', 'mcq', '일반적으로 인체측정치의 최대 집단치를 기준으로 설계하는 것은?', 2, 376)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b453459a-1d6a-3582-90b7-daf85018aa63', '0897c1a6-5d62-a382-f0a6-655c381c192e', '선반의 높이', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27d1af94-99f1-2ca4-5d9b-2c6db09f79e6', '0897c1a6-5d62-a382-f0a6-655c381c192e', '공구의 크기', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb801195-de16-d370-4d30-bea2b6c08f32', '0897c1a6-5d62-a382-f0a6-655c381c192e', '출입문의 크기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe44fcf2-0778-4580-4aaf-d7e719f6f381', '0897c1a6-5d62-a382-f0a6-655c381c192e', '안내 데스크의 높이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', 'fb801195-de16-d370-4d30-bea2b6c08f32', '③ 출입문의 크기', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차에서 통상적으로 갖추고 있어 야 하나, 마스트의 후방에서 화물이 낙하함으로써 근로자에 게 위험을 미칠 우려가 없는 때에는 반드시 갖추지 않아도 되는 것은?', 2, 377)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76bc6874-32bf-5abf-754a-865753147fd1', '66c5d13a-81b6-6885-9770-3f44af91db11', '전조등', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78a83d45-0e48-6e90-4988-6e78b3723585', '66c5d13a-81b6-6885-9770-3f44af91db11', '헤드가드', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ab2726-682c-8389-ef4b-0157fbd6daf1', '66c5d13a-81b6-6885-9770-3f44af91db11', '백레스트', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84042037-476b-5d88-918f-a14a89cf242e', '66c5d13a-81b6-6885-9770-3f44af91db11', '포크', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('66c5d13a-81b6-6885-9770-3f44af91db11', '19ab2726-682c-8389-ef4b-0157fbd6daf1', '③ 백레스트', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #63
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', '11111111-1111-1111-1111-111111111104', 'mcq', ',300/220[V], 2O[kVA]인 3상 변압기로부터 공급받고 있 는 저압 전선로의 절연 부분의 전선과 대지 간의 절연저항 의 최솟값은 약 몇 [Q]인가?（단, 변압기의 저압 측 중성점 에 접지가 되어 있다.）', 2, 378)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4a5906e-9658-5ce5-22c0-ceb77d4c790d', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '1,240', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa9d54f6-f869-a8bd-fd8f-2d64590660e6', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '2,794', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbc9ee85-204e-0597-69be-961de50ee1fb', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '4,840', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df2142e5-36d1-7364-0db5-1b6959e049c3', 'de93ab98-c294-b6dd-f5eb-ae789051ec13', '8,383', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de93ab98-c294-b6dd-f5eb-ae789051ec13', 'df2142e5-36d1-7364-0db5-1b6959e049c3', '④ 8,383', '2021-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '11111111-1111-1111-1111-111111111104', 'mcq', '욕조나 샤워시설이 있는 욕실 또는 화장실에 콘센트가 시설 되어 있다. 해당 전로에 설치된 누전차단기의 정격감도전류 와동작시간은?', 2, 379)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25d3f7bf-0eda-48fa-67a4-fc7373dffec1', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하, 동작시간 0.01 초 이하', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d183fbe5-ef0d-d704-e06f-1ff72081a5f0', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80d6179c-e177-3e71-1fe1-6a65315aa42c', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정격감도전류 30[mA] 이하, 동작시간 0.이초 이하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('658962c0-1608-3f31-b113-f351fa6d57aa', 'e1f0b3cb-1e1a-0544-eae0-3385e762d77b', '정 격감도전류 30[mA] 이하, 동작시간 0.03초 이하', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e1f0b3cb-1e1a-0544-eae0-3385e762d77b', 'd183fbe5-ef0d-d704-e06f-1ff72081a5f0', '② 정격감도전류 15[mA] 이하. 동작시간 0.03초 이하', '2021-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', '11111111-1111-1111-1111-111111111104', 'mcq', '이kW], 60[Hz] 3상 유도전동기가 380[V] 전원에 접속된 경우 흐르는 전류[A]는 약 얼마인가?（단, 역률은 80[%]이 다.）', 2, 380)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4131206-1b6f-816d-962f-9829384c172a', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '82.24', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2fd9e9e-4544-2479-a2c1-39d38b83e297', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '94.96', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59be7530-8213-2c2e-772b-c64cc1b2aaa8', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '116.30', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec397eba-c300-ad68-03eb-e8fccd4e437d', 'ce5101bf-e79d-66c0-ad22-d76e17781f71', '164.47', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce5101bf-e79d-66c0-ad22-d76e17781f71', 'c2fd9e9e-4544-2479-a2c1-39d38b83e297', '② 94.96', '2021-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '11111111-1111-1111-1111-111111111104', 'mcq', '접지 목적에 따른 분류에서 병원설비의 의료용 전기전자 (M • E)기기와 모든 금속부분 또는 도전바닥에도 접지하여 전위를 동일하게 하기 위한 접지를 무엇이라 하는가?', 2, 381)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a61df74-5410-e6dc-22b5-b886ef198e0f', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '계통접지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '등전위 접지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73fe1f92-f1b7-9514-1918-f23a4567ae50', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '노이즈방지용 접지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1df2b1e4-09f4-bed9-20b0-b0ce64b580ee', '92ee4357-ad1b-1874-caed-9fe88e0ab1e6', '정전기 장해 방지 이용 접지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92ee4357-ad1b-1874-caed-9fe88e0ab1e6', 'eb82744b-9473-bd96-a6a0-3d1bbf0d7e1d', '② 등전위 접지', '2021-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #72
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순서 와 투입순서가 안전수칙에 가장 적합한 것은? DS O.C.B DS 전원 ----사、丄O--------1~O o|--------C斗‘丄O 부하 0 © @', 2, 382)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ba01a4-3ca7-8677-3d05-be4fc553bfc2', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: ®—*® — @, 투입:® … ® — @', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2f6141b-76dc-cfbb-5c34-0745d6006156', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: Q> —（타）一®，투입:© — @ — @', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2aca0b1-243a-f488-02f6-edd48e465a3f', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: @ —（9）— ®, 투입:©） — ® — ©', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', 'de7f6bf9-8419-818a-8669-9f7aed100b2e', '차단: © — © — @, 투입:©—-® —（9）', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de7f6bf9-8419-818a-8669-9f7aed100b2e', 'dbb3a0e8-234c-7f89-2f9e-1b75cb00bf02', '④ 차단: © — © — @, 투입:©—-® —（9）', '2021-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기 화재폭발 원인으로 인체대전에 대한 예방대책으로 옳지 않은 것은?', 2, 383)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aac71c7f-a595-4039-090a-6cc9e603b283', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', 'Wrist Strap을 사용하여 접지선과 연결한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd353f2-5a51-ae21-811c-07621008dbd0', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 제를 넣은 제전복을 착용한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d16d3df3-c5a5-d6e2-ac41-1f4969edecdd', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '대전방지 성능이 있는 안전화를 착용한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5979bac6-bb51-ba3f-a19b-53468ec1b346', 'f3bf49e7-9199-10fe-1c57-961d9465bdb7', '바닥 재료는 고유저항이 큰 물질을 사용한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3bf49e7-9199-10fe-1c57-961d9465bdb7', '5979bac6-bb51-ba3f-a19b-53468ec1b346', '④ 바닥 재료는 고유저항이 큰 물질을 사용한다.', '2021-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', '11111111-1111-1111-1111-111111111104', 'mcq', '처음 온도가 20[℃]인 공기를 절대압력 1 기압에서 3기압으 로 단열압축하면 최종온도는 약 몇 [℃]인가?（단, 공기의 비열비는 1.4 이다.）', 2, 384)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('366bd292-65d1-543f-3426-118f415cfb6d', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '68[幻]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('904d32db-09b8-1d01-d007-715b2b3b8b90', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '75[t]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be505dbd-cf65-346b-7bd9-2f113360fded', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '128[t]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55c05667-db02-0ca8-4bf4-22fe27098db4', 'ccc77570-25db-44a2-f19d-69710d2e6a97', '164[℃]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ccc77570-25db-44a2-f19d-69710d2e6a97', 'be505dbd-cf65-346b-7bd9-2f113360fded', '③ 128[t]', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #82
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '11111111-1111-1111-1111-111111111104', 'mcq', '물질의 누출방지용으로써 접합면을 상호 밀착시키기 위하 여 사용하는 것은?', 2, 385)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4db3d846-a9df-cba2-8ef4-00475120c809', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '개스킷', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e767d71c-a43e-a367-252b-daec8e30495e', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '체크밸브', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af348f41-8c8a-f9be-0795-a69d0a06e3db', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '플러그', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('777d23a2-e40a-28cd-1cf1-d2658e072950', 'e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '콕크', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2d27df1-d1d1-ad36-47b0-4f2a0c6010f7', '4db3d846-a9df-cba2-8ef4-00475120c809', '① 개스킷', '2021-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', '11111111-1111-1111-1111-111111111104', 'mcq', '가스누출감지경보기 설치에 관한 기술상의 지침으로 틀린 것은?', 2, 386)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2fcdcb0-85ac-4f69-75e0-70fd43075a18', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '암모니아를 제외한 가연성 가스 누출감지경보기는 방', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6480aeb-3c9a-4703-8290-07171edd5b5c', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '독성 가스누출감지경보기는 해당 독성가스 허용농도의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88d84e88-97a7-131b-ae98-f43aeefc00c6', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '하나의 감지대상가스가 가연성이면서 독성인 경우에는', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e4c84e6-55c1-fc07-9e59-e44cf97d3ab9', 'd3897104-8b79-d16a-37d4-feccd4cbb7e5', '건축물 안에 설치되는 경우, 감지대상가스의 비중이 공', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3897104-8b79-d16a-37d4-feccd4cbb7e5', 'e6480aeb-3c9a-4703-8290-07171edd5b5c', '② 독성 가스누출감지경보기는 해당 독성가스 허용농도의', '2021-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '11111111-1111-1111-1111-111111111104', 'mcq', '유한사면에서 원형활동면에 의해 발생하는 일반적인 사면 파괴의 종류에 해당하지 않는 것은?', 2, 387)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffc51923-85f8-d238-2bc9-7862072ffc02', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 내 파괴 （Slope Failure）', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64372fce-54da-909d-08e8-217c212f3563', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 선단 파괴 （Toe Failure）', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 인장 파괴 （Tension Failure）', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94e5c094-04aa-88d5-a649-262e859037f1', '414549a1-7709-c420-ca69-f62d7ac98a26', '사면 저부 파괴 （Base Failure）', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('414549a1-7709-c420-ca69-f62d7ac98a26', '9e131f93-9f93-4974-bd51-8b0e7c93bfa8', '③ 사면 인장 파괴 （Tension Failure）', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 화물자동차의 승강설비 에 관한 사항이다.（ ）안에 알맞은 내용으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）이상 인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하는 경 우에는 근로자의 추가 위험을 방지하기 위하여 해당 작업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전하게 오르내리기 위한 설비를 설치하여야 한다.', 2, 388)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55629a17-c678-cdd1-2b49-4158375d1c38', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '2[m]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85762ef7-dedd-9727-03b8-78854f15ae23', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '4[m]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54bfa901-2ccc-a60f-7243-9ac44172ccfe', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '8[m]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60ccdb9c-e25b-15d3-53bd-a3b8fdff3e6d', '4eaaeecf-28a2-99ca-a9e3-f86916fee286', '107', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4eaaeecf-28a2-99ca-a9e3-f86916fee286', '55629a17-c678-cdd1-2b49-4158375d1c38', '① 2[m]', '2021-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2021-3 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 작업으로 인하여 물체가 떨어지거나 날아올 위험이 있는 경우에 대한 안전조치에 해당하지 않는 것은?', 2, 389)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc41b5e2-06aa-07d3-f7d6-018357256569', '8339acbd-0258-a79c-4e07-d5311226035a', '수직보호망 설치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59f04ead-666c-70af-f459-4171c61404cc', '8339acbd-0258-a79c-4e07-d5311226035a', '방호선반 설치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('edad398a-f7c2-fdea-7657-65bd834da674', '8339acbd-0258-a79c-4e07-d5311226035a', '울타리 설치', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930d9d38-e8f0-fdfd-ab69-68e89e0ad3a1', '8339acbd-0258-a79c-4e07-d5311226035a', '낙하물 방지망 설치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8339acbd-0258-a79c-4e07-d5311226035a', 'edad398a-f7c2-fdea-7657-65bd834da674', '③ 울타리 설치', '2021-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2021-3'])
on conflict (question_id) do nothing;

-- 2020-12 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건 법령」상 산업안전보건위원회의 사용자위원 에 해당되지 않는 사람은?(단, 각 사업장은 해당하는 사람 을 선임하여야 하는 대상 사업장으로 한다.)', 2, 390)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba8dd5dc-41c8-24c7-0c13-0c97635863af', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '안전관리자', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb2adf6a-62f8-62f8-878b-cb823262e94e', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '산업보건의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '명예산업안전감독관', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('038907d4-11e1-d013-a49d-6a9d79c2ff85', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '해당 사업장 부서의 장', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', 'a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '③ 명예산업안전감독관', '2020-12 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지에 해당하지 않는 것은?', 2, 391)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f194a90c-aa9f-2591-4db5-e0d85e188c21', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '레이저광선 경고', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('769f8e6c-5021-2081-e8a9-34b3365987cf', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '급성독성물질 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb61b566-fb2c-c02d-b6d2-be4c2ed5d457', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '매달린물체 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06baf5e1-104e-53a5-d237-f7326490b0b8', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '차량통행 경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '06baf5e1-104e-53a5-d237-f7326490b0b8', '④ 차량통행 경고', '2020-12 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 사업장에서 물적손실이 수반된 무상해사고가 180건 발생하였다면 중상은 몇 건이나 발생할 수 있는가?（단, 버 드의 재해구성 비율법칙에 따른다.）', 2, 392)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45c57278-fa21-32d2-73c1-fdbb82adba0d', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '6건', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5d3175-43ca-5017-b79b-bbc04d836db0', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '18건', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ff1ab2-aaf0-471e-58b6-14e2bd27731a', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '20건', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97902f5a-b6ce-6875-d274-df18740b76b2', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '29건', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '45c57278-fa21-32d2-73c1-fdbb82adba0d', '① 6건', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육 계획에 포함해야 할 사항이 아닌 것은?', 2, 393)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c7c07e6-e211-92e9-da50-f9f6acb928ba', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육지도안', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb716917-8adb-945c-960e-7e4940758a1e', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육장소 및 교육방법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b6424ae-ff56-a846-3353-5e553309c402', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 종류 및 대상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a37d18b-3b09-806b-5240-db4709af9a04', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 과목 및 교육내용', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '7c7c07e6-e211-92e9-da50-f9f6acb928ba', '① 교육지도안', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7546794d-d443-4553-941b-56c650c70cba', '11111111-1111-1111-1111-111111111104', 'mcq', 'Y • G 성격검사에서 “안전, 적응, 적극형 ”에 해당하는 형의 종류는?', 2, 394)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dd19b6b-4ae3-0471-f778-bc3c509f8566', '7546794d-d443-4553-941b-56c650c70cba', 'A형', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e24e24-fc64-280d-e2c2-2742cd13299e', '7546794d-d443-4553-941b-56c650c70cba', 'B형', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70e2196-6461-57c3-a73b-4b0ac74713cf', '7546794d-d443-4553-941b-56c650c70cba', 'C형', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21a4acce-f390-24bb-f6ad-c262cd72a662', '7546794d-d443-4553-941b-56c650c70cba', 'D형', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7546794d-d443-4553-941b-56c650c70cba', '21a4acce-f390-24bb-f6ad-c262cd72a662', '④ D형', '2020-12 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 환기가 극히 불량한 좁은 밀폐 된 장소에서 용접작업을 하는 근로자를 대상으로 한 특별교 육 내용에 포함되지 않는 것은?（단, 일반적인 안전 • 보건에 필요한 사항은 제외한다.）', 2, 395)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69a96674-1b97-e19e-5b52-33d7f0e40d0b', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '환기설비에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9444afcb-9ad8-1d97-46cb-02395ee9c988', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '질식 시 응급조치에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52140dac-ef85-8d40-00aa-6e4091cbd774', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '작업순서, 안전작업 방법 및 수칙에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6889e66-8696-eac3-0d19-fc4d4836ac9d', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '폭발 한계점, 발화점 및 인화점 등에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', 'd6889e66-8696-eac3-0d19-fc4d4836ac9d', '④ 폭발 한계점, 발화점 및 인화점 등에 관한 사항', '2020-12 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '11111111-1111-1111-1111-111111111104', 'mcq', '무재해 운동의 기본이념 3원칙 중 다음에서 설명하는 것은? 직장 내의 모든 잠재위험요인을 적극적으로 사전에 발견, 파 악. 해결함으로써 뿌리에서부터 산업재해를 제거하는 것', 2, 396)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8028bdbe-a387-839f-bfef-8213c9a730f3', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '무의 원칙', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a5dab1e-78d8-f05c-80a5-e03f2fa5cd07', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '선취의 원칙', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d526f53d-4946-4cc6-ccb3-e4743dd5f1a8', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '참가의 원칙', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('226f82e6-15dd-cc5c-38a1-25238d901106', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '확인의 원칙', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '8028bdbe-a387-839f-bfef-8213c9a730f3', '① 무의 원칙', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4R（라운드） 기법의 진행방법에서 3R에 해당 하는 것은?', 2, 397)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f70d122-3121-9375-fd0d-17705550d665', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '목표설정', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '대책수립', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbc7fe70-0c52-b9f8-189f-42254c8e9ff4', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '본질추구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2254851-262a-9a81-4d67-692d3fec66ef', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '현상파악', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '② 대책수립', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('800762de-162a-b907-7126-eadaaa8f445c', '11111111-1111-1111-1111-111111111104', 'mcq', '관리감독자를 대상으로 교육하는 TWI의 교육내용이 아닌 것은?', 2, 398)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5180c99-49e8-b7e3-493b-76065209af08', '800762de-162a-b907-7126-eadaaa8f445c', '문제해결훈련', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62ecf551-e11b-50e0-6b2d-1f7c7bbbbb5a', '800762de-162a-b907-7126-eadaaa8f445c', '작업지도훈련', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b0d0505-3dc0-e3d5-1423-0163729e4ca9', '800762de-162a-b907-7126-eadaaa8f445c', '인간관계훈련', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a19aacbb-297e-e61f-e090-d0a2882d42fe', '800762de-162a-b907-7126-eadaaa8f445c', '작업방법훈련', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('800762de-162a-b907-7126-eadaaa8f445c', 'a5180c99-49e8-b7e3-493b-76065209af08', '① 문제해결훈련', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #24
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTD)의 발생인자와 가장 거리가 먼 것은?', 2, 399)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45712355-ff04-a780-e23a-dc6cb3d2286d', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '무리한 힘', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '다습한 환경', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ded4364-9630-fc16-e4bd-4fb8187a1364', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '장시간의 진동', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c5f437d-a76d-5a8b-f7c0-54a48da5e702', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '반복도가 높은 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '② 다습한 환경', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', '11111111-1111-1111-1111-111111111104', 'mcq', '인체계측자료의 응용원칙이 아닌 것은?', 2, 400)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b48489e8-ba2c-4d6d-dfea-b9a745253f1d', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '기존 동일 제품을 기준으로 한 설계', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('646c7196-ca8d-f21c-b829-27a5024e7bf7', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '최대치수와 최소치수를 기준으로 한 설계', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fab36193-e490-ac30-fc39-145c9a33aea2', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '조절범위를 기준으로 한 설계', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f24ef5c-117b-d1f3-6a41-d2b5f56eda85', 'e28c875e-6e1d-0a9b-e941-311319c625ce', '평균치를 기준으로 한 설계', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e28c875e-6e1d-0a9b-e941-311319c625ce', 'b48489e8-ba2c-4d6d-dfea-b9a745253f1d', '① 기존 동일 제품을 기준으로 한 설계', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #36
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 유해위험방지계획서를 제 출할 때에는 사업장별로 관련 서류를 첨부하여 해당 작업 시작 며칠 전까지 해당 기관에 제출하여야 하는가?', 2, 401)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71c1d90a-3bc4-b3ed-b752-2a25cf6b5552', 'e421921d-1803-281f-6df4-3f7e3b80afae', '7일', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1368f212-7cde-6412-3f53-6c56518c11bb', 'e421921d-1803-281f-6df4-3f7e3b80afae', '15일', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6116e731-343b-e55d-26f7-ad647f80b535', 'e421921d-1803-281f-6df4-3f7e3b80afae', '30일', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9018cc77-9e4b-1f6d-ea54-ce3afa6aaff5', 'e421921d-1803-281f-6df4-3f7e3b80afae', '60일', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e421921d-1803-281f-6df4-3f7e3b80afae', '1368f212-7cde-6412-3f53-6c56518c11bb', '② 15일', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '11111111-1111-1111-1111-111111111104', 'mcq', '적절한 온도의 작업환경에서 추운 환경으로 온도가 변할 때 우리의 신체가 수행하는 조절작용이 아닌 것은?', 2, 402)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('481e5a89-5fca-f535-85c0-dfb42fc161be', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '발한（發汗）이 시작된다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad41fa85-fe96-2b55-f21c-37b15360079b', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '피부의 온도가 내려간다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8b9f6f9-282d-7a6d-a6a2-2a2f26ec401c', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '직장 （ffl易）온도가 약간 올라간다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('929ee36d-559c-b99d-a69b-cbf18dcf81f4', '7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '혈액의 많은 양이 몸의 중심부를 위주로 순환한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7114f300-ccd1-2c29-bd4d-2fa262a3cb7c', '481e5a89-5fca-f535-85c0-dfb42fc161be', '① 발한（發汗）이 시작된다.', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇에 설치되는 제어장치의 조건에 적합하지 않은 것은?', 2, 403)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07ce3508-c4a4-4666-a222-a9f180ad64e4', '1290adf5-4497-3230-eb19-a9348798bfbe', '누름버튼은 오작동 방지를 위한 가드를 설치하는 등 불시', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a058e0a-f81d-06db-e86a-e8c043e331c1', '1290adf5-4497-3230-eb19-a9348798bfbe', '로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef7bdd79-1641-3d25-7a64-9784efbfe74e', '1290adf5-4497-3230-eb19-a9348798bfbe', '전원공급램프, 자동운전, 결함검출 등 작동제어의 상태', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c184a405-f93b-9dc1-0b3a-156c32ae8239', '1290adf5-4497-3230-eb19-a9348798bfbe', '조작버튼 및 선택스위치 등 제어장치에는 해당 기능을', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1290adf5-4497-3230-eb19-a9348798bfbe', '4a058e0a-f81d-06db-e86a-e8c043e331c1', '② 로봇에는 외부 보호 장치와 연결하기 위해 하나 이상의', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '11111111-1111-1111-1111-111111111104', 'mcq', '무부하상태에서 지게차로 20[km/h]의 속도로 주행할 때, 좌우 안정도는 몇 [%] 이내이어야 하는가?', 2, 404)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a96fd14c-f910-dacb-8139-448ca74be069', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '37[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6591bb69-1873-1774-a6a1-212d09075884', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '39[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('159a6071-6477-6b7f-c5bf-ffe46644f24a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '41[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b3ebd0a-db35-4e26-d5f1-0429e38ab40a', 'ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', '43[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ed49b7a3-b617-3f08-9bcd-b64cdb2ecf3e', 'a96fd14c-f910-dacb-8139-448ca74be069', '① 37[%]', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 틀린 것은?', 2, 405)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07569226-7cf0-7cd2-1e44-0fc89a368b09', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '보안경을 착용한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('843c79ff-a261-ad55-73b6-23c31dd37be4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '칩은 기계를 정지시킨 다음에 브러시로 제거한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0d00bab-ea82-cdce-0dd0-f85b96f74280', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '가공 중에는 손으로 가공면을 점검하지 않는다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a6706c3-fbff-25b0-192f-172438306ae4', '29359dcc-6921-bcd3-4617-7f9e7fe97107', '면장갑을 착용하여 작업한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('29359dcc-6921-bcd3-4617-7f9e7fe97107', '2a6706c3-fbff-25b0-192f-172438306ae4', '④ 면장갑을 착용하여 작업한다.', '2020-12 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 앞면 롤의 지름이 300[mm], 분당회전수가 30회 일 경우 허용되는 급정지장치의 급정지거리는 약 몇 [mm] 이내이어야 하는가?', 2, 406)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfcd6f6d-3bda-8960-961e-fa53d2bd80f9', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '37.7', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be2e258d-6537-2f57-b956-32082b15a427', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '31.4', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55162b7b-a1fc-78a5-5eb4-8e5d1c2c68ac', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '377', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2feba7f2-195e-aace-8324-fb2ef19504ed', '4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '314', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4d7f2892-1a34-aa6e-c8ac-da9ab0feef17', '2feba7f2-195e-aace-8324-fb2ef19504ed', '④ 314', '2020-12 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 연삭숫돌의 파괴원인으로 거리가 먼 것은?', 2, 407)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba22c2e-dd99-add1-0164-5916eafbd5b4', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '플랜지가 현저히 클때', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16ff909c-f66d-e94a-220d-133c458537aa', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌에 균열이 있을 때', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c3c2525-1eb2-480c-d03a-1ae06bc2fc1e', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 측면을 사용할 때', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c22ecfca-31a5-256e-ddb9-cad0caf422eb', 'f3c4f093-131b-d7b5-87d3-3a9bea0f960b', '숫돌의 치수 특히 내경의 크기가 적당하지 않을 때', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f3c4f093-131b-d7b5-87d3-3a9bea0f960b', 'bba22c2e-dd99-add1-0164-5916eafbd5b4', '① 플랜지가 현저히 클때', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크 용접기에 전격방지기를 설치하는 요령 중 틀린 것 은?', 2, 408)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c992a0d8-605d-7492-965d-ae8cc6e72498', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '이완 방지 조치를 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '직각으로만 부착해야 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45707878-d1d1-e15b-14f5-6e44ffe36283', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '동작 상태를 알기 쉬운 곳에 설치한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d58c569-4465-594d-c4cf-b553cee00146', '33b73aba-dc11-2f4b-0e17-d1def2830c67', '테스트 스위치는 조작이 용이한 곳에 위치시킨다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33b73aba-dc11-2f4b-0e17-d1def2830c67', '9b7bf1f4-b7a6-371e-4734-6aa4bd6e348a', '② 직각으로만 부착해야 한다.', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #94
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 폭발범위가 12.5〜74[vol%]인 일산화탄소의 위험도는 얼마인가?', 2, 409)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03e9d019-2691-cc2f-9a1e-fd0e75804b89', '768bb22b-6561-6716-158f-cd224df57d22', '4.92', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3b7187-9046-7f50-31e8-00a23bb6205f', '768bb22b-6561-6716-158f-cd224df57d22', '5.26', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('752ce790-8cdf-1ae0-ac13-c7b0202fe5d4', '768bb22b-6561-6716-158f-cd224df57d22', '6.26', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b38c4a-2cc1-7786-655a-5f0e3e32baa0', '768bb22b-6561-6716-158f-cd224df57d22', '7.05', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('768bb22b-6561-6716-158f-cd224df57d22', '03e9d019-2691-cc2f-9a1e-fd0e75804b89', '① 4.92', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄 1[v이%], 헥산 2[v이%], 에틸렌 2[v이%], 공기 95 [vol%]로 된 혼합가스의 폭발하한계갮vol%]은 약 얼마인 가?(단, 메탄, 헥산, 에틸렌의 폭발하한계 값은 각각 5.0, 1.1, 2.7[v이%]이다.)', 2, 410)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '4158cd0b-72a5-7c82-2deb-746b33696714', '1.8', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73b463b6-0b17-36b4-1b09-6b3777fe3358', '4158cd0b-72a5-7c82-2deb-746b33696714', '3.5', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867fd2f6-68ec-e8a6-5562-c06aa863246c', '4158cd0b-72a5-7c82-2deb-746b33696714', '12.8', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('998bc5ac-4255-165b-3935-c097337b5918', '4158cd0b-72a5-7c82-2deb-746b33696714', '21.7', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4158cd0b-72a5-7c82-2deb-746b33696714', '1f6d1d2b-8a66-2584-8c9f-a60bdb5808c3', '① 1.8', '2020-12 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', '11111111-1111-1111-1111-111111111104', 'mcq', '철골공사 시 안전작업방법 및 준수사항으로 옳지 않은 것 은?', 2, 411)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e029a35a-33ac-b068-0262-a8a3cfd8fe8d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '강풍. 폭우 등과 같은 악천후 시에는 작업을 중지하여', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('950fd48d-2c03-4715-1338-4a0e31d60523', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골부재 반입 시 시공순서가 빠른 부재는 상단부에 위', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('facd4953-5563-8bce-dfb7-2cf3c2cf6911', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa4dbaf-6e09-4ae7-c4d7-29e1baa6822d', 'ac39df94-b915-6fa7-46d7-be88b35732a7', '철골보의 두 곳을 매어 인양시킬 때 와이어로프의 내각', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac39df94-b915-6fa7-46d7-be88b35732a7', 'facd4953-5563-8bce-dfb7-2cf3c2cf6911', '③ 구명줄 설치 시 마닐라 로프 직경 10[mm]를 기준하여', '2020-12 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 지반의 종류별 굴착면의 기울 기 기준으로 옳지 않은 것은?', 2, 412)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9164a744-b641-ccd8-b822-fae9b6b26e91', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '모래 — 1 ： 1.8', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0752c891-240c-fdb3-9aeb-25702df7882e', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '연암 및 풍화암 - 1 : 1.5', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c623eebb-a153-1d36-9b6b-77e43329cde0', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '경암 — 1 ： 0.5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1dd9833-3934-604c-3246-82606b74208f', 'a2cd863f-7fdf-ec1e-00ce-3684e2166207', '그 밖의 흙 - 1 ： 1.2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a2cd863f-7fdf-ec1e-00ce-3684e2166207', '0752c891-240c-fdb3-9aeb-25702df7882e', '② 연암 및 풍화암 - 1 : 1.5', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #112
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', '11111111-1111-1111-1111-111111111104', 'mcq', '공정률이 65[%]인 건설현장의 경우 공사 진척에 따른 산업 안전보건관리비의 최소 사용기준으로 옳은 것은?（단, 공정 률은 기성공정률을 기준으로 한다.）', 2, 413)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee5b868-44ab-c735-b938-aecc085ac452', '68b05f20-d126-dd18-457a-e167e0eba232', '40[%] 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '68b05f20-d126-dd18-457a-e167e0eba232', '50[%] 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56671737-969f-3823-f61c-e5a1f5861952', '68b05f20-d126-dd18-457a-e167e0eba232', '60[%] 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('406824ec-bcde-91d8-f2d6-e25458c3ef56', '68b05f20-d126-dd18-457a-e167e0eba232', '70[%] 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68b05f20-d126-dd18-457a-e167e0eba232', 'c1f03e3e-cd2b-f9d3-eb44-b5789e6af13d', '② 50[%] 이상', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-12 #117
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다.（ ）안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도（ ）감기고 남을 수 있는 충분한 길이일 것', 2, 414)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bcde25c7-4095-3e32-eece-1b3f4f2a8bba', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '1회', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cbc89311-753c-93a5-b051-e71ce5dc418f', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '2회', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df3aff3f-f872-39c6-ae6f-cf81fce6f38b', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '4회', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac24673-9c30-263f-bea1-91b4b189283a', 'b240d6b7-1499-130b-7d3d-8be7db463d1c', '6회', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b240d6b7-1499-130b-7d3d-8be7db463d1c', 'cbc89311-753c-93a5-b051-e71ce5dc418f', '② 2회', '2020-12 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-12'])
on conflict (question_id) do nothing;

-- 2020-3 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 색채와 사용사례의 연결로 틀린 것은?', 2, 415)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4816a7e6-9a05-9a7c-ad62-10cd4d017172', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '노란색-정지신호, 소화설비 및 그 장소, 유해행위의', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cab906d-ce5f-1587-c2b5-0e9b77c476e7', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '파란색 -특정 행위의 지시 및 사실의 고지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7445a06-5ce7-9df8-0aba-8c49a8f41656', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '빨간색—화학물질 취급장소에서의 유해 • 위험경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e39704-6235-0cd4-e07e-7a63a9a468c0', 'cefc59fe-cbdb-3feb-0a79-685be5365bf7', '녹색 - 비상구 및 피난소, 사람 또는 차량의 통행표지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cefc59fe-cbdb-3feb-0a79-685be5365bf7', '4816a7e6-9a05-9a7c-ad62-10cd4d017172', '① 노란색-정지신호, 소화설비 및 그 장소, 유해행위의', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?(단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.) 유 ^', 2, 416)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3bfafb40-3548-b161-650f-8b9374aabd4b', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '폭발성물질 경고', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9031404b-50ef-1802-97e6-5cd7ba724b90', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '산화성물질 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0883af28-cf28-1b6c-c134-023fee220561', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '부식성물질 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '63ec44ee-dbf6-6740-bf7a-bc736a28c812', '급성독성물질 경고', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('63ec44ee-dbf6-6740-bf7a-bc736a28c812', 'bbf9544b-0220-eb37-b5ef-6e1d8eb0accb', '④ 급성독성물질 경고', '2020-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」상 강렬한 소음작업에 해 당하는 기준은?', 2, 417)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204dde59-3bfb-5b93-1bbb-b7b04a6b6a9d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5eeb46d-a202-9894-5026-327fa057230d', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '85[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97a46609-3687-b2fa-6172-9fa379b18681', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '96a5a959-8402-d759-9f6b-0ab3546ef2a2', '90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('96a5a959-8402-d759-9f6b-0ab3546ef2a2', 'aae0cafc-87fb-9114-6aec-58ddc6ad6f30', '④ 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업', '2020-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', '11111111-1111-1111-1111-111111111104', 'mcq', '롤러기의 급정지장치에 관한 설명으로 가장 적절하지 않은 것은?', 2, 418)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbf93aef-cf66-1206-62ef-75b32442ecfd', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '복부조작식은 조작부 중심점을 기준으로 밑면으로부터', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16810e39-a05c-26b0-ac16-aa82ea12390f', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '손조작식은 조작부 중심점을 기준으로 밑면으로부터', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('685e7301-68eb-8ea1-7248-9adab428acae', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 사용 중에 늘어', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42c83717-057b-1f1c-46a3-f6031adf3fe7', 'a6e7458d-150e-ced1-ae19-d0803ff24245', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6e7458d-150e-ced1-ae19-d0803ff24245', 'bbf93aef-cf66-1206-62ef-75b32442ecfd', '① 복부조작식은 조작부 중심점을 기준으로 밑면으로부터', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기를 사용하여 작업하는 운전자 또는 작업자가 보기 쉬운 곳에 해당 양중기에 대해 표시하 여야 할 내용으로 가장 거리가 먼 것은?(단, 승강기는 제외 한다.)', 2, 419)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('527000df-4074-8aef-5ad4-fc11d84d4eb1', '1fdff114-ad15-dd07-4adc-4269189b8499', '정격하중', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee49bd23-5fc7-2ead-a007-b64074b2b0f4', '1fdff114-ad15-dd07-4adc-4269189b8499', '운전속도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977d3db2-605a-47c6-49c9-f4b8874aa94f', '1fdff114-ad15-dd07-4adc-4269189b8499', '경고표시', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '1fdff114-ad15-dd07-4adc-4269189b8499', '최대 인양높이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1fdff114-ad15-dd07-4adc-4269189b8499', 'f6b46eec-8045-4fe0-cb9d-e63275d9d9e7', '④ 최대 인양높이', '2020-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭기의 안전작업수칙에 대한 설명 중 가장 거리가 먼 것 은?', 2, 420)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91c5b938-51a0-f173-4e8f-b3b9b434cddb', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 정면에 서서 숫돌 원주면을 사용한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbd9309c-9150-5fe8-b1f7-78c0bfaa5730', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌 교체 시 3분 이상 시운전을 한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c995cea6-b5cd-7cd4-f1a9-f5d1aa9ddfaf', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '숫돌의 회전은 최고 사용 원주속도를 초과하여 사용하', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55a0e080-c665-ad63-e6ce-0212cdcb37a6', 'd6d53019-fe1e-448f-9c1e-e70e0638b24a', '연삭숫돌에 충격을 가하지 않는다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6d53019-fe1e-448f-9c1e-e70e0638b24a', '91c5b938-51a0-f173-4e8f-b3b9b434cddb', '① 숫돌의 정면에 서서 숫돌 원주면을 사용한다.', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #47
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계 설비의 안전조건에서 안전화의 종류로 가장 거리가 먼 것은?', 2, 421)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3ddd4b5-f461-ce5c-0854-094edcb75939', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '재질의 안전화', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd6ce306-dc53-ccd0-4c1b-c3245d9865f1', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '작업의 안전화', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2530237a-b978-997c-2dbb-43e5681ef720', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '기능의 안전화', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47e91eb5-b4c0-906e-90bb-a16f8c3794ea', '1df9060f-bc1e-cf1d-31b1-f34db80bbd72', '외형의 안전화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1df9060f-bc1e-cf1d-31b1-f34db80bbd72', 'b3ddd4b5-f461-ce5c-0854-094edcb75939', '① 재질의 안전화', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 비파괴검사법으로 틀린 것은?', 2, 422)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11136f83-7dcf-f5f9-0d41-80a686b13059', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '인장검사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c724c36-f95a-5d18-ff0a-e1992a5e71c0', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '자기탐상검사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('425d335f-e4d8-5dfe-b7fb-52cf28abfeeb', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '초음파탐상검사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e205e0bc-da9c-04a1-8703-ef2f5b937e46', '5ab0ffaf-6b23-72ab-d128-f04ac971701f', '침투탐상검사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ab0ffaf-6b23-72ab-d128-f04ac971701f', '11136f83-7dcf-f5f9-0d41-80a686b13059', '① 인장검사', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #53
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 컨베이어를 사용하여 작업을 할 때 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 423)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d93f2cc-79e1-4137-90c2-f2eea2f40f26', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '원동기 및 풀리(Pulley) 기능의 이상 유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('796ad814-0ab4-bd07-4226-e970b713e13d', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '이탈 등의 방지장치 기능의 이상 유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ed73a98-8d5e-629b-0157-1491ed438dcf', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '유압장치의 기능의 이상 유무', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b414c810-3235-f4a1-970c-38e9bb4288a5', 'b4df41ab-9ad7-23f1-421a-205199a0d867', '비상정지장치 기능의 이상 유무', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4df41ab-9ad7-23f1-421a-205199a0d867', '0ed73a98-8d5e-629b-0157-1491ed438dcf', '③ 유압장치의 기능의 이상 유무', '2020-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 424)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e25b99a-1d98-6ad0-d845-4868e1ec2396', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '기계에 주유 및 청소 시 반드시 기계를 정지시키고 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63f7ada4-342b-48e7-d2e3-374fb1bdebc9', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '칩 제거 시 브러시를 사용한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a2cb291-395a-8cae-d1d5-a7f9cb68ffed', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '바이트에는 칩 브레이커를 설치한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce46f521-afdd-25c9-738c-b08b8aa40f38', '62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', '선반의 바이트는 끝을 길게 장치한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('62d5e1d4-5cca-d4c0-83d5-ceee9068c25d', 'ce46f521-afdd-25c9-738c-b08b8aa40f38', '④ 선반의 바이트는 끝을 길게 장치한다.', '2020-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 위험물질의 종류 중 부식성 염기류로 분류되기 위하여 농도가 40[%] 이상이 어야 하는 물질은?', 2, 425)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc76e751-d217-f6ad-31a9-1aaca0666204', 'b4808083-b14a-b43e-e433-d174d6b2236b', '염산', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de1061b8-c60b-4a7b-fb0c-e2c51516cc85', 'b4808083-b14a-b43e-e433-d174d6b2236b', '아세트산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5181f122-571b-2351-d105-dc1112f2e131', 'b4808083-b14a-b43e-e433-d174d6b2236b', '불산', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d982e565-94af-173e-1a96-4c310a984bbc', 'b4808083-b14a-b43e-e433-d174d6b2236b', '수산화칼륨', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b4808083-b14a-b43e-e433-d174d6b2236b', 'd982e565-94af-173e-1a96-4c310a984bbc', '④ 수산화칼륨', '2020-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 화학설비의 부속설비로만 이루어진 것은?', 2, 426)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d77dd74-c6b4-96f2-ae62-6714106edbec', '7420dfd1-4424-94b9-f556-d514fceecab6', '사이클론, 백필터. 전기집진기 등분진처리설비', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f72ee61-9f68-1447-85b8-07ba784ddddd', '7420dfd1-4424-94b9-f556-d514fceecab6', '응축기, 냉각기, 가열기. 증발기 등 열교환기류', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b19701c-69d9-d927-cf9e-6410827ddedb', '7420dfd1-4424-94b9-f556-d514fceecab6', '고로 등 점화기를 직접 사용하는 열교환기류', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72afdc1f-6347-6fed-6823-cd4ae58bbb7c', '7420dfd1-4424-94b9-f556-d514fceecab6', '혼합기, 발포기, 압출기 등 화학제품 가공설비', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7420dfd1-4424-94b9-f556-d514fceecab6', '9d77dd74-c6b4-96f2-ae62-6714106edbec', '① 사이클론, 백필터. 전기집진기 등분진처리설비', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '11111111-1111-1111-1111-111111111104', 'mcq', '탄화수소 증기의 연소하한값 추정식은 연료의 양론농도 (CJ의 0.55배이다. 프로판 1몰의 연소반응식이 다음과 같 을 때 연소하한값은 약 몇 [vol%]인가? C3Hs+502 — 3CO2+4H2O', 2, 427)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '183064e6-da2d-0e39-60c1-db10ecf701eb', '2.22', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7faf58fe-2ea6-c6a8-9773-8e477a0802d6', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.03', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7970555d-31ab-8fb3-a548-558657cffeba', '183064e6-da2d-0e39-60c1-db10ecf701eb', '4.44', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20b74f7b-5302-a645-4aa5-086cdf68381b', '183064e6-da2d-0e39-60c1-db10ecf701eb', '8.06', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('183064e6-da2d-0e39-60c1-db10ecf701eb', '4a0ed553-f659-15f6-c01e-aaa0b2d37e6d', '① 2.22', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판과 메탄의 폭발하한계가 각각 2.5[vol%], 5.0[vol%] 이라고 할 때 프로판과 메탄이 3：1 의 체적비로 혼합되어 있 다면 이 혼합가스의 폭발하한계는 약 몇 [vol%]인가?(단, 상온, 상압 상태이다.)', 2, 428)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f39a93-aca2-7127-8542-4687c7b6991a', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '2.9', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22a7c16d-437f-17a4-3c62-0c4c5f3cb7a8', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.3', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d76e9f8f-112a-4d7a-be6f-b8c3d1942547', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '3.8', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('851684e9-941a-b2f4-0f9c-0c6dc559a97c', '37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '4.0', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('37c0e0f3-f69c-ea1c-a7c6-7bfcd6568235', '28f39a93-aca2-7127-8542-4687c7b6991a', '① 2.9', '2020-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 소화약제로 사용되는 이산화탄소에 관한 설명으로 틀린 것은?', 2, 429)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3828f214-f02a-97de-7fb7-c264a74e89c0', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '사용 후에 오염의 영향이 거의 없다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38e4f693-9e32-66bd-2a6e-7fe4e856dc09', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '장시간 저장하여도 변화가 없다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11d1083a-9e42-39d5-1db0-ad9bfe417a82', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '주된 소화효과는 억제소화이다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25f3081b-469c-040d-0da5-169d62aa3167', '9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '자체 압력으로 방사가 가능하다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c87ca84-4539-8d8e-1fb6-6f7d327cb821', '11d1083a-9e42-39d5-1db0-ad9bfe417a82', '③ 주된 소화효과는 억제소화이다.', '2020-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '11111111-1111-1111-1111-111111111104', 'mcq', '터널작업 시 자동경보장치에 대하여 당일의 작업시작 전 점 검하여야 할 사항으로 옳지 않은 것은?', 2, 430)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a68a3be5-85aa-9f0b-1300-6935c22a9407', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '검지부의 이상유무', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89cd8029-2665-3329-cedd-67e9ec5f50cc', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '조명시설의 이상 유무', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8e02155-ff4c-df34-6900-060157ef04cb', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '경보장치의 작동상태', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2cd80237-fca6-ef55-56e5-9d631b6a2bd0', 'be08c4fb-67db-3dd6-7958-bdb23d344ee4', '계기의 이상 유무', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be08c4fb-67db-3dd6-7958-bdb23d344ee4', '89cd8029-2665-3329-cedd-67e9ec5f50cc', '② 조명시설의 이상 유무', '2020-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준이다.( )안에 알맞은 숫자를 나열한 것은? 길이가 띠장 방향으로( A )미터 이하이고 높이가 ( B ) 미터를 초과하는 경우에는 ( C )미터 이내마다 띠장 방향 으로 버팀기둥을 설치할 것', 2, 431)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b5a1ebf-e572-d196-6295-88f9c4fea1f6', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 5', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38094c80-5c4f-0bbf-100b-66c0a14f58b2', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 4, B： 10, C： 10', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2999037-3214-006f-c0aa-48ab3a0b9bda', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('597da981-dea9-f2d3-91c3-3c5203e7994a', '83002e68-abe7-8017-e6aa-bfb3839a4c6e', 'A： 5, B： 10, C： 10', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('83002e68-abe7-8017-e6aa-bfb3839a4c6e', '38094c80-5c4f-0bbf-100b-66c0a14f58b2', '② A： 4, B： 10, C： 10', '2020-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-3 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('220d7509-5796-13eb-de94-63f749d30223', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 안전대와 관련된 설명이다. 아래 내용에 해당되는 용어로 옳은 것은? 로프 또는 레일 등과 같은 유연하거나 단단한 고정줄로서 추 락발생 시 추락을 저지시키는 추락방지대를 지탱해 주는 줄 모양의 부품', 2, 432)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f3151dd-b289-e1e4-7a4f-26c20e5e7825', '220d7509-5796-13eb-de94-63f749d30223', '안전블록: 안전그네와 연결하여 추락발생 시 추락을 억제할 수 있는 자동', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eda004d-ffc5-82ae-fda7-137ac2da8d70', '220d7509-5796-13eb-de94-63f749d30223', '죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b110531-134d-eb01-d402-0b8d789c7443', '220d7509-5796-13eb-de94-63f749d30223', '보조죔줄: 안전대를 U자걸이로 사용할 때 U자걸이를 위해 훅 또는 카', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6360ffb-c969-b4d5-0208-a29b6294a07d', '220d7509-5796-13eb-de94-63f749d30223', '114', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('220d7509-5796-13eb-de94-63f749d30223', '9eda004d-ffc5-82ae-fda7-137ac2da8d70', '② 죔줄: 벨트 또는 안전그네를 구명줄 또는 구조물 등 그 밖의 걸이설비', '2020-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-3'])
on conflict (question_id) do nothing;

-- 2020-4 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', '11111111-1111-1111-1111-111111111104', 'mcq', '라인(Une)형 안전관리조직의 특징으로 옳은 것은?', 2, 433)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6eba1774-12dd-e885-485d-ee93d99eaab3', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 기술의 축적이 용이하다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a48f74d1-bb24-3e7b-29e3-1406070b52ed', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '안전에 관한 지시나 조치가 신속하다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75aa0477-3e0d-6f9f-afc2-fcc80d60b4e7', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffdf0059-bfba-a983-85ed-26b9aef6ae2e', '28b30aea-54c7-6fe9-5ea4-7e7429c82585', '권한 다툼이나 조정 때문에 통제수속이 복잡해지며. 시', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('28b30aea-54c7-6fe9-5ea4-7e7429c82585', 'a48f74d1-bb24-3e7b-29e3-1406070b52ed', '② 안전에 관한 지시나 조치가 신속하다.', '2020-4 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육 중 관리감독 자 정기교육의 내용이 아닌 것은?', 2, 434)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9062949-3c88-dbdf-3943-60d776858c7f', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '유해 • 위험 작업환경 관리에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba4c37e4-1864-9296-4709-c59a531557c1', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89bad454-d554-0082-8df9-e6d1f7fc1972', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('169da354-e242-1e62-dce1-c6311c3a952e', 'fd55456f-57b3-5d33-54ed-443dc3d77dcd', '기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fd55456f-57b3-5d33-54ed-443dc3d77dcd', '169da354-e242-1e62-dce1-c6311c3a952e', '④ 기계 • 기구의 위험성과작업의 순서 및 동선에 관한사항', '2020-4 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 구안법（Project Method）의 4단계의 순서 로 옳은 것은?', 2, 435)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d572bf41-16c5-d8ca-a511-a334be46b106', '98f2c8a2-8635-5178-149d-39d15849c02b', '계획수립 一 목적결정 一 활동 一 평가', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1abb94ff-a148-0011-06c4-da0362fc6f61', '98f2c8a2-8635-5178-149d-39d15849c02b', '평가 一 계획수립 一 목적결정 一 활동', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9aff5d53-218b-db7d-e4ec-c5512b1591ea', '98f2c8a2-8635-5178-149d-39d15849c02b', '목적결정 一 계획수립 一 활동 一 평가', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03ee33bd-f0e1-e244-6bc5-2f8f4fccc7cf', '98f2c8a2-8635-5178-149d-39d15849c02b', '활동 一 계획수립 - 목적결정 一 평가', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('98f2c8a2-8635-5178-149d-39d15849c02b', '9aff5d53-218b-db7d-e4ec-c5512b1591ea', '③ 목적결정 一 계획수립 一 활동 一 평가', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명에 해당하는 학습지도의 원리는? 학습자가 지니고 있는 각자의 요구와 능력 등에 알맞은 학습 활동의 기회를 마련해주어야 한다는 원리', 2, 436)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5b26001-5cf2-9b31-1265-9b034d79969a', 'cdf63121-0312-53ec-cc88-6dfe531589de', '직관의 원리', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7645c1f-fb3a-25a3-d9ec-2abe40c29ad0', 'cdf63121-0312-53ec-cc88-6dfe531589de', '자기활동의 원리', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', 'cdf63121-0312-53ec-cc88-6dfe531589de', '개별화의 원리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca2fc738-c959-2859-da0d-5937ca4a7dac', 'cdf63121-0312-53ec-cc88-6dfe531589de', '사회화의 원리', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cdf63121-0312-53ec-cc88-6dfe531589de', '42ea9d3a-37e1-4d6f-b57e-f35d4f7aee20', '③ 개별화의 원리', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 옳은 것은?', 2, 437)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ed315c3-21e3-005f-3bf9-6d29c65284fc', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70c94f13-63b2-1cab-6495-2d65e712c889', '0df632a3-0f11-d9da-b74b-ed447324f05f', 'Top 시상을 발생시키는 조합이다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be305362-cd82-4bbf-e069-05e5ba0e1913', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템이 고장나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fec6042e-ff0a-754b-87f2-11286445391f', '0df632a3-0f11-d9da-b74b-ed447324f05f', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df632a3-0f11-d9da-b74b-ed447324f05f', 'be305362-cd82-4bbf-e069-05e5ba0e1913', '③ 시스템이 고장나지 않도록 하는 사상의 조합이다.', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 승강기의 종류로 옳지 않은 것은?', 2, 438)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8481acb-4bd8-d55a-806e-c23b36cadb93', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객용 엘리베이터', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('867c32a0-78ed-764c-15cc-8e1f82e7075c', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '리프트', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e39d99c1-98be-4fb4-5f7d-7160972cbfa5', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '화물용 엘리베이터', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('909e54c2-51ba-7483-e615-6429e339179d', '4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '승객화물용 엘리베이터', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4adef9d3-3565-e398-32fc-3d3ee15ab8a6', '867c32a0-78ed-764c-15cc-8e1f82e7075c', '② 리프트', '2020-4 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 화물의 낙하에 의해 운전자가 위험 을 미칠 경우 지게차의 헤드가드（Head Guard）는 지게차의 최대하중의 몇 배가 되는 등분포정하중에 견디는 강도를 가 져야 하는가?（단, 4톤을 넘는 값은 제외한다.）', 2, 439)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8be50f3-f6ad-e389-3ba2-71dcaa778db5', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1배', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35a0c47c-ef9a-2f78-dbc7-c903392007d9', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '1.5 배', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '2배', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f1f18fd-976f-4217-551b-c535dfcd4f64', '0d71686b-f551-6dfe-6b35-a3141a420b0c', '3배', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0d71686b-f551-6dfe-6b35-a3141a420b0c', '48a6ca88-0b8a-18a2-83fa-d35e1b7a089c', '③ 2배', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등을 사용하여 작업을 할 때 에 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 440)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ac385cc-b9fe-92a5-055d-22160eb929c7', 'fdc69185-906e-60e9-3d14-a2056cb25964', '압력방출장치의 기능', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de878d66-bd2b-b9d8-28b8-57be461f538e', 'fdc69185-906e-60e9-3d14-a2056cb25964', '클러치 및 브레이크의 기능', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3f376f-ac09-b61c-e5a5-233463dea8b5', 'fdc69185-906e-60e9-3d14-a2056cb25964', '프레스의 금형 및 고정볼트 상태', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d1f1a00-14f9-74c6-3773-871bba832ae2', 'fdc69185-906e-60e9-3d14-a2056cb25964', '1행정 1정지기구 •급정지장치 및 비상정지장치의 기능', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '5ac385cc-b9fe-92a5-055d-22160eb929c7', '① 압력방출장치의 기능', '2020-4 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스 방호장치에서 게이트가드식 방호장치의 종 류를 작동방식에 따라 분류할 때 가장 거리가 먼 것은?', 2, 441)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db4346ff-eaea-0776-af81-8dd786dbdd59', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '경사식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa154595-3c9b-51cd-08ac-42031a604961', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '하강식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('542ebf96-a650-6841-2d54-e19114b43f86', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '도립식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd938c38-8fc6-8bd1-00ef-9902f05f1b12', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '횡 슬라이드식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', 'db4346ff-eaea-0776-af81-8dd786dbdd59', '① 경사식', '2020-4 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 보일러 운전 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 442)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac190440-71c0-c000-ccc0-99c7e5994d82', '8701f06b-0ca6-ab78-498a-97e89708716b', '가동 중인 보일러에는 작업자가 항상 정위치를 떠나지', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24eebda-c4d3-2dd9-bc4f-60c4fd0c68c6', '8701f06b-0ca6-ab78-498a-97e89708716b', '보일러의 각종 부속장치의 누설상태를 점검할 것', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5861388-f23a-c458-d320-da70c496180f', '8701f06b-0ca6-ab78-498a-97e89708716b', '압력방출장치는 매 7년마다 정기적으로 작동시험을', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34c4c8bf-5e3b-8d22-dc9e-d767e96f2841', '8701f06b-0ca6-ab78-498a-97e89708716b', '노내의 환기 및 통풍장치를 점검할 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', 'b5861388-f23a-c458-d320-da70c496180f', '③ 압력방출장치는 매 7년마다 정기적으로 작동시험을', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', '11111111-1111-1111-1111-111111111104', 'mcq', '『산업안전보건법령」상 크레인에서 권과방지장치의 달기구 윗면이 권상장치의 아랫면과 접촉할 우려가 있는 경우 최소 몇 [m] 이상 간격이 되도록 조정하여야 하는가?（단, 직동식 권과방지장치의 경우는 제외）', 2, 443)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('852a61e9-e22c-f01e-0f6d-74c6d8f1d995', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.1', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03529c67-6e65-d043-c401-3ad2a915ab1f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.15', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb2442c3-f6a7-5039-aea7-cfe330f18d36', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.25', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ae0f5a6-c738-40b8-2fa5-fe80faf5202f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.3', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', 'cb2442c3-f6a7-5039-aea7-cfe330f18d36', '③ 0.25', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업의 안전수칙으로 가장 거리가 먼 것은?', 2, 444)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dde8af31-7bcd-be24-b21e-87a311298634', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd7fc8ca-df0a-ac35-02d7-c3d5c4965ba5', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '일반적으로 가공물의 길이가 지름의 12배 이상일 때는', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d49c143d-2b4c-307a-3e33-b17fb89307eb', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '바이트는 가급적 짧게 설치한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('650017c2-ef14-4f65-7bfd-75e9d9efe26d', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '면장갑을 사용하지 않는다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', 'dde8af31-7bcd-be24-b21e-87a311298634', '① 기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', '2020-4 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [기인가?', 2, 445)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52e8fd55-1093-2494-b5fe-868d806548d1', 'd031e1ea-d60a-288e-845b-5acede42fac2', '30', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('181ae521-d08d-8046-a0b3-301fd857aab8', 'd031e1ea-d60a-288e-845b-5acede42fac2', '50', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f427070-5d9b-91b3-2043-6b0e4006ec7b', 'd031e1ea-d60a-288e-845b-5acede42fac2', '60', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4babae5-af9e-013b-a611-5e6db1b5bb7d', 'd031e1ea-d60a-288e-845b-5acede42fac2', '70', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '52e8fd55-1093-2494-b5fe-868d806548d1', '① 30', '2020-4 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」에 따라 누전에 의한 감전 의 위험을 방지하기 위하여 접지를 하여야 하는 대상의 기 준으로 틀린 것은?(단, 예외조건은 고려하지 않는다.)', 2, 446)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2d20bca-ed47-70ac-2478-b2cf566830be', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '전기기계 • 기구의 금속제 외함', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('028b842f-97cf-ba6b-c757-46af15c1752a', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고압 이상의 전기를 사용하는 전기기계 • 기구 주변의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d09b620-05c2-00de-3ff1-aab9e847a88f', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81e06e6-f73e-8b46-2f3a-103928820589', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '코드와 플러그를 접속하여 사용하는 전기기계 • 기구 중', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '6d09b620-05c2-00de-3ff1-aab9e847a88f', '③ 고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '11111111-1111-1111-1111-111111111104', 'mcq', '가연성 가스가 있는 곳에 저압 옥내전기설비를 금속관공사 에 의해 시설하고자 한다. 관 상호 간 또는 관과 전기기계 • 기구와는 몇 턱 이상 나사조임으로 접속하여야 하는가?', 2, 447)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ca9ecef-afb4-4eef-52b5-b4f0157e35db', '4191ce20-90ed-939f-d337-d7041b96dc65', '2턱', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb65ed23-b5ad-274a-8261-b5c529f8b95a', '4191ce20-90ed-939f-d337-d7041b96dc65', '3턱', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf137cbd-6907-7664-4345-0d424ece932b', '4191ce20-90ed-939f-d337-d7041b96dc65', '4턱', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f44f1f-a603-4d24-e697-3a9e4deda153', '4191ce20-90ed-939f-d337-d7041b96dc65', '5턱', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '24f44f1f-a603-4d24-e697-3a9e4deda153', '④ 5턱', '2020-4 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #77
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동을 일으키는 위험한계에너지는 약 몇 이인가? (단, 심실세동전류 1=뜨[mA], 인체의 전기저항 R=800[Q], 통전시간 T=1 초이다.)', 2, 448)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ec9d61-bcfa-eed7-2af2-679d62c5ca91', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '12', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c07354b8-168a-b70c-f96e-fa9e3206faab', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '22', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5038ead4-4d6f-57df-63dd-bff70353154d', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '32', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('374d4552-9547-df40-0412-2659902007f9', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '42', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', 'c07354b8-168a-b70c-f96e-fa9e3206faab', '② 22', '2020-4 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 5O[A] 미만이다.）', 2, 449)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96089b74-f3fd-85ee-6d18-8efdebed47e5', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '15[mA] 이하, 0.1 초 이내', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('698d147f-8788-8d39-9162-780bbe14f00e', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '30[mA] 이하, 0.03초 이내', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d09c2452-8428-07e5-1817-ed9225d292dc', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '50[mA] 이하, 0.5초 이내', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa5e7510-f518-e99b-46af-edea8a899778', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '100[mA] 이하, 0.05초 이내', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '698d147f-8788-8d39-9162-780bbe14f00e', '② 30[mA] 이하, 0.03초 이내', '2020-4 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 인화성 액체를 정의할 때 기준이 되는 표준압력은 몇 [kPa]인가?', 2, 450)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96fed05d-4f02-d9ed-44f8-2d273117caa4', '7989e810-6dda-399b-cac7-31c55f845afa', '1', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d0535bd-9c4d-3300-be10-8aeea810eda6', '7989e810-6dda-399b-cac7-31c55f845afa', '100', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '7989e810-6dda-399b-cac7-31c55f845afa', '101.3', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9df2b24c-5f76-e8a9-e53c-af668a5f3c34', '7989e810-6dda-399b-cac7-31c55f845afa', '273.15', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', 'bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '③ 101.3', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2020-4 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 자립고(自立高) 이상의 높이로 설치할 때 지 지벽체가 없어 와이어로프로 지지하는 경우의 준수사항으 로 옳지 않은것은?', 2, 451)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a23ec0-19b2-0df8-a483-e0438a1d8a39', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7229f6b-f057-b3be-d691-dd15e986b67d', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프 설치 각도는 수평면에서 60° 이내로 하되,', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('339e31b1-8309-3ed2-db13-3753d4293997', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e599c8a9-b523-511c-de0e-5f87534ae93a', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '339e31b1-8309-3ed2-db13-3753d4293997', '③ 와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', '2020-4 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2020-4'])
on conflict (question_id) do nothing;

-- 2019-1 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」에 따른 분리식 방진마스크의 성능 기준에서 포집효율이 특급인 경우, 염화나트륨(NaCI) 및 파 라핀 오일(Paraffin oil) 시험에서의 포집효율은?', 2, 452)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d2898c5-94a3-12a8-1ddc-7c24ef4c9026', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.95[%] 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2d85c76-f1b6-cb96-3f4a-e044bf5e6550', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.9[%] 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8b0be24-23dd-8f05-8046-27d5e3525b05', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.5[%] 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72aef8c8-766a-bb8f-ee7a-821c7a5bd2c5', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.0[%] 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '0d2898c5-94a3-12a8-1ddc-7c24ef4c9026', '① 99.95[%] 이상', '2019-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b68def81-bfd4-7439-0236-123c1cbc53be', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 특별교육에서 방사선 업무에 관계되는 작업을 할 때 교육내용으로 거리가 먼 것은?', 2, 453)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f0fe596-7392-922c-9811-365b7daee08a', 'b68def81-bfd4-7439-0236-123c1cbc53be', '방사선의 유해 • 위험 및 인체에 미치는 영향', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e84d9c6b-595b-5c0f-4e8c-8e20bbc8b69d', 'b68def81-bfd4-7439-0236-123c1cbc53be', '방사선 측정기기 기능의 점검에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb72ae73-aa12-51ef-ec65-319d5fcd02d7', 'b68def81-bfd4-7439-0236-123c1cbc53be', '응급처치 및 보호구 착용에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ee9cdb4-0c9c-df43-3cfe-7a7492069e5e', 'b68def81-bfd4-7439-0236-123c1cbc53be', '산소농도 측정 및 작업환경 에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b68def81-bfd4-7439-0236-123c1cbc53be', '4ee9cdb4-0c9c-df43-3cfe-7a7492069e5e', '④ 산소농도 측정 및 작업환경 에 관한 사항', '2019-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3646dd9-b876-01d3-5822-e0caf3faf4b4', '11111111-1111-1111-1111-111111111104', 'mcq', '사고예방대책의 기본원리 5단계 중 틀린 것은?', 2, 454)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('565f6d8c-5f80-56b5-a3e6-db67a5fcffd8', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '1단계: 안전관리 계획', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a5c170c-39dd-2f68-3d36-587947b2899c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '2단계: 현상파악', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('092dde0d-110d-07bd-9bf0-4dcf6e764d6c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '3단계: 분석 • 평가', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7265f1fb-18c8-fa63-b08d-1c1799a55d9c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '4단계: 대책의 선정', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3646dd9-b876-01d3-5822-e0caf3faf4b4', '565f6d8c-5f80-56b5-a3e6-db67a5fcffd8', '① 1단계: 안전관리 계획', '2019-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '11111111-1111-1111-1111-111111111104', 'mcq', '특정과업에서 에너지 소비수준에 영향을 미치는 인자가 아 닌것은?', 2, 455)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87b31907-bd71-fc86-96cb-44165aab0d96', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업방법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c34b290-73f2-998d-2a3a-e7d6e682cd90', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업속도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd6d3750-03ac-d7a5-5975-04cf0474f94b', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업관리', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d9cb205-af03-ab40-1c38-f1dd35712ad9', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '도구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92929f3d-bb7c-536f-4109-c97d8f3ce4ff', 'bd6d3750-03ac-d7a5-5975-04cf0474f94b', '③ 작업관리', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '11111111-1111-1111-1111-111111111104', 'mcq', '국제노동기구（ILO）의 산업재해 정도 구분에서 부상 결과 근 로자가 신체장해등급 제12급 판정을 받았다면 이는 어느 정도의 부상을 의미하는가?', 2, 456)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f466d08d-a62e-7382-3a98-902ee0d7b50c', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '영구 전노동 불능', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('068c4d4f-63f7-0478-56ed-ccee8794dcb1', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '영구 일부노동 불능', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc55065e-66b6-d18b-dca4-5f774d51c43b', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '일시 전노동 불능', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4aee2175-34ca-ed01-d5b9-175b0f14f3be', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '일시 일부노동 불능', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '068c4d4f-63f7-0478-56ed-ccee8794dcb1', '② 영구 일부노동 불능', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4b80d6c4-e655-776c-3006-96268a28b624', '11111111-1111-1111-1111-111111111104', 'mcq', '사고의 원인분석방법에 해당하지 않는 것은?', 2, 457)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('873c93ad-33e7-006e-6c19-6c508d5cd421', '4b80d6c4-e655-776c-3006-96268a28b624', '통계적 원인분석', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d5f3618-6fb8-c03d-48e4-e0a9c40daffb', '4b80d6c4-e655-776c-3006-96268a28b624', '종합적 원인분석', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51d87e4f-6a5d-510b-0ea3-3dc052cefef1', '4b80d6c4-e655-776c-3006-96268a28b624', '클로즈（close）분석도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a249ba0-fffc-a703-e2cb-3eebbeb05661', '4b80d6c4-e655-776c-3006-96268a28b624', '관리도', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4b80d6c4-e655-776c-3006-96268a28b624', '4d5f3618-6fb8-c03d-48e4-e0a9c40daffb', '② 종합적 원인분석', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eb0c5142-e938-1655-0c7b-66ee1a239025', '11111111-1111-1111-1111-111111111104', 'mcq', '안전검사기관 및 자율검사프로그램 인정기 관은 고용노동부 장관에게 그 실적을 보고하도록 관련법에 명시되어 있는데 그 주기로 옳은 것은?', 2, 458)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0aaf5cbd-41cf-7201-c468-a96e3e61da16', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '매월', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87bff477-0165-995a-2967-90685d269753', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '격월', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b51594cf-570c-64b0-e70e-e5ec009d31e5', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '분기', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a613765-436b-3bf2-a07a-f26d4a2fb0ac', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '반기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eb0c5142-e938-1655-0c7b-66ee1a239025', 'b51594cf-570c-64b0-e70e-e5ec009d31e5', '③ 분기', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3724aaf-6a61-2b52-f64f-908bdb92038c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상의 안전보건표지 종류 중 관계자외 출 입금지표지에 해당되는 것은?', 2, 459)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28259d2f-02ae-c277-bf35-76d1150cbe68', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '안전모 착용', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('215c0a3e-3e15-93f2-1310-09180e2a465a', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '폭발성물질 경고', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5248582-ac5a-0d82-8485-d8dc689ca058', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '방사성물질 경고', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('586921ea-8434-dce6-35c3-c21440166564', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '석면취급 •해체 작업장', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3724aaf-6a61-2b52-f64f-908bdb92038c', '586921ea-8434-dce6-35c3-c21440166564', '④ 석면취급 •해체 작업장', '2019-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ba1ec92b-e263-86ae-4634-8f399e971050', '11111111-1111-1111-1111-111111111104', 'mcq', '인간-기계시스템의 설계를 6단계로 구분할 때, 첫 번째 단 계에서 시행하는 것은?', 2, 460)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8963cd1c-9508-c30f-4e92-f93c503d1765', 'ba1ec92b-e263-86ae-4634-8f399e971050', '기본설계', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ea3d5e2-593f-bc72-c707-38254488794f', 'ba1ec92b-e263-86ae-4634-8f399e971050', '시스템의 정의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aec89b33-e755-cb37-ae0a-86a3d8113573', 'ba1ec92b-e263-86ae-4634-8f399e971050', '인터페이스 설계', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('007081b6-60ef-29de-a5fb-7a59587a3d6a', 'ba1ec92b-e263-86ae-4634-8f399e971050', '시스템의 목표와 성능명세 결정', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ba1ec92b-e263-86ae-4634-8f399e971050', '007081b6-60ef-29de-a5fb-7a59587a3d6a', '④ 시스템의 목표와 성능명세 결정', '2019-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 제조업 중 유해위험방지계획서 제출대상 사업의 사업주가 유해 위험방지계획서를 제출하고 자 할 때 첨부하여야 하는 서류에 해당하지 않는 것은?(단, 기타 고용노동부장관이 정하는 도면 및 서류 등은 제외한다.)', 2, 461)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b21b671-4c9b-9b1b-1183-b33e09c0424a', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '공사 개요서', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('712c3503-9a1b-9948-e477-92ecb89e3d04', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '기계-설비의 배치도면', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0832d575-6f5e-32b3-c857-66e1e298466f', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '기계 • 설비의 개요를 나타내는 서류', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b2ffd10-4da7-54f9-4c50-ae50d79789ce', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '원재료 및 제품의 취급, 제조 등의 작업방법의 개요', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '8b21b671-4c9b-9b1b-1183-b33e09c0424a', '① 공사 개요서', '2019-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b0b03506-7fb1-0894-e0e5-0082e9e2795c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 연삭숫돌을 사용하는 작업 의 안전수칙으로 틀린 것은?', 2, 462)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4747faec-7720-86a4-f70b-e2e7435b2405', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '연삭숫돌을 사용하는 경우 작업시작 전과 연삭숫돌을', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69aad523-bf46-ef19-57e0-cabe2ee5649c', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '회전 중인 연삭숫돌이 근로자에 위험을 미칠 우려가 있', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc08f097-5623-24bd-e3a1-377c62cf6278', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '연삭숫돌의 최고 사용회전속도를 초과하여 사용하여서', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('300ac2e2-65f6-54c1-9c8f-b9dcdf073ddf', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '측면을 사용하는 목적으로 하는 연삭숫돌 이외에는 측', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b0b03506-7fb1-0894-e0e5-0082e9e2795c', '4747faec-7720-86a4-f70b-e2e7435b2405', '① 연삭숫돌을 사용하는 경우 작업시작 전과 연삭숫돌을', '2019-1 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b129347c-539d-745c-91e3-73a8c97befab', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 소성가공을 열간가공과 냉간가공으로 분류하는 가 공온도의 기준은?', 2, 463)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddea5ece-03a9-4034-5a7d-cc4f2a4739d1', 'b129347c-539d-745c-91e3-73a8c97befab', '융해점 온도', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('005d9667-4249-dbfe-de22-1785befbfe7f', 'b129347c-539d-745c-91e3-73a8c97befab', '공석점 온도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5cf0b45-8d64-373c-a9ba-af92a4e6606c', 'b129347c-539d-745c-91e3-73a8c97befab', '공정점온도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38f29e28-7012-6d36-5451-5ed09bed59b9', 'b129347c-539d-745c-91e3-73a8c97befab', '재결정온도', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b129347c-539d-745c-91e3-73a8c97befab', '38f29e28-7012-6d36-5451-5ed09bed59b9', '④ 재결정온도', '2019-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3eb3168-6074-4a8e-4815-66525d5aa825', '11111111-1111-1111-1111-111111111104', 'mcq', '자분탐상검사에서 사용하는 자화방법이 아닌 것은?', 2, 464)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a12cf74-6b97-3749-c6bd-ea95d8f5b806', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '축통전법', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd0ea004-70e5-4e35-d1f7-1689d00bc955', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '전류관통법', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3df899d-214f-df46-16c4-a6e2dbcdbd8c', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '극간법', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa9980b8-dc71-5b95-520c-6925b23a4a57', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '임피던스법', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3eb3168-6074-4a8e-4815-66525d5aa825', 'fa9980b8-dc71-5b95-520c-6925b23a4a57', '④ 임피던스법', '2019-1 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4826e995-9c17-1b13-c617-f302d63c32bd', '11111111-1111-1111-1111-111111111104', 'mcq', '컨베이어（Conveyor） 역전방지장치의 형식을 기계식과 전 기식으로 구분할 때 기계식에 해당하지 않는 것은?', 2, 465)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('230386c4-0ef7-b65b-3a01-c1c40e12d4d3', '4826e995-9c17-1b13-c617-f302d63c32bd', '라쳇식', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1198db71-cf8a-7d83-f650-28188529acde', '4826e995-9c17-1b13-c617-f302d63c32bd', '밴드식', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8d7d310-cd7e-2128-8e1b-e2d2f82677ac', '4826e995-9c17-1b13-c617-f302d63c32bd', '스러스트식', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('013afa41-c2ca-65c1-fa36-3d1a6cbed3e7', '4826e995-9c17-1b13-c617-f302d63c32bd', '롤러식', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4826e995-9c17-1b13-c617-f302d63c32bd', 'f8d7d310-cd7e-2128-8e1b-e2d2f82677ac', '③ 스러스트식', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('366cd678-5871-c204-599c-faec2dead60a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스를 제외한 사출성형기 • 주형조형기 및 형단 조기 등에 관한 안전조치사항으로 틀린 것은?', 2, 466)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f0a8948-a56b-d1d5-9aa6-db9a6defbb2b', '366cd678-5871-c204-599c-faec2dead60a', '근로자의 신체 일부가 말려들어갈 우려가 있는 경우에', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff96ba0d-b541-e635-697c-ab2ff044e298', '366cd678-5871-c204-599c-faec2dead60a', '게이트가드식 방호장치를 설치할 경우에는 연동구조를', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59a1af93-b025-d702-f008-78bbb97b0ff2', '366cd678-5871-c204-599c-faec2dead60a', '사출성형기의 전면에 작업용 발판을 설치할 경우 근로', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d8789d9-d51c-40b0-efa2-4e1e27ce7eb3', '366cd678-5871-c204-599c-faec2dead60a', '기계의 히터 등의 가열 부위, 감전우려가 있는 부위에', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('366cd678-5871-c204-599c-faec2dead60a', 'ff96ba0d-b541-e635-697c-ab2ff044e298', '② 게이트가드식 방호장치를 설치할 경우에는 연동구조를', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6506b38e-3883-b712-0e37-eb88a851d9a2', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 작업 중의 조치사항으로 옳은 것은?', 2, 467)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8944925-0010-6803-7f61-e88609d0853b', '6506b38e-3883-b712-0e37-eb88a851d9a2', '검전기에 의한 정전확인', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c82fdcca-e3a1-9e3e-531b-e03c3e3818f0', '6506b38e-3883-b712-0e37-eb88a851d9a2', '개폐기의 관리', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e46a08fc-a6d4-c49c-e691-7d950520fb35', '6506b38e-3883-b712-0e37-eb88a851d9a2', '잔류전하의 방전', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfecd39d-7d12-1f1f-d227-9a5840278c3f', '6506b38e-3883-b712-0e37-eb88a851d9a2', '단락접지 실시', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6506b38e-3883-b712-0e37-eb88a851d9a2', 'c82fdcca-e3a1-9e3e-531b-e03c3e3818f0', '② 개폐기의 관리', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #64
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('559fad81-9c84-85d1-233b-716002b1143e', '11111111-1111-1111-1111-111111111104', 'mcq', '자동전격방지장치에 대한 설명으로 틀린 것은?', 2, 468)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cfee228-bbe7-916b-7d79-d36a600aaf5d', '559fad81-9c84-85d1-233b-716002b1143e', '무부하 시 전력손실을 줄인다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c276432-969b-d9d9-74d5-0d07fa149831', '559fad81-9c84-85d1-233b-716002b1143e', '무부하 전압을 안전전압 이하로 저하시 킨다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21338aad-3360-2756-0b29-db175d925c5e', '559fad81-9c84-85d1-233b-716002b1143e', '용접을 할 때에만 용접기의 주회로를 개로（OFF）시킨다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86ec5fa1-7b6a-01da-d23a-ce4e628a1ab2', '559fad81-9c84-85d1-233b-716002b1143e', '교류아크용접기의 안전장치로서 용접기의 1차 또는 2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('559fad81-9c84-85d1-233b-716002b1143e', '21338aad-3360-2756-0b29-db175d925c5e', '③ 용접을 할 때에만 용접기의 주회로를 개로（OFF）시킨다.', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항 R을 1,OOO[Q]이라고 할 때 위험한계에너 지의 최저는 약 몇 [J]인가?（단, 통전시간은 1초이고, 심실 세동전류/=쯔 [mA] 이다.）', 2, 469)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e359179-b50b-5cab-9cd9-cd0c0659e0a3', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '17.23', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ad002ea-1d1f-f9fd-208c-66a1eeb5c96c', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '27.23', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffb59105-da74-2ba0-c425-beb4de62dad2', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '37.23', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('155cddb5-8313-ec6d-4c2f-8285b9ff9d3d', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '47.23', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '9ad002ea-1d1f-f9fd-208c-66a1eeb5c96c', '② 27.23', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '11111111-1111-1111-1111-111111111104', 'mcq', '이산화탄소소화약제의 특징으로 가장 거리가 먼 것은?', 2, 470)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aae14819-e048-ebb4-1c9d-d5c69e8bf1e3', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '전기절연성이 우수하다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e104bfc-bb1b-0cd2-4502-5d83650a7eb7', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '액체로 저장할 경우 자체 압력으로 방사할 수 있다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50c6f4ed-9906-3ebe-152c-37f86ef922d2', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '기화상태에서 부식성이 매우 강하다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0acaf181-3393-4829-1ab7-85095f7e59b3', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '저장에 의한 변질이 없어 장기간 저장이 용이한 편이다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '50c6f4ed-9906-3ebe-152c-37f86ef922d2', '③ 기화상태에서 부식성이 매우 강하다.', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #91
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('af12400d-7fb6-5cd0-b831-a78244b86d59', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 A가스의 폭발하한계는 2.2[vol%]이다. 이 폭 발하한계값을 기준으로 하여 표준상태에서 A가스와 공기의 혼합기체 1[m3]에 함유되어 있는 A가스의 질량을 구하면 약 몇 [g]인가?（단, A가스의 분자량은 26이다.）', 2, 471)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f5a0bd6-e49f-688a-0cef-9f06fa1e6744', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '19.02', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b224782-7ded-3c7f-758d-8bb4b7c150a6', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '25.54', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc5bb69a-63d9-1b4b-2579-fe44448fbb08', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '29.02', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3df2bba3-ffdf-422e-1c62-eae1b26f3266', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '35.54', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('af12400d-7fb6-5cd0-b831-a78244b86d59', '6b224782-7ded-3c7f-758d-8bb4b7c150a6', '② 25.54', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '11111111-1111-1111-1111-111111111104', 'mcq', '철골건립준비를 할 때 준수하여야 할 사항과 가장 거리가 먼 것은?', 2, 472)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a59a199-203e-abbc-8d2e-b6eae03b0053', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '지상 작업장에서 건립준비 및 기계 - 기구를 배치할 경', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27ad132d-544e-df92-e3f2-a520977b11bc', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '건립작업에 다소 지장이 있다 하더라도 수목은 제거하', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('848dac5b-8bae-1b72-a025-81aaaa0af314', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '사용 전에 기계 • 기구에 대한 정비 및 보수를 철저히 실', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1792fa71-031c-f624-09be-691b2969aea1', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '기계에 부착된 앵커 등 고정장치와 기초구조 등을 확인', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '27ad132d-544e-df92-e3f2-a520977b11bc', '② 건립작업에 다소 지장이 있다 하더라도 수목은 제거하', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 중 교량건설 공사의 유해위험방지계획서를 제출하 여야 하는 기준으로 옳은 것은?', 2, 473)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3672e92-e048-232f-a1e6-15d1346c6ace', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 40[m] 이상인 교량건설 등 공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62464274-7fdd-ecb8-3db9-e3ce4dc092db', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 50[m] 이상인 교량건설 등 공사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('488d2739-4dc6-8aae-cf3d-5499d071a8c0', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 60[m] 이상인 교량건설 등 공사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72d04818-1cae-9670-7277-f76af36c8efe', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 7이m] 이상인 교량건설 등 공사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '62464274-7fdd-ecb8-3db9-e3ce4dc092db', '② 최대 지간길이가 50[m] 이상인 교량건설 등 공사', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09aa2a0e-c7a5-d189-9286-e05669b684a9', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사의 산업안전보건관리비 계상 시 대상액이 구분되 어 있지 않은 공사는 도급계약 또는 자체사업 계획상의 총 공사금액 중 얼마를 대상액으로 하는가?', 2, 474)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b802f419-4d25-2b74-36fb-76ec47889dd1', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '50[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1dbedbc-8a30-c7a9-53f5-3d759d2bfad7', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '60[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b9ab4d3-2540-518a-56d2-afcd6942cca0', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '70[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89bf7ef2-70c1-038f-b96d-f809b54bff88', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '80[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09aa2a0e-c7a5-d189-9286-e05669b684a9', '2b9ab4d3-2540-518a-56d2-afcd6942cca0', '③ 70[%]', '2019-1 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-1 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ad027495-d2c8-daf1-be41-ba71b69a9e5e', '11111111-1111-1111-1111-111111111104', 'mcq', '표준관입시험에 관한 설명으로 옳지 않은 것은?', 2, 475)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd969e41-f3de-9ddb-c8b3-9d9255b463f5', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', 'N치는 지반을 30[cm] 굴진하는 데 필요한 타격횟수를', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('216a3790-6814-41af-626a-0d2a98c9b197', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', 'N치가 4〜10일 경우 모래의 상대밀도는 매우 단단한', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1774cb62-44f5-4ac1-219a-ffef2d7655e7', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', '63.5[kg] 무게의 추를 76[cm] 높이에서 자유낙하하여', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be4f65c1-7594-7a59-2767-9720e9d96b6e', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', '사질지반에 적용하며, 점토지반에서는 편차가 커서 신', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ad027495-d2c8-daf1-be41-ba71b69a9e5e', '216a3790-6814-41af-626a-0d2a98c9b197', '② N치가 4〜10일 경우 모래의 상대밀도는 매우 단단한', '2019-1 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-1'])
on conflict (question_id) do nothing;

-- 2019-2 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('56cd6cda-1fa6-4b38-71fb-9d74662942b9', '11111111-1111-1111-1111-111111111104', 'mcq', '『산업안전보건법령」상 근로자 안전보건교육 중 작업내용 변경 시의 교육을 할 때 일용근로자 및 근로계약기간이 1주 일 이하인 기간제근로자를 제외한 근로자의 교육시간으로 옳은 것은?', 2, 476)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a3643b8-40e2-7e69-db78-4d78359a54ec', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '1시간 이상', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('404aaaaf-acae-a21a-650b-509461f5e3b3', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '2시간 이상', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('931aeb6c-0fd0-9430-bf40-5badb6fc431f', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '4시간 이상', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c5bdc39-060c-0f79-0a55-6fcc3899c867', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '6시간 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('56cd6cda-1fa6-4b38-71fb-9d74662942b9', '404aaaaf-acae-a21a-650b-509461f5e3b3', '② 2시간 이상', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」에 따라 환기가 극히 불량한 좁 은 밀폐된 장소에서 용접작업을 하는 근로자를 대상으로 한 특별교육 내용에 해당하지 않는 것은?（단, 일반적인 안전보 건에 필요한 사항은 제외한다.）', 2, 477)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8618de67-a063-e360-1272-4adf9c823907', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '환기설비에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cda95f24-efa9-908c-27ad-514fb832cffa', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '작업환경 점검에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('413bbaf7-55a8-141e-fca5-f739f8d1c95e', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '질식 시 응급조치에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8335766a-48af-d2c8-0044-b4569d69cb86', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '화재예방 및 초기 대응에 관한 사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '8335766a-48af-d2c8-0044-b4569d69cb86', '④ 화재예방 및 초기 대응에 관한 사항', '2019-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f632aef-3e44-4408-cdca-506e6b6c05c7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 안전인증대상 기계 또는 설비 등의 안 전인증 표시에 해당하는 것은? ■a r산업안전보건법령」상 안전인증대상 기계 또는 설비 등의 안전인 증 표시는', 2, 478)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b22772b5-c806-99db-a3eb-97cf9f2ca4b5', '5f632aef-3e44-4408-cdca-506e6b6c05c7', '이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36eac485-6dbf-8e2b-d1d5-f1be5df36a5a', '5f632aef-3e44-4408-cdca-506e6b6c05c7', 'KS마크로「산업표준화법」에 따른 한국표준규격에 해당한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('097839a2-f6f7-db53-26b1-779aab89d640', '5f632aef-3e44-4408-cdca-506e6b6c05c7', '한국산업안전보건공단에서 주관하는 산업재해예방을 위한 임의 인증표', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1b66179-7b81-f4c2-6af7-7623f6af038f', '5f632aef-3e44-4408-cdca-506e6b6c05c7', 'KPS 안전인증마크로 정부기관의 안전인증을 받았음을 나타내는 안전', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f632aef-3e44-4408-cdca-506e6b6c05c7', 'b22772b5-c806-99db-a3eb-97cf9f2ca4b5', '① 이다.', '2019-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8c7dae74-7ebe-7eca-f359-a647e84e6946', '11111111-1111-1111-1111-111111111104', 'mcq', '유기화합물용 방독마스크의 시험가스가 아닌 것은?', 2, 479)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f40ca379-f64c-a459-a4f5-24aa9687b34c', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '이소부탄', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b928cd17-99f2-6048-233f-613c2898fa42', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '시클로헥산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ab00776-2c71-cfc2-3615-9d969504de47', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '디메틸에테르', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8b1fe3f-8c2e-4021-cb34-e97a40ad5a99', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '염소가스 또는 증기', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8c7dae74-7ebe-7eca-f359-a647e84e6946', 'd8b1fe3f-8c2e-4021-cb34-e97a40ad5a99', '④ 염소가스 또는 증기', '2019-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('906f230c-201f-12a8-ddc5-eea99e3735a4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 브레인스토밍(Brain-storming)의 4원칙을 올바르 게 나열한 것은?', 2, 480)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c07e6026-f4c5-a301-035c-fd0c802966a3', '906f230c-201f-12a8-ddc5-eea99e3735a4', '자유분방, 비판금지 , 대량발언, 수정발언', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa4dd35f-dc63-dc28-e39d-0545238fa720', '906f230c-201f-12a8-ddc5-eea99e3735a4', '비판자유, 소량발언, 자유분방, 수정발언', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0d9c2d-4f12-3c72-106a-05c22dadb6d0', '906f230c-201f-12a8-ddc5-eea99e3735a4', '대량발언, 비판자유, 자유분방. 수정발언', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f28c7281-3fd4-131a-f9bc-a113a8ff3e4a', '906f230c-201f-12a8-ddc5-eea99e3735a4', '소량발언, 자유분방, 비판금지, 수정발언', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('906f230c-201f-12a8-ddc5-eea99e3735a4', 'c07e6026-f4c5-a301-035c-fd0c802966a3', '① 자유분방, 비판금지 , 대량발언, 수정발언', '2019-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #29
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석의 기대효과와 가장 관계가 먼 것은?', 2, 481)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f45e0365-78ef-fd70-aa3f-8ebdfb0f59aa', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '시스템의 결함 진단', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e438e8d-de16-183c-d057-a14be39bc359', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '시간에 따른 원인 분석', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d41f3f6-b02c-cb90-0d44-4f53da95900c', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '사고원인 규명의 간편화', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('201d3413-9d41-eae8-508d-2e640c1ff753', 'f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '사고원인 분석의 정량화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c', '0e438e8d-de16-183c-d057-a14be39bc359', '② 시간에 따른 원인 분석', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1eb28774-2793-58fe-6cea-6b8c66a57f3a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해위험방지계획서의 제출대 상 사업은 해당 사업으로서 전기 계약용량이 얼마 이상인 사업인가?', 2, 482)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('811cfe43-cd6d-974d-380a-58eb32ccd953', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '150[kW]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff1cfade-3630-9bd2-4f90-f1d51c5a8f96', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '200[kW]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c16a0361-d7a9-b99f-6e2c-497bca151e1e', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '3OO[kW]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e5a87b1-b30c-0760-53f7-ee16da3412ca', '1eb28774-2793-58fe-6cea-6b8c66a57f3a', '500[kW]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1eb28774-2793-58fe-6cea-6b8c66a57f3a', 'c16a0361-d7a9-b99f-6e2c-497bca151e1e', '③ 3OO[kW]', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #36
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fb2680cd-d035-95e3-fc28-723947f3b4e2', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전관리(Process Safety Management； PSM)의 적 용대상 사업장이 아닌 것은?', 2, 483)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90427018-5b66-0d54-d26f-eeb7977e38f6', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '복합비료 제조업', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e9f2aab-4ae3-0f02-f5c2-bab5f15c7505', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '농약 원제 제조업', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '차량 등의 운송설비업', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19fbe98e-7913-a424-1192-7f5ab168b0f1', 'fb2680cd-d035-95e3-fc28-723947f3b4e2', '합성수지 및 기타 플라스틱물질 제조업', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fb2680cd-d035-95e3-fc28-723947f3b4e2', 'ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d', '③ 차량 등의 운송설비업', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 와이어로프의 꼬임에 관한 설명으로 틀린 것은?', 2, 484)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7eb00c2-f4f2-b223-c78c-f28447298548', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '보통 꼬임에는 s 꼬임이나 z 꼬임이 있다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7be599db-df21-4ef6-d539-e2d4cfeba9c6', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '보통 꼬임은 스트랜드의 꼬임방향과 로프의 꼬임방향', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f0b3da9-3423-a1d6-a69f-d8d0145fef28', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af82c7f2-38e4-13af-7c26-22db7409de75', 'd8eeb243-3002-d235-f8d6-0ed917fa6aa8', '랭 꼬임은 보통 꼬임에 비하여 마모에 대한 저항성이', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8', '0f0b3da9-3423-a1d6-a69f-d8d0145fef28', '③ 랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5dcd700f-4d3c-2fed-ceae-9768939d3d87', '11111111-1111-1111-1111-111111111104', 'mcq', '가스용접에 이용되는 아세틸렌가스 용기의 색상으로 옳은 것은?', 2, 485)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('054849a3-9bce-9a91-6bdb-d9cd83621418', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '녹색', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd7016b4-9abd-c3eb-5373-6a2777729259', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '회색', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cca0448-b9db-dc15-e661-1cf84dadd244', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '황색', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d14b3fdd-5f3e-25b8-7734-ae755f0d345b', '5dcd700f-4d3c-2fed-ceae-9768939d3d87', '청색', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5dcd700f-4d3c-2fed-ceae-9768939d3d87', '3cca0448-b9db-dc15-e661-1cf84dadd244', '③ 황색', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #54
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('75c17314-bfad-bb95-3a0f-459af988d3c4', '11111111-1111-1111-1111-111111111104', 'mcq', '구내운반차의 제동장치 준수사항에 대한 설명으로 틀린 것 은?', 2, 486)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3dc8c32-91ce-bbff-5af2-7769a62df29e', '75c17314-bfad-bb95-3a0f-459af988d3c4', '조명이 없는 장소에 작업 시 전조등과 후미등을 갖출 것', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e811575-12be-e42b-52c1-069893da2c3d', '75c17314-bfad-bb95-3a0f-459af988d3c4', '운전석이 차 실내에 있는 것은 좌우에 한 개씩 방향지', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a68fa5a-ecbe-1574-a92e-5de804c627af', '75c17314-bfad-bb95-3a0f-459af988d3c4', '핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a746f64c-8176-73e2-e1b7-bb29b356cb5c', '75c17314-bfad-bb95-3a0f-459af988d3c4', '주행을 제동하거나 정지상태를 유지하기 위하여 유효', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('75c17314-bfad-bb95-3a0f-459af988d3c4', '4a68fa5a-ecbe-1574-a92e-5de804c627af', '③ 핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #61
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2dcb8f8b-e656-9957-674b-dfde22917c02', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙川I서 일반 작업장에 전기 위험 방지조치를 취하지 않아도 되는 전압은 몇 [v] 이하인 가?', 2, 487)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('188c4ffa-5bf3-3ab7-689c-604c82f5eb0a', '2dcb8f8b-e656-9957-674b-dfde22917c02', '24', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2168b839-ed31-a1c1-9250-4715fd3bf6d0', '2dcb8f8b-e656-9957-674b-dfde22917c02', '30', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('788a6fe5-8091-0a9e-0a66-d97182ccca3c', '2dcb8f8b-e656-9957-674b-dfde22917c02', '50', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86507bbd-47e7-832e-0afa-951b0eae6efe', '2dcb8f8b-e656-9957-674b-dfde22917c02', '100', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2dcb8f8b-e656-9957-674b-dfde22917c02', '2168b839-ed31-a1c1-9250-4715fd3bf6d0', '② 30', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #69
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d5df664d-c606-9db9-a80e-fb5a0c25cf41', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조에서 안전간극（Safe Gap｝을 작게 하는 이유 로 옳은 것은?', 2, 488)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42fefda7-ae8f-f8f5-2825-db9b63b221ae', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '최소점화에너지를 높게 하기 위해', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dcbed4f-5a07-45c7-a433-521da5743d96', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '폭발화염이 외부로 전파되지 않도록 하기 위해', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b003dcee-c3e5-e923-3b29-116d96909bea', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '폭발압력에 견디고 파손되지 않도록 하기 위해', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe850a4d-2e14-b307-d83d-8b4216d01f1f', 'd5df664d-c606-9db9-a80e-fb5a0c25cf41', '설치류가 전선 등을 훼손하지 않도록 하기 위해', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d5df664d-c606-9db9-a80e-fb5a0c25cf41', '7dcbed4f-5a07-45c7-a433-521da5743d96', '② 폭발화염이 외부로 전파되지 않도록 하기 위해', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a0de241b-e178-dd65-c73e-28bb59696586', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----스、-----1 |-------스、-----부히 ® ® @', 2, 489)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d25b034-088c-8db9-b242-d569f5e0b1a4', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ® — @ — @, 투입 : ® — @ —» @', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a530a44d-b6ac-08bc-ac92-740cf6ac5166', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: © — @ — ®, 투입: O — @—•©', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ecd5169-9814-c797-7a0e-148f726901ad', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ©—+@—®, 투입:@—®~-0', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ae1537a-8f3e-662e-5ce6-076039682a01', 'a0de241b-e178-dd65-c73e-28bb59696586', '차단: ® —- ©—®, 투입: ©—®—Q)', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a0de241b-e178-dd65-c73e-28bb59696586', '5ae1537a-8f3e-662e-5ce6-076039682a01', '④ 차단: ® —- ©—®, 투입: ©—®—Q)', '2019-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cd8cd90b-4013-a53f-e9c1-350656adbbbd', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발위험 장소에서의 본질안전방폭구조에 대한 설명으로 틀 린 것은?', 2, 490)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf4b76c0-60bb-7758-369f-29111983ba5f', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '본질안전방폭구조의 기본적 개념은 점화능력의 본질적', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be9db727-4204-c1d9-aca1-1fa9d4b3211f', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eed7f974-ffc8-3a00-e101-dc9e5eb7adfa', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '이론적으로는 모든 전기기기에 본질안전방폭구조를 적', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0522b313-85ad-65df-bacd-ca50a787806c', 'cd8cd90b-4013-a53f-e9c1-350656adbbbd', '온도, 압력, 액면유량 등의 검출용 측정기는 대표적인', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cd8cd90b-4013-a53f-e9c1-350656adbbbd', 'be9db727-4204-c1d9-aca1-1fa9d4b3211f', '② 본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 화학설비와 화학설비의 부속설비를 구분할 때 화학설비에 해당하는 것은?', 2, 491)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b42cda-6fe7-07d5-8797-142b10385f12', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a9b7b59-5fac-144d-0127-b4950763f6d6', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '사이클론 •백필터 • 전기 집진기 등 분진처리설비', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f724480-346e-be38-0902-d3c841027218', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '온도 •압력 •유량 등을 지시 • 기록 등을 하는 자동제어', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5536b9df-bd4e-4c14-9563-22b6bc8c1545', 'b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', '안전밸브 • 안전판 • 긴급차단 또는 방출밸브 등 비상조', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8', 'd5b42cda-6fe7-07d5-8797-142b10385f12', '① 응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류', '2019-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #82
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('74c2c845-0f13-f5f0-4aac-6325d2addd0e', '11111111-1111-1111-1111-111111111104', 'mcq', '가연성 가스 혼합물을 구성하는 각 성분의 조성과 연소범위 가 다음 [표]와 같을 때 혼합가스의 연소하한값은 약 몇 [vol%] 인가? 조성 연소하한값 연소상한값 구분 [vol%] [vol%] [vol%] 헥산 1 1.1 7.4 메탄 2.5 5.0 15.0 에틸렌 0.5 2.7 36.0 공기 96 - —', 2, 492)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('92a50a4e-efc5-3ad6-2d06-4cd9f00f4647', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '2.51', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b54f0252-91a2-ed40-5acb-d50802ee73db', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '7.51', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1472650-37e1-cdb7-528c-8775cb3d44ea', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '12.07', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c618367c-1073-7fb7-b3d9-94a28b335c0b', '74c2c845-0f13-f5f0-4aac-6325d2addd0e', '15.01', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('74c2c845-0f13-f5f0-4aac-6325d2addd0e', '92a50a4e-efc5-3ad6-2d06-4cd9f00f4647', '① 2.51', '2019-2 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('51997e93-fd8c-9458-d932-f0b27c0acdad', '11111111-1111-1111-1111-111111111104', 'mcq', '공정안전보고서에 포함하여야 할 세부내용 중 공정안전자 료의 세부내용이 아닌 것은?', 2, 493)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('570cf755-0a03-cc02-7ae1-c255ec42dfce', '51997e93-fd8c-9458-d932-f0b27c0acdad', '유해•위험설비의 목록 및 사양', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27407ff5-a970-cb6c-414c-5a1db08fed91', '51997e93-fd8c-9458-d932-f0b27c0acdad', '폭발위험장소 구분도 및 전기단선도', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e923104-e1a7-16d4-33b0-c72b541deacf', '51997e93-fd8c-9458-d932-f0b27c0acdad', '유해 • 위험물질에 대한 물질안전보건자료', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e83e1193-4319-51b6-b545-3daa79f4a9f4', '51997e93-fd8c-9458-d932-f0b27c0acdad', '설비점검 - 검사 및 보수계획, 유지계획 및 지침서', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('51997e93-fd8c-9458-d932-f0b27c0acdad', 'e83e1193-4319-51b6-b545-3daa79f4a9f4', '④ 설비점검 - 검사 및 보수계획, 유지계획 및 지침서', '2019-2 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #88
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce479f27-4677-512a-6b16-c20f68719125', '11111111-1111-1111-1111-111111111104', 'mcq', '["C], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇 [℃]가 되겠는가?（단, 공기의 비열비는 1.401 다.）', 2, 494)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce2884d3-4f23-c64f-4a78-c4f8d3335284', 'ce479f27-4677-512a-6b16-c20f68719125', '32', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7958b93-11b1-3c99-e439-a470e59b3c89', 'ce479f27-4677-512a-6b16-c20f68719125', '191', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40cc8928-f314-49cf-e83b-52c4172fb63b', 'ce479f27-4677-512a-6b16-c20f68719125', '305', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('971e9494-5021-bad4-d045-66ac90744208', 'ce479f27-4677-512a-6b16-c20f68719125', '464', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce479f27-4677-512a-6b16-c20f68719125', 'a7958b93-11b1-3c99-e439-a470e59b3c89', '② 191', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '11111111-1111-1111-1111-111111111104', 'mcq', '부탄（C4Hl0）의 연소에 필요한 최소산소농도（MOC）를 추정 하여 계산하면 약 몇 [vol%]인가?（단, 부탄의 폭발하한계는 공기 중에서 1.6[vol%]이다.）', 2, 495)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21c68167-e453-6361-e289-b1d2dddd898a', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '5.6', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('251939d9-a5d7-3997-2ac3-96bd83c65a6b', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '7.8', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9100c97f-0c0e-f0de-eae1-6286a0f4bfec', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '10.4', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec114bc9-1f8a-5728-3912-cd1f97c20b36', 'f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '14.1', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6', '9100c97f-0c0e-f0de-eae1-6286a0f4bfec', '③ 10.4', '2019-2 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '11111111-1111-1111-1111-111111111104', 'mcq', '강관비계 조립 시의 준수사항으로 옳지 않은 것은?', 2, 496)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d3ce6b4-003d-d0ac-c1f7-25230b1677d8', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '비계기둥에는 미끄러지거나 침하하는 것을 방지하기', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd21b38b-451b-09dd-a7f7-4dd39b452f5f', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a2d4c9a-a01a-ae4d-c4a7-ebfd8a0e5bc3', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '교차가새로 보강한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59258a85-dbc8-72ae-d5c6-886513b6f5a3', '66fd9aaa-68a3-2759-fd8b-a6aad74d543c', '외줄비계 - 쌍줄비계 또는 돌출비계에 대해서는 벽이음', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c', 'fd21b38b-451b-09dd-a7f7-4dd39b452f5f', '② 지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체', '2019-2 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-2'])
on conflict (question_id) do nothing;

-- 2019-3 #1
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은? .', 2, 497)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47be40cd-081c-5a1d-b127-f8740700b800', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '단기간의 교육시간 내에 비교적 많은 내용을 전달할 수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('386e84d6-21fe-b3be-f7bc-f859fac2462f', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '다수의 수강자를 대상으로 동시에 교육할 수 있다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6bc501b7-db9d-4ae5-c98f-ade672a31acd', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '다른 교육방법에 비해 수강자의 참여가 제약된다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25ebed85-62b5-aeeb-7388-56ae2d0e7669', 'e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '수강자 개개인의 학습진도를 조절할 수 있다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424', '25ebed85-62b5-aeeb-7388-56ae2d0e7669', '④ 수강자 개개인의 학습진도를 조절할 수 있다.', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육의 단계에 해당하지 않는 것은?', 2, 498)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16813f09-6fd6-ea48-befb-55d21e1acf70', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '지식교육', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32548549-a429-5994-8214-f95a78c204b0', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '기초교육', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6436e34-9aa4-28c7-14b3-f90a20145ed7', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '태도교육', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ea93b17-80ca-6029-5cc1-65fdfa81217e', 'd7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '기능교육', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8', '32548549-a429-5994-8214-f95a78c204b0', '② 기초교육', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9310f824-9ca5-ce7c-85e8-f84e01d04014', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련의 문제해결 4라운드에 속하지 않는 것은?', 2, 499)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c410fb89-b7ad-0fbc-00dc-0e1c57ad0d1b', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '현상파악', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f24573bd-deae-898d-9b5d-a99861081630', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '본질추구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a80e8b69-98ba-ee58-43bf-b076d7a2c03c', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '원인결정', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23e9cb81-0bc2-0a4b-8961-5042ed5b44a4', '9310f824-9ca5-ce7c-85e8-f84e01d04014', '대책수립', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9310f824-9ca5-ce7c-85e8-f84e01d04014', 'a80e8b69-98ba-ee58-43bf-b076d7a2c03c', '③ 원인결정', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('efffb9d0-bf9f-9879-9ba6-c294787400f1', '11111111-1111-1111-1111-111111111104', 'mcq', '산업재해의 기본원인 중 “작업정보, 작업방법 및 작업환 경” 등이분류되는 항목은?', 2, 500)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('613779db-2c82-0479-aba7-83a4fc12e8c1', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Man', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ced69be3-3962-3f9d-a25e-1529cd40ab09', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Machine', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b86aa643-2ea9-591b-b0bd-f7fada1e4afe', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Media', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a4ef640-9c56-f98e-a6c1-480007a62782', 'efffb9d0-bf9f-9879-9ba6-c294787400f1', 'Management', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('efffb9d0-bf9f-9879-9ba6-c294787400f1', 'b86aa643-2ea9-591b-b0bd-f7fada1e4afe', '③ Media', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('517330ef-d07e-de11-8559-873d321c86aa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 관리감독자 대상 정기안전보건교육 의 교육내용으로 옳은 것은?', 2, 501)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc5c27d9-6972-2343-3261-9532d8a497a7', '517330ef-d07e-de11-8559-873d321c86aa', '작업 개시 전 점검에 관한 사항', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1db307a-488a-d48a-db7d-253558aed4e5', '517330ef-d07e-de11-8559-873d321c86aa', '정 리정돈 및 청소에 관한 사항', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53af00d1-e36b-04aa-6dce-155d2383a01c', '517330ef-d07e-de11-8559-873d321c86aa', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88fc56d3-415b-25ed-36bc-7173e4953b78', '517330ef-d07e-de11-8559-873d321c86aa', '기계 . 기구의 위험성과작업의 순서 및 동선에 관한사항', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('517330ef-d07e-de11-8559-873d321c86aa', '53af00d1-e36b-04aa-6dce-155d2383a01c', '③ 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('661d837b-861f-5bf9-2fbb-3fbf8b75d434', '11111111-1111-1111-1111-111111111104', 'mcq', '라인（Une）형 안전관리조직에 대한 설명으로 옳은 것은?', 2, 502)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c33bf0e6-9442-d01f-a5bb-83c65467994d', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '명령계통과 조언이나 권고적 참여가 혼동되기 쉽다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afc2bc52-31af-01c2-eb4f-6f41c14e5b20', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '생산부서와의 마찰이 일어나기 쉽다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6924541-72b8-85ac-75c9-46517773f1de', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '명령계통이 간단명료하다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07c8fa8d-0665-c0ae-93ff-8459c756ae57', '661d837b-861f-5bf9-2fbb-3fbf8b75d434', '생산부분에는 안전에 대한 책임과 권한이 없다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('661d837b-861f-5bf9-2fbb-3fbf8b75d434', 'e6924541-72b8-85ac-75c9-46517773f1de', '③ 명령계통이 간단명료하다.', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c3784e8b-f95d-0f51-013b-ee58460c2b51', '11111111-1111-1111-1111-111111111104', 'mcq', 'r산업안전보건법령」상（ ）에 알맞은 기준은? 안전보건표지의 제작에 있어 안전보건표지 속의 그림 또는 부 호의 크기는 안전보건표지의 크기와 비례하여야 하며, 안전보 건표지 전체 규격의（ ）이상이 되어야 한다.', 2, 503)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('496dee5e-f155-ca6f-c502-0ed82983d8b6', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '20[%]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ed824ca-d9fa-7f80-8590-a7c5faf243bc', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '30[%]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d11debe-5dd3-c414-d085-98a99ec6943b', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '40[%]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41cd25ab-a431-85e9-0b48-e63a0e0976e4', 'c3784e8b-f95d-0f51-013b-ee58460c2b51', '50[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c3784e8b-f95d-0f51-013b-ee58460c2b51', '1ed824ca-d9fa-7f80-8590-a7c5faf243bc', '② 30[%]', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b76857b7-3d16-f99d-7127-a5e27ab06aeb', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 주로 고음을 차음하고, 저음은 차음 하지 않는 방음보호구의 기호로 옳은 것은?', 2, 504)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7954f769-a4e8-c697-c716-824825b0064a', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'NRR', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4df2913f-fa42-c958-055d-ec4e750a71a9', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EM', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c2f4b21-a8c5-c503-c4e0-1cdcaf378761', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EP—1', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9ea03f4-8fdf-4225-9565-704ccacea49f', 'b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'EP-2', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b76857b7-3d16-f99d-7127-a5e27ab06aeb', 'c9ea03f4-8fdf-4225-9565-704ccacea49f', '④ EP-2', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #19
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6efbbc52-51d7-89e7-a569-94cbc8105640', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해위험방지계획서 제출대상 공사 에 해당하는 것은?', 2, 505)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf0092bb-c1db-9d80-877c-ae68f9df2682', '6efbbc52-51d7-89e7-a569-94cbc8105640', '깊이가 5[m] 이상인 굴착공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8aafb48f-815e-fb3b-8b68-30b01d12348b', '6efbbc52-51d7-89e7-a569-94cbc8105640', '최대 지간거리 3O[m] 이상인 교량건설 공사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0426850e-838b-5f85-9acb-01b047ae8f13', '6efbbc52-51d7-89e7-a569-94cbc8105640', '지상높이 21[m] 이상인 건축물 공사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3', '6efbbc52-51d7-89e7-a569-94cbc8105640', '터널 건설 공사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6efbbc52-51d7-89e7-a569-94cbc8105640', 'b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3', '④ 터널 건설 공사', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #23
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명에 해당하는 설비보전방식의 유형은? 설비보전 정보와 신기술을 기초로 신뢰성, 조작성, 보전성, 안 전성, 경제성 등이 우수한 설비의 선정, 조달 또는 설계를 통 하여 궁극적으로 설비의 설계, 제작 단계에서 보전활동이 불 필요한 체제를 목표로 한 설비보전 방법을 말한다.', 2, 506)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4262129c-376f-7c37-3b2f-054aee74fe9e', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '개량보전', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0433f61-d44c-b0f4-b5d7-8020326c538c', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '보전예방', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('538875dc-40f1-3df6-835a-c7249b11215e', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '사후보전', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27fcf1ea-9b3d-e406-c5b6-ed503b646a15', '02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', '일상보전', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55', 'e0433f61-d44c-b0f4-b5d7-8020326c538c', '② 보전예방', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #26
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '11111111-1111-1111-1111-111111111104', 'mcq', '온도와 습도 및 공기 유동이 인체에 미치는 열효과를 하나 의 수치로 통합한 경험적 감각지수로, 상대습도 100[%]일 때의 건구온도에서 느끼는 것과 동일한 온감을 의미하는 온 열조건의 용어는?', 2, 507)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63464b61-8e19-f8eb-91d3-a666c5955f89', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', 'Oxford 지수', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f82e2dd0-4e2f-dbc7-fcbd-ac50159e68a9', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '발한율', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e5aede1b-31d5-28df-5971-df17d352ce0d', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '실효온도', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aeb54c39-27f9-b8e1-d896-3cfcf3e87fda', 'c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', '열압박지수', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6', 'e5aede1b-31d5-28df-5971-df17d352ce0d', '③ 실효온도', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #36
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('26f42b86-d194-7699-34fa-144c728f7830', '11111111-1111-1111-1111-111111111104', 'mcq', '시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[LVmin]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?', 2, 508)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39c8e039-ad7e-cf56-6dfe-73cf842f209f', '26f42b86-d194-7699-34fa-144c728f7830', '124[분]', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb16026-eab1-065a-5918-c8a58f776a6e', '26f42b86-d194-7699-34fa-144c728f7830', '134[분]', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d458476-fdca-de3a-b31a-234d902a82b5', '26f42b86-d194-7699-34fa-144c728f7830', '144[분]', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b10f0761-f00b-e7c0-7c35-f26043380f84', '26f42b86-d194-7699-34fa-144c728f7830', '154[분]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('26f42b86-d194-7699-34fa-144c728f7830', '6d458476-fdca-de3a-b31a-234d902a82b5', '③ 144[분]', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '11111111-1111-1111-1111-111111111104', 'mcq', '파에서 사용하는 수정게이트의 종류 중 3개의 입력현상 중 2개가 발생한 경우에 출력이 생기는 것은?', 2, 509)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53fcbf2f-2ed7-b241-710b-0aeb776b5f38', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '위험지속기호', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('990c6801-30a4-3c15-feca-8b882cc3ae51', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '조합 AND 게이트', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f7a692-8e4d-5b8b-7666-d0e218e5e582', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '배타적 OR 게이트', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('852b12a4-a363-3a5e-1f86-9781758f0683', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '억제 게이트', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '990c6801-30a4-3c15-feca-8b882cc3ae51', '② 조합 AND 게이트', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b13c1505-21a3-6a84-cf3f-947b091ff14d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 승강기의 종류에 해당하지 않 는것은?', 2, 510)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '리프트', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c464118-01fc-aa91-c0b4-97b9ffe09995', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '승객용 엘리베이터', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7f52d4c2-4252-1640-9e24-1370e6a503cd', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '에스컬레이터', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f106850e-39e7-d838-7adb-4024248c78d6', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '화물용 엘리베이터', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b13c1505-21a3-6a84-cf3f-947b091ff14d', '3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82', '① 리프트', '2019-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #51
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('627e7076-a493-cb6b-28b1-b0bf8c4a270c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 다음（ ）안에 들어갈 내용 으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）미터 이상인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하 는 경우에는 근로자의 추가 위험을 방지하기 위하여 해당 작 업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전 하게 오르내리기 위한 설비를 설치하여야 한다.', 2, 511)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f414b2d-f2f4-2578-51cb-85cf21903f6d', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '1.5', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5282fe22-26c4-8d1d-696a-ab2e8a930864', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '2', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de782688-8580-c348-eb47-607d162f5d80', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '2.5', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46360e06-f57e-e4a2-af29-b6838feb697a', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '3', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('627e7076-a493-cb6b-28b1-b0bf8c4a270c', '5282fe22-26c4-8d1d-696a-ab2e8a930864', '② 2', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #64
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bea7484e-d12c-46f2-613f-c86f605fdab0', '11111111-1111-1111-1111-111111111104', 'mcq', '전기화재 발생원인으로 틀린 것은?', 2, 512)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc5fafda-2220-f82c-cb13-3132e3c0c45f', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '발화원', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4adecda5-9d8d-58d0-5963-cb7e9928e473', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '내화물', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aebc51ec-e5bf-36f7-050e-6b05bbf332f3', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '착화물', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10416b82-8e41-bcf2-1736-bba8b57d1ea1', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '출화의 경과', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bea7484e-d12c-46f2-613f-c86f605fdab0', '4adecda5-9d8d-58d0-5963-cb7e9928e473', '② 내화물', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab916a27-9b91-712f-ba75-ed941f555e2e', '11111111-1111-1111-1111-111111111104', 'mcq', '누전차단기의 설치가 필요한 것은?', 2, 513)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa70df56-8d87-e12b-34a2-1d286188a036', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '이중절연구조의 전기기계 •기구', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df326cf1-7a81-813f-f268-4a3c6f00c906', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '비접지식 전로의 전기기계 •기구', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1256db2-9aea-097c-80cc-5a3a4a85b662', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '절연대 위에서 사용하는 전기기계 • 기구', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a80e04fd-0b73-48e3-c897-bc25ba8b0774', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '도전성이 높은 장소의 전기기 계 • 기구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab916a27-9b91-712f-ba75-ed941f555e2e', 'a80e04fd-0b73-48e3-c897-bc25ba8b0774', '④ 도전성이 높은 장소의 전기기 계 • 기구', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '11111111-1111-1111-1111-111111111104', 'mcq', '과전류에 의해 전선의 허용전류보다 큰 전류가 흐르는 경우 절연물이 화구가 없더라도 자연히 발화하고 심선이 용단되 는 발화단계의 전선 전류밀도［A/mm2］는?', 2, 514)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b68d0c3e-43a0-6d2c-9771-c2d885dce4a2', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '10〜20', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('739f7f64-0acb-9f7b-5b12-7ffdccfdfe61', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '30~50', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5316acee-e384-53aa-edab-f73a9df63e83', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '60-120', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd354f8f-9523-4d3f-560c-5fb121ed8c64', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '130-200', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '5316acee-e384-53aa-edab-f73a9df63e83', '③ 60-120', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a41e7977-b1d5-6db6-a716-d0701a1da423', '11111111-1111-1111-1111-111111111104', 'mcq', '기중차단기의 기호로 옳은 것은?', 2, 515)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('351ea0df-7f9a-5347-d85c-fabce2df714b', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'VCB', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('025a33f5-b182-f4da-f31c-08064fb97846', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'MCCB', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb0563e0-b68c-feb6-ac2b-c443a08e94b6', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'OCB', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a075ad2a-8fc4-5479-e000-809c912db43c', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'ACB', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a41e7977-b1d5-6db6-a716-d0701a1da423', 'a075ad2a-8fc4-5479-e000-809c912db43c', '④ ACB', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('054abc01-a903-4263-c005-a0db01491072', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 이황화탄소(cs2)의 폭발한계는 하한값이 1.25[v이%], 상한값이 44[v이%]이다. 이를 20[℃] 대기압 하에서 [mg/L]의 단위로 환산하면 하한값과 상한값은 각각 약 얼마인가?(단, 이황화탄소의 분자량은 76.1 이다.)', 2, 516)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b9b926f-9c7e-8030-7ba1-c55c91b10c57', '054abc01-a903-4263-c005-a0db01491072', '하한값: 61, 상한값: 640', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c4aeac8-7d69-aca7-a879-0fdb128a7812', '054abc01-a903-4263-c005-a0db01491072', '하한값: 39.6, 상한값: 1,395', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db1f37b4-5fad-9526-4b35-37e52c814efc', '054abc01-a903-4263-c005-a0db01491072', '하한값: 146, 상한값: 860', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5eda28ef-6a86-63bb-d656-1a566a1cb724', '054abc01-a903-4263-c005-a0db01491072', '하한값: 55.4, 상한값: 1,642', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('054abc01-a903-4263-c005-a0db01491072', '7c4aeac8-7d69-aca7-a879-0fdb128a7812', '② 하한값: 39.6, 상한값: 1,395', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18638906-2e39-9557-2b5e-7664034e5333', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 “부식성 산류”에 해당하지 않는 것은?', 2, 517)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d49351b-0e0e-eecd-d63f-a9eb1f86896e', '18638906-2e39-9557-2b5e-7664034e5333', '농도 2이%]인 염산', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71bff625-b99f-c99b-ab80-da6390943212', '18638906-2e39-9557-2b5e-7664034e5333', '농도 4이%]인 인산', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f7a04bd-d498-786f-fbd6-897a16aa71bf', '18638906-2e39-9557-2b5e-7664034e5333', '농도 5이%]인 질산', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a19669e5-ea63-696e-e205-d88bd2937755', '18638906-2e39-9557-2b5e-7664034e5333', '농도 60[%]인 아세트산', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18638906-2e39-9557-2b5e-7664034e5333', '71bff625-b99f-c99b-ab80-da6390943212', '② 농도 4이%]인 인산', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('470abd0e-2399-90cc-2d91-ce3fcff124ae', '11111111-1111-1111-1111-111111111104', 'mcq', 'Burgess-Wheeler의 법칙에 따르면 서로 유사한 탄화수소 계의 가스에서 폭발하한계의 농도[vol%]와 연소열[kcal/ mol]의 곱의 값은 약 얼마 정도인가?', 2, 518)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46ae555e-d8f4-1302-f3b6-2b3dc3634651', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '1,100', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9add3281-5b29-dcd8-a435-0c2e7423c81b', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '2,800', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c80c4971-13a7-cad3-e635-8d474bf2d6a4', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '3,200', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72fc3ec3-3f24-8045-abd9-36035d059834', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '3,800', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('470abd0e-2399-90cc-2d91-ce3fcff124ae', '46ae555e-d8f4-1302-f3b6-2b3dc3634651', '① 1,100', '2019-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9487b1e9-437d-8724-9575-2457dc1e6581', '11111111-1111-1111-1111-111111111104', 'mcq', '디에틸에테르와 에틸알코올이 3 ： 1로 혼합된 혼합증기의 몰비가 각각 0.75, 0.25이고, 디에틸에테르와 에틸알코올 의 폭발하한값이 각각 1.9[vol%], 4.3[vol%]일 때 혼합가스 의 폭발하한값은 약 몇 [vol%]인가?', 2, 519)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44e81ec3-715f-82be-9b9f-ed19cfbab2e0', '9487b1e9-437d-8724-9575-2457dc1e6581', '2.2', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('362c288e-067b-a441-d33a-116c572d15a8', '9487b1e9-437d-8724-9575-2457dc1e6581', '3.5', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dea9b422-d8d0-51ae-125e-a72785a68528', '9487b1e9-437d-8724-9575-2457dc1e6581', '22.0', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b8867b9-d47e-11f7-118f-95571a07109a', '9487b1e9-437d-8724-9575-2457dc1e6581', '34.7', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9487b1e9-437d-8724-9575-2457dc1e6581', '44e81ec3-715f-82be-9b9f-ed19cfbab2e0', '① 2.2', '2019-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ba666b73-8998-5f9e-58a1-7093f47f5dba', '11111111-1111-1111-1111-111111111104', 'mcq', '일산화탄소에 대한 설명으로 틀린 것은?', 2, 520)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bfdddd7-6485-dec2-e436-78aac5c5d211', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '무색-무취의 기체이다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7f6ec23f-b1a6-c4e9-07d8-cb1bb6071b99', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '염소와 촉매 존재하에 반응하여 포스겐이 된다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d6b578-4d5b-f1c2-aca9-d9c044c1e2e3', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '인체 내의 헤모글로빈과 결합하여 산소운반기능을 저', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69a863a6-dd9e-069a-c515-6f24a4028061', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '불연성 가스로서, 허용농도가 10[ppm]이다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ba666b73-8998-5f9e-58a1-7093f47f5dba', '69a863a6-dd9e-069a-c515-6f24a4028061', '④ 불연성 가스로서, 허용농도가 10[ppm]이다.', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #94
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef841e56-905e-5bb4-cd53-0c54b62c01d6', '11111111-1111-1111-1111-111111111104', 'mcq', '금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 틀린 것은?', 2, 521)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6acb5ba4-7dcd-15fc-25e9-c2d301a83bb5', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '전도의 위험이 없도록 한다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4bb54cc6-26cd-59d0-5230-753350ed0196', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '밸브를 서서히 개폐한다.', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83d78ce6-2403-b4fe-3fa2-1f4dd94faaab', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '용해아세틸렌의 용기는 세워서 보관한다.', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2263699f-1b48-f7a3-c75a-77bf58aec755', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '용기의 온도를 65도 이하로 유지한다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef841e56-905e-5bb4-cd53-0c54b62c01d6', '2263699f-1b48-f7a3-c75a-77bf58aec755', '④ 용기의 온도를 65도 이하로 유지한다.', '2019-3 기출 정답 ④. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('816d73b6-6caa-8481-cd81-c4dd3e05fc26', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 동바리 로 사용하는 파이프서 포트의 설치기 준이다. （ ） 안에 들어갈 내용으로 옳은 것은? 파이프서포트를（ ）이상 이어서 사용하지 않도록 할것', 2, 522)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22f62b36-c01a-e3a0-fae4-c789f1ccb38d', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '2개', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b689d04a-28a0-b578-911e-1a97f215e8ae', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '3개', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d9aa4db2-e3dc-f55a-96e2-953c423c3e42', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '4개', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68c22778-131d-4ae5-dc81-d87b2a0d6f15', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '5개', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('816d73b6-6caa-8481-cd81-c4dd3e05fc26', 'b689d04a-28a0-b578-911e-1a97f215e8ae', '② 3개', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be2a3e14-e434-f4d2-0c64-def2739fae24', '11111111-1111-1111-1111-111111111104', 'mcq', '굴착기계의 운행 시 안전대책으로 옳지 않은 것은?', 2, 523)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16a468e0-35a2-5e8c-b88b-5ef930e57c0c', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '버킷에 사람의 탑승을 허용해서는 안 된다.', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dcb608c6-2c62-34e0-1c98-769180417fb5', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff8fd43e-d7da-8676-a946-141a168ba742', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '장비의 주차 시 경사지나 굴착작업장으로부터 충분히', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9df1a5f1-f837-f030-20a8-066dc0da3dd1', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '전선이나 구조물 등에 인접하여 붐을 선회해야 할 작업에', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be2a3e14-e434-f4d2-0c64-def2739fae24', 'dcb608c6-2c62-34e0-1c98-769180417fb5', '② 운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d39438a4-8198-053b-f3aa-d0931339392e', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준으 로 옳지 않은 것은?', 2, 524)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b60c20c-3deb-ef87-a1ea-6eee158150f2', 'd39438a4-8198-053b-f3aa-d0931339392e', '높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0f9eeef-edc6-8843-c762-e6b046f8a4aa', 'd39438a4-8198-053b-f3aa-d0931339392e', '수직방향으로 6[m], 수평방향으로 8[m] 이내마다 벽이', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c78baf1e-9e50-38c6-e933-c7ccdac97db6', 'd39438a4-8198-053b-f3aa-d0931339392e', '길이가 띠장 방향으로 4[m] 이하이고 높이가 10[m]를', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d3899f0-0494-9db2-770e-b9cc30234014', 'd39438a4-8198-053b-f3aa-d0931339392e', '주틀 간에 교차가새를 설치하고 최상층 및 5층 이내마', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d39438a4-8198-053b-f3aa-d0931339392e', '7b60c20c-3deb-ef87-a1ea-6eee158150f2', '① 높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', '2019-3 기출 정답 ①. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #119
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03568d74-38ad-77ba-d1a4-2af192f9ad61', '11111111-1111-1111-1111-111111111104', 'mcq', '차량계 하역운반기계를 사용하여 작업할 때에 그 기계가 넘 어지거나 굴러 떨어짐으로써 근로자가 위험해질 우려가 있. 는 경우에 조치하여야 할 사항과 거리가 먼 것은?', 2, 525)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9708f4bd-4dab-3353-b1ff-91fcb40a137b', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '해당 기계에 대한유도자 배치', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1a176b6-d7af-c658-4590-9f21e63763c2', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '경보장치 설치', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99abd836-4b6b-3b1c-ae9a-a3be8acb4942', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '지반의 부동침하 방지', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85d2340a-17a8-623d-c658-d3cab2cc6e30', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '갓길의 붕괴 방지조치', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03568d74-38ad-77ba-d1a4-2af192f9ad61', 'c1a176b6-d7af-c658-4590-9f21e63763c2', '② 경보장치 설치', '2019-3 기출 정답 ②. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;

-- 2019-3 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사 유해 위험방지계획서를 제출해야 할 대상공사에 해당하지 않는 것은?', 2, 526)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1787ea3e-507f-2a75-b397-c331e4ad1b8f', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '깊이 10[m]인 굴착공사', 0)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ab761ae-567f-482e-36f9-d3108f5b5748', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '다목적댐 건설공사', 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fac7fb33-0b5e-fd32-1275-943d83ccadcd', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '최대 지간길이가 40[m]인 교량건설 공사', 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9755da9c-5bee-a50a-6a56-482def0b53d4', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '연면적 5,00이m2]인 냉동 • 냉장 창고시설의 설비공사', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', 'fac7fb33-0b5e-fd32-1275-943d83ccadcd', '③ 최대 지간길이가 40[m]인 교량건설 공사', '2019-3 기출 정답 ③. (해설은 교재 참고)', array['산업안전기사','2019-3'])
on conflict (question_id) do nothing;
