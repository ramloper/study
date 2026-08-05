-- chunk 12/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2020-4 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등을 사용하여 작업을 할 때 에 작업시작 전 점검사항으로 가장 거리가 먼 것은?', 2, 441)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ac385cc-b9fe-92a5-055d-22160eb929c7', 'fdc69185-906e-60e9-3d14-a2056cb25964', '압력방출장치의 기능', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de878d66-bd2b-b9d8-28b8-57be461f538e', 'fdc69185-906e-60e9-3d14-a2056cb25964', '클러치 및 브레이크의 기능', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b3f376f-ac09-b61c-e5a5-233463dea8b5', 'fdc69185-906e-60e9-3d14-a2056cb25964', '프레스의 금형 및 고정볼트 상태', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d1f1a00-14f9-74c6-3773-871bba832ae2', 'fdc69185-906e-60e9-3d14-a2056cb25964', '1행정 1정지기구 •급정지장치 및 비상정지장치의 기능', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdc69185-906e-60e9-3d14-a2056cb25964', '5ac385cc-b9fe-92a5-055d-22160eb929c7', '① 압력방출장치의 기능', '정답 ①. a 압력방출장치는 공기압축기를 가동할 때 작업시작 전 점검사항 이다. 프레스 등의 작업시작 전 점검사항 • 클러치 및 브레이크의 기능 • 크랭크축 • 플라이휠 - 슬라이드 • 연결봉 및 연결 나사의 풀림 유무 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 E 幻', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스 방호장치에서 게이트가드식 방호장치의 종 류를 작동방식에 따라 분류할 때 가장 거리가 먼 것은?', 2, 442)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db4346ff-eaea-0776-af81-8dd786dbdd59', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '경사식', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa154595-3c9b-51cd-08ac-42031a604961', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '하강식', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('542ebf96-a650-6841-2d54-e19114b43f86', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '도립식', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd938c38-8fc6-8bd1-00ef-9902f05f1b12', '43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', '횡 슬라이드식', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('43a0dbde-cc1c-0df5-ecae-5b4bf67d2a8a', 'db4346ff-eaea-0776-af81-8dd786dbdd59', '① 경사식', '정답 ①. KOI 프레스 게이트가드 방호장치는 게이트의 작동방식에 따라 하강 식. 도립식. 횡 슬라이드식 등으로 구분한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 보일러 운전 시 안전수칙으로 가장 적절하지 않은 것은?', 2, 443)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac190440-71c0-c000-ccc0-99c7e5994d82', '8701f06b-0ca6-ab78-498a-97e89708716b', '가동 중인 보일러에는 작업자가 항상 정위치를 떠나지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24eebda-c4d3-2dd9-bc4f-60c4fd0c68c6', '8701f06b-0ca6-ab78-498a-97e89708716b', '보일러의 각종 부속장치의 누설상태를 점검할 것', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5861388-f23a-c458-d320-da70c496180f', '8701f06b-0ca6-ab78-498a-97e89708716b', '압력방출장치는 매 7년마다 정기적으로 작동시험을', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34c4c8bf-5e3b-8d22-dc9e-d767e96f2841', '8701f06b-0ca6-ab78-498a-97e89708716b', '노내의 환기 및 통풍장치를 점검할 것', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8701f06b-0ca6-ab78-498a-97e89708716b', 'b5861388-f23a-c458-d320-da70c496180f', '③ 압력방출장치는 매 7년마다 정기적으로 작동시험을', '정답 ③. 3 압력방출장치는 매년 1회 이상 국가교정기관에서 교정을 받은 압력 계를 이용하여 설정압력에서 압력 방출장치가 적정하게 작동하는지를 검사한 후 납으로 봉인하여 사용하여야 한다. E 81', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', '11111111-1111-1111-1111-111111111104', 'mcq', '『산업안전보건법령」상 크레인에서 권과방지장치의 달기구 윗면이 권상장치의 아랫면과 접촉할 우려가 있는 경우 최소 몇 [m] 이상 간격이 되도록 조정하여야 하는가?（단, 직동식 권과방지장치의 경우는 제외）', 2, 444)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('852a61e9-e22c-f01e-0f6d-74c6d8f1d995', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.1', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03529c67-6e65-d043-c401-3ad2a915ab1f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.15', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb2442c3-f6a7-5039-aea7-cfe330f18d36', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.25', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ae0f5a6-c738-40b8-2fa5-fe80faf5202f', 'd87d4422-0d1f-1b16-5947-3dff53ad8357', '0.3', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d87d4422-0d1f-1b16-5947-3dff53ad8357', 'cb2442c3-f6a7-5039-aea7-cfe330f18d36', '③ 0.25', '정답 ③. 3 권과방지장치는 훅 • 버킷 등 달기구의 윗면이 드럼, 상부 도르래. 트롤리프레임 등 권상장치의 아랫면과 접촉할 우려가 있는 경우에 그 간격 이 0.25[m] 이상（직동식 권과방지장치는 0.05[m] 이상）이 되도록 조정하 여야 한다. 1唱1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', '11111111-1111-1111-1111-111111111104', 'mcq', '선반작업의 안전수칙으로 가장 거리가 먼 것은?', 2, 445)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dde8af31-7bcd-be24-b21e-87a311298634', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd7fc8ca-df0a-ac35-02d7-c3d5c4965ba5', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '일반적으로 가공물의 길이가 지름의 12배 이상일 때는', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d49c143d-2b4c-307a-3e33-b17fb89307eb', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '바이트는 가급적 짧게 설치한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('650017c2-ef14-4f65-7bfd-75e9d9efe26d', 'd1daf355-ddd6-371e-74ca-cc7edc559571', '면장갑을 사용하지 않는다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d1daf355-ddd6-371e-74ca-cc7edc559571', 'dde8af31-7bcd-be24-b21e-87a311298634', '① 기계에 주유 및 청소를 할 때에는 저속회전에서 한다.', '정답 ①. K^ 선반직업 시 치수 측정. 주유 청소 시에는 반드시 기계를 정지한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [기인가?', 2, 446)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52e8fd55-1093-2494-b5fe-868d806548d1', 'd031e1ea-d60a-288e-845b-5acede42fac2', '30', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('181ae521-d08d-8046-a0b3-301fd857aab8', 'd031e1ea-d60a-288e-845b-5acede42fac2', '50', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f427070-5d9b-91b3-2043-6b0e4006ec7b', 'd031e1ea-d60a-288e-845b-5acede42fac2', '60', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4babae5-af9e-013b-a611-5e6db1b5bb7d', 'd031e1ea-d60a-288e-845b-5acede42fac2', '70', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d031e1ea-d60a-288e-845b-5acede42fac2', '52e8fd55-1093-2494-b5fe-868d806548d1', '① 30', '정답 ①. MW 안전전압 회로의 정격전압이 일정 수준 이하의 낮은 전압으로 절연파괴 등의 사고 시에도 인체에 위험을 주지 않는 전압을 말하며.「산업안전보건법령」에서 3O[V1로 규정하고 있다. 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」에 따라 누전에 의한 감전 의 위험을 방지하기 위하여 접지를 하여야 하는 대상의 기 준으로 틀린 것은?(단, 예외조건은 고려하지 않는다.)', 2, 447)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2d20bca-ed47-70ac-2478-b2cf566830be', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '전기기계 • 기구의 금속제 외함', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('028b842f-97cf-ba6b-c757-46af15c1752a', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고압 이상의 전기를 사용하는 전기기계 • 기구 주변의', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d09b620-05c2-00de-3ff1-aab9e847a88f', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81e06e6-f73e-8b46-2f3a-103928820589', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '코드와 플러그를 접속하여 사용하는 전기기계 • 기구 중', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '6d09b620-05c2-00de-3ff1-aab9e847a88f', '③ 고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', '정답 ③. 휴대형 전동기계 • 기구의 노출된 비충전 금속체 KOI 고정배선에 접속된 전기기계 • 기구 중 사용전압이 대지전압 150[V]를 넘는 비충전 금속체가 접지대상이다. WBII랠 아1APTER 05 전기설비 위험요인관리', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '11111111-1111-1111-1111-111111111104', 'mcq', '가연성 가스가 있는 곳에 저압 옥내전기설비를 금속관공사 에 의해 시설하고자 한다. 관 상호 간 또는 관과 전기기계 • 기구와는 몇 턱 이상 나사조임으로 접속하여야 하는가?', 2, 448)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ca9ecef-afb4-4eef-52b5-b4f0157e35db', '4191ce20-90ed-939f-d337-d7041b96dc65', '2턱', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb65ed23-b5ad-274a-8261-b5c529f8b95a', '4191ce20-90ed-939f-d337-d7041b96dc65', '3턱', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf137cbd-6907-7664-4345-0d424ece932b', '4191ce20-90ed-939f-d337-d7041b96dc65', '4턱', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f44f1f-a603-4d24-e697-3a9e4deda153', '4191ce20-90ed-939f-d337-d7041b96dc65', '5턱', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '24f44f1f-a603-4d24-e697-3a9e4deda153', '④ 5턱', '정답 ④. MM! 관 상호 간 또는 관과 박스, 기타의 부속품 - 풀박스 또는 전기기 계 - 기구와는 5턱 이상 나사조임으로 접속하여야 한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #77
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동을 일으키는 위험한계에너지는 약 몇 이인가? (단, 심실세동전류 1 뜨[mA], 인체의 전기저항 R 800[Q], 통전시간 T 1 초이다.)', 2, 449)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ec9d61-bcfa-eed7-2af2-679d62c5ca91', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '12', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c07354b8-168a-b70c-f96e-fa9e3206faab', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '22', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5038ead4-4d6f-57df-63dd-bff70353154d', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '32', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('374d4552-9547-df40-0412-2659902007f9', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '42', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', 'c07354b8-168a-b70c-f96e-fa9e3206faab', '② 22', '정답은 ② 입니다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 5O[A] 미만이다.）', 2, 450)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96089b74-f3fd-85ee-6d18-8efdebed47e5', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '15[mA] 이하, 0.1 초 이내', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('698d147f-8788-8d39-9162-780bbe14f00e', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '30[mA] 이하, 0.03초 이내', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d09c2452-8428-07e5-1817-ed9225d292dc', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '50[mA] 이하, 0.5초 이내', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa5e7510-f518-e99b-46af-edea8a899778', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '100[mA] 이하, 0.05초 이내', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '698d147f-8788-8d39-9162-780bbe14f00e', '② 30[mA] 이하, 0.03초 이내', '정답 ②. 감전보호용누전차단기 • 정격감도전류 30[ ] 이하, 동작시간 0.03초 이내 • 정격전부하전류가 50[A] 이상인 경우, 정격감도전류 200[ ] 이하, 동 작시간 0.1 초이내 아1APTER 02 감전재해 및 방지대책', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 인화성 액체를 정의할 때 기준이 되는 표준압력은 몇 [kPa]인가?', 2, 451)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96fed05d-4f02-d9ed-44f8-2d273117caa4', '7989e810-6dda-399b-cac7-31c55f845afa', '1', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d0535bd-9c4d-3300-be10-8aeea810eda6', '7989e810-6dda-399b-cac7-31c55f845afa', '100', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '7989e810-6dda-399b-cac7-31c55f845afa', '101.3', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9df2b24c-5f76-e8a9-e53c-af668a5f3c34', '7989e810-6dda-399b-cac7-31c55f845afa', '273.15', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', 'bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '③ 101.3', '정답 ③. IBM 인화성 액체란 표준압력(101.3[kPa])에서 인화점이 60『c] 이하 이거나 고온 • 고압의 공정운전조건으로 인하여 화재 폭발위험이 있는 상 태에서 취급되는 가연성 액체 물질을 말한다. EH 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2020-4 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 자립고(自立高) 이상의 높이로 설치할 때 지 지벽체가 없어 와이어로프로 지지하는 경우의 준수사항으 로 옳지 않은것은?', 2, 452)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a23ec0-19b2-0df8-a483-e0438a1d8a39', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7229f6b-f057-b3be-d691-dd15e986b67d', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프 설치 각도는 수평면에서 60° 이내로 하되,', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('339e31b1-8309-3ed2-db13-3753d4293997', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e599c8a9-b523-511c-de0e-5f87534ae93a', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '339e31b1-8309-3ed2-db13-3753d4293997', '③ 와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', '정답 ③. KOI 타워크레인을 와이어로프로 지지하는 경우 준수사항 • 와이어로프를 고정하기 위한 전용 지지프레임을 사용할 것 • 와이어로프 설치각도는 수평면에서 60° 이내로 하되, 지지점은 4개소 이 상으로 하고. 같은 각도로 설치할 것 • 와이어로프와 그 고정부위는 충분한 강도와 장력을 갖도록 설치하고. 와 이어로프를 클립 • 샤클 등의 고정기구를 사용하여 견고하게 고정시켜 풀 리지 않도록 하며. 사용 중에는 충분한 강도와 장력을 유지하도록 할 것 • 와이어로프가 가공전선에 근접하지 않도록 할 것', array['산업안전기사','2020-4'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」에 따른 분리식 방진마스크의 성능 기준에서 포집효율이 특급인 경우, 염화나트륨(NaCI) 및 파 라핀 오일(Paraffin oil) 시험에서의 포집효율은?', 2, 453)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d2898c5-94a3-12a8-1ddc-7c24ef4c9026', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.95[%] 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2d85c76-f1b6-cb96-3f4a-e044bf5e6550', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.9[%] 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8b0be24-23dd-8f05-8046-27d5e3525b05', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.5[%] 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72aef8c8-766a-bb8f-ee7a-821c7a5bd2c5', 'e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '99.0[%] 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e90fc7c0-95ff-27b4-92e8-454c9ba6d26c', '0d2898c5-94a3-12a8-1ddc-7c24ef4c9026', '① 99.95[%] 이상', '정답 ①. KOI 여과재 분진 등 포집효율 염화나트륨(rw) 및 형태 및 등급 파라핀 오일 (Paraffin oil) 시헴%] 특급 99.95 이상 분리식 1 급 94.0 이상 2 급 80.0 이상 E I81', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b68def81-bfd4-7439-0236-123c1cbc53be', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 특별교육에서 방사선 업무에 관계되는 작업을 할 때 교육내용으로 거리가 먼 것은?', 2, 454)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f0fe596-7392-922c-9811-365b7daee08a', 'b68def81-bfd4-7439-0236-123c1cbc53be', '방사선의 유해 • 위험 및 인체에 미치는 영향', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e84d9c6b-595b-5c0f-4e8c-8e20bbc8b69d', 'b68def81-bfd4-7439-0236-123c1cbc53be', '방사선 측정기기 기능의 점검에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb72ae73-aa12-51ef-ec65-319d5fcd02d7', 'b68def81-bfd4-7439-0236-123c1cbc53be', '응급처치 및 보호구 착용에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ee9cdb4-0c9c-df43-3cfe-7a7492069e5e', 'b68def81-bfd4-7439-0236-123c1cbc53be', '산소농도 측정 및 작업환경 에 관한 사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b68def81-bfd4-7439-0236-123c1cbc53be', '4ee9cdb4-0c9c-df43-3cfe-7a7492069e5e', '④ 산소농도 측정 및 작업환경 에 관한 사항', '정답 ④. # ‘산소농도 측정 및 작업환경에 관한 사항’은 화학설비의 탱크 내 작업. 밀폐공간에서의 작업 시 특별교육내용에 해당한다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3646dd9-b876-01d3-5822-e0caf3faf4b4', '11111111-1111-1111-1111-111111111104', 'mcq', '사고예방대책의 기본원리 5단계 중 틀린 것은?', 2, 455)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('565f6d8c-5f80-56b5-a3e6-db67a5fcffd8', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '1단계: 안전관리 계획', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a5c170c-39dd-2f68-3d36-587947b2899c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '2단계: 현상파악', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('092dde0d-110d-07bd-9bf0-4dcf6e764d6c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '3단계: 분석 • 평가', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7265f1fb-18c8-fa63-b08d-1c1799a55d9c', 'a3646dd9-b876-01d3-5822-e0caf3faf4b4', '4단계: 대책의 선정', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3646dd9-b876-01d3-5822-e0caf3faf4b4', '565f6d8c-5f80-56b5-a3e6-db67a5fcffd8', '① 1단계: 안전관리 계획', '정답 ①. B 하인리히 사고예방대책의 기본원리 5단계 ® 1단계: 조직（안전관리조직） © 2단계: 사실의 발견（현상파악） © 3단계 : 분석 • 평가（원인규명） 단계: 시정책의 선정 ©5단계: 시정책의 적용 바4161', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '11111111-1111-1111-1111-111111111104', 'mcq', '특정과업에서 에너지 소비수준에 영향을 미치는 인자가 아 닌것은?', 2, 456)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87b31907-bd71-fc86-96cb-44165aab0d96', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업방법', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c34b290-73f2-998d-2a3a-e7d6e682cd90', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업속도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd6d3750-03ac-d7a5-5975-04cf0474f94b', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '작업관리', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d9cb205-af03-ab40-1c38-f1dd35712ad9', '92929f3d-bb7c-536f-4109-c97d8f3ce4ff', '도구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92929f3d-bb7c-536f-4109-c97d8f3ce4ff', 'bd6d3750-03ac-d7a5-5975-04cf0474f94b', '③ 작업관리', '정답 ③. a 에너지 소비량에 영향을 미치는 인자 작업방법. 작업자세. 작업속도. 도구설계 SUBJECT 02 인간공학 및 위험성평가 관리', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '11111111-1111-1111-1111-111111111104', 'mcq', '국제노동기구（ILO）의 산업재해 정도 구분에서 부상 결과 근 로자가 신체장해등급 제12급 판정을 받았다면 이는 어느 정도의 부상을 의미하는가?', 2, 457)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f466d08d-a62e-7382-3a98-902ee0d7b50c', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '영구 전노동 불능', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('068c4d4f-63f7-0478-56ed-ccee8794dcb1', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '영구 일부노동 불능', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc55065e-66b6-d18b-dca4-5f774d51c43b', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '일시 전노동 불능', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4aee2175-34ca-ed01-d5b9-175b0f14f3be', 'f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '일시 일부노동 불능', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9daf3d2-b25c-b2d3-bbc2-ea4ced2ac82e', '068c4d4f-63f7-0478-56ed-ccee8794dcb1', '② 영구 일부노동 불능', '정답 ②. K9 상해정도별 구분 •사망 • 영구 전노동 불능 상해（신체장해등급 1〜3등급） • 영구 일부노동 불능 상해（신체장해등급 4〜14등급） • 일시 전노동 불능 상해 : 장해가 남지 않는 휴업상해 • 일시 일부노동 불능 상해: 일시 근무 중에 업무를 떠나 치료를 받는 정 도의 상해 • 구급처치상해: 응급처치 후 정상작업을 할 수 있는 정도의 상해 WBI SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4b80d6c4-e655-776c-3006-96268a28b624', '11111111-1111-1111-1111-111111111104', 'mcq', '사고의 원인분석방법에 해당하지 않는 것은?', 2, 458)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('873c93ad-33e7-006e-6c19-6c508d5cd421', '4b80d6c4-e655-776c-3006-96268a28b624', '통계적 원인분석', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d5f3618-6fb8-c03d-48e4-e0a9c40daffb', '4b80d6c4-e655-776c-3006-96268a28b624', '종합적 원인분석', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51d87e4f-6a5d-510b-0ea3-3dc052cefef1', '4b80d6c4-e655-776c-3006-96268a28b624', '클로즈（close）분석도', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a249ba0-fffc-a703-e2cb-3eebbeb05661', '4b80d6c4-e655-776c-3006-96268a28b624', '관리도', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4b80d6c4-e655-776c-3006-96268a28b624', '4d5f3618-6fb8-c03d-48e4-e0a9c40daffb', '② 종합적 원인분석', '정답 ②. 종합적 원인분석은 사고 원인분석방법에 해당하지 않는다. 재해의 통계적 원인분석 방법 파레토도 특성요인도, 클로즈분석도. 관리도 히%1 SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eb0c5142-e938-1655-0c7b-66ee1a239025', '11111111-1111-1111-1111-111111111104', 'mcq', '안전검사기관 및 자율검사프로그램 인정기 관은 고용노동부 장관에게 그 실적을 보고하도록 관련법에 명시되어 있는데 그 주기로 옳은 것은?', 2, 459)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0aaf5cbd-41cf-7201-c468-a96e3e61da16', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '매월', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87bff477-0165-995a-2967-90685d269753', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '격월', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b51594cf-570c-64b0-e70e-e5ec009d31e5', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '분기', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a613765-436b-3bf2-a07a-f26d4a2fb0ac', 'eb0c5142-e938-1655-0c7b-66ee1a239025', '반기', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eb0c5142-e938-1655-0c7b-66ee1a239025', 'b51594cf-570c-64b0-e70e-e5ec009d31e5', '③ 분기', '정답 ③. # 안전검사실적보고 안전검사기관은 분기마다 다음 달 10일까지 분기별 실적과, 매년 1월 20 일까지 전년도 실적을 고용노동부장관에게 제출하여야 하며. 공단은 분기 마다 다음 달 10일까지 분기별 실적과. 매년 1월 20일까지 전년도 실적을 고용노동부 장관에게 제출하여야 한다. 1 SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3724aaf-6a61-2b52-f64f-908bdb92038c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상의 안전보건표지 종류 중 관계자외 출 입금지표지에 해당되는 것은?', 2, 460)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28259d2f-02ae-c277-bf35-76d1150cbe68', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '안전모 착용', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('215c0a3e-3e15-93f2-1310-09180e2a465a', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '폭발성물질 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5248582-ac5a-0d82-8485-d8dc689ca058', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '방사성물질 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('586921ea-8434-dce6-35c3-c21440166564', 'd3724aaf-6a61-2b52-f64f-908bdb92038c', '석면취급 •해체 작업장', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3724aaf-6a61-2b52-f64f-908bdb92038c', '586921ea-8434-dce6-35c3-c21440166564', '④ 석면취급 •해체 작업장', '정답 ④. sa 관계자 외 출입금지 허가대상물질 금지대상물질의 석면취급/해체 작업장 작업장 취급실험실 등 관계자 외 출입금지 관계자 외 출입금지 관계자 외 출입금지 （허가물질 명칭） 석면 취급/해체 중 발암물질 취급 중 제조/사용/보관 중 보호구/보호복 착용 보호구/보호복 착용 보호구/보호복 착용 흡연 및음식물 흡연 및음식물 흡연 및 음식물 섭취 금지 섭취 금지 섭취 금지 1', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ba1ec92b-e263-86ae-4634-8f399e971050', '11111111-1111-1111-1111-111111111104', 'mcq', '인간-기계시스템의 설계를 6단계로 구분할 때, 첫 번째 단 계에서 시행하는 것은?', 2, 461)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8963cd1c-9508-c30f-4e92-f93c503d1765', 'ba1ec92b-e263-86ae-4634-8f399e971050', '기본설계', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ea3d5e2-593f-bc72-c707-38254488794f', 'ba1ec92b-e263-86ae-4634-8f399e971050', '시스템의 정의', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aec89b33-e755-cb37-ae0a-86a3d8113573', 'ba1ec92b-e263-86ae-4634-8f399e971050', '인터페이스 설계', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('007081b6-60ef-29de-a5fb-7a59587a3d6a', 'ba1ec92b-e263-86ae-4634-8f399e971050', '시스템의 목표와 성능명세 결정', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ba1ec92b-e263-86ae-4634-8f399e971050', '007081b6-60ef-29de-a5fb-7a59587a3d6a', '④ 시스템의 목표와 성능명세 결정', '정답 ④. 3 인간-기계 시스템 설계과정 6단계 ⑪ 목표 및 성능명세 결정: 시스템 설계 전 그 목적이나 존재 이유가 있어야 함（인간요소적인 면, 신체의 역학적 특성 및 인체측정학적 요소 고려） © 시스템（체계） 정의: 목적을 달성하기 위한 특정한 기본기능들이 수행되 어야 함 © 기본설계: 시스템의 형태를 갖추기 시작하는 단계（직무분석. 작업설계. 기능할당） ⑨ 인터페이스（계면） 설계: 사용자 편의와 시스템 성능에 관여 © 촉진물 설계: 인간의 성능을 증진시킬 보조물 설계 ® 시험 및 평가: 시스템 개발과 관련된 평가와 인간적인 요소 평가 실시', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 제조업 중 유해위험방지계획서 제출대상 사업의 사업주가 유해 위험방지계획서를 제출하고 자 할 때 첨부하여야 하는 서류에 해당하지 않는 것은?(단, 기타 고용노동부장관이 정하는 도면 및 서류 등은 제외한다.)', 2, 462)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b21b671-4c9b-9b1b-1183-b33e09c0424a', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '공사 개요서', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('712c3503-9a1b-9948-e477-92ecb89e3d04', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '기계-설비의 배치도면', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0832d575-6f5e-32b3-c857-66e1e298466f', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '기계 • 설비의 개요를 나타내는 서류', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b2ffd10-4da7-54f9-4c50-ae50d79789ce', '6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '원재료 및 제품의 취급, 제조 등의 작업방법의 개요', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6de5c4ef-f7c2-68cb-31a4-ee8675007e65', '8b21b671-4c9b-9b1b-1183-b33e09c0424a', '① 공사 개요서', '정답 ①. 공사 개요서는 건설공사 유해위험방지계획서에 첨부하여야 할 서류이다. 제조업 등 유해위험방지계획서 제출서류 •건축물 각층의 평면도 • 기계 • 설비의 개요를 나타내는.서류 • 기계 •설비의 배치도면 • 원재료 및 제품의 취급. 제조 등의 작업방법의 개요 • 그 밖에 고용노동부장관이 정하는 도면 및 서류 폐81', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #48
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b0b03506-7fb1-0894-e0e5-0082e9e2795c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 연삭숫돌을 사용하는 작업 의 안전수칙으로 틀린 것은?', 2, 463)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4747faec-7720-86a4-f70b-e2e7435b2405', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '연삭숫돌을 사용하는 경우 작업시작 전과 연삭숫돌을', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69aad523-bf46-ef19-57e0-cabe2ee5649c', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '회전 중인 연삭숫돌이 근로자에 위험을 미칠 우려가 있', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc08f097-5623-24bd-e3a1-377c62cf6278', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '연삭숫돌의 최고 사용회전속도를 초과하여 사용하여서', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('300ac2e2-65f6-54c1-9c8f-b9dcdf073ddf', 'b0b03506-7fb1-0894-e0e5-0082e9e2795c', '측면을 사용하는 목적으로 하는 연삭숫돌 이외에는 측', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b0b03506-7fb1-0894-e0e5-0082e9e2795c', '4747faec-7720-86a4-f70b-e2e7435b2405', '① 연삭숫돌을 사용하는 경우 작업시작 전과 연삭숫돌을', '정답 ①. 면을 사용해서는 안 된다. Kmi 연삭숫돌을 사용하는 작업의 경우 작업을 시작하기 전에는 1분 이상. 연삭숫돌을 교체한 후에는 3분 이상 시험운전을 하고 해당 기계에 이상이 있는지의 여부를 확인하여야 한다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b129347c-539d-745c-91e3-73a8c97befab', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 소성가공을 열간가공과 냉간가공으로 분류하는 가 공온도의 기준은?', 2, 464)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddea5ece-03a9-4034-5a7d-cc4f2a4739d1', 'b129347c-539d-745c-91e3-73a8c97befab', '융해점 온도', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('005d9667-4249-dbfe-de22-1785befbfe7f', 'b129347c-539d-745c-91e3-73a8c97befab', '공석점 온도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5cf0b45-8d64-373c-a9ba-af92a4e6606c', 'b129347c-539d-745c-91e3-73a8c97befab', '공정점온도', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38f29e28-7012-6d36-5451-5ed09bed59b9', 'b129347c-539d-745c-91e3-73a8c97befab', '재결정온도', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b129347c-539d-745c-91e3-73a8c97befab', '38f29e28-7012-6d36-5451-5ed09bed59b9', '④ 재결정온도', '정답 ④. a 냉간가공 및 열간가공 • 냉간가공（상온가공. Cold Working）： 재결정 온도 이하에서 금속의 인 장강도. 항복점, 탄성한계. 경도. 연신율. 단면수축률 등과 같은 기계적 성질을 변화시키는 가공이다. • 열간가공（고온가공, Hot Working）： 재결정 온도 이상에서 하는 가공 이다. 1', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3eb3168-6074-4a8e-4815-66525d5aa825', '11111111-1111-1111-1111-111111111104', 'mcq', '자분탐상검사에서 사용하는 자화방법이 아닌 것은?', 2, 465)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a12cf74-6b97-3749-c6bd-ea95d8f5b806', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '축통전법', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd0ea004-70e5-4e35-d1f7-1689d00bc955', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '전류관통법', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3df899d-214f-df46-16c4-a6e2dbcdbd8c', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '극간법', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa9980b8-dc71-5b95-520c-6925b23a4a57', 'd3eb3168-6074-4a8e-4815-66525d5aa825', '임피던스법', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3eb3168-6074-4a8e-4815-66525d5aa825', 'fa9980b8-dc71-5b95-520c-6925b23a4a57', '④ 임피던스법', '정답 ④. ns 자분탐상검사의 자화방법 • 축통전법 -직각통전법 • 프로드법 -전류관통법 • 코일법 • 극간법 • 자속관통법', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4826e995-9c17-1b13-c617-f302d63c32bd', '11111111-1111-1111-1111-111111111104', 'mcq', '컨베이어（Conveyor） 역전방지장치의 형식을 기계식과 전 기식으로 구분할 때 기계식에 해당하지 않는 것은?', 2, 466)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('230386c4-0ef7-b65b-3a01-c1c40e12d4d3', '4826e995-9c17-1b13-c617-f302d63c32bd', '라쳇식', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1198db71-cf8a-7d83-f650-28188529acde', '4826e995-9c17-1b13-c617-f302d63c32bd', '밴드식', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8d7d310-cd7e-2128-8e1b-e2d2f82677ac', '4826e995-9c17-1b13-c617-f302d63c32bd', '스러스트식', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('013afa41-c2ca-65c1-fa36-3d1a6cbed3e7', '4826e995-9c17-1b13-c617-f302d63c32bd', '롤러식', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4826e995-9c17-1b13-c617-f302d63c32bd', 'f8d7d310-cd7e-2128-8e1b-e2d2f82677ac', '③ 스러스트식', '정답 ③. KOI 기계식 역주행방지장치 롤러식. 라쳇식, 밴드식 取나#I', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('366cd678-5871-c204-599c-faec2dead60a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스를 제외한 사출성형기 • 주형조형기 및 형단 조기 등에 관한 안전조치사항으로 틀린 것은?', 2, 467)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f0a8948-a56b-d1d5-9aa6-db9a6defbb2b', '366cd678-5871-c204-599c-faec2dead60a', '근로자의 신체 일부가 말려들어갈 우려가 있는 경우에', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff96ba0d-b541-e635-697c-ab2ff044e298', '366cd678-5871-c204-599c-faec2dead60a', '게이트가드식 방호장치를 설치할 경우에는 연동구조를', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59a1af93-b025-d702-f008-78bbb97b0ff2', '366cd678-5871-c204-599c-faec2dead60a', '사출성형기의 전면에 작업용 발판을 설치할 경우 근로', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d8789d9-d51c-40b0-efa2-4e1e27ce7eb3', '366cd678-5871-c204-599c-faec2dead60a', '기계의 히터 등의 가열 부위, 감전우려가 있는 부위에', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('366cd678-5871-c204-599c-faec2dead60a', 'ff96ba0d-b541-e635-697c-ab2ff044e298', '② 게이트가드식 방호장치를 설치할 경우에는 연동구조를', '정답 ②. 는 방호덮개를 설치하여 사용한다. K9 사출성형기 방호장치 • 사출성형기 •주형조형기 및 형단조기 등에 근로자의 신체 일부가 말려 들어갈 우려가 있는 경우 게이트가드 또는 양수조작식 등에 의한 방호장 치, 그 밖에 필요한 방호조치를 하여야 한다. • 게이트가드는 닫지 아니하면 기계가 작동되지 아니하는 연동구조이어야 한다. • 기계의 히터 등의 가열 부위 또는 감전 우려가 있는 부위에는 방호덮개 를 설치하는 등 필요한 안전조치를 하여야 한다. %I', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6506b38e-3883-b712-0e37-eb88a851d9a2', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 작업 중의 조치사항으로 옳은 것은?', 2, 468)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8944925-0010-6803-7f61-e88609d0853b', '6506b38e-3883-b712-0e37-eb88a851d9a2', '검전기에 의한 정전확인', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c82fdcca-e3a1-9e3e-531b-e03c3e3818f0', '6506b38e-3883-b712-0e37-eb88a851d9a2', '개폐기의 관리', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e46a08fc-a6d4-c49c-e691-7d950520fb35', '6506b38e-3883-b712-0e37-eb88a851d9a2', '잔류전하의 방전', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfecd39d-7d12-1f1f-d227-9a5840278c3f', '6506b38e-3883-b712-0e37-eb88a851d9a2', '단락접지 실시', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6506b38e-3883-b712-0e37-eb88a851d9a2', 'c82fdcca-e3a1-9e3e-531b-e03c3e3818f0', '② 개폐기의 관리', '정답 ②. ®. . ©는 정전작업 전 조치사항이다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #64
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('559fad81-9c84-85d1-233b-716002b1143e', '11111111-1111-1111-1111-111111111104', 'mcq', '자동전격방지장치에 대한 설명으로 틀린 것은?', 2, 469)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cfee228-bbe7-916b-7d79-d36a600aaf5d', '559fad81-9c84-85d1-233b-716002b1143e', '무부하 시 전력손실을 줄인다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c276432-969b-d9d9-74d5-0d07fa149831', '559fad81-9c84-85d1-233b-716002b1143e', '무부하 전압을 안전전압 이하로 저하시 킨다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21338aad-3360-2756-0b29-db175d925c5e', '559fad81-9c84-85d1-233b-716002b1143e', '용접을 할 때에만 용접기의 주회로를 개로（OFF）시킨다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86ec5fa1-7b6a-01da-d23a-ce4e628a1ab2', '559fad81-9c84-85d1-233b-716002b1143e', '교류아크용접기의 안전장치로서 용접기의 1차 또는 2', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('559fad81-9c84-85d1-233b-716002b1143e', '21338aad-3360-2756-0b29-db175d925c5e', '③ 용접을 할 때에만 용접기의 주회로를 개로（OFF）시킨다.', '정답 ③. 차 측에 부착한다. K3 자동전격방지장치 용접봉의 조작에 따라 용접을 할 때에만 용접기의 주회로를 폐로（ON）시키 고, 용접을 행하지 않을 때에는 용접기 주회로를 개로（OFF）시켜 용접기 출력 측의 무부하 전압을 25[V] 이하로 저하시켜 작업자가 용접봉과 모재 사이에 접촉함으로써 발생하는 감전의 위험을 방지하는 장치이다. 昆 回 아仏PTER 02 감전재해 및 방지대책', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항 R을 1,OOO[Q]이라고 할 때 위험한계에너 지의 최저는 약 몇 [J]인가?（단, 통전시간은 1초이고, 심실 세동전류/ 쯔 [mA] 이다.）', 2, 470)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e359179-b50b-5cab-9cd9-cd0c0659e0a3', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '17.23', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ad002ea-1d1f-f9fd-208c-66a1eeb5c96c', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '27.23', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffb59105-da74-2ba0-c425-beb4de62dad2', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '37.23', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('155cddb5-8313-ec6d-4c2f-8285b9ff9d3d', '5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '47.23', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f9645f1-6d4d-fbf8-1e7c-4bb044e61792', '9ad002ea-1d1f-f9fd-208c-66a1eeb5c96c', '② 27.23', '정답은 ② 입니다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '11111111-1111-1111-1111-111111111104', 'mcq', '이산화탄소소화약제의 특징으로 가장 거리가 먼 것은?', 2, 471)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aae14819-e048-ebb4-1c9d-d5c69e8bf1e3', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '전기절연성이 우수하다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e104bfc-bb1b-0cd2-4502-5d83650a7eb7', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '액체로 저장할 경우 자체 압력으로 방사할 수 있다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50c6f4ed-9906-3ebe-152c-37f86ef922d2', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '기화상태에서 부식성이 매우 강하다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0acaf181-3393-4829-1ab7-85095f7e59b3', 'a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '저장에 의한 변질이 없어 장기간 저장이 용이한 편이다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a6b7e9c2-1248-ab18-cfdd-158d75e8adfe', '50c6f4ed-9906-3ebe-152c-37f86ef922d2', '③ 기화상태에서 부식성이 매우 강하다.', '정답 ③. oi 이산화탄소소화기는 반응성이 매우 낮아 부식성이 거의 없다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #91
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('af12400d-7fb6-5cd0-b831-a78244b86d59', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 A가스의 폭발하한계는 2.2[vol%]이다. 이 폭 발하한계값을 기준으로 하여 표준상태에서 A가스와 공기의 혼합기체 1[m3]에 함유되어 있는 A가스의 질량을 구하면 약 몇 [g]인가?（단, A가스의 분자량은 26이다.）', 2, 472)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f5a0bd6-e49f-688a-0cef-9f06fa1e6744', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '19.02', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b224782-7ded-3c7f-758d-8bb4b7c150a6', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '25.54', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc5bb69a-63d9-1b4b-2579-fe44448fbb08', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '29.02', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3df2bba3-ffdf-422e-1c62-eae1b26f3266', 'af12400d-7fb6-5cd0-b831-a78244b86d59', '35.54', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('af12400d-7fb6-5cd0-b831-a78244b86d59', '6b224782-7ded-3c7f-758d-8bb4b7c150a6', '② 25.54', '정답 ②. 9 A가스의 부피 1X 쯔 0.022[m3] 22[L] 아보가드로의 법칙에 의하면 표준상태（O[‘Cl 1기압）에서 기체 1몰의 부피 는 22.4[L]이고, 문제에서 A가스의 분자량이 26이라고 했으므로 A가스 1몰은 26[g]이다. 이 관계를 이용하여 A가스의 질량을 꼬로 놓고 비례식을 만들면 다음과 같다. 26[g] : 22.4[L] 4g] : 22[L], X 씅쯔么 25.54[g] 1', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #107
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '11111111-1111-1111-1111-111111111104', 'mcq', '철골건립준비를 할 때 준수하여야 할 사항과 가장 거리가 먼 것은?', 2, 473)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a59a199-203e-abbc-8d2e-b6eae03b0053', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '지상 작업장에서 건립준비 및 기계 - 기구를 배치할 경', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27ad132d-544e-df92-e3f2-a520977b11bc', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '건립작업에 다소 지장이 있다 하더라도 수목은 제거하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('848dac5b-8bae-1b72-a025-81aaaa0af314', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '사용 전에 기계 • 기구에 대한 정비 및 보수를 철저히 실', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1792fa71-031c-f624-09be-691b2969aea1', 'cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '기계에 부착된 앵커 등 고정장치와 기초구조 등을 확인', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cfc076e9-d871-cd39-a8cc-0bd63b225fd1', '27ad132d-544e-df92-e3f2-a520977b11bc', '② 건립작업에 다소 지장이 있다 하더라도 수목은 제거하', '정답 ②. 하여야 한다. B 철골 건립직업에 지장이 되는 수목은 제거하거나 이설하여야 한다. 꿰目', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 중 교량건설 공사의 유해위험방지계획서를 제출하 여야 하는 기준으로 옳은 것은?', 2, 474)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3672e92-e048-232f-a1e6-15d1346c6ace', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 40[m] 이상인 교량건설 등 공사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62464274-7fdd-ecb8-3db9-e3ce4dc092db', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 50[m] 이상인 교량건설 등 공사', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('488d2739-4dc6-8aae-cf3d-5499d071a8c0', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 60[m] 이상인 교량건설 등 공사', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72d04818-1cae-9670-7277-f76af36c8efe', '33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '최대 지간길이가 7이m] 이상인 교량건설 등 공사', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('33cfcf2e-aee8-52c9-4c39-1cd9ad54bd66', '62464274-7fdd-ecb8-3db9-e3ce4dc092db', '② 최대 지간길이가 50[m] 이상인 교량건설 등 공사', '정답 ②. 3 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물. 연면적 30,000[m2] 이상인 건축물 또는 연면적 5.0001m2] 이상의 문화 및 집회시설（전시장 및 동물원 • 식물원 제외）. 판매시설. 운수시설（고속철도의 역사 및 집배 송시설 제외）. 종교시설. 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설, 지하도상가 또는 냉동 • 냉장 창고시설의 건설 개조 또는 해체（건설 등） 공사 • 연면적 5,0001m2] 이상의 냉동 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐. 발전용댐. 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m】 이상인 굴착공사', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09aa2a0e-c7a5-d189-9286-e05669b684a9', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사의 산업안전보건관리비 계상 시 대상액이 구분되 어 있지 않은 공사는 도급계약 또는 자체사업 계획상의 총 공사금액 중 얼마를 대상액으로 하는가?', 2, 475)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b802f419-4d25-2b74-36fb-76ec47889dd1', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '50[%]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1dbedbc-8a30-c7a9-53f5-3d759d2bfad7', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '60[%]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b9ab4d3-2540-518a-56d2-afcd6942cca0', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '70[%]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89bf7ef2-70c1-038f-b96d-f809b54bff88', '09aa2a0e-c7a5-d189-9286-e05669b684a9', '80[%]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09aa2a0e-c7a5-d189-9286-e05669b684a9', '2b9ab4d3-2540-518a-56d2-afcd6942cca0', '③ 70[%]', '정답 ③. KS 건설업 산업안전보건관리비 계상 시 대상액이 명확하지 않은 경 우 도급계약 또는 자체사업계획상 책정된 총 공사금액의 70[%]에 해당하 는 금액을 대상액으로 하여 산업안전보건관리비를 계상한다. 1', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-1 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ad027495-d2c8-daf1-be41-ba71b69a9e5e', '11111111-1111-1111-1111-111111111104', 'mcq', '표준관입시험에 관한 설명으로 옳지 않은 것은?', 2, 476)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd969e41-f3de-9ddb-c8b3-9d9255b463f5', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', 'N치는 지반을 30[cm] 굴진하는 데 필요한 타격횟수를', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('216a3790-6814-41af-626a-0d2a98c9b197', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', 'N치가 4〜10일 경우 모래의 상대밀도는 매우 단단한', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1774cb62-44f5-4ac1-219a-ffef2d7655e7', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', '63.5[kg] 무게의 추를 76[cm] 높이에서 자유낙하하여', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be4f65c1-7594-7a59-2767-9720e9d96b6e', 'ad027495-d2c8-daf1-be41-ba71b69a9e5e', '사질지반에 적용하며, 점토지반에서는 편차가 커서 신', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ad027495-d2c8-daf1-be41-ba71b69a9e5e', '216a3790-6814-41af-626a-0d2a98c9b197', '② N치가 4〜10일 경우 모래의 상대밀도는 매우 단단한', '정답 ②. 뢰성이 떨어진다. MW N치가 4〜10일 경우 모래지반 상대밀도는 느슨하다. 표준관입시험（Standard Penetration Test） 무게 63.5[kg]의 추를 76[cm] 높이에서 자유낙하시켜 샘플러를 30[cm] 관입시키는 데 필요한 타격 횟수 N을 구하는 시험으로 N치가 클수록 토 질의 밀도가 높다', array['산업안전기사','2019-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-2 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('56cd6cda-1fa6-4b38-71fb-9d74662942b9', '11111111-1111-1111-1111-111111111104', 'mcq', '『산업안전보건법령」상 근로자 안전보건교육 중 작업내용 변경 시의 교육을 할 때 일용근로자 및 근로계약기간이 1주 일 이하인 기간제근로자를 제외한 근로자의 교육시간으로 옳은 것은?', 2, 477)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a3643b8-40e2-7e69-db78-4d78359a54ec', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '1시간 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('404aaaaf-acae-a21a-650b-509461f5e3b3', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '2시간 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('931aeb6c-0fd0-9430-bf40-5badb6fc431f', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '4시간 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c5bdc39-060c-0f79-0a55-6fcc3899c867', '56cd6cda-1fa6-4b38-71fb-9d74662942b9', '6시간 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('56cd6cda-1fa6-4b38-71fb-9d74662942b9', '404aaaaf-acae-a21a-650b-509461f5e3b3', '② 2시간 이상', '정답 ②. 1M 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 판매업무에 직접 종사하는 매반기 6시간 이상 정기교육 그 밖의 근로자 근로자 판매업무에 직접 종사하는 매반기 12시근로자 외의 근로자 일용근로자 및 근로계약기간이 1주일 1 시이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월이 4시하인 기간제근로자 그 밖의 근로자 8시일용근로자 및 근로계약기간이 1주일 작업내용 1 시이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시간 이상 쪼 이 문제는 개정된 법령에 따라 수정한 문제입니다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-2 #8
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」에 따라 환기가 극히 불량한 좁 은 밀폐된 장소에서 용접작업을 하는 근로자를 대상으로 한 특별교육 내용에 해당하지 않는 것은?（단, 일반적인 안전보 건에 필요한 사항은 제외한다.）', 2, 478)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8618de67-a063-e360-1272-4adf9c823907', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '환기설비에 관한 사항', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cda95f24-efa9-908c-27ad-514fb832cffa', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '작업환경 점검에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('413bbaf7-55a8-141e-fca5-f739f8d1c95e', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '질식 시 응급조치에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8335766a-48af-d2c8-0044-b4569d69cb86', '4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '화재예방 및 초기 대응에 관한 사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4bc3e51c-9fe8-2620-535e-1cdc4b33c513', '8335766a-48af-d2c8-0044-b4569d69cb86', '④ 화재예방 및 초기 대응에 관한 사항', '정답 ④. a 밀폐된 장소에서 하는 용접작업 또는 습한 장소에서 하는 전 기용접 작업 시 특별교육내용 • 작업순서. 안전작업방법 및 수칙에 관한 사항 • 환기설비에 관한사항 • 전격 방지 및 보호구 착용에 관한 사항 • 질식 시 응급조치에 관한 사항 • 작업환경 점검에 관한사항 • 그 밖에 안전 • 보건관리에 필요한 사항 E!', array['산업안전기사','2019-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-2 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f632aef-3e44-4408-cdca-506e6b6c05c7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 안전인증대상 기계 또는 설비 등의 안 전인증 표시에 해당하는 것은? a r산업안전보건법령」상 안전인증대상 기계 또는 설비 등의 안전인 증 표시는', 2, 479)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b22772b5-c806-99db-a3eb-97cf9f2ca4b5', '5f632aef-3e44-4408-cdca-506e6b6c05c7', '이다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36eac485-6dbf-8e2b-d1d5-f1be5df36a5a', '5f632aef-3e44-4408-cdca-506e6b6c05c7', 'KS마크로「산업표준화법」에 따른 한국표준규격에 해당한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('097839a2-f6f7-db53-26b1-779aab89d640', '5f632aef-3e44-4408-cdca-506e6b6c05c7', '한국산업안전보건공단에서 주관하는 산업재해예방을 위한 임의 인증표', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1b66179-7b81-f4c2-6af7-7623f6af038f', '5f632aef-3e44-4408-cdca-506e6b6c05c7', 'KPS 안전인증마크로 정부기관의 안전인증을 받았음을 나타내는 안전', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f632aef-3e44-4408-cdca-506e6b6c05c7', 'b22772b5-c806-99db-a3eb-97cf9f2ca4b5', '① 이다.', '정답은 ① 입니다', array['산업안전기사','2019-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2019-2 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8c7dae74-7ebe-7eca-f359-a647e84e6946', '11111111-1111-1111-1111-111111111104', 'mcq', '유기화합물용 방독마스크의 시험가스가 아닌 것은?', 2, 480)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f40ca379-f64c-a459-a4f5-24aa9687b34c', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '이소부탄', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b928cd17-99f2-6048-233f-613c2898fa42', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '시클로헥산', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ab00776-2c71-cfc2-3615-9d969504de47', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '디메틸에테르', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8b1fe3f-8c2e-4021-cb34-e97a40ad5a99', '8c7dae74-7ebe-7eca-f359-a647e84e6946', '염소가스 또는 증기', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8c7dae74-7ebe-7eca-f359-a647e84e6946', 'd8b1fe3f-8c2e-4021-cb34-e97a40ad5a99', '④ 염소가스 또는 증기', '정답 ④. Kmi 방독마스크의 종류 및 시험가스 정화통 흡수제 종류 시험가스 (정화제) 시클로헥산(c6h)2) 유기화합물용 디메틸에테르(CH30cH3) 활성탄 이소부탄(C4Ht0) 할로겐용 염소가스 또는 증기(Cl2) 소다라임. 활성탄 EUSIIH', array['산업안전기사','2019-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
