-- chunk 4/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2024-2 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭숫돌의 파괴원인으로 거리가 가장 먼 것은?', 2, 121)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f04e35c-769c-3e68-977a-61483f95ee76', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌이 외부의 큰 충격을 받았을 때', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91242482-26d1-7b31-3667-56e31bdc5382', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌의 회전속도가 너무 빠를 때', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07804abc-6992-3eef-c84a-1a03aebed497', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌 자체에 이미 균열이 있을 때', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('090c311e-ba36-1a3c-40d8-ef1f77b1da23', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '플랜지 직경이 숫돌 직경의 4 이상일 때', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '090c311e-ba36-1a3c-40d8-ef1f77b1da23', '④ 플랜지 직경이 숫돌 직경의 4 이상일 때', '정답 ④. KOI 플랜지 지름이 현저하게 작을 때（플랜지 지름은 숫돌 직경의 i 이상인 것이 적당함） 연삭숫돌이 파괴된다. 연삭숫돌의 파괴 및 재해원인 • 숫돌에 균열이 있는 경우 • 숫돌이 고속으로 회전하는 경우 • 회전력이 결합력보다 큰 경우 • 무거운 물체가 충돌한 경우（외부의 큰 충격을 받은 경우） • 숫돌의 측면을 일감으로써 심하게 가압했을 경우 • 베어링이 마모되어 진동을 일으키는 경우 • 플랜지 지름이 현저하게 작은 경우 • 회전중심이 잡히지 않은 경우 E W1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH 지침에서 최대허용한계（MPL）는 활동한계（AL）의 몇 배인가?', 2, 122)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97f6257-4d1d-c8ad-20fc-ad51186b1444', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '1배', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '3배', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a1285e3-f588-01c9-0dc3-856a372fc020', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '5배', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b11b7296-dada-f2af-ffe5-686ff4d84fed', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '9배', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', 'e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '② 3배', '정답 ②. W NIOSH Lifting Guideline에서 중량물 취급 시 감시기준（활 동한계. ALM 최대허용기준（MPL）의 관계식은 다음과 같다. MPL 3AL Enm SUBJECT 02 인간공학 및 위험성 평가 - 관리', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 롤러기의 급정지장치 설치방법으로 틀린 것은?', 2, 123)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34b1c68a-b688-0fee-2cc6-6011ab2270f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '손조작식 급정지장치의 조작부는 밑면에서 1.8[m] 이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4da05446-e624-09fd-1997-69341cdcf3f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '복부조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b135daeb-02fc-6705-62ab-70476dd06029', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('77932eba-5362-22ae-51a2-7036f7cac783', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '급정지장치의 위치는 급정지장치의 조작부 중심점을', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', 'b135daeb-02fc-6705-62ab-70476dd06029', '③ 무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', '정답 ③. 기준으로 한다. 급정지장치 조작부의 위치 종류 설치위치 손조작식 밑면에서 1.8[m] 이내 복부조작식 밑면에서 Q.8[m] 이상 1.1[m] 이내 무릎조작식 밑면에서 0.6[m] 이내 ※ 위치는 급정지장치 조작부의 중심점을 기준으로 한다. 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #61
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조의 필요충분조건에 대한 사항으로 틀린 것은?', 2, 124)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a5c2049-59a2-767a-12e9-6abe2e567ac7', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '폭발화염이 외부로 유출되지 않을 것', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb0b30d-9180-7d0e-c1c6-6964db8a0697', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '습기 침투에 대한 보호를 충분히 할 것', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b1db4de-3d73-6b1c-fbfa-d7583f2edbda', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '내부에서 폭발할 경우 그 압력에 견딜 것', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4dab5519-d058-f1b4-76cf-a247bda7e9d7', 'fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '외함의 표면온도가 외부의 폭발성 가스를 점화하지 않', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fd9055c1-13a1-a3e7-b332-3cd6d9a5a6aa', '0fb0b30d-9180-7d0e-c1c6-6964db8a0697', '② 습기 침투에 대한 보호를 충분히 할 것', '정답 ②. 을것 내압방폭구조의 성능 • 내부에서 폭발할 경우 그 압력에 견딜 것 • 폭발화염이 외부로 유출되지 않을 것 • 외함 표면온도가 주위의 가연성 가스를 점화하지 않을 것 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?（단, 심실세동전류 는 쯔[mA]이며, 통전시간 7''는 1초, 전원은 정현파 교류 이다.）', 2, 125)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cab2c9bb-9414-d2b8-ef6a-21bd04933dba', '9298f097-426b-9258-b73e-112e4f3c92d5', '13.6', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '9298f097-426b-9258-b73e-112e4f3c92d5', '27.2', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3aea2fb8-4c73-341a-8c89-db2f20181eae', '9298f097-426b-9258-b73e-112e4f3c92d5', '136.6', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27b430fb-c16b-fb81-b9d7-f16df877238a', '9298f097-426b-9258-b73e-112e4f3c92d5', '272.2', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '② 27.2', '정답은 ② 입니다', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', '11111111-1111-1111-1111-111111111104', 'mcq', '고속형 누전차단기의 동작시간으로 옳은 것은?', 2, 126)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df64ceda-be3d-8387-3db5-2362d7a0639c', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 o.i 초 이내', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91bb42f6-aab2-1969-f77b-ed81b11a990e', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.3초 이내', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01058185-5b2d-3ea6-9671-f87d1c46d5e1', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.01 초 이내', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8064c86-9db4-e6c7-0eb0-befcd0631ef4', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.03초 이내', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', 'df64ceda-be3d-8387-3db5-2362d7a0639c', '① 정격감도전류에서 o.i 초 이내', '정답 ①. mH 고속형 누전차단기의 동작시간은 정격감도전류에서 o.i초 이내 이어야 한다. 감전보호용 누전차단기 정격감도전류 30[ ] 이하. 동작시간 0.03초 이내 폐0 아4APTER 02 감전재해 및 방지대책', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #80
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 전원개폐기를 개방하고 검전기로 전선로를 검 전하였더 니 네온램프에 불이 점등되었다. 그 원인으로 옳은 것은?', 2, 127)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cf394dd-48af-284e-7683-1df08c5ad8a9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '유도전압이 발생되었다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f6ff370-b579-1f9a-d34d-8eb5077e4850', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '검전기가고장이다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47630aa7-c2c1-77a1-42d8-a9239b8866f9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '단락접지를 하였다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c0983a3-622e-fe51-0df3-f00d5b91e01d', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '작업지휘자가 없었다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '7cf394dd-48af-284e-7683-1df08c5ad8a9', '① 유도전압이 발생되었다.', '정답 ①. KOI 네온관식 검전기는 검전대상물과 대지 간의 전위차로 인해 네온 관이 방전（네온램프 점등）하면서 발생한 유도전류를 통해 전류가 흐르고 있다는 것을 알 수 있다. EO!in 아1APTER 02 감전재해 및 방지대책 2024년 2회 CBT 복원문제 • 131 08', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #84
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야하는가?', 2, 128)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a3452c7-0259-474e-9fd4-4891668646b8', '92c8220c-46fa-c990-6086-ad7df704f1b9', '15일', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c2dbfa2-1e89-3b36-15df-11a0648febf2', '92c8220c-46fa-c990-6086-ad7df704f1b9', '30일', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94533cd7-b53c-1e32-bc80-4b7397d97f91', '92c8220c-46fa-c990-6086-ad7df704f1b9', '60일', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9465bd58-ff21-fca2-15de-5f1217c1c671', '92c8220c-46fa-c990-6086-ad7df704f1b9', '90일', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '5c2dbfa2-1e89-3b36-15df-11a0648febf2', '② 30일', '정답 ②. KOI 유해하거나 위험한 설비의 설치 이전 또는 주요 구조부분의 변 경공사의 착공일 30일 전까지 공정안전보고서를 2부 작성하여 한국산업안 전보건공단에 제출하여야 한다. 1WM', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', '11111111-1111-1111-1111-111111111104', 'mcq', '특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악 하기 위하여 필요한 계측장치로 가장 거리가 먼 것은?', 2, 129)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85d1f266-4c75-9f02-99d8-838e9b7e2011', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '압력계', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6800a912-de9b-8dd4-7659-674ed9a32e7b', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '유량계', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('957b0ffd-1163-892f-7693-6d076c001c51', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '온도계', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '비중계', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', 'ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', '④ 비중계', '정답 ④. K3 특수화학설비를 설치하는 경우에는 내부의 이상 상태를 조기에 파악하기 위하여 필요한 온도계 - 유량계 • 입력계 등의 계측장치를 설치하 여야 한다. WB惡I 아1APTER 02 화학물질 안전관리 실행', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #87
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d4c464e0-7913-91a1-01b2-7d4093e055cc', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발하한계에 관한 설명으로 옳지 않은 것은?', 2, 130)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73ca3d39-9cb9-aeb6-c59f-1c85e9011983', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계에서 화염의 온도는 최저치로 된다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59d87825-583c-a6e9-e0f1-ea65b044f865', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계에 있어서 산소는 연소하는 데 과잉으로 존', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('072f3ac1-81ee-c553-0930-f5adbfb8d74f', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '화염이 하향전파인 경우 일반적으로 온도가 상승함에', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cceddef-7870-1fc6-8983-8b3fbd414669', 'd4c464e0-7913-91a1-01b2-7d4093e055cc', '폭발하한계는 혼합가스의 단위체적당의 발열량이 일정', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d4c464e0-7913-91a1-01b2-7d4093e055cc', '072f3ac1-81ee-c553-0930-f5adbfb8d74f', '③ 화염이 하향전파인 경우 일반적으로 온도가 상승함에', '정답 ③. 한 한계치에 도달하는 데 필요한 가연성 가스의 농도 이다. W 기준이 되는 25[℃]에서 100『C]씩 증가할 때마다 폭발하한계의 값이 8[%] 감소하며. 폭발상한은 8[%] 증가한다. 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #88
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('70f45854-01d5-717f-f642-3b96a3a3cd7e', '11111111-1111-1111-1111-111111111104', 'mcq', '화염방지기의 설치에 관한 사항으로（ ）에 알맞은 것은? 사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화학 설비에서 증기나 가스를 대기로 방출하는 경우에는 외부로부 터의 화염을 방지하기 위하여 화염방지기를 그 설비（ ） 에 설치하여야 한다.', 2, 131)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5289a6c-dd77-d0b5-2159-7aef13e3624c', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '상단', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2849ffcd-dcb9-0386-3ebc-43a0f15a9f3d', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '하단', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85fb2e51-3182-b399-4374-1405d03b0661', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '중앙', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ae0f37e-e6a4-db63-989c-430ceac8a11c', '70f45854-01d5-717f-f642-3b96a3a3cd7e', '무게중심', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('70f45854-01d5-717f-f642-3b96a3a3cd7e', 'c5289a6c-dd77-d0b5-2159-7aef13e3624c', '① 상단', '정답 ①. a 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다. 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', '11111111-1111-1111-1111-111111111104', 'mcq', '물질안전보건자료를 작성할 때에 혼합물인 제품들이 해당 제품들을 대표하여 하나의 물질안전보건자료를 작성할 수 있는 충족요건 중 각 구성성분의 함유량 변화는 얼마 이하 이어야 하는가?', 2, 132)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac9dc7f-ebdf-9285-e1b0-d4fe600bdd55', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '5[%p]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef2cbecc-0712-250c-ef54-a0124834d9cc', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '10[%p]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3057381-4ec3-3d8a-2f19-5418e012050c', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '15[%p]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b311d29-d0d1-cb18-1f0a-08bbf7f555b4', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '30[%p]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', 'ef2cbecc-0712-250c-ef54-a0124834d9cc', '② 10[%p]', '정답 ②. K 페 혼합물인 제품들이 다음의 각 요건을 충족하는 경우에는 해당 제 품들을 대표하여 하나의 물질안전보건자료를 작성할 수 있다. • 혼합물인 제품들의 구성성분이 같을 것 • 각 구성성분의 함유량 변화가 10[%p] 이하일 것 • 유사한 유해성을 가질 것 E 3', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', '11111111-1111-1111-1111-111111111104', 'mcq', '제2종 분말소화약제의 주성분에 해당하는 것은?', 2, 133)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('411ce014-b905-58a9-110c-0368a2e06be8', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소나트륨', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소칼륨', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2129aa81-e767-11ed-ae85-de5ed2ab98d9', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '인산암모늄', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('277f23c6-4875-bc33-4506-6a902b5477e3', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '수산화암모늄', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', 'dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', '② 탄산수소칼륨', '정답 ②. 분말소화약제의 분류 • 제1종소화약제: 탄산수소나트륨(NaHCCh) • 제2종소화약제: 탄산수소칼륨(KHCOa) • 제3종 소화약제: 제1인산암모늄(NHJLPOJ • 제4종소화약제: 탄산수소칼륨+요소(KHCO3+(NH2)2cO)', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b89b6450-2784-0f43-a960-915a791ac94e', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출하려고 할 때 그 첨부서류와 가 장 거리가 먼 것은?', 2, 134)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a633a98-fbc5-a48a-6616-d682f66b5bdb', 'b89b6450-2784-0f43-a960-915a791ac94e', '공사개요서', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8339dbe8-ed4c-ac73-8a3c-77bf5a059acb', 'b89b6450-2784-0f43-a960-915a791ac94e', '산업안전보건관리 비 작성요령', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec761289-06a1-ab83-07ef-ca9f6053b8f6', 'b89b6450-2784-0f43-a960-915a791ac94e', '전체 공정표', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2ce0ce1-141d-694e-fd82-10acb8e49cc4', 'b89b6450-2784-0f43-a960-915a791ac94e', '재해 발생 위험 시 연락 및 대피방법', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b89b6450-2784-0f43-a960-915a791ac94e', '8339dbe8-ed4c-ac73-8a3c-77bf5a059acb', '② 산업안전보건관리 비 작성요령', '정답 ②. 꼬 건설공사 유해위험방지계획서 제출 시 첨부서류 • 공사개요서 • 공사현장의 주변 현황 및 주변과의 관계를 나타내는 도면（매설물 현황 포함） • 전체 공정표 • 산업안전보건관리비 사용계획서 • 안전관리 조직표 • 재해발생 위험 시 연락 및 대피방법 E S1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #106
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기에 해당하지 않는 것은?', 2, 135)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94a2eb61-f36b-2363-a94c-99e3447b27e5', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '어스드릴', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2590653-289d-1f1f-2fd1-e7d91bb1b94c', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '크레인', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af092d67-01f6-fbbc-146a-8ac10b732e7d', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '리프트', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3762150b-8b3b-142d-2fe3-1bf0fc0609f5', '6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '곤돌라', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6d9f7814-c1c4-c6a7-c64e-e630c4822a86', '94a2eb61-f36b-2363-a94c-99e3447b27e5', '① 어스드릴', '정답 ①. mmi 어스드릴은 차량계 건설기계에 해당한다. 양중기의 종류 • 크레인(호이스트(Hoist) 포함) • 이동식 크레인 • 리프트(이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로한정) •곤돌라 •승강기 E류', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '11111111-1111-1111-1111-111111111104', 'mcq', '항만하역작업에서의 선박승강설비 설치기 준으로 옳지 않은 것은?', 2, 136)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05683051-b4c6-8d3c-13f3-e3831cc71876', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '400톤급 이상의 선박에서 하역작업을 하는 경우에 근', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7189e5ba-0115-ebfc-9ca3-88ab99e08821', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리는 견고한 재료로 제작된 것으로 너비는', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37e124d0-2b80-bf6c-bef0-a3f8a1a47b84', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리의 양측에는 82[cm] 이상의 높이로 울타리', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4cbad8a-2c5a-a1dd-04a9-19d8b91552e9', '7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '현문 사다리는 근로자의 통행에만 사용하여야 하며. 화', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d44f09c-e2df-c46c-a488-c3dfec5a52b7', '05683051-b4c6-8d3c-13f3-e3831cc71876', '① 400톤급 이상의 선박에서 하역작업을 하는 경우에 근', '정답 ①. 물용 발판 또는 화물용 보판으로 사용하도록 해서는 아 니 된다. a 항만하역작업 시 3oo톤급 이상의 선박에서 하역작업을 하는 경 우에 근로자들이 안전하게 오르내릴 수 있는 현문 사다리를 설치하여야 하 며, 이 사다리 밑에 안전망을 설치하여야 한다. E!', array['산업안전기사','2024-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('112e6fe2-4652-40bb-4986-86cde8349a8e', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 학습자가 이미 설명을 듣거나 시범을 보고 알게 된 지식이나 기능을 강사의 감독 아래 직접적으로 연 습하여 적용할 수 있도록 하는 교육방법은?', 2, 137)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e0fac0a-d916-eaba-c15a-2647f2920800', '112e6fe2-4652-40bb-4986-86cde8349a8e', '모의법', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a517380-060c-97f8-c8d2-4299b3903c6b', '112e6fe2-4652-40bb-4986-86cde8349a8e', '토의법', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85de3d13-3b1b-de14-0ffd-42b4f4682c5c', '112e6fe2-4652-40bb-4986-86cde8349a8e', '실연법', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdc8039c-d654-38ff-fe9b-dbd9a16ab215', '112e6fe2-4652-40bb-4986-86cde8349a8e', '반복법', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('112e6fe2-4652-40bb-4986-86cde8349a8e', '85de3d13-3b1b-de14-0ffd-42b4f4682c5c', '③ 실연법', '정답 ③. KSI 실연법 학습자가 이미 설명을 듣거나 시범을 보고 알게 된 지식이나 기능을 강사 의 감독 아래 직접적으로 연습시켜 적용해 보게 하는 교육방법이다. 다른 방법보다 교사 대 학습자의 비가 높다. 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우(Maslow)의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 138)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4119880-fe9f-6853-937e-a41fca33802f', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '생리적욕구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fe75974-990b-f348-b7b0-10409f7620bd', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '사회적욕구', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee4b3a75-4ead-79b3-9acc-b95b9b77dcc7', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '안전의 욕구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '③ 자아실현의 욕구', '정답 ③. E 즈 자아실현의 욕구(제5단계)는 잠재적인 능력을 실현하고자 하는 욕구(성취욕구)이다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d3a719b-d089-f5ce-df95-52b8f3933936', '11111111-1111-1111-1111-111111111104', 'mcq', '재해손실비를 다음과 같이 산정한 것은 어느 방식인가? 총 재해코스트 보험코스트 + 비보험코스트', 2, 139)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27bef558-c6bc-3f1d-0802-10e84364ba45', '7d3a719b-d089-f5ce-df95-52b8f3933936', '하인리히 방식', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57be8ce9-1fdf-3b30-7d24-ea81de4cb232', '7d3a719b-d089-f5ce-df95-52b8f3933936', '버드의 방식', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d1b4ed6-f384-34a2-1127-b30e2e46f96b', '7d3a719b-d089-f5ce-df95-52b8f3933936', '시몬즈 방식', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4e6115e-6b63-17b3-e638-14d6cf7b33f4', '7d3a719b-d089-f5ce-df95-52b8f3933936', '콤패스 방식', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d3a719b-d089-f5ce-df95-52b8f3933936', '0d1b4ed6-f384-34a2-1127-b30e2e46f96b', '③ 시몬즈 방식', '정답 ③. 3 재해손실비 산정 방식 • 하인리히 방식: 총 재해코스트 직접비十간접비 • 시몬즈 방식: 총 재해코스트 보험코스트十비보험코스트 • 버드의 방식: 총재해코스트 보험비十비보험비十비보험 기타비용 • 콤패스 방식: 총 재해코스트 공동비용비十개별비용비 SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육의 교육시간에 관한 설명으로 옳은 것은?', 2, 140)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f265969-cdc7-75ec-1433-6c71b0b42b4c', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자의 작업내용 변경 시의 교육은 2시간 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2373fb2f-e258-49a4-73d8-554f02cd609d', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '사무직에 종사하는 근로자의 정기교육은 매반기 6시간', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06fa6235-0e76-05f0-c9c0-273594dd65c8', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근로', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc519020-c951-271d-60ca-a6041c5fde32', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '관리감독자의 지위에 있는 사람의 정기교육은 연간 8', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '2373fb2f-e258-49a4-73d8-554f02cd609d', '② 사무직에 종사하는 근로자의 정기교육은 매반기 6시간', '정답 ②. 시이다. «!EM 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 판매업무에 직접 종사하는 매반기 6시간 이상 그 밖의 근로자 정기교육 근로자 판매업무에 직접 종사하는 매반기 12시근로자 외의 근로자 관리감독자의 지위에 있는 사람 연간 16시일용근로자 및 근로계약기간이 1주일 1시이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월이 4시하인 기간제근로자 그 밖의 근로자 8시일용근로자 및 근로계약기간이 1주일 작업내용 1시이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시오답해설 관리감독자의 정기교육시간은 연간 16시간 이상이다. tWIIl', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 산업안전보건위원회의 사용자위원 구 성원이 아닌 것은?（단, 각 사업장은 해당하는 사람을 선임 하여야 하는 대상 사업장으로 한다.）', 2, 141)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a11e149a-648e-b329-cbcc-f2a094811cbd', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '안전관리자', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d1eb7f-51b8-e3b9-24f6-f2f6e899ba3b', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '보건관리자', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdbed70e-fe43-672a-19c1-a2c6fdba1cda', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '산업보건의', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e015094-c6f1-a73e-2a8c-a89726aa6ef8', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '명예산업안전감독관', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '6e015094-c6f1-a73e-2a8c-a89726aa6ef8', '④ 명예산업안전감독관', '정답 ④. 3 명예산업 안전감독관은 근로자위원에 해당한다. 산업안전보건위원회 사용자 위원 • 해당사업의 대표자 • 안전관리자 • 보건관리자 • 산업보건의 • 해당 사업의 대표자가 지명하는 9명 이내의 해당 사업장 부서의 장 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7d552a61-3620-283a-a74b-0484dd92ff74', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전인증대상 안전모의 성능기준 항목이 아닌 것 은?', 2, 142)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4cf3a0e4-9ebc-09f0-61ca-3c59188f4c71', '7d552a61-3620-283a-a74b-0484dd92ff74', '내열성', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7e40c19-20eb-f259-1615-dd5c34f45c64', '7d552a61-3620-283a-a74b-0484dd92ff74', '턱끈풀림', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4d09948-2f9d-4eea-8d00-ace1c9ca3b3e', '7d552a61-3620-283a-a74b-0484dd92ff74', '내관통성', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('234d3293-b0cd-7ecf-7bd1-6c03ce264981', '7d552a61-3620-283a-a74b-0484dd92ff74', '충격흡수성', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7d552a61-3620-283a-a74b-0484dd92ff74', '4cf3a0e4-9ebc-09f0-61ca-3c59188f4c71', '① 내열성', '정답 ①. Ima 안전인증대상 안전모의 시험성능기준 항목 시험성능기준 “ 내과토서 ** 종 안전모는 관통거리가 9.5[mm] 이하이고. AB종 안전 '' 통성 모는 관통거리가 11.1 [mm] 이하이어야 한다. 능수서 최고전달충격력이 4.450[N]을 초과해서는 안 되며. 모체와 착장 중격흡〒0 체의 기능이 상실되지 않아야 한다. 내저아서 * *E종 안전모는 교류 2아사]에서 1분간 절연파괴 없이 견 내1- 러 0 뎌야 하고. 이때 누설되는 충전전류는 1O[ ] 이하이어야 한다. 내수성 AE. ABE종 안전모는 질량 증가율이 1[%] 미만이어야 한다. —다효정 " 조日 불꽃을 내텨 5초 이상 연소토지 않이야 핫다. _ 턱끈풀림 150[N] 이상 250[N] 이하에서 턱끈이 풀려야 한다. 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 중 작업현장에서 그때 그 장소의 상황에 즉응 하여 실시하는 것은?', 2, 143)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('262c7b77-11b4-5e98-10bd-717c67e085bd', 'f2cd2586-cda8-f684-6403-78aef825c58e', '자문자답 위험예지훈련', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c81f494-af30-1177-9c67-278e5e9a06f2', 'f2cd2586-cda8-f684-6403-78aef825c58e', 'TBM 위험예지훈련', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2756a7ca-5f96-5409-cc3d-ca0bcf404872', 'f2cd2586-cda8-f684-6403-78aef825c58e', '시나리오 역할연기훈련', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ae73019-7d5d-29d4-680c-9e72e6c4fb41', 'f2cd2586-cda8-f684-6403-78aef825c58e', '1인 위험예지훈련', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '1c81f494-af30-1177-9c67-278e5e9a06f2', '② TBM 위험예지훈련', '정답 ②. M뼤i TBM（Tool Box Meeting） 위험예지훈련 작업 개시 전 또는 종료 후, 10명 이하의 작업원이 리더를 중심으로 둘러 앉아（또는 서서） 10분 내외에 걸쳐 작업 중 발생할 수 있는 위험을 예측하 고 사전에 점검하여 대책을 수립하는 등 단시간 내에 의논하는 문제해결 기법이다. 작업 현장에서 상황에 맞추어 실시할 수 있는 장점이 있다. tWl리', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #22
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('61de9d3d-fd40-2eba-7b05-2b4abbdf517b', '11111111-1111-1111-1111-111111111104', 'mcq', '시스템안전 프로그램에서의 최초 단계 해석으로 시스템의 위험요소가 어떤 위험 상태에 있는가를 정성적으로 평가하 는 방법은?', 2, 144)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12c52213-fe42-018f-350b-39e618e8093c', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'PHA', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4025c085-1018-3256-7063-f8c822ee1c40', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FHA', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df324d42-ccbf-db68-8a12-5fde6c4b8f46', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FMEA', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5965bf72-8581-3c38-b26a-c51898c7c1ca', '61de9d3d-fd40-2eba-7b05-2b4abbdf517b', 'FTA', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('61de9d3d-fd40-2eba-7b05-2b4abbdf517b', '12c52213-fe42-018f-350b-39e618e8093c', '① PHA', '정답 ①. MMi 예비위험분석(PHA； Preliminary Hazards Analysis) 시스템 내의 위험요소가 얼마나 위험상태에 있는가를 평가하는 시스템안 전 프로그램의 최초단계(시스템 구상단계)의 정성적인 분석 방식이다. 5圓', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #29
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 해당 사업주가 유해위험방지계획서 를 작성하여 제출해야 하는 대상은?', 2, 145)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b30d470e-44ab-db1e-fc05-04f57ddc202a', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '시•도지사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5956bd4a-fa5f-a924-7545-b9086366641f', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '관할구청장', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('259604a1-42d5-5fa6-ad6f-bb88bc7cb37e', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '고용노동부장관', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e5e0e45a-9a37-f868-ba57-0a10f459c31c', '0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '행정안전부장관', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0e35fa04-872e-4ed0-d80c-6e5b7b3e7654', '259604a1-42d5-5fa6-ad6f-bb88bc7cb37e', '③ 고용노동부장관', '정답 ③. na 사업주는 유해위험방지계획서를 작성하여 고용노동부령으로 정 하는 바에 따라 고용노동부장관에게 제출하고 심사를 받아야 한다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTDs)의 발생인자와 가장 거리가 먼 것은?', 2, 146)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e366cea6-af39-2870-550e-57d40503376a', '5d53167a-3489-ef42-1329-d9e679c4366a', '무리한 힘', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf12b59-a677-be67-2903-e3e5fc201dcd', '5d53167a-3489-ef42-1329-d9e679c4366a', '다습한 환경', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e678bda2-4408-bbbc-e1d0-f2cd6d137d5e', '5d53167a-3489-ef42-1329-d9e679c4366a', '장시 간의 진동', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef399b72-ea46-6f96-6066-f5bed542828d', '5d53167a-3489-ef42-1329-d9e679c4366a', '반복도가 높은 작업', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', 'ebf12b59-a677-be67-2903-e3e5fc201dcd', '② 다습한 환경', '정답 ②. KIH 누적손상장애(CTDs) 발생원인 과도한 힘의 요구, 부적절한 작업자세, 장시간의 진동, 반복적인 동작 등', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '11111111-1111-1111-1111-111111111104', 'mcq', '철강업 등에서 10일 간격으로 10시간 정도의 정기 수리일 을 마련하여 대대적인 수리, 수선을 하게 되는데 이와 같이 일정기간마다 설비보전활동을 하는 것을 무엇이라 하는가?', 2, 147)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('055426c6-318b-5c10-1270-2f50f90bb068', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '사후보전 (Break down Maintenance, BM)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('937ad240-a8a2-896e-61c7-1a89c843af83', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '시간기준보전 (Time Based Maintenance, TBM)', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee87787-882b-af8d-8574-8ebcd60c321c', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '개량보전(Concentration Maintenance, CM)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ea9d63-5ab0-5e4a-9ee3-14cb63938276', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '상태기준보전(Condition Based Maintenance,', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '937ad240-a8a2-896e-61c7-1a89c843af83', '② 시간기준보전 (Time Based Maintenance, TBM)', '정답 ②. CBWM) 3 시간기준보전(TBM)은 일정기간마다 수리. 수선 등 보수를 하는 것을 뜻한다. E I티', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdd6ca81-a77e-b999-8118-73d7624351b7', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기계설비에서 반대로 회전하는 두 개의 회전체가 맞닿는 사이에 발생하는 위험점으로 가장 적절한 것은?', 2, 148)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23282a22-79f0-4658-ad06-251ff9af6b31', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '물림점', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c870a0e-39bd-851f-a164-8dec1738f2c4', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '협착점', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a96ed7d5-5d1a-72b3-5638-73dd03a6d42a', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '끼임점', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c6a4f28-1fcc-fe7e-7352-c5d02039fbce', 'fdd6ca81-a77e-b999-8118-73d7624351b7', '절단점', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdd6ca81-a77e-b999-8118-73d7624351b7', '23282a22-79f0-4658-ad06-251ff9af6b31', '① 물림점', '정답 ①. 1자 물림점(Nip Point) 회전하는 두 개의 회전체가 맞닿아서 위험성이 있는 곳을 말하며. 위험점이 발생되는 조건은 회전체가 서로 반대방향으로 맞물려 회전되어야 한다. ® 기어. 롤러 f "APTER 01 기계안전의 개념 2024년 3회 CBT 복원문제 • 153 05', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #61
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2c52cc50-d676-e671-6795-15633393ae05', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발위험장소의 분류 중 인화성 액체의 증기 또는 가연성 가스에 의한 폭발위험이 지속적으로 또는 장기간 존재하는 장소는 몇 종 장소로 분류되는가?', 2, 149)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e57a886e-d5b6-c1b5-ce1f-eebd6c65de05', '2c52cc50-d676-e671-6795-15633393ae05', 'o종 장소', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bf47170-708c-1071-e3c1-370ada72140f', '2c52cc50-d676-e671-6795-15633393ae05', '1종 장소', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b884081-10c9-5448-3abb-8197aa772db9', '2c52cc50-d676-e671-6795-15633393ae05', '2종 장소', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b19875b-dd4d-1c3c-d70e-61a898cd9c34', '2c52cc50-d676-e671-6795-15633393ae05', '3종 장소', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2c52cc50-d676-e671-6795-15633393ae05', 'e57a886e-d5b6-c1b5-ce1f-eebd6c65de05', '① o종 장소', '정답 ①. 가스폭발 위험장소 분류 적요 인화성 액체의 증기 또는 가연성 가스에 의한 폭발위험이 지속적 0종장소 으로 또는 장기간 존재하는 장소 정상 작동상태에서 인화성 액체의 증기 또는 가연성 가스에 의한 1종장소 폭발위험 분위기가 존재하기 쉬운 장소 정상 작동상태에서 인화성 액체의 증기 또는 가연성 가스에 의한 2종장소 폭발위험 분위기가 존재할 우려가 없으나. 존재할 경우 그 빈도 가 아주 적고 단기간만 존재할 수 있는 장소', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('61accc89-9a18-dffb-c436-6916ce916be4', '11111111-1111-1111-1111-111111111104', 'mcq', '감전사고 시 전선이나 개폐기 터미널 등의 금속분자가 고열 로 용융됨으로서 피부 속으로 녹아 들어가는 것은?', 2, 150)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb0252b5-6ee2-2052-5f6d-ff64343754c6', '61accc89-9a18-dffb-c436-6916ce916be4', '피부의광성변화', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0e39f95-ce68-417c-84c0-f7a99bc5e677', '61accc89-9a18-dffb-c436-6916ce916be4', '전문', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e482f32-a976-2bf0-4d2d-6c87ac73c6e0', '61accc89-9a18-dffb-c436-6916ce916be4', '표피박탈', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7e4da4f-0751-8171-b8b7-c7428995626b', '61accc89-9a18-dffb-c436-6916ce916be4', '전류반점', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('61accc89-9a18-dffb-c436-6916ce916be4', 'bb0252b5-6ee2-2052-5f6d-ff64343754c6', '① 피부의광성변화', '정답 ①. K9 피부의 광성변화 감전사고 시 전선로의 선간단락 또는 지락사고로 전선이나 단자 등의 금속 분자가 가열 • 용융되어 피부 속으로 녹아 들어가는 현상이다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 그림은 심장맥동주기를 나타낸 것이다. 「파는 어떤 경 우인가?', 2, 151)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0efbdfe2-e9f5-51d7-4292-8c0ab7b4f7b5', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 수축에 따른 파형', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89a2b779-5bc5-f6b8-f056-1c7405e7f072', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 수축에 따른 파형', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c076624-8a20-7050-c81b-e8e9c0bc1231', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 휴식 시 발생하는 파형', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d413fb9-4237-290d-03b3-5b91a9fc4301', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 휴식 시 발생하는 파형', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '4c076624-8a20-7050-c81b-e8e9c0bc1231', '③ 심실의 휴식 시 발생하는 파형', '정답 ③. * t 파 심실의 수축 종료 후 심실의 휴식 시 발생하는 파형으로 전격이 인가되면 심실세동을 일으키는 확률이 가장 크고 위험한 부분이다. E"阿 아1APTER 02 감전재해 및 방지대책 06', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크용접기의 자동전격 장치는 전격의 위험을 방지하기 위하여 아크 발생이 중단된 후 약 1초 이내에 출력 측 무부 하 전압을 자동적으로 몇 [v] 이하로 저하시켜야 하는가?', 2, 152)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c34e456-479c-48e1-f9a2-ebb008f550d8', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '85', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2a3aed7-c784-c97e-a294-956d5446b0f2', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '70', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('264b7e1d-a733-9782-02af-222dbf26fea9', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '50', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '25', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '④ 25', '정답 ④. 3 자동전격방지장치 용접봉의 조작에 따라 용접을 할 때에만 용접기의 주회로를 폐로(ON)시키 고, 용접을 행하지 않을 때에는 용접기 주회로를 개로(OFF)시켜 용접기 출력 측의 무부하 전압을 25[V] 이하로 저하시켜 작업자가 용접봉과 모재 사이에 접촉함으로써 발생하는 감전의 위험을 방지하는 장치이다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #67
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', '11111111-1111-1111-1111-111111111104', 'mcq', '활선작업 및 활선근접 작업 시 반드시 작업지휘자를 정하여 야 한다. 작업지휘자의 임무 중 가장 중요한 것은?', 2, 153)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('062626d6-d406-cc2e-46b2-d0b2093b57ed', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '설계의 계획에 의한 시공의 관리, 감독', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '활선에 접근 시 즉시 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3bfb39-fbdf-fa79-81a0-18b523f8147f', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '필요한 전기 기자재의 보급', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cac4ce-974a-d1d2-3a37-a9378da4cecf', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '작업의 신속한 처리', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', 'bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '② 활선에 접근 시 즉시 경고', '정답 ②. KOi 작업지휘자는 기계설비. 취급하는 재료. 용구. 작업방법 등에 대 한 불안전한 상태 및 행동의 유무를 직접 점검 • 감시 및 통제하는 임무를 가진다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #68
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰침의 제한전압이 800[kV], 충격 절연강도가 1,OOO[kV] 라 할 때, 보호여유도는 몇 [%]인가?', 2, 154)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1471c895-0fc1-0634-6084-00bd76b40725', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '25', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a57ba95-5eaa-5b74-eb2a-ccb3101bbd90', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '33', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d7e1bfb-ea87-6d28-7d27-0d575e3af4cf', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '47', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2611947f-b59e-57e3-26da-b634842cadf2', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '63', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '1471c895-0fc1-0634-6084-00bd76b40725', '① 25', '정답 ①. M 보호여유도 충격절오히1한전압 x wo 1.0씽諸00 Kl이으%] ovU t 투', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [v] 이하 인가?', 2, 155)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9055b9a-2705-57e0-5aa6-21a634ba2606', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '30[V]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5902163-8102-16b1-2e63-ff9e69525fb1', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '50[V]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a4624fb-c0a2-d5c8-6963-81bd2cb0b467', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '60[V]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d041b3dd-7a6e-e9a3-e96a-52d16f4854b9', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '70[V]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', 'f9055b9a-2705-57e0-5aa6-21a634ba2606', '① 30[V]', '정답 ①. KOI 안전전압 회로의 정격전압이 일정 수준 이하의 낮은 전압으로 절연파괴 등의 사고 시에도 인체에 위험을 주지 않는 전압을 말하며,「산업안전보건법령」에서 30[V]로 규정하고 있다. E €l', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 최소감지전류에 대한 설명으로 알맞은 것은?', 2, 156)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb88edca-2e79-bd8a-65f3-9cc882a8f697', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '인체가 고통을 느끼는 전류이다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39564a15-59a0-75c0-1639-a598227be9f4', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 한 값이며, 성인 남자의 경우 약 l[mA]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfc46282-01bb-79a1-e821-6dfa5bb022dc', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 여자의 경우 성인 남자의 7이%]인', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', 'f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', '② 성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', '정답 ②. 0.7[ ]에서 느낄 수 있는 전류의 크기를 말한다. KS 최소감지전류 • 고통을 느끼지 않으면서 짜릿하게 전기가 흐르는 것을 감지할 수 있는 최소전류이다. • 상용주파수 60[Hz]에서 성인남자의 경우 l[ ]（교류）이다. E 51', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '11111111-1111-1111-1111-111111111104', 'mcq', '인입개폐기를 개방하지 않고 전등용 변압기 1차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 cos에 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?', 2, 157)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0be931c4-939c-c42e-9ef3-d1e1d91bc5c7', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '안전장구 미사용', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('846102ac-685e-3b56-5777-a18c24f9e594', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '동력용 변압기 cos 미개방', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('837ffaad-0dd2-c26d-a032-5e0e387a5664', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '전등용 변압기 2차 측 COS 미 개방', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31be3915-6372-8ed7-f607-4a4cdda6d1f8', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '인입구 개폐기 미개방한 상태에서 작업', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '837ffaad-0dd2-c26d-a032-5e0e387a5664', '③ 전등용 변압기 2차 측 COS 미 개방', '정답 ③. K3 전등용 변압기 1차 측 COS가 개방된 상태이므로 2차 측 개방은 감전사고와는 무관하다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #75
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----cT''o--------1 |--------（스、-----부히 ⑭ @ @', 2, 158)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aab78a85-89f9-061c-d79d-0710f1ab948c', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: ®-+@ — ©, 투입:®—*g）— @', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddc2c23c-8f5c-da7d-0f67-3133b784f40e', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: Q）—- @ — ®, 투입: Q） —> @ —* ®', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1188d5c1-798c-033b-c4d8-e62a89c6ee60', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: （타）一© — ®, 투입:© — ® — ©', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97929bf2-a4c8-5578-e6ac-73a03daf7d8d', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: © — @으®, 투입: ©--（가）一®', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '97929bf2-a4c8-5578-e6ac-73a03daf7d8d', '④ 차단: © — @으®, 투입: ©--（가）一®', '정답 ④. Oi 유입차단기의 작동（투입 및 차단）순서 • 차단순서: @ —@ —0） • 투입순서: ⑪一⑭一©', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '11111111-1111-1111-1111-111111111104', 'mcq', '인화성 가스가 발생할 우려가 있는 지하작업장에서 작업을 할 경우 폭발이나 화재를 방지하기 위한 조치사항 중 가스 의 농도를 측정하는 기준으로 적절하지 않은 것은?', 2, 159)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7bc2867-3835-9232-87ff-52d7360fa966', '393530b5-e003-0eba-e6fa-d6038b424b21', '매일 작업을 시작하기 전에 측정한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70d42fd-2da1-9000-1aef-0255d3eeb09f', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스의 누출이 의심되는 경우 측정한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08cbd857-2d25-3907-ee35-c20cefac2722', '393530b5-e003-0eba-e6fa-d6038b424b21', '장시간 작업할 때에는 매 8시간마다 측정한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('723547b0-1c27-d459-23a2-65020787b1c4', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스가 발생하거나 정체할 위험이 있는 장소에 대하여', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '08cbd857-2d25-3907-ee35-c20cefac2722', '③ 장시간 작업할 때에는 매 8시간마다 측정한다.', '정답 ③. 측정한다. K9 지하작업장 작업 시 화재 방지를 위한 조치사항 가스의 농도를 측정하는 사람을 지명하고 다음의 경우에 그로 하여금 해당 가스의 농도를 측정하여야 한다. • 매일 작업을 시작하기전 • 가스의 누출이 의심되는 경우 • 가스가 발생하거나 정체할 위험이 있는 장소가 있는 경우 • 장시간 직업을 계속하는 경우이 경우 4시간마다 가스 농도를 측정）', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #86
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1853742d-8f83-9016-9fde-df5bd05ab178', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판가스 1[m3]를 완전연소시키는 데 필요한 이론 공기 량은 몇 [m3]인가?（단, 공기 중의 산소농도는 20[vol%]이 다.）', 2, 160)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13007ced-670e-61a0-a12a-801a6fecff8f', '1853742d-8f83-9016-9fde-df5bd05ab178', '20', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af9c00c3-79b9-7109-c17e-ba8ff531d301', '1853742d-8f83-9016-9fde-df5bd05ab178', '25', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89b8880e-6df9-82d1-8dbb-19d7df8664a6', '1853742d-8f83-9016-9fde-df5bd05ab178', '30', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c5ced3a-0a6e-df47-ef35-803178796397', '1853742d-8f83-9016-9fde-df5bd05ab178', '35', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1853742d-8f83-9016-9fde-df5bd05ab178', 'af9c00c3-79b9-7109-c17e-ba8ff531d301', '② 25', '정답 ②. 1M 프로판의 완전연소반응식 C3Hs+502 - 3CO2+4H.O 프로판 l[ni‘]를 완전연소시키는 데 필요한 이론 산소량은 1 乂 5 5[1日이다. 공기 중의 산소농도는 20[vol%]이므로 이론 공기량 이론산소량 x 쁘 5 x 쓰 25[m3] 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
