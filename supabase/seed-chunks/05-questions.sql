-- chunk 5/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2024-3 #92
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '11111111-1111-1111-1111-111111111104', 'mcq', '소화설비와 주된 소화적용방법의 연결이 옳은 것은?', 2, 161)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a185ba76-042c-29fb-d348-635f82f2e9c0', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '포소화설비 - 질식효과', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4463185-0bc9-b7b8-39a7-356c239781ef', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '스프링클러설비 - 억제효과', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9546555a-e54e-8ba3-253c-1f5db37b69f6', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '이산화탄소소화설비 - 제거소화', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbca6990-2d2c-342a-afb0-d4457d9dba06', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '할로겐화합물소화설비 - 냉각소화', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', 'a185ba76-042c-29fb-d348-635f82f2e9c0', '① 포소화설비 - 질식효과', '정답 ①. K^a 질식소화를 이용한 소화기 종류 포소화기, 분말소화기, 이산화탄소소화기. 마른모래, 팽창질석, 팽창진주암 오閉 H 설 스프링클러소화설비: 냉각소화 이산화탄소소화설비 : 질식소화 할로겐화합물소화설비 : 억제소화', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '11111111-1111-1111-1111-111111111104', 'mcq', '후압이 존재하고 증기압 변화량을 제어할 목적의 경우 어떠 한 안전방출장치를 사용해야 하는가?', 2, 162)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d7e41a-d6d3-b5a5-5c5c-e88863a220cc', '8f32052f-6024-18cf-a151-776d0f1f044f', '스프링식 안전방출장치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c165eee-5d8c-ac30-64f1-63540a95ac6b', '8f32052f-6024-18cf-a151-776d0f1f044f', '파열판식 안전방출장치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e54b1d-4dec-4fe3-4a87-a2699f4589b3', '8f32052f-6024-18cf-a151-776d0f1f044f', '릴리프식 안전방출장치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2963b56b-0939-8680-7b05-0757a19831b9', '8f32052f-6024-18cf-a151-776d0f1f044f', '벨로스(Bellows)식 안전방출장치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '2963b56b-0939-8680-7b05-0757a19831b9', '④ 벨로스(Bellows)식 안전방출장치', '정답 ④. 짜 벨로스(Bellows)식 안전방출장치 주름이 있는 금속부품(Bellows)이 스프링 압력에 의해 고정되어 있고. 설 정압력을 넘는 경우 작동되어 압력을 정상화시키는 안전장치이다. • 후압이 존재하고 증기압 변화량을 제어할 목적으로 사용한다. • 부식성. 독성 가스에 사용한다. 아UPTER 04 화공 안전운전 • 점검 10', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68b51484-9aff-696c-c0cd-2356db421c05', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우에 준수하여야 할 기준으로 옳지 않은 것은?', 2, 163)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da32a5df-da84-b769-c13d-07193b211e39', '68b51484-9aff-696c-c0cd-2356db421c05', '승강용 사다리는 견고하게 설치할 것', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f91a9e15-cd99-31d9-1b28-bd0bc03112c3', '68b51484-9aff-696c-c0cd-2356db421c05', '비계의 최상부에서 작업을 하는 경우에는 안전난간을', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6d22518-a6ee-f360-4504-980680d02493', '68b51484-9aff-696c-c0cd-2356db421c05', '작업발판의 최대적재하중은 400[kg]을 초과하지 않도', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c7c57b3-cb71-1aa8-d946-ec3726ae78ed', '68b51484-9aff-696c-c0cd-2356db421c05', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68b51484-9aff-696c-c0cd-2356db421c05', 'c6d22518-a6ee-f360-4504-980680d02493', '③ 작업발판의 최대적재하중은 400[kg]을 초과하지 않도', '정답 ③. 전난간을 딛고 작업을 하거나 받침대 또는 사다리를 사 용하여 작업하지 않도록 할 것 KOI 이동식비계 작업발판의 최대적재하중은 250[kg]을 초과하지 않 도록 하여야 한다. 아IAPTER 05 비계 - 거푸집 가시설 위험방지', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 와이어로프로 지지하는 경우에 준수해야 할 사항으로 옳지 않은 것은?', 2, 164)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38333dc8-b20c-a669-f421-88eee08932ee', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66b4850c-ac95-d604-36b7-b53c264ee5b1', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프 설치각도는 수평면에서 60° 이상으로 하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be5435f7-45e4-22d0-4289-61902b6f0398', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a394d3a-aff8-753c-3a11-ee3c68a34f2b', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '66b4850c-ac95-d604-36b7-b53c264ee5b1', '② 와이어로프 설치각도는 수평면에서 60° 이상으로 하', '정답 ②. K피 타워크레인을 와이어로프로 지지하는 경우 준수사항 • 와이어로프를 고정하기 위한 전용 지지프레임을 사용할 것 • 와이어로프 설치각도는 수평면에서 60° 이내로 하되. 지지점은 4개소 이 상으로 하고, 같은 각도로 설치할 것 • 와이어로프와 고 고정부위는 충분한 강도와 장력을 갖도록 설치하고. 와 이어로프를 클립 샤클 등의 고정기구를 사용하여 견고하게 고정시켜 풀 리지 않도록 하며. 사용 중에는 충분한 강도와 장력을 유지하도록 할 것 • 와이어로프가 가공전선에 근접하지 않도록 할 것 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #110
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a20d0eb0-bce1-115f-bb65-f29c4c51248d', '11111111-1111-1111-1111-111111111104', 'mcq', '단관비계가 넘어지는 것을 방지하기 위하여 사용하는 벽이 음의 간격기준으로 옳은 것은?', 2, 165)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e34cb7d-4dee-4a7f-d801-a02d67666bdb', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 5[m] 이하, 수평 방향 5[m] 이하', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69c34487-71cf-4691-5551-c6a69ef1ef97', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 6[m] 이하, 수평 방향 6[m] 이하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b5bf86d-8ae0-ebc4-2107-ac15736d1cbe', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 7[m] 이하, 수평 방향 7[m] 이하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6289b997-a6aa-f120-dff6-b3c8341b20fe', 'a20d0eb0-bce1-115f-bb65-f29c4c51248d', '수직 방향 8[m] 이하, 수평 방향 8[m] 이하', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a20d0eb0-bce1-115f-bb65-f29c4c51248d', '5e34cb7d-4dee-4a7f-d801-a02d67666bdb', '① 수직 방향 5[m] 이하, 수평 방향 5[m] 이하', '정답 ①. Kg 단관비계의 벽이음은 수직방향 5[m], 수평방향 5[m] 이내로 조립 하여야 한다. 빠1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #114
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '11111111-1111-1111-1111-111111111104', 'mcq', '부두 등의 하역작업장에서 부두 또는 안벽의 선을 따라 통 로를 설치하는 경우, 최소 폭 기준은?', 2, 166)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56db5eb0-0083-7827-d3e3-570d72cf6c53', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '90[cm] 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('feac5b12-b38c-65eb-2485-3a18d0011ac5', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '75[cm] 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19753cda-e31b-cb18-e0dc-2d6038238423', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '60[cm] 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25a9a383-604e-1fc2-7717-0e9766e6b135', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '45[cm] 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '56db5eb0-0083-7827-d3e3-570d72cf6c53', '① 90[cm] 이상', '정답 ①. IBM 부두 • 안벽 등 하역작업을 하는 장소에 부두 또는 안벽의 선을 따라 통로를 설치하는 경우에는 폭을 90[cm] 이상으로 하여야 한다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2024-3 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '11111111-1111-1111-1111-111111111104', 'mcq', '항타기 또는 항발기의 권상장치 드럼축과 권상장치로부터 첫 번째 도르래의 축 간의 거리는 권상장치 드럼폭의 몇 배 이상으로 하여야 하는가?', 2, 167)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce5b256f-bc71-1c05-140a-35b78b8c97cf', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '5배', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6be539d7-c853-50bb-219f-50fcf389fa86', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '8배', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0f123b1-0296-268e-1ef7-5b61bfd350c9', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '10배', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84b1b16b-135f-3185-d194-2d601281d60e', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '15배', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '84b1b16b-135f-3185-d194-2d601281d60e', '④ 15배', '정답 ④. KOI 항타기 또는 항발기의 권상장치의 드럼축과 권상장치로부터 첫 번째 도르래의 축 간의 거리를 권상장치 드럼폭의 15배 이상으로 하여야 한다. k◎順', array['산업안전기사','2024-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 바탕은 파 란색, 관련 그림은 흰색을 사용하는 표지는?', 2, 168)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af065b72-b66c-3c7b-dfea-103387bd845d', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '사용금지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e334a6f-534b-69e5-33e5-502fa50d596f', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '세안장치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00e3aac8-3e6a-e9d1-58d4-f392ed912a93', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '몸균형상실 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('924ec823-03f2-1bfe-13d0-65130851e680', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '안전복 착용', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '924ec823-03f2-1bfe-13d0-65130851e680', '④ 안전복 착용', '정답 ④. HIBM 파란색 바탕에 관련 그림이 흰색인 안전보건표지는 ‘지시표지’이 다. 보기 중 ‘ 지시표지 ’는 ‘안전복 착용’이다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c0854780-cd0f-99dc-fb29-c16f21a489cf', '11111111-1111-1111-1111-111111111104', 'mcq', '재해분석도구 중 재해발생의 유형을 어골상（魚骨像）으로 분류하여 분석하는 것은?', 2, 169)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d3c94a7f-51d7-5019-f442-1cb3af295f09', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '파레토도', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf662d20-d892-e390-997d-bc103cead0f8', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '특성요인도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aaebcee7-364d-189e-c3cc-b4ca6e20d67f', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '관리도', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('795af566-a687-1d36-9331-0c11132e83e7', 'c0854780-cd0f-99dc-fb29-c16f21a489cf', '클로즈분석도', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c0854780-cd0f-99dc-fb29-c16f21a489cf', 'bf662d20-d892-e390-997d-bc103cead0f8', '② 특성요인도', '정답 ②. a 재해의 통계적 원인분석 방법 파레토도 분류항목을 큰 순서대로 도표화한 분석법___________________ 특성요인도 특성과 요인관계를 도규 루 하여 어골상으로 세분화한 분석법 클로즈분석도 요인별 결과 내역을 교차한 클로즈 그림을 작성 분석하는 방법 관라三~— 재해발생수를 그래프화하여 관리선을 설정, 관리하는 방법 t M SUBJECT 03 기계 • 기구 및 설비 안전관리', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1f37b860-4f62-6990-bcea-703fd85aca76', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전보건교육의 단계별 교육과정 순서로 옳은 것은?', 2, 170)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ee192a0-e792-609f-9a8b-bbfb460b69f2', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 태도교육 一 안전 지식교육 一 안전 기능교육', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('305783ac-281b-207c-5bff-e163ee25e713', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 지식교육 一 안전 기능교육—안전 태도교육', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c1d5ebf-5858-4f3b-3de7-c84cbe1cb367', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 기능교육 一 안전 지식교육 一 안전 태도교육', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('175001f7-c7f7-b3fe-7fab-8ac7302f39ec', '1f37b860-4f62-6990-bcea-703fd85aca76', '안전 자세교육 •一 안전 지식교육 - 안전 기능교육', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1f37b860-4f62-6990-bcea-703fd85aca76', '305783ac-281b-207c-5bff-e163ee25e713', '② 안전 지식교육 一 안전 기능교육—안전 태도교육', '정답 ②. KOI 안전교육의 3단계 (3 1단계: 지식교육 © 2단계: 기능교육 단계: 태도교육 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #19
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8970671b-7028-0675-1792-082e1997f79b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육시간에 관한 설명으로 옳지 않은 것은?', 2, 171)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073f6631-d9e7-a4e5-9d15-349ff4824584', '8970671b-7028-0675-1792-082e1997f79b', '사무직 종사 근로자 정기교육: 매반기 6시간 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b57bf4f6-dd57-455c-ffe7-7e3f09515245', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dca6939c-9ae0-81d9-340a-bbbbe769cda5', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 작업내용 변경 시 교육: 2시간 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91912107-9c4a-bf88-9b0f-cdafd6aeca5c', '8970671b-7028-0675-1792-082e1997f79b', '건설 일용근로자 건설업 기초안전 • 보건교육: 4시간 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8970671b-7028-0675-1792-082e1997f79b', 'dca6939c-9ae0-81d9-340a-bbbbe769cda5', '③ 일용근로자 작업내용 변경 시 교육: 2시간 이상', '정답 ③. K9 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 ! 판매업무에 직접 종사하는 매반기 6시간 이상 정기교육 그 밖의 근로자 근로자 판매업무에 직접 종사하는 매반기 12시근로자 외의 근로자 일용근로자 및 근로계약기간이 1주일 1 시이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월 이 4시하인 기간제근로자 그 밖의 근로자 8시일용근로자 및 근로계약기간이 1주일 작업내용 1시이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시건설업 기초 건설 일용근로자 4시안전 • 보건교육 ※ 이 문제는 개정된 법령에 따라 수정한 문제입니다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의식 교육을 1시간 하려고 한다. 다음 중 가장 시간이 많이 소비되는 단계는?', 2, 172)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00c7c6a1-aff5-9565-db21-0bc14a1982da', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '도입', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b5ab025-be10-8794-1e43-7c646f6c7fd4', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '제시', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e5a8dd1-64d4-802a-9e77-c682bc6e5bde', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '적용', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97b057ac-7cbc-674d-73dc-d20df5fa2aa3', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '확인', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '7b5ab025-be10-8794-1e43-7c646f6c7fd4', '② 제시', '정답 ②. 교육법의 4단계 및 시간배분（60분 기준） 교육법의 4단계 강의식 토의식 제1 단계-도입（준비） 5분 5분 제2단계-제시（설명） 40분 10분 제3단계-적용（응용） 10분 40분 제4단계-확인（총괄） 5 분 5분 아IAPTER 05 안전보건교육의 내용 및 방법', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구 순서대로 나열한 것은? O정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성 ⑨ 각 사상의 재해원인 규명', 2, 173)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6bdfab0-cdc1-6bf7-47d2-0d49fd63a024', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0>—*©—*© — (§)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4abfc455-6b88-46a2-ac3a-452fe9347e32', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0—>@—*©--©', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('895ae29f-9da5-999a-c7d4-e0a59f4811bb', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '©-©—*©—*(§)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b443d30-0349-3e34-a2eb-cb3323ff884e', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '(9—>@-+© —©', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '7b443d30-0349-3e34-a2eb-cb3323ff884e', '④ (9—>@-+© —©', '정답 ④. 3 FTA에 의한 재해사례 연구순서(D. R. Cheriton) 정상(Top)사상의 선정 一 각 사상의 재해원인 규명 一 FT도의 작성 및 분석 一 개선계획의 작성 t4 !', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #31
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법（FTA）에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 174)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5daf9669-d187-62fa-80d3-2c0f0f41f8fd', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ad1763-713e-e37b-7cd1-7fce3ad8a9b9', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fd7956c-d972-4a0d-ce20-0c7428ff4a79', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc1690d7-62f2-0f8c-b1df-4358e76a6b80', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', 'bc1690d7-62f2-0f8c-b1df-4358e76a6b80', '④ 미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', '정답 ④. 최소한의 컷셋이다. KOI 미니멀 컷셋은 시스템의 위험성을 표시하는 것이다. 미니멀 패스셋은 시스템의 신뢰성을 표시하는 것이다. 미니멀 패스셋은 정상사상（고장）이 일어나지 않는 최소한의 패스셋이다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #33
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '11111111-1111-1111-1111-111111111104', 'mcq', '인간공학 연구방법 중 실제의 제품이나 시스템이 추구하는 특성 및 수준이 달성되는지를 비교하고 분석하는 연구는?', 2, 175)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('579aff0e-424a-8a59-570c-2db53b133076', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '조사연구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01b8de69-ef87-8447-ef2e-a537a477d16b', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '실험연구', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5461373-a24f-2ec5-3b34-087696e03d42', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '분석연구', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5dd32804-43cf-037f-e404-23cca386d1ac', '6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '평가연구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ad1a005-1c2f-d5ea-a17e-2c11730aa2c5', '5dd32804-43cf-037f-e404-23cca386d1ac', '④ 평가연구', '정답 ④. KU 평가연구 시스템 성능에 대한 인간-기계시스템이나 제품 등이 의도한 성능, 목표 수준에 도달하였는지 분석하는 연구방법이다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 상시 작업에 종사하는 장소에 서 보통작업을 하고자 할 때 작업면의 최소 조도[I니X]로 맞 는것은?', 2, 176)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3bd57c-33ee-5cd3-dbd0-4865c8fa3818', '39a168be-3965-66d8-cbb2-3b0b399ce490', '75', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '39a168be-3965-66d8-cbb2-3b0b399ce490', '150', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a13250f5-3f98-1b34-521f-2fa6180f67b3', '39a168be-3965-66d8-cbb2-3b0b399ce490', '300', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ef3fde9-7be9-cc1f-1d28-f67a0e055d3d', '39a168be-3965-66d8-cbb2-3b0b399ce490', '750', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '② 150', '정답 ②. 작업별 조도기준 • 초정밀작업: 750[lux] 이상 • 정밀작업 : 300[lux] 이상 • 보통작업: 150[lux] 이상 • 그 밖의 작업 : 75[lux] 이상', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '11111111-1111-1111-1111-111111111104', 'mcq', '광원으로부터 직사휘광을 처리하기 위한 방법으로 틀린 것은?', 2, 177)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f605cc0-3966-b770-168b-88c108bc6f0e', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 휘도를 줄인다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e6887d1-f14e-3810-3f6b-2a29d629f84d', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '가리개나 차양을 사용한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85b2d5fc-21ec-c767-eb0f-fe59a7582b43', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원을 시선에서 멀리 한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fefa86e-7d28-e193-1755-4c4ec39fd615', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 주위를 어둡게 한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '1fefa86e-7d28-e193-1755-4c4ec39fd615', '④ 광원의 주위를 어둡게 한다.', '정답 ④. K9 광원으로부터의 휘광(Glare) 처리 시 휘광원 주위를 밝게 하여 광도비를 줄여야 한다. 바劍51', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #44
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭작업에서 숫돌의 파괴원인으로 가장 적절하지 않은 것은?', 2, 178)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2f914d9-81ab-52b9-ac0c-297045f3086f', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌의 회전속도가 너무 빠를 때', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05f5c266-c101-6bcb-48a4-9397c1077148', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '연삭작업 시 숫돌의 정면을 사용할 때', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a91bf85-a0fa-cce8-bc81-b9a7d1ebcbb0', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌에 큰 충격을 줬을때', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06517596-b0f6-d8f3-b04f-acd404eb4fb9', 'ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '숫돌의 회전중심이 제대로 잡히지 않았을 때', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ea0bc693-d2d4-883e-b5a0-41a1c3c15ee8', '05f5c266-c101-6bcb-48a4-9397c1077148', '② 연삭작업 시 숫돌의 정면을 사용할 때', '정답 ②. K3 연삭작업 시 숫돌의 측면을 사용할 때 연삭숫돌이 파괴된다. 연삭숫돌의 파괴 및 재해원인 • 숫돌에 균열이 있는 경우 • 숫돌이 고속으로 회전하는 경우 • 회전력이 결합력보다 큰 경우 • 무거운 물체가 충돌한 경우（외부의 큰 충격을 받은 경우） • 숫돌의 측면을 일감으로써 심하게 가압했을 경우 • 베어링이 마모되어 잔동을 일으키는 경우 • 플랜지 지름이 현저하게 작은 경우 • 회전중심이 잡히지 않은 경우 WW1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비에서 기계 고장률의 기본모형으로 옳지 않은 것은?', 2, 179)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '조립고장', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('566de4a0-73d4-cfa6-3e04-046520196c1e', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '초기고장', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e16e3b9-c14e-8267-57c5-f8530984ad9b', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '우발고장', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f58264ca-cea9-0247-52bb-6c45f621a22c', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '마모고장', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', '① 조립고장', '정답 ①. KS 고장률의 유형 • 초기고장（감소형）: 제조가 불량하거나 생산과정에서 품질관리가 안 되어 서생기는 고장 • 우발고장（일정형）: 실제 사용하는 상태에서 발생하는 고장으로 예측할 수 없는 랜덤의 간격으로 생기는 고장 • 마모고장（증가형）: 설비 또는 장치가 수명을 다하여 생기는 고장 *m SUBJECT 02 인간공학 및 위험성평가 관리', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비가 이상이 있을 때 기계를 급정지시키거나 방호장 치가 작동되도록 하는 것과 전기회로를 개선하여 오동작을 방지하거나 별도의 안전한 회로에 의해 정상기능을 찾을 수 있도록 하는 것은?', 2, 180)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b8a71ce-2ab3-2136-7ba1-c8ab2f174ffb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '외형의 안전화', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28c3e9f0-a59a-470e-3604-c20004a9c9fb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '기능상의 안전화', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('921fe360-3f9e-b12b-60d6-b8ecdb1f2ea3', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업의안전화', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('271c8ce3-d082-fb89-5cec-d5d8bb339953', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업점의안전화', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '28c3e9f0-a59a-470e-3604-c20004a9c9fb', '② 기능상의 안전화', '정답 ②. 기능상의 안전화 최근 기계는 반자동 또는 자동 제어장치를 갖추고 있어 에너지 변동에 따 라 오동작이 발생하여 주요 문제로 대두되므로 이에 따른 기능의 안전화가 요구되고 있다. 예 전압 강하 및 정전에 따른 오작동. 사용압력 변동 시의 오작동. 단락 또 는 스위치 고장 시의 오작동 g間nn', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '11111111-1111-1111-1111-111111111104', 'mcq', '보일러의 안전한 가동을 위하여 압력방출장치를 2개 설치 한 경우에 작동방법으로 옳은 것은?', 2, 181)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b90a37bd-0622-a26e-d93b-6c1226a1267b', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 2개가 동시 작동', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe74f7a-111a-ba0e-8476-0b99a5c9389c', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a7775e-cdd6-fdc4-d1fb-25b8fddb1c07', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f084691-fa37-99a6-bebf-bf29c0faf31e', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력의 1.1 배 이하에서 2개가 동시 작동', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '7fe74f7a-111a-ba0e-8476-0b99a5c9389c', '② 최고사용압력 이하에서 1개가 작동되고 다른 것은 최', '정답 ②. KS 보일러의 안전한 가동을 위하여 보일러 규격에 맞는 압력방출장 치를 1개 또는 2개 이상 설치하고 최고사용압력 이하에서 작동되도록 하 여야 한다. 다만. 압력방출장치가 2개 이상 설치된 경우에는 최고사용압력 이하에서 1개가 작동되고. 다른 압력방출장치는 최고사용압력 1.05배 이 하에서 작동되도록 부착하여야 한다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #58
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 아세틸렌 용접장치에서 역화의 원인으로 가장 거리 가 먼 것은?', 2, 182)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1a2644e-9338-56c0-db90-b14b8de8f4a7', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '아세틸렌의 공급과다', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5def6de2-d78c-93b0-9fba-e88eb9e50a67', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 성능의 부실', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82350cee-cec0-b65a-4677-3fafbf48a24e', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '압력조정기의 고장', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b2614e-c655-e67b-6512-9a6638460f91', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 팁에 이물질이 묻은 경우', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', 'd1a2644e-9338-56c0-db90-b14b8de8f4a7', '① 아세틸렌의 공급과다', '정답 ①. KHB 아세틸렌의 공급 과다는 역화의 원인이 아니다. 산소의 공급이 과다할 경우 역화가 발생할 수 있다. 역화의 원인 • 토치 팁에 이물질이 묻은 경우 • 팁과 모재의 접촉 • 토치의 성능 불량 • 토치 팁의 과열 • 압력조정기의 고장', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('11a9b13c-c625-0156-888a-12c02c5c0894', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 산업용 로봇에 의한 작업 시 안전조치사항으로 적 절하지 않은 것은?', 2, 183)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d917dd8-8fb5-bbfa-b2df-59fc3805bdf0', '11a9b13c-c625-0156-888a-12c02c5c0894', '로봇의 운전으로 인해 근로자가 로봇에 부딪칠 위험이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c73304fb-a75f-2555-6ad4-05c3f4ee3430', '11a9b13c-c625-0156-888a-12c02c5c0894', '작업을 하고 있는 동안 로봇의 기동스위치 등은 작업에', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7449b41e-2238-fd6c-aac6-7979a6d0a46b', '11a9b13c-c625-0156-888a-12c02c5c0894', '로봇의 조작방법 및 순서, 작업 중의 매니퓰레이터의', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('365df7bd-ff76-c9a0-e357-00a85c514450', '11a9b13c-c625-0156-888a-12c02c5c0894', '작업에 종사하는 근로자가 이상을 발견하면 관리감독', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('11a9b13c-c625-0156-888a-12c02c5c0894', '365df7bd-ff76-c9a0-e357-00a85c514450', '④ 작업에 종사하는 근로자가 이상을 발견하면 관리감독', '정답 ④. 자에게 우선 보고하고, 지시에 따라 로봇의 운전을 정 지시 킨다. 3 산업용 로봇의 작업 시 작업에 종사하고 있는 근로자 또는 그 근 로자를 감시하는 사람은 이상을 발견하면 즉시 로봇의 운전을 정지시키기 위한 조치를 하여야 한다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #62
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 / 5g_[mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 184)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce515dfa-46e3-9fae-733c-61de9922dc57', '70754ff7-fca7-8388-5049-a664d0b6d53e', '13.6', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e325e3-7342-8841-f46a-cedf9fa27108', '70754ff7-fca7-8388-5049-a664d0b6d53e', '16.2', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4617e1e-85e9-6161-163a-baffb2915692', '70754ff7-fca7-8388-5049-a664d0b6d53e', '27.2', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45ba3c11-0c3c-94fd-da03-db8dacee65c6', '70754ff7-fca7-8388-5049-a664d0b6d53e', '32.4', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', 'ce515dfa-46e3-9fae-733c-61de9922dc57', '① 13.6', '정답은 ① 입니다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #76
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰기의 여유도가 33[%]이고, 충격절연강도가 1,OOO[kV] 라고 할 때 피뢰기의 제한전압은 약 몇 [W]인가?', 2, 185)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94dd79c-bf86-f096-2105-d6715ead8d9f', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '852', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d79333c8-9f1f-9e4a-7000-48d8aa270a65', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '752', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4c58ad8-c829-be44-fa95-5bd9679543a4', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '652', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fcc5ff6-1b4e-af7f-c7d8-44470c5b48a5', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '552', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', 'd79333c8-9f1f-9e4a-7000-48d8aa270a65', '② 752', '정답 ②. Ea 보호여유되%> 중격절보^：’1한전압 X mo 에서 제안전압 제하저아 충격절연강도 X 100 1,000 X 100 [ 두 제느느보호여유도+1oo _ 33 + 100 _7521k', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #78
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 고압 활선작업 시 감전의 위험이 발생할 우려가 있 을 때의 조치사항으로 옳지 않은 것은?', 2, 186)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9dd72e-2964-7847-29a7-ed9f543a1483', '2dc8481a-a273-f778-749f-f30f221f0267', '접근한계거리 유지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a4d570-0237-b7fe-92f9-914b308faa84', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 보호구 착용', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a6e53dc-1519-bb33-e0c5-0c5fe10e008d', '2dc8481a-a273-f778-749f-f30f221f0267', '활선작업용 기구 사용', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac4d8425-5643-2a5a-c0e8-9e5cd5f608f2', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 방호용구 설치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '1c9dd72e-2964-7847-29a7-ed9f543a1483', '① 접근한계거리 유지', '정답 ①. KOB 노출 충전부에 접근한계거리 이내로 접근할 수 없도록 한다. E E1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e0349306-9850-4f22-3619-e67127397e41', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항 저감방법으로 틀린 것은?', 2, 187)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a922baee-9f38-b117-f738-9dafc36620aa', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 병렬 접지를 실시한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a89beac-12ca-a8f5-c687-9668c0b74d4c', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 매설 깊이를증가시킨다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('617d5658-9164-caf9-042c-59fd60d3f215', 'e0349306-9850-4f22-3619-e67127397e41', '접지극의 크기를 최대한 작게 한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb7fe9d7-196c-dbe4-2267-9c427e60aa8f', 'e0349306-9850-4f22-3619-e67127397e41', '접지극 주변의 토양을 개량하여 대지 저항률을 떨어뜨', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e0349306-9850-4f22-3619-e67127397e41', '617d5658-9164-caf9-042c-59fd60d3f215', '③ 접지극의 크기를 최대한 작게 한다.', '정답 ③. 린다. KOI 접지저항의 물리적 저감법 • 접지극의 병렬 접속 • 접지극의 치수 확대 • 접지봉 심타법 적용 • 매설지선 및 평판접지극 사용 • 메시(Mesh)공법 적용 • 다중접지 시트 사용 • 보링 공법 적용', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬, 칼륨, 나트륨, 황, 황린. 황화인, 적린', 2, 188)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35ac0c80-5d49-e319-c3bf-95750547c954', 'f93d0311-a9b2-8e74-9873-865b6b224708', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a401a58-fa89-e530-95fe-8ca5652235f9', 'f93d0311-a9b2-8e74-9873-865b6b224708', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', 'f93d0311-a9b2-8e74-9873-865b6b224708', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdf4fcc8-afca-894e-cb78-54ff1091ba02', 'f93d0311-a9b2-8e74-9873-865b6b224708', '급성 독성 물질', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', '③ 물반응성 물질 및 인화성 고체', '정답 ③. K3 보기의 물질은 물반응성 물질 및 인화성 고체에 해당한다. "唱!', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #83
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?（단, Le Chatelier의 법칙을 이용한다.）', 2, 189)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39764f1b-7aab-f123-0e3c-a60b571b0171', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e9e5feb-5e1e-26d4-e7fe-97acd0681721', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 30[vol%], 에탄 30[vol%], 프로판 40[vol%]의 혼', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72c8c44d-3482-e995-5ff3-1760880a07e8', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dc7b511-5f9d-dece-32a8-d5d6a2abb913', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 50[vol%]. 에탄 30[vol%]. 프로판 20[vol%]의 혼', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '39764f1b-7aab-f123-0e3c-a60b571b0171', '① 메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', '정답 ①. 합가스 K3 혼합가스의 폭발하한계 븐+브+''••+브 여기서, L： 혼합가스의 폭발하한계[vol%] Aw： 각 성분가스의 폭발하한계[vol%] V,,： 각 성분가스의 부피 비율[vol%] 보기에서 제시된 혼합가스의 폭발하한계는 다음과 같다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #93
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 190)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa73235-a8cf-47e4-1ce1-2d2de89e405d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 상단', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56da38c0-a4c1-e803-4560-2eb28b3e8ce5', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 하단', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('008cc2c5-6ff4-b520-6614-eb6b9b86fe4d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 측면', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b0c2ad0-2e67-8c49-85c3-3b67282e6018', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 조작부', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '6fa73235-a8cf-47e4-1ce1-2d2de89e405d', '① 설비의 상단', '정답 ①. a 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다. 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #96
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('210c4245-726b-2783-25c7-8e160aa1a797', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 인화성 액체 위험물을 액 체 상태로 저장하는 저장탱크를 설치하는 경우에는 위험물 질이 누출되어 확산되는 것을 방지하기 위하여 무엇을 설치 하여야 하는가?', 2, 191)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9249ac1-4878-4454-c034-c2accb9b8f8e', '210c4245-726b-2783-25c7-8e160aa1a797', 'Flame arrester', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14c6683e-d377-9767-ee1b-06b41769a7ed', '210c4245-726b-2783-25c7-8e160aa1a797', 'Vent Stack', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('80963c2e-79f2-ff7a-f9ac-3323b07c4fd0', '210c4245-726b-2783-25c7-8e160aa1a797', '긴급방출장치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0099325-1f92-2f4e-6310-89398e082592', '210c4245-726b-2783-25c7-8e160aa1a797', '방유제', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('210c4245-726b-2783-25c7-8e160aa1a797', 'c0099325-1f92-2f4e-6310-89398e082592', '④ 방유제', '정답 ④. K9 위험물을 액체 상태로 저장하는 저장탱크를 설치하는 경우에는 위험물질이 누출되어 확산되는 것을 방지하기 위하여 방유제를 설치하여 야한다. 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #97
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '11111111-1111-1111-1111-111111111104', 'mcq', '[℃], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇『C]가 되겠는가?(단, 공기의 비열비는 1.4이다.)', 2, 192)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24810209-7d84-97bb-1c3b-f88d27786dfb', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '32', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dffd6c96-3f1d-c7ac-8712-2eb03727756d', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '191', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55550b16-4d55-b3a3-7876-1f0f98519ef2', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '305', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96ecbfa3-a297-d777-3777-83c6db4c00d3', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '464', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', 'dffd6c96-3f1d-c7ac-8712-2eb03727756d', '② 191', '정답은 ② 입니다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '11111111-1111-1111-1111-111111111104', 'mcq', '탄산수소나트륨을 주요성분으로 하는 것은 제 몇 종 분말소 화기인가?', 2, 193)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c84d28d2-d42a-dbf6-3791-e33974de364a', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제1종', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7df3656b-6d1b-bc4b-f18d-aa01fe2ec3b0', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제2종', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64032cff-ffcc-b528-3cb4-f153b774b3ea', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제3종', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('942ca45c-7595-e9c1-41b8-cfa7c168b777', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제4종', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', 'c84d28d2-d42a-dbf6-3791-e33974de364a', '① 제1종', '정답 ①. ES 분말소화약제의 분류 • 제1종 소화약제: 탄산수소나트륨（NaHCOJ • 제2종 소화약제: 탄산수소칼륨（KHCOJ • 제3종 소화약제: 제1인산암모늄（NH4H2POJ • 제4종 소화약제: 탄산수소칼륨+요소（KHCOrUNH^CO）', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #100
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악하기 위하여 필요한 계측장치를 설 치하여야 한다. 이러한 계측장치로 거리가 먼 것은?', 2, 194)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5634b9bf-eee1-8a68-5093-36aa6d4d9720', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '압력계', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2f0c42f-32b8-5bde-cd0e-adc29e503cee', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '유량계', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c5ab221-d29d-2db9-7b17-0262b84129d5', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '온도계', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0bf8d552-b34f-7491-39c3-4d7a63b3a99c', '6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '비중계', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ca7923e-f16a-7097-4ac9-8fd5a9bd8f18', '0bf8d552-b34f-7491-39c3-4d7a63b3a99c', '④ 비중계', '정답 ④. Ka 특수화학설비를 설치하는 경우에는 내부의 이상 상태를 조기에 파악하기 위하여 필요한 온도계 - 유량계 • 압력계 등의 계측장치를 설치하 여야 한다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('edba4ffa-2826-3171-b607-d69afc4acc1b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 195)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33b2ff1b-c031-39a5-454a-e018591a45a2', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '풍속이 초당 10[m] 이상인 경우', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f3dd1f3-4909-077e-4d4a-6495f9525a05', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '강우량이 시간당 l[mm] 이상인 경우', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2734854a-c256-84ac-1080-b685c0353e1f', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('673cd632-4a58-095c-3408-418592e11da6', 'edba4ffa-2826-3171-b607-d69afc4acc1b', '기온이 영하 5[幻] 이하인 경우', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('edba4ffa-2826-3171-b607-d69afc4acc1b', '673cd632-4a58-095c-3408-418592e11da6', '④ 기온이 영하 5[幻] 이하인 경우', '정답 ④. 철골작업 중지를 위한 기후조건에 기온과 관련한 기준은 없다. WSIEI 아1 APTER 06 공사 및 작업 종류별 안전 10', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cfcb62cf-b839-adb4-293d-2474ac8c04f9', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출해야 할 대상 공사의 조건으로 옳지 않은 것은?', 2, 196)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17d0520d-3d3a-1fa1-64bc-6ff8398127e5', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '터널건설 등의 공사', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ea6a385-f3f0-199a-6f9c-b98fa9e78daa', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '최대 지간길이가 5이m] 이상인 다리의 건설 등의 공사', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a31c3ecb-afa9-a79f-dbbc-cc70cdb049a1', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '다목적댐 - 발전용댐, 저수용량 2천만 톤 이상의 용수', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55904c26-3c1c-05d9-7299-21e516eb5c80', 'cfcb62cf-b839-adb4-293d-2474ac8c04f9', '깊이가 5[m] 이상인 굴착공사', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cfcb62cf-b839-adb4-293d-2474ac8c04f9', '55904c26-3c1c-05d9-7299-21e516eb5c80', '④ 깊이가 5[m] 이상인 굴착공사', '정답 ④. Kmi 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물, 연면적 30.000[m2] 이상인 건축물 또는 연면적 S.OOOtm2] 이상의 문화 및 집회시설（전시장 및 동물원 • 식물원 제외）. 판매시설. 운수시설（고속철도의 역사 및 집배 송시설 제외）. 종교시설. 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체（건설 등） 공사 • 연면적 5,000[m2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐. 발전용댐, 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '11111111-1111-1111-1111-111111111104', 'mcq', '사면보호공법 중 구조물에 의한 보호공법에 해당되지 않는 것은?', 2, 197)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d0ee7b-678c-e7e9-aeb3-03a3a75fbfc5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '블럭공', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97ac684a-1a7a-1f58-0c85-699bf5aecbb5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '식생구멍공', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f731750-e4ea-485d-4ec4-97e711001e56', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '돌쌓기공', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7aacc14b-966e-cccb-fd0b-14ad005ac827', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '현장타설 콘크리트 격자공', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '97ac684a-1a7a-1f58-0c85-699bf5aecbb5', '② 식생구멍공', '정답 ②. 식생구멍공은 구조물에 의한 보호공법이 아닌 수목 등을 활용한 식생공법에 해당된다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-1 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a5870435-4308-633e-a8e8-96752234fc70', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 작업발판 일체형 거푸집에 해 당되지 않는 것은?', 2, 198)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da4e3725-e0e5-dca0-3a19-4dbe68ee9a7b', 'a5870435-4308-633e-a8e8-96752234fc70', '갱 폼 (Gang Form)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7169fff-97fd-2f31-fb44-004690d4462b', 'a5870435-4308-633e-a8e8-96752234fc70', '슬립 폼(Slip Form)', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a354b28b-75ef-911b-9bee-4d86424c1cf8', 'a5870435-4308-633e-a8e8-96752234fc70', '유로 폼(Euro Form)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ee3bb48-3097-01da-e931-c6c6f5a4fb84', 'a5870435-4308-633e-a8e8-96752234fc70', '클라이밍 폼(Climbing Form)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a5870435-4308-633e-a8e8-96752234fc70', 'a354b28b-75ef-911b-9bee-4d86424c1cf8', '③ 유로 폼(Euro Form)', '정답 ③. 3 작업발판 일체형 거푸집의 종류 • 갱 폼(Gang Form) • 슬립 폼(Slip Form) • 클라이밍 폼(Climbing Form) • 터널 라이닝 폼(Tunnel Lining Form) 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 종류와 외부 측면의 표시색이 잘못 연결된 것은?', 2, 199)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7d696e3-8e23-75e9-c8c3-c3f072ddebd1', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '할로겐용 - 회색', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('671b0059-5313-f7d5-ef84-345c495edd7e', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '황화수소용 - 회색', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0c58652-0043-daf7-9717-5f1c2a001771', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '암모니아용 - 회색', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3ac2273-da9f-75ff-f908-51fcd7db6cfc', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '시안화수소용 - 회색', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', 'e0c58652-0043-daf7-9717-5f1c2a001771', '③ 암모니아용 - 회색', '정답 ③. 정화통 외부 측면의 표시색 종류 표시색 유기화합물용 정화통 갈색 할로겐용 정화통 황화수소용 정화통 회색 시안화수소용 정화통 아황산용 정화통 노란색 암모니아용 정화통 녹색 아1APTER 02 안전보호구 관리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('34bc548e-5c1f-ae23-6e77-716a32178ef9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자에 대한 일반건강진단의 실시 시기 기준으로 옳은 것은?', 2, 200)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22a9af3c-4644-2f8e-ee1c-b77f70b2cb5e', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직에 종사하는 근로자: 1년에 1회 이상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b05a209-2d5b-c25c-6bac-2eeb7d6ae27f', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직에 종사하는 근로자: 2년에 1회 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f46420eb-d7ec-d3f0-1268-9a1b26151c8c', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직 외의 업무에 종사하는 근로자: 6월에 1회 이상', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb5fce22-1883-920a-fe61-021dbe8a1120', '34bc548e-5c1f-ae23-6e77-716a32178ef9', '사무직 외의 업무에 종사하는 근로자: 2년에 1회 이상', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('34bc548e-5c1f-ae23-6e77-716a32178ef9', '3b05a209-2d5b-c25c-6bac-2eeb7d6ae27f', '② 사무직에 종사하는 근로자: 2년에 1회 이상', '정답 ②. sa 일반건강진단의주기 • 사무직에 종사하는 근로자: 2년에 1회 이상 • 그 밖의 근로자: 1년에 1회 이상 WSS1SI', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
