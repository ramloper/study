-- chunk 8/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2022-1 #112
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '11111111-1111-1111-1111-111111111104', 'mcq', '흙막이벽의 근입 깊이를 깊게 하고, 전면의 굴착부분을 남 겨두어 흙의 중량으로 대항하게 하거나, 굴착예정부분의 일 부를 미리 굴착하여 기초콘크리트를 타설하는 등의 대책과 가장 관계 깊은 것은?', 2, 281)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('390af2d4-f8c7-74c2-0fd3-22475db23b96', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '파이핑현상이 있을 때', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('05e7874d-903f-e240-6251-8d030abbf742', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '히빙현상이 있을 때', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83def8a2-9db9-a1fb-b645-f3cde5c9e287', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '지하수위가 높을때', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b576124b-4ab9-7006-6591-3f1da6c5b3e5', 'a500deef-0f08-6f58-f03c-e0632e2966a6', '굴착깊이가 깊을때', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a500deef-0f08-6f58-f03c-e0632e2966a6', '05e7874d-903f-e240-6251-8d030abbf742', '② 히빙현상이 있을 때', '정답 ②. 1 하 히빙의 예방대책 • 흙막이벽의 근입 깊이 증가 • 흙막이벽 배면지반의 상재하중 제거 • 저면의 굴착부분을 남겨두어 굴착예정인 부분의 일부를 미리 굴착하여 기초콘크리트 타설 • 굴착주변을 웰 포인트(Well Point) 공법과 병행 • 굴착저면에 토사 등 인공중력 증가', array['산업안전기사','2022-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-1 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준（고용노동부 고시）은「산업안전보건법」의 건설공사 중 총 공사금액이 얼 마 이상인 공사에 적용하는가?', 2, 282)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b505b157-c5c6-dcbd-5d5b-546d2dd3e03e', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '4천만 원', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fdbcc1-ce07-d615-9e76-09bb3c8705ac', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '3천만 원', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c24603fe-b5f2-11a2-aa8d-8295d630b365', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '2천만 원', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd09d329-be76-64b5-14c4-9f6d746189c5', 'c1454c0a-acdb-2646-0c5f-90eea88f5942', '1천만 원', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c1454c0a-acdb-2646-0c5f-90eea88f5942', 'c24603fe-b5f2-11a2-aa8d-8295d630b365', '③ 2천만 원', '정답 ③. 건설업 산업안전보건관리비 계상 및 사용기준은「산업안전보건 법」의 건설공사 중 총 공사금액 2천만 원 이상인 공사에 적용한다. 1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-1 #115
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', '11111111-1111-1111-1111-111111111104', 'mcq', '건립 중 강풍에 의한 풍압 등 외압에 대한 내력이 설계에 고 려되었는지 확인해야 하는 철골구조물의 기준으로 옳지 않 은 것은?', 2, 283)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6600e426-5f49-44e8-13aa-5fb738b718bc', '421b0eff-8d9c-5463-e80d-49824ebf6109', '높이 2O[m] 이상의 구조물', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d50a5f-85cf-4cfc-6ebf-db91e4e68ca8', '421b0eff-8d9c-5463-e80d-49824ebf6109', '구조물의 폭과 높이의 비가 1： 4 이상인 구조물', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('caaf472b-c309-5387-8809-d780cb5e5976', '421b0eff-8d9c-5463-e80d-49824ebf6109', '이음부가 공장 제작인 구조물', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3694a3-c753-7055-dcb1-862234f50c47', '421b0eff-8d9c-5463-e80d-49824ebf6109', '연면적당 철골량이 5이kg/m2] 이하인 구조물', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('421b0eff-8d9c-5463-e80d-49824ebf6109', 'caaf472b-c309-5387-8809-d780cb5e5976', '③ 이음부가 공장 제작인 구조물', '정답 ③. «# 외압에 대한 내력이 설계에 고려되었는지 확인해야 할 구조물 • 높이 20[m] 이상의 구조물 • 구조물의 폭과 높이의 비가 1 : 4 이상인 구조물 • 단면구조에 현저한 차이가 있는 구조물 • 연면적당 철골량이 50[kg/mz] 이하인 구조물 • 기둥이 타이플레이트（Tie Plate）형인 구조물 • 이음부가 현장용접인 구조물 E S1', array['산업안전기사','2022-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-1 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '11111111-1111-1111-1111-111111111104', 'mcq', '동바리로 사용하는 파이프서포트는 최대 몇 개 이상 이어서 사용하지 않아야 하는가?', 2, 284)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79e9bca6-65a7-12fa-7cf2-0a5e7301cc73', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '2개', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '3개', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06b81128-b6d9-7e6b-19ea-01badbd0bec8', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '4개', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5571ea39-12c2-698e-b3fb-a9349a0689f1', '2eeb7386-560e-fbb6-8359-b62d610b7d46', '5개', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2eeb7386-560e-fbb6-8359-b62d610b7d46', '86182f36-0bb3-68e5-79c7-4f7c0d7b1aa9', '② 3개', '정답 ②. 동바리로 사용하는 파이프서포트를 3개 이상 이어서 사용하지 않아야 한다. WI뽀I', array['산업안전기사','2022-1'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 자율안전확인 고시」상 자율안전확인 보호구에 표 시하여야 하는 사항을 모두 고른 것은? H.모델명 !-. 제조번호 □.사용기한 2. 자율안전확인 번호', 2, 285)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e66ed0ca-137f-bb43-9673-75b6b97cc32a', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—«, 느, 三', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '—I, 心, 르', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f2e841a-c852-6ce2-245a-d84a348bd84c', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '거, 三，己', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a39ac18d-60aa-e213-a904-cc1b2b8a4d85', '7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '1-，三，르', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7dc37006-cdd3-d98a-f9e4-9f27bce2d35c', '3ca85b4b-8b1c-4d63-7d4e-27af8a02f339', '② —I, 心, 르', '정답 ②. Km 자율안전확인 제품표시의 붙임 • 형식 또는 모델명 • 규격 또는 등급 등 • 제조자명 • 제조번호 및 제조연월 • 자율안전확인 번호 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '11111111-1111-1111-1111-111111111104', 'mcq', '학습지도의 형태 중 참가자에게 일정한 역할을 주어 실제적 으로 연기를 시켜봄으로써 자기의 역할을 보다 확실히 인식 시키는 방법은?', 2, 286)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327afac-d325-d033-da56-9c3b23e516c8', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '포럼 (Forum)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d065d864-dfd7-659a-c499-0078df2be35e', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '심 포지 엄 (Symposium)', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe623b8-6778-9b75-a5cc-bc15512d2457', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '롤 플레 잉 (Role Playing)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41d6dedc-69eb-3f5d-8f7c-142fd2481059', '52e7fd0f-d54b-8340-cd6f-c8ac67842703', '사례연구법 (Case study method)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52e7fd0f-d54b-8340-cd6f-c8ac67842703', '7fe623b8-6778-9b75-a5cc-bc15512d2457', '③ 롤 플레 잉 (Role Playing)', '정답 ③. WW 롤 플레잉(R이e Playing) 참가자에게 일정한 역할을 주어 실제적으로 연기를 시켜봄으로써 자기의 역할을 보다 확실히 인식시키는 것이다. E◎面', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 사고예방원리 5단계 중 교육 및 훈련의 개선, 인사조정, 안전관리규정 및 수칙의 개선 등을 행하는 단계 는?', 2, 287)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e26d117a-d478-8059-3a25-5c5aeaff090e', 'bdfca633-9649-93b9-369d-7603b04307bb', '사실의발견', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5de1a1e-41d1-0d0f-b93d-b35c2ddf61ca', 'bdfca633-9649-93b9-369d-7603b04307bb', '분석평가', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9289eb66-7e4b-3057-448d-323d3d40c30b', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정방법의 선정', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c62e92ef-22e0-ab16-d0e5-36aeb74c71fa', 'bdfca633-9649-93b9-369d-7603b04307bb', '시정책의 적용', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bdfca633-9649-93b9-369d-7603b04307bb', '9289eb66-7e4b-3057-448d-323d3d40c30b', '③ 시정방법의 선정', '정답 ③. W 하인리히의 사고예방원리 중 4단계 시정책의 선정에서 기술의 개선. 인사조정. 교육 및 훈련 개선. 안전규정 및 수칙의 개선. 이행의 감독 과 제재 강화를 행한다. 하인리히의 사고예방대책의 기본원리 5단계 O 1단계: 조직（안전관리조직） © 2단계 : 사실의 발견（현상파악） ©3단계: 분석 • 평가｛원인규명） ©4단계: 시정책의 선정 단계: 시정책의 적용 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건진단을 받아 안전보건개선 계획의 수립 및 명령을 할 수 있는 대상이 아닌 것은?', 2, 288)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d407181-3a34-bd6c-8f64-d2929c5d425a', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '유해인자의 노출기준을 초과한 사업장', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ea4ee1b-b993-e6ec-7417-4f84d36bf302', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '산업재해율이 같은 업종 평균 산업재해율의 2배 이상', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('494bda38-15d5-df48-2bd1-c9f16cfb59b8', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '사업주가 필요한 안전조치 또는 보건조치를 이행하지', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c5d4766-b956-014c-69e7-b708dff78e00', '284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '상시근로자 1천명 이상인 사업장에서 직업성 질병자가', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('284a0bf2-546e-e6f7-3cce-8468ad7fbaea', '9c5d4766-b956-014c-69e7-b708dff78e00', '④ 상시근로자 1천명 이상인 사업장에서 직업성 질병자가', '정답 ④. 연간 2명 이상 발생한 사업장 a 안전보건진단을 받아 안전보건개선계획을 수립할 대상 사업장 • 산업재해율이 같은 업종 평균 산업재해율의 2배 이상인 사업장 • 사업주가 필요한 안전조치 또는 보건조치를 이행하지 아니하여 중대재 해가 발생한 사업장 • 직업성 질병자가 연간 2명 이상（상시근로자 1천명 이상 사업장의 경우 3명 이상） 발생한 사업장 • 그 밖에 작업환경 불량. 화재 • 폭발 또는 누출 사고 등으로 사업장 주변까 지 피해가 확산된 사업장으로서 고용노동부령으로 정하는 사업장', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 거푸집 및 동바리의 조립 또는 해체 작업 시 특별교육 내용이 아닌 것은?（단, 그 밖에 안전 보 건관리에 필요한 사항은 제외한다.）', 2, 289)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9af634d1-0c56-1a90-2dd1-b810af298639', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '비계의 조립순서 및 방법에 관한 사항', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3737a0fa-9e72-6294-30b9-d2b79349788e', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립 • 해체 시의 사고 예방에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81fc026-a308-83f3-9131-2de2477d56f3', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '동바리의 조립방법 및 작업 절차에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad0d7334-9779-2919-54a1-5d1dac5ff171', '8e875816-d8bc-3f68-59ab-f1eae3af80c3', '조립재료의 취급방법 및 설치기준에 관한 사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e875816-d8bc-3f68-59ab-f1eae3af80c3', '9af634d1-0c56-1a90-2dd1-b810af298639', '① 비계의 조립순서 및 방법에 관한 사항', '정답 ①. 비계의 조립순서 및 방법에 관한 사항은 비계의 조립 • 해체 또는 변경작업 시 특별교육 내용이다. 거푸집 및 동바리의 조립 또는 해체작업 시 특별교육 내용 • 동바리의 조립방법 및 작업 절차에 관한 사항 • 조립재료의 취급방법 및 설치기준에 관한 사항 • 조립 • 해체 시의 사고 예방에 관한 사항 • 보호구 착용 및 점검에 관한 사항 • 그 밖에 안전 • 보건관리에 필요한 사항 E E1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '11111111-1111-1111-1111-111111111104', 'mcq', '근골격계질환 작업분석 및 평가 방법인 OWAS의 평가요소 를 모두 고른 것은? —1. 상지 >-. 무게（하중） 仁. 하지 己. 허리', 2, 290)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08dd7262-37d5-eec4-f27c-fd18582c853f', '6956581a-8209-3881-395b-d0a4ca5a784a', '己 亡', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1943bd14-057e-b6a8-b99e-1af703cf7728', '6956581a-8209-3881-395b-d0a4ca5a784a', '1, c, e', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e52a16ab-f766-184f-ff12-cae1070ab5b7', '6956581a-8209-3881-395b-d0a4ca5a784a', '亡, C, S', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '6956581a-8209-3881-395b-d0a4ca5a784a', '그, 亡, c, 5', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6956581a-8209-3881-395b-d0a4ca5a784a', '3b3c53fe-4f02-ea59-eb0a-c0d34f49db2b', '④ 그, 亡, c, 5', '정답 ④. IBM OWAS의 평가방법 작업자의 자세를 관찰하여 허리. 팔. 다리. 하중/힘에 해당하는 OWAS 코 드를 찾아 AC（Action Level） 판정표에서 점수를 확인한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #34
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', '11111111-1111-1111-1111-111111111104', 'mcq', 'n개의 요소를 가진 병렬시스템에 있어 요소의 수명（MTTF） 이 지수분포를 따를 경우, 이 시스템의 수명으로 옳은 것은?', 2, 291)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab50c17e-60f3-13d5-5cd7-de5bd1592b3d', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFxn', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ad43920-a6fa-dbd9-2c17-f4f56fed6412', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTFx&', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c154782b-ef51-e8e9-932b-61d93cb2c7da', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l+；+•••+£）', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a73515a-effd-7291-e3ef-f3c67b999098', '8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'MTTF（l>〈$x …〈느）', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8668f8e7-2d1d-2ed9-4e73-20dffd0e6151', 'c154782b-ef51-e8e9-932b-61d93cb2c7da', '③ MTTF（l+；+•••+£）', '정답 ③. E^l 평균동작시간（MTTF）이 지수분포를 따를 경우（병렬계） System의 수명 MTTF（\ \ 2 n / 여기서, n： 요소 수', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 와이어로프의 구성요소가 아닌 것은?', 2, 292)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03a7544e-331a-aa99-e5e6-2aab5353b593', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '클립', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84c1bce0-dae0-3903-2f36-00c1cd0cb16a', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '소선', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('342e35c9-1fca-4e0f-ce19-820130e3c6d9', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '스트랜드', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f90f48f9-fdd6-551d-eba7-03aa5ead9e01', 'edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '심강', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('edeadc11-3eb4-e77c-c35a-3363f20a9f0e', '03a7544e-331a-aa99-e5e6-2aab5353b593', '① 클립', '정답 ①. a 클립은 와이어로프를 고정하는 기구이다. 와이어로프 구성요소 소선. 스트랜드(Strand), 심강(Core). 심선', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 산업용 로봇에 의한 작업 시 안전조 치 사항으로 적절하지 않은 것은?', 2, 293)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cc444e-a485-b990-8cfd-05e9665beecd', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 운전으로 인해 근로자가 로봇에 부딪칠 위험이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6415b6a-e1f7-fb98-cd94-c4f0ab657195', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업을 하고 있는 동안 로봇의 기동스위치 등은 작업에', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bc3bfee-baa7-bc9d-cbd5-1248d4e8ed73', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '로봇의 조작방법 및 순서, 작업 중의 매니퓰레이터의', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '9d43c397-dcf3-d958-8cae-7a915cecdd3f', '작업에 종사하는 근로자가 이상을 발견하면 관리감독', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9d43c397-dcf3-d958-8cae-7a915cecdd3f', '3093e104-d62b-9d9b-5cd2-4eb82d98cc5c', '④ 작업에 종사하는 근로자가 이상을 발견하면 관리감독', '정답 ④. 자에게 우선 보고하고, 지시가 나올 때까지 작업을 진 행한다. 3 산업용 로봇의 작업 시 작업에 종사하고 있는 근로자 또는 그 근 로자를 감시하는 사람은 이상을 발견하면 즉시 로봇의 운전을 정지시키기 위한 조치를 하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 294)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f810a588-a561-10fd-2790-9d56afd2a253', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3eb25c98-391c-e084-811a-3a98933d9443', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3152f79e-1ceb-5433-dd10-0840b58d2eb4', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d69fd104-fc48-0997-3727-58ff7cf9c4a9', '0f6ec060-8045-fce2-ae17-005c5fd316c6', '상. 하, 좌. 우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f6ec060-8045-fce2-ae17-005c5fd316c6', '3152f79e-1ceb-5433-dd10-0840b58d2eb4', '③ 강력 절삭을 할 때는 일감을 바이스에 짧게 물린다.', '정답 ③. EHH 밀링작업 시 강력절삭을 할 때는 일감을 바이스에 깊게 물린다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #50
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 강렬한 소음작업에서 데시벨에 따른 노출시간으로 적합하지 않은 것은?', 2, 295)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('433afdbe-cb17-d647-7791-9fafb3e544ad', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'l(X)[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4d24837-3ab6-35c1-da0d-e13abbedb692', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9613af9d-a85c-7059-dc98-5882fa0a0d10', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc80dca8-3a6b-017a-9a85-0253c17ef21f', 'caad9238-2cfd-b3dd-4962-7938c5c8b02b', '120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('caad9238-2cfd-b3dd-4962-7938c5c8b02b', 'dc80dca8-3a6b-017a-9a85-0253c17ef21f', '④ 120[dB] 이상의 소음이 1일 7분 이상 발생하는 작업', '정답 ④. a 강렬한소음작업 • 90[dB] 이상의 소음이 1일 8시간 이상 발생하는 작업 • 95[dB] 이상의 소음이 1일 4시간 이상 발생하는 작업 • 100[dB] 이상의 소음이 1일 2시간 이상 발생하는 작업 • 105[dB] 이상의 소음이 1일 1시간 이상 발생하는 작업 • 110[dB] 이상의 소음이 1일 30분 이상 발생하는 작업 • 115[dB] 이상의 소음이 1일 15분 이상 발생하는 작업', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스기를 사용하여 작업을 할 때 작업시작 전 점검사항으로 틀린 것은?', 2, 296)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0334250e-f4b1-23a9-6d53-71bdbed9f252', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '클러치 및 브레이크의 기능', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ef1c757-33e4-699f-e7de-d5d61f43bd59', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '압력방출장치의 기능', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a002429d-6f7b-b157-6eca-46f6e06b70b0', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '크랭크축 • 플라이휠 • 슬라이드 • 연결봉 및 연결나사의', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf32436f-a876-0511-8161-edebb132bfd6', '161fcaf8-2f43-dbd2-2551-96e47c4858d3', '프레스의 금형 및 고정볼트의 상태', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('161fcaf8-2f43-dbd2-2551-96e47c4858d3', '7ef1c757-33e4-699f-e7de-d5d61f43bd59', '② 압력방출장치의 기능', '정답 ②. a 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 프레스 등의 작업시작 전 점검사항 •클러치 및 브레이크의 기능 • 크랭크축 • 플라이휠 • 슬라이드 • 연결봉 및 연결 나사의 풀림 여부 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정 볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #56
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전은 예방보전과 사후보전으로 대별된다. 다음 중 예 방보전의 종류가 아닌 것은?', 2, 297)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c317ef8b-7b9d-fa0c-3620-e4e3d0651651', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '시간계획보전', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd812c9d-3bfa-803d-a175-c0456a33c75c', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '개량보전', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e47d6ada-3b31-f390-710a-dbfaa13db707', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '상태기준보전', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327bacc-83d1-c4f1-bb6d-acc3e095b5c9', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '적응보전', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', 'cd812c9d-3bfa-803d-a175-c0456a33c75c', '② 개량보전', '정답 ②. 예방보전의 종류 시간계획보전. 상태감시보전（상태기준보전）. 수명보전（적응보전） 개량보전 설비가 두 번 다시 동일한 원인에 의한 고장이 일어나지 않도록 연구를 거 듭하는 것으로 사후보전에 해당한다. E H SUBJECT 02 인간공학 및 위험성평가 • 관리', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #57
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '11111111-1111-1111-1111-111111111104', 'mcq', '천장크레인에 중량 3[kN]의 화물을 2줄로 매달았을 때 매 달기용 와이어（sling wire）에 걸리는 장력은 약 몇 [kN]인 가?（단. 매달기용 와이어（sling wire） 2줄 사이의 각도는 55°이다.）', 2, 298)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66496ca5-cda0-6326-655f-ced7cee86493', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.3', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('540afe1f-2c66-4090-d802-db814f925616', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.7', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f771b8ef-707d-da57-e38d-52def50eca0d', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.0', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5514dcf7-e13b-8c84-a796-afece36522f4', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.3', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '540afe1f-2c66-4090-d802-db814f925616', '② 1.7', '정답 ②. na 와이어로프 하나에 걸리는 하중 쓰_ 丁 ——^r 1.7[kN] 어 COS 27.5 COSy 여기서. 死: 물체의 무게 日: 와이어로프 상부의 각도', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 아세틸렌 용접장치의 아세틸렌 발생 기실을 설치하는 경우 준수하여야 하는 사항으로 옳은 것 은?', 2, 299)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19d7d10c-4422-f31e-9a1f-ed937ecdd813', '173ad79f-edb9-2cb1-0431-a8067bb169af', '벽은 가연성 재료로 하고 철근 콘크리트 또는 그 밖에', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b728f5b-a690-6144-1aaf-2b792eaa5aea', '173ad79f-edb9-2cb1-0431-a8067bb169af', '바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb491eca-d2b1-ebdc-b1f8-34a0c4f8e448', '173ad79f-edb9-2cb1-0431-a8067bb169af', '출입구의 문은 불연성 재료로 하고 두께 1.0밀리미터', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4241360-025c-429a-64af-f274c4eb4870', '173ad79f-edb9-2cb1-0431-a8067bb169af', '발생기실을 옥외에 설치한 경우에는 그 개구부를 다른', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '6b728f5b-a690-6144-1aaf-2b792eaa5aea', '② 바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', '정답 ②. 건축물로부터 1.0미터 이내 떨어지도록할 것 1 冒» 발생기실의 구조 • 벽은 불연성 재료로 하고 철근 콘크리트 또는 그 밖에 이와 같은 수준이 거나 그 이상의 강도를 가진 구조로 할 것 • 지붕과 천장에는 얇은 철판이나 가벼운 불연성 재료를 사용할 것 • 바닥면적의 丄 이상의 단면적을 가진 배기통을 옥상으로 돌출시키고 그 개구부를 창이나 출입구로부터 1.5[m] 이상 떨어지도록 할 것 • 출입구의 문은 불연성 재료로 하고 두께 1.5[mm] 이상의 철판이나 그 밖에 그 이상의 강도를 가진 구조로 할 것 • 벽과 발생기 사이에는 발생기의 조정 또는 카바이드 공급 등의 작업을 방해하지 않도록 간격을 확보할 것', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #65
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 사람이 쉽게 접촉할 우려가 있 는 곳에 금속제 외함을 가지는 저압의 기계 • 기구가 시설되 어 있다. 이 기계 • 기구의 사용전압이 몇 [v]를 초과할 때 전기를 공급하는 전로에 누전차단기를 시설해야 하는가? (단, 누전차단기를 시설하지 않아도 되는 조건은 제외한다.)', 2, 300)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a7569c9-0b98-963a-c0bd-0e5e1c92802a', '733bed40-d05f-da9f-4342-2183de37b5a2', '30[V]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d64ffb0-6fe9-b89e-79ca-af70d744b7b5', '733bed40-d05f-da9f-4342-2183de37b5a2', '40[V]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('212334b9-d402-bf03-877c-a55c72fcef2a', '733bed40-d05f-da9f-4342-2183de37b5a2', '50[V]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9e8d497-3b89-fce5-1135-515d3df14b1f', '733bed40-d05f-da9f-4342-2183de37b5a2', '60[V]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '212334b9-d402-bf03-877c-a55c72fcef2a', '③ 50[V]', '정답 ③. a 금속제 외함을 가지는 사용전압이 5o[v]를 초과하는 저압의 기 계 - 기구로서 사람이 쉽게 접촉할 우려가 있는 곳에 시설하는 것에 전기를 공급하는 전로에는 누전차단기를 시설하여야 한다. E gl 아UPTER 02 감전재해 및 방지대책 06', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #71
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '11111111-1111-1111-1111-111111111104', 'mcq', '교류 아크용접기의 사용에서 무부하 전압이 80[V], 아크 전 압 25[V], 아크 전류 300[A]일 경우 효율은 약 몇 [%]인 가?(단, 내부손실은 4[kW]이다.)', 2, 301)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61ab9dcb-787a-dc42-ea2b-851387392526', '50e12b69-919c-1b81-8cca-62cfae26f03b', '65.2', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6762e2dd-e3e2-7d34-13f2-bb12e19c38d5', '50e12b69-919c-1b81-8cca-62cfae26f03b', '70.5', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1613b29e-fc00-6a0e-9609-080b862885fb', '50e12b69-919c-1b81-8cca-62cfae26f03b', '75.3', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cb52e04-fdd0-f722-8a75-6ee72f11f109', '50e12b69-919c-1b81-8cca-62cfae26f03b', '80.6', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '61ab9dcb-787a-dc42-ea2b-851387392526', '① 65.2', '정답은 ① 입니다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기기보호등급(EPL)에 해당하지 않는 것은?', 2, 302)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bec621af-b127-b5fa-76ef-517977e68fe2', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ga', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8946e00-5cec-0eb8-b011-cb9f5c06038d', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ma', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e10712b-88ab-94cc-819c-dbb9a51dcfe6', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL De', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed173bd-0cc4-6aab-941e-8c9f069eee57', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Me', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '2ed173bd-0cc4-6aab-941e-8c9f069eee57', '④ EPL Me', '정답 ④. 기기보호등급(EPL) • 매우 높은 보호: Ga, Da, • 높은 보호: Gb. Db, Mb • 강화된 보호: Ge. De WHB1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #74
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건기준에 관한 규칙」에 따라 누전차단 기를 설치하지 않아도 되는 곳은?', 2, 303)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3af73291-cdfe-9e17-2bf6-38cdf02051e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '철판 • 철골 위 등 도전성이 높은 장소에서 사용하는 이', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f4ead73-cbf1-7978-64a4-73fd357260e9', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '대지전압이 22O[V]인 휴대형 전기기 계 • 기구', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41759bbd-f823-a057-a443-76f8710326e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '임시배선의 전로가 설치되는 장소에서 사용하는 이동', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c038004d-3ea0-e410-2c0e-6e760fbe86ff', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '절연대 위에서 사용하는 전기기계 • 기구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', 'c038004d-3ea0-e410-2c0e-6e760fbe86ff', '④ 절연대 위에서 사용하는 전기기계 • 기구', '정답 ④. K 지 절연대 위 등과 같이 감전위험이 없는 장소에서 사용하는 전기기 계 • 기구에는 누전차단기를 설치하지 않아도 된다. 누전차단기의 적용대상 • 대지전압이 150[V]를 초과하는 이동형 또는 휴대형 전기기계 • 기구 • 물 등 도전성이 높은 액체가 있는 습윤장소에서 사용하는 저압용 전기기 계 • 기구 • 철판 • 철골 위 등 도전성이 높은 장소에서 사용하는 이동형 또는 휴대형 전기기계기구 • 임시배선의 전로가 설치되는 장소에서 사용하는 이동형 또는 휴대형 전 기기계•기구 t 찌 다4APTER 02 감전재해 및 방지대책', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #77
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동전류 / 쯔[mA]라면 심실세동 시 인체에 직접 받는 전기에너지[cal]는 약 얼마인가?（단, 丁는 통전시간으 로 1초이며, 인체의 저항은 500[Q]으로 한다.）', 2, 304)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657ff74e-d8b3-f5c3-3c18-1350426e8a99', '9c03aab2-f457-7716-1ff4-937a67b41842', '0.52', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60bfd10e-d74e-bf68-df6d-2507da45e7c0', '9c03aab2-f457-7716-1ff4-937a67b41842', '1.35', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cfc4751-d1d9-447f-fb2d-4c9179ce45ab', '9c03aab2-f457-7716-1ff4-937a67b41842', '2.14', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657495c8-b12a-f824-3756-edfb55bccb05', '9c03aab2-f457-7716-1ff4-937a67b41842', '3.26', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '657495c8-b12a-f824-3756-edfb55bccb05', '④ 3.26', '정답 ④. W Tr 727?T （수우 X1O 3）2X5OO：7'' （1652 x 1（T6） x 500 13.6[J] 13.6 x 0.24[cal] 3.26[cal] 여기서. 形： 위험한계에너지D] r. 심실세동전류[A] R- 인체저항[] T- 통전시갠s] 으 l[cal] 4.184[J]이므로 l[J] 0.24[cal]이다. 1 아1APTER 02 감전재해 및 방지대책 2022 血 2i_ C78 「산업안전보건기준에 관한 규칙」에 따른 전기기계 • 기구의 설치 시 고려할 사항으로 거리가 먼 것은? 전기기계 • 기구의 충분한 전기적 용량 및 기계적 강도 전기기계 기구의 안전효율을 높이기 위한 시간 가동률 습기 - 분진 등 사용장소의 주위 환경 전기적 • 기계적 방호수단의 적정성 «m 전기기계 • 기구의 설치 시 고려사항 • 전기기계 - 기구의 충분한 전기적 용량 및 기계적 강도 • 습기 •분진 등 사용장소의 주위 환경 .전기적. 기계적 방호수단의 적정성', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #79
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 조치사항으로 틀린 것은?', 2, 305)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6371abc-e34f-c2be-a0d6-123fac256eb4', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '작업 전 전기설비의 잔류 전하를 확실히 방전한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f2830fb-4821-ba33-eb30-1ac72430bce0', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개로된 전로의 충전 여부를 검전기구에 의하여 확인한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04b87857-bc03-c25c-9660-f82652612141', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1dd39885-56b7-ae3f-020f-4613d01900f2', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '예비 동력원의 역송전에 의한 감전의 위험을 방지하기', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '04b87857-bc03-c25c-9660-f82652612141', '③ 개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', '정답 ③. 위해 단락접지 기구를 사용하여 단락 접지를 한다. 정전전로에서 전기작업 시 차단장치나 단로기 등에 잠금장치 및 꼬리표를 부착하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #81
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 정한 위험물질을 기준량 이상 제 조하거나 취급하는 화학설비로서 내부의 이상상태를 조기 에 파악하기 위하여 필요한 온도계 유량계 • 압력계 등의 계측장치를 설치하여야 하는 대상이 아닌 것은?', 2, 306)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a25a749-3e58-b0a8-23e8-565283517b95', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '가열로 또는 가열기', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('344f6b2f-b99b-e045-4dc9-ca9bddcd1f25', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '증류 •정류 •증발 •추출 등분리를 하는 장치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d429f2e4-341b-4b1c-4fb5-eb62780272c6', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '반응폭주 등 이상 화학반응에 의하여 위험물질이 발생', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1304793-a233-719d-bb07-3e04ea9c2098', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '흡열반응이 일어나는 반응장치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', 'b1304793-a233-719d-bb07-3e04ea9c2098', '④ 흡열반응이 일어나는 반응장치', '정답 ④. KHI 계측장치를 설치하여야 하는 특수화학설비 • 발열반응이 일어나는 반응장치 • 증류 •정류'' 증발 • 추출 등 분리를 하는 장치 • 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분해온도 또는 발화 점보다 높은 상태에서 운전되는 설비 • 반응폭주 등 이상 화학반응에 의하여 위험물질이 발생할 우려가 있는 설비 • 온도가 350[℃] 이상이거나 게이지압력이 980[kPa] 이상인 상태에서 운전되는 설비 •가열로 또는가열기', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #85
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 폭발방호대책과 가장 거리가 먼 것은?', 2, 307)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93bffc62-f324-2337-3fab-9a6bf4425182', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '불활성화', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5537b439-895d-75e2-8da2-042fe2d0b102', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '억제', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15ca6108-a105-6f3e-8ec2-6ed564a98930', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '방산', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('642bc03e-808b-04a9-69f9-7d4b720fc430', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '봉쇄', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '93bffc62-f324-2337-3fab-9a6bf4425182', '① 불활성화', '정답 ①. na 폭발방호대책은 폭발 시 피해를 최소화하기 위한 대책이다. 불활 성화는 폭발을 예방하기 위한 대책이므로 폭발방지대책에 해당한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #89
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 308)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 상단', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86d518d4-9b4a-de8c-5470-b58131842840', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 하단', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31e7e55b-f28a-a90c-1668-3c435dbe0902', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 측면', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a62b8f8-4a80-576b-25fb-d698f61c83f1', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 조작부', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', 'e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '① 설비의 상단', '정답 ①. 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #103
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사의 유해위험방지계획서 제출 기준일로 옳은 것은?', 2, 309)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2cf5cbc-4008-db66-5068-5c3a806da78b', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 1개월 전까지', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('98323b77-9f5d-def3-56e3-8aca2adad1e3', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 전까지', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4c226e0-41c8-b58c-a820-a99224f615f7', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 전날까지', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c4cd8a7-e2e9-b5ac-0966-f24d2df14c39', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 후까지', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', 'd4c226e0-41c8-b58c-a820-a99224f615f7', '③ 당해공사 착공 전날까지', '정답 ③. B 건설공사 유해위험방지계획서는 해당 공사의 착공 전날까지 공 단에 2부를 제출하여야 한다. 5뽀I', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #104
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '11111111-1111-1111-1111-111111111104', 'mcq', '철골건립준비를 할 때 준수하여야 할 사항으로 옳지 않은 것은?', 2, 310)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09ee102f-d978-0859-6df0-6b9ab8bb7c93', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '지상 작업장에서 건립준비 및 기계기구를 배치할 경우', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aeb2006f-5b50-785f-6850-d57cbcaea4b2', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '건립작업에 다소 지장이 있다 하더라도 수목은 제거하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6dbf1f38-1caf-cab3-6c26-7796de749390', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '사용 전에 기계. 기구에 대한 정비 및 보수를 철저히 실', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24bfbfa2-d425-37a6-c91c-db3217bec300', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '기계에 부착된 앵커 등 고정장치와 기초구조 등을 확인', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', 'aeb2006f-5b50-785f-6850-d57cbcaea4b2', '② 건립작업에 다소 지장이 있다 하더라도 수목은 제거하', '정답 ②. 하여야 한다. a 철골 건립작업에 지장을 주는 수목은 제거하거나 이설하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #105
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '11111111-1111-1111-1111-111111111104', 'mcq', '「가설공사 표준안전 작업지침」에 따른 통로발판을 설치하 여 사용함에 있어 준수사항으로 옳지 않은 것은?', 2, 311)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b7ecb3b-7334-7b69-490a-dc3007960007', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '추락의 위험이 있는 곳에는 안전난간이나 철책을 설치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a270c681-1969-08ae-32e1-44c32a9b76a1', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '작업발판의 최대폭은 1.6[m] 이내이어야 한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc41a8c-c4de-2174-f0d7-e1677874f71d', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '비계발판의 구조에 따라 최대 적재하중을 정하고 이를', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb80710a-392d-31b1-fdf9-79ad3f2dc659', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', 'bb80710a-392d-31b1-fdf9-79ad3f2dc659', '④ 발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', '정답 ④. 겹침길이는 10[cm] 이상으로 하여야 한다. K9 통로발판을 겹쳐서 이음하는 경우에는 장선 위에서 이음을 하고 겹침길이는 20 [cm] 이상으로 하여야 한다. 1 아UPTER 05 비계 - 거푸집 가시설 위험방지 10', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #108
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '11111111-1111-1111-1111-111111111104', 'mcq', '건설작업용 타워크레인의 안전장치로 옳지 않은 것은?', 2, 312)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9175826c-1eb2-03be-0244-f6b35ba17c80', '267b77c0-0000-08b4-f288-b61360884e40', '권과방지장치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ca1fb8-6be4-c209-c70a-96c33b3c51d8', '267b77c0-0000-08b4-f288-b61360884e40', '과부하방지장치', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69fafe4a-16ca-6de3-5607-c86888130160', '267b77c0-0000-08b4-f288-b61360884e40', '비상정지장치', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95e040e2-c2e1-25f3-5075-f7672f82eb37', '267b77c0-0000-08b4-f288-b61360884e40', '호이스트 스위치', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '95e040e2-c2e1-25f3-5075-f7672f82eb37', '④ 호이스트 스위치', '정답 ④. a 타워크레인의 방호장치 권과방지장치 • 과부하방지장치 • 비상정지장치 • 제동장치 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우의 준수기준으로 옳지 않은 것은?', 2, 313)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17cc2fba-a68c-aa20-a2c0-ab2897701d5a', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '비계의 최상부에서 작업을 할 때에는 안전난간을 설치', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61256c69-1a72-c41f-3dbf-bb87bbe88089', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판의 최대적재하중은 400[kg]을 초과하지 않도', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9deaade-758b-706e-1f80-6d094eec9117', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '승강용 사다리는 견고하게 설치하여야 한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a33e3c7-0c34-4064-684a-4e50a1161038', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '61256c69-1a72-c41f-3dbf-bb87bbe88089', '② 작업발판의 최대적재하중은 400[kg]을 초과하지 않도', '정답 ②. 전난간을 딛고 작업을 하거나 받침대 또는 사다리를 사 용하여 작업하지 않도록 한다. MM 이동식비계 작업발판의 최대적재하중은 250[kg]을 초과하지 않 도록 하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #117
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '11111111-1111-1111-1111-111111111104', 'mcq', '사면지반 개량공법으로 옳지 않은 것은?', 2, 314)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d7d6cf4-349a-42c2-5c35-27a223324726', '496ba631-88d6-8df9-b644-cac91e41a571', '전기 화학적 공법', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('30703104-3b99-6fdb-5a39-0b3668c6ea43', '496ba631-88d6-8df9-b644-cac91e41a571', '석회안정처리 공법', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed8e8f17-f7ad-ac11-69f2-bdfd33d2f2ae', '496ba631-88d6-8df9-b644-cac91e41a571', '이온 교환 공법', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5880533e-070b-c7c9-48e0-bc9cca0791a8', '496ba631-88d6-8df9-b644-cac91e41a571', '옹벽 공법', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '5880533e-070b-c7c9-48e0-bc9cca0791a8', '④ 옹벽 공법', '정답 ④. 옹벽 공법은 지반개량공법이 아닌 사면보강공법에 해당한다. WSIEi', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #118
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '11111111-1111-1111-1111-111111111104', 'mcq', '법면 붕괴에 의한 재해 예방조치로서 옳은 것은?', 2, 315)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '지표수와 지하수의 침투를 방지한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('817cbf6a-1b2a-a09c-e2fb-ed085131a818', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '법면의 경사를증가한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d3c260a-44a1-cf08-35b1-0f03dc1c32f0', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '절토 및 성토높이를 증가한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33daf4f5-c930-bac1-371d-b62acebe2988', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '토질의 상태에 관계없이 기울기 조건을 일정하게 한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', 'fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '① 지표수와 지하수의 침투를 방지한다.', '정답 ①. K3 지표수 및 지하수의 침투에 의한 토사 중량의 증가는 법면 붕괴 요인에 해당하므로 붕괴재해 예방을 위해서 지표수와 지하수의 침투를 방 지하는 것이 좋다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-2 #120
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '11111111-1111-1111-1111-111111111104', 'mcq', '가설통로의 설치기준으로 옳지 않은 것은?', 2, 316)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2009c5-6c8a-1971-e00f-f42d1cafa4c4', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '경사가 15°를 초과하는 때에는 미끄러지지 않는 구조로', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4115d05-1f6f-b1d2-e15e-ed4d217fdaf7', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '건설공사에 사용하는 높이 8[m] 이상인 비계다리에는', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf6fa544-c7b7-e564-771a-90a1352002b9', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e03172bd-9098-5d1b-fbe6-674377ef0f16', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '추락의 위험이 있는 장소에는 안전난간을 설치한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', 'cf6fa544-c7b7-e564-771a-90a1352002b9', '③ 수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', '정답 ③. KEH 가설통로 설치 시 준수 사항 견고한 구조로 할 것 • 경사는 30" 이하로 할 것 • 경사가 15’를 초과하는 경우에는 미끄러지지 아니하는 구조로 할 것 • 추락할 위험이 있는 장소에는 안전난간을 설치할 것 • 수직갱에 가설된 통로의 길이가 15[m] 이상인 경우에는 10[m] 이내마 다 계단참을 설치할 것 • 건설공사에 사용하는 높이 8[m] 이상인 비계다리에는 7[m] 이내마다 계단참을 설치할 것', array['산업안전기사','2022-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #2
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18396baa-742e-8f46-3098-ddfbcf2c0357', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 브레인스토밍의 4원칙과 가장 거리가 먼 것은?', 2, 317)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ee15721-abd1-349d-b8d5-ef7c5d0761d2', '18396baa-742e-8f46-3098-ddfbcf2c0357', '자유로운 비평', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d8b1667-e2a6-2927-a6ac-2532a9635a91', '18396baa-742e-8f46-3098-ddfbcf2c0357', '자유분방한 발언', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75c62a78-05d4-ba56-eb2f-1ffbb5ef3b2f', '18396baa-742e-8f46-3098-ddfbcf2c0357', '대량적인발언', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0c49a32-e330-23d4-998f-99d614646e81', '18396baa-742e-8f46-3098-ddfbcf2c0357', '타인 의견의수정발언', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18396baa-742e-8f46-3098-ddfbcf2c0357', '9ee15721-abd1-349d-b8d5-ef7c5d0761d2', '① 자유로운 비평', '정답 ①. IfeiiM 브레인스토밍（Brain Storming） • 비판금지: “ 좋다. 나쁘다” 등의 비평을 하지 않는다. • 자유분방: 자유로운 분위기에서 발표한다. • 대량발언: 무엇이든지 좋으니 많이 발언한다. • 수정발언: 자유자재로 변하는 아이디어를 개발한다.（타인 의견의 수정발언）', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구순서대로 나열한 것은? @정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성', 2, 318)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ac87a52-0992-f6e7-8f77-b056089eacf3', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '각 사상의 재해원인 규명', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('558534be-93d6-1e89-4ae6-f3aa369740ce', '04b7b1ff-7232-02dd-cb12-21d293949f5c', 'O —©--©—*®', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd583951-4b64-a814-d924-547d027cc96d', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—*•©—*©—*• (§)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9cd0294-df43-40ee-9bb8-ade26fafbad8', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—’<§)—*’©—” ©', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', 'f9cd0294-df43-40ee-9bb8-ade26fafbad8', '④ (9—’<§)—*’©—” ©', '정답 ④. FTA에 의한 재해사례 연구순서(D. R. Cheriton) 정상(Top)사상의 선정 一 각 사상의 재해원인 규명 一 FT도의 작성 및 분석 -» 개선계획의 작성', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '11111111-1111-1111-1111-111111111104', 'mcq', '시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[L/min]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?', 2, 319)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d295e75-b124-c222-39b6-0856d4b2242f', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '124［분］', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6c919-8114-38bd-96f8-3693e4602a52', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '134［분］', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39ba19a3-0075-8db5-2f9e-54dfbfb4f388', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '144［분］', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8c37353-f3fe-3ca3-2cc4-1c247756561e', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '154［분］', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '39ba19a3-0075-8db5-2f9e-54dfbfb4f388', '③ 144［분］', '정답 ③. KOi 휴식시간 산소 1[L] 당 에너지소비량은 5[kcal] 이다. 따라서 작업 중에 분당 산소소비량이 1.3[L/min]이라면 작업의 평균에너 지는 1.3[L/min] x 5[kcal/L] 6.5[kcal/min] 이다. 60（E—5）_ 60 X（6.5 —5） 휴식시간 7? 18분 E—1.5 — 6.5 - 1.5 여기서, F: 작업의 평균 에너지소비량[kcal/min] 5： 평균 에너지소비량 상핸kcal/min] 1시간당 18분의 휴식시간을 부여하여야 하므로 근로시간 8시간 중 18 x 8 144분이 휴식시간으로 포함되어야 한다. b l테', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2022-3 #38
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d553f467-6122-5908-6a72-a251835c946f', '11111111-1111-1111-1111-111111111104', 'mcq', '국내 규정상 1일 노출횟수가 100일 때 최대 음압수준이 몇 [dB]을 초과하는 충격소음에 노출되어서는 아니 되는가?', 2, 320)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d95b305-9841-1fe8-a07b-351a283a3d3d', 'd553f467-6122-5908-6a72-a251835c946f', '110', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d4fe03d-3538-2b94-6676-e5539813331c', 'd553f467-6122-5908-6a72-a251835c946f', '120', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85e925c3-790a-5d13-a805-bbec4c330cd0', 'd553f467-6122-5908-6a72-a251835c946f', '130', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83455000-74f9-b4e1-d432-6ee84dbd579f', 'd553f467-6122-5908-6a72-a251835c946f', '140', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d553f467-6122-5908-6a72-a251835c946f', '83455000-74f9-b4e1-d432-6ee84dbd579f', '④ 140', '정답 ④. MT 충격소음작업 소음이 1초 이상의 간격으로 발생하는 작업 중 다음의 어느 하나에 해당하 는 작업을 말한다. • 120[dB]을 초과하는 소음이 1일 1만 회 이상 발생하는 작업 • 130[dB]을 초과하는 소음이 1일 1천 회 이상 발생하는 작업 • 140[dB]을 초과하는 소음이 1일 1백 회 이상 발생하는 작업', array['산업안전기사','2022-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
