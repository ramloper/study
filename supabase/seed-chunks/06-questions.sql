-- chunk 6/14 questions 40 (산업안전기사)
-- run after 00-subject.sql
-- 2023-2 #10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?（단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.） ^5', 2, 201)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da71f7b3-e407-1a58-3630-6102751c09fd', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '폭발성물질 경고', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18e6d847-577b-9869-3989-b462c3d57213', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '산화성물질 경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89ebf31d-bb25-e989-2aec-d70bdbf06e6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '부식성물질 경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('191d2d80-a103-ab95-d5a9-48c2e95e9c6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '급성독성물질 경고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '191d2d80-a103-ab95-d5a9-48c2e95e9c6f', '④ 급성독성물질 경고', '정답 ④. 폭발令성물질 경고 산화성물질 경고 부식令성물질 경고 급성독쑈성물질 경고 <5> 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #18
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구위계이론 중 2단계에 해당되는 것은?', 2, 202)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cac1319e-9bb1-9045-4812-1ded01cc4ea6', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '생리적 욕구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c133bc09-f073-6f15-aec5-35e055ea9fac', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '안전에 대한 욕구', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f0ecc06-a471-f51e-beb3-86adfb53653b', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ab52aa3-47d0-d3ef-8299-4dbc4a146860', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '존경과 긍지에 대한 욕구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', 'c133bc09-f073-6f15-aec5-35e055ea9fac', '② 안전에 대한 욕구', '정답 ②. 매슬로우（Maslow）의 욕구위계이론 （3 제1단계: 생리적 욕구 © 제2단계: 안전의 욕구 © 제3단계 : 사회적 욕구｛친화 욕구） ® 제4단계 : 자기존경의 욕구（안정의 욕구 또는 자기존중의 욕구） @ 제5단계: 자아실현의 욕구（성취욕구） 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #25
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d3884f58-d203-4bfb-7303-fd4e21269dad', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전에서 평균수리시간을 나타내는 것은?', 2, 203)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ae7b482-7e9e-1ae3-71c1-27e8cb1898c6', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTBF', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8578d3e-0883-a38b-dafe-19407d8373c5', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTTR', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb7bc8c7-09ec-d8ad-b581-4b6653d38854', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTTF', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eaeed699-60dd-c3a5-64e8-44a944488cb8', 'd3884f58-d203-4bfb-7303-fd4e21269dad', 'MTBP', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d3884f58-d203-4bfb-7303-fd4e21269dad', 'a8578d3e-0883-a38b-dafe-19407d8373c5', '② MTTR', '정답 ②. 셰m山 평균수리시간(MTTR； Mean Time To Repair) 총 수리시간을 그 기간의 수리횟수로 나눈 시간으로 사후보전에 필요한 수 리시간의 평균치를 나타낸다. 瓦◎面', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #27
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 시스템 내의 위험요소가 어떤 상태에 있는가를 정 성적으로 분석 평가하는 첫 번째 위험분석기법은?', 2, 204)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16b81d69-a4c6-8bba-1784-f0105ec16025', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함수분석', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('072df14d-f72f-c596-626e-c76810b886aa', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '예비위험분석', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5085aab-f800-323a-d8b7-85e36916ce90', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함위험분석', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4451557-4950-0ec6-6249-bfb70c6e382c', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '운용위험분석', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '072df14d-f72f-c596-626e-c76810b886aa', '② 예비위험분석', '정답 ②. 규w 예비위험분석（PHA； Preliminary Hazards Analysis） 시스템 내의 위험요소가 얼마나 위험상태에 있는가를 평가하는 시스템안 전 프로그램의 최초단계（시스템 구상단계）의 정성적인 분석 방식이다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #28
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 맞는 것은?', 2, 205)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae402dbb-3482-2fcd-0f03-5da29d3e8ea4', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8924100-53f2-95fc-7f8a-9cfa728bb19a', '214d56d1-865f-e92c-a5d8-fca433ae734b', 'TOP사상을 발생시키는 조합이다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5856eff5-b10b-72c2-2b37-0736c1064c87', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템이 고장 나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19eb62ec-bec9-5f1f-d978-d52da23d6841', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '5856eff5-b10b-72c2-2b37-0736c1064c87', '③ 시스템이 고장 나지 않도록 하는 사상의 조합이다.', '정답 ③. 집합이다. " 패스셋（Path Set） 포함되어 있는 모든 기본사상이 일어나지 않을 때 정상사상（고장）이 일어 나지 않는 기본사상의 집합으로 시스템의 신뢰성을 나타낸다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #32
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해위험방지계획서의 제출대상 제 조업은 전기 계약용량이 얼마 이상인 경우에 해당되는가? （단, 기타 예외사항은 제외한다.）', 2, 206)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c5d9bee-0bdf-248d-b6bf-2f79cc430f42', '520415e0-0a82-94d4-cf06-a7e698a7b771', '50[kW]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f84ae4e-5269-6d75-0b50-a24808d6980e', '520415e0-0a82-94d4-cf06-a7e698a7b771', '100[kW]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac2ee9ab-8305-b031-942d-a8fe52c4616b', '520415e0-0a82-94d4-cf06-a7e698a7b771', '200[kW]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '520415e0-0a82-94d4-cf06-a7e698a7b771', '300[kW]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '④ 300[kW]', '정답 ④. 전기 계약용량이 300[kW] 이상인 사업의 사업주는 해당 제품의 생산 공정과 직접적으로 관련된 건설물 • 기계 • 기구 및 설비 등 전부를 설 치 • 이전하거나 그 주요 구조부분을 변경할 때에는 유해위험방지계획서를 제출하여야 한다. t 뽀1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #40
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('318292b6-07cc-7bc2-6667-7babe90aab98', '11111111-1111-1111-1111-111111111104', 'mcq', '인간의 오류모형에서 “알고 있음에도 의도적으로 따르지 않거나 무시한 경우”를 무엇이라 하는가?', 2, 207)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('241d6988-312f-82e0-aaef-1d0ca97856eb', '318292b6-07cc-7bc2-6667-7babe90aab98', '실수(Slip)', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3970221-263a-6a31-e8a8-9ca34916ae22', '318292b6-07cc-7bc2-6667-7babe90aab98', '착오(Mistake)', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf9cdae5-e9e1-6d5b-0e8a-5c24f6c6962f', '318292b6-07cc-7bc2-6667-7babe90aab98', '건망증(Lapse)', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48138953-cc20-a8de-f815-8de476c1423b', '318292b6-07cc-7bc2-6667-7babe90aab98', '위반(Violation)', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('318292b6-07cc-7bc2-6667-7babe90aab98', '48138953-cc20-a8de-f815-8de476c1423b', '④ 위반(Violation)', '정답 ④. 정해진 규칙을 알고 있음에도 고의로 따르지 않거나 무시하는 행 위는 인간의 오류모형 중 위반(Violation)에 해당한다. E 81', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등의 작업시작 전 점검사항 이 아닌 것은?', 2, 208)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b5b5512-c8d8-582f-f9e0-90c598be59cd', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '슬라이드 또는 칼날에 의한 위험방지 기구의 기능', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6c66ccd-cb27-5225-c9f5-2d06c2ab5b16', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '프레스의 금형 및 고정볼트 상태', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2716335d-f4f6-9ac4-779c-fff79339b941', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '전단기의 칼날 및 테이블의 상태', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('deaa6b66-29f6-5171-e930-91cde88257a4', '1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', '권과방지장치 및 그 밖의 경보장치의 기능', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1ebd0f8e-0233-a7b0-3bd9-a91575c4406f', 'deaa6b66-29f6-5171-e930-91cde88257a4', '④ 권과방지장치 및 그 밖의 경보장치의 기능', '정답 ④. KOI 권과방지장치 및 그 밖의 경보장치의 기능은 이동식 크레인을 이 용하여 작업을 할 때 작업시작 전 점검사항이다. 프레스 등의 작업시작 전 점검사항 • 클러치 및 브레이크의 기능 • 크랭크축 • 플라이휠 • 슬라이드 연결봉 및 연결 나사의 풀림 유무 • 1행정 1정지기구 • 급정지장치 및 비상정지장치의 기능 • 슬라이드 또는 칼날에 의한 위험방지 기구의 기능 • 프레스의 금형 및 고정볼트 상태 • 방호장치의 기능 • 전단기의 칼날 및 테이블의 상태 빠뢰11릐', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #42
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 안전인증대상 방호장치에 해당하지 않는 것은?', 2, 209)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eba9c312-251a-8ad7-1662-1544e5c58922', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '연삭기 덮개', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ea3dc36-cb29-8582-336e-6a053a1b98ca', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '압력용기 압력방출용 파열판', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f026c42c-1947-f040-d5c1-0663d39df901', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '압력용기 압력방출용 안전밸브', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2b652cd-71e2-015d-82a4-c3f3f6d08746', 'fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', '방폭구조(防爆構造) 전기기계 • 기구 및 부품', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fad34ddc-5fd9-2460-5dbf-0f97fd85ab29', 'eba9c312-251a-8ad7-1662-1544e5c58922', '① 연삭기 덮개', '정답 ①. a 연삭기 덮개는 안전인증대상이 아닌 자율안전확인대상 방호장치 이다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #45
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명 중 （ ） 안에 알맞은 내용은? | 산업안전보건법령」상 롤러기의 급정지장치는 롤러를 무부하 로 회전시킨 상태에서 앞면 롤러의 표면속도가 30[m/min] 미 만일 때에는 급정지거리가 앞면 롤러 원주의 （ ） 이내 에서 롤러를 정지시킬 수 있는 성능을 보유하여야 한다.', 2, 210)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2f77bd2-abed-a974-cd9c-833f324a1e5a', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/4', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aba26d33-e003-ad43-4adb-05f8130cb38c', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/3', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29216bcb-d379-c81b-c52a-0c7413a9a4a3', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2.5', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5223f17c-fd2e-7e94-021e-93eb5aa36134', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', 'aba26d33-e003-ad43-4adb-05f8130cb38c', '② 1/3', '정답 ②. as 롤러기 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의 & 이내 30 미만 앞면 롤러 원주의 하 이내 30 이상', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #55
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 목재가공용 둥근톱 작업에서 분할날 과 톱날 원주면과의 간격은 최대 얼마 이내가 되도록 조정 하는가?', 2, 211)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54062b3a-d159-71f4-ea71-aaeec6131a53', '6b97ad26-7fef-3e82-684c-acff02a467be', '10[mm]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '6b97ad26-7fef-3e82-684c-acff02a467be', '12[mm]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f93ed1e4-e19b-dea0-a91f-000e02f23c30', '6b97ad26-7fef-3e82-684c-acff02a467be', '14[mm]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('470679d6-be41-a6c0-481a-45760764bf12', '6b97ad26-7fef-3e82-684c-acff02a467be', '16 [mm]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', 'd97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '② 12[mm]', '정답 ②. 목재가공용 둥근톱 작업에서 분할날과 톱날 원주면과의 간격은 최대 12[mm] 이내가 되도록 조정하여야 한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나, 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.', 2, 212)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1661895e-c91a-44a3-d207-a80fe3b6f3f1', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '선반', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83bc4ade-3a36-2495-e689-b7ae6e36db3d', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '밀링', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c07def0-dc72-e96d-4b39-4b357640abac', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '플레이너', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2b7b6f4-0eaa-ca2b-b470-5f9f761f93f5', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '연삭기', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '83bc4ade-3a36-2495-e689-b7ae6e36db3d', '② 밀링', '정답 ②. HB 밀링작업 시 안전대책 • 밀링작업에서 생기는 칩은 가늘고 예리하며 부상을 입히기 쉬우므로 보 안경을 착용한다. • 칩은 기계를 정지시킨 후 브러시 등으로 제거한다. • 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. • 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않는다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #66
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '11111111-1111-1111-1111-111111111104', 'mcq', '금속성의 전기기계 • 기구나 구조물에 인체의 일부가 상시 접촉되어 있는 상태의 허용접촉전압으로 옳은 것은?', 2, 213)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fbe368-799c-7581-2fdb-fae9247063d2', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '2.5[V] 이하', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc755ae2-f099-cc51-4f2e-62a60bc6277a', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '25[V] 이하', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28ee56cb-6b05-8331-5aee-db0d3fb2b08b', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '50[V] 이하', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a52f8110-3fd8-7ecb-b4ea-1f7cc8d5ebab', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '제한 없음', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', 'bc755ae2-f099-cc51-4f2e-62a60bc6277a', '② 25[V] 이하', '정답 ②. 3 허용접촉전압 종별 접촉상태 허용접촉전압 제1 종 인체의 대부분이 수중에 있는 상태 Z5[V] 이하 • 인체가 현저히 젖어 있는 상태 제 2종 • 금속성의 전기기계 • 기구나 구조물에 인 25[V] 이하 체의 일부가 상시 접촉되어 있는 상태 제1종. 제2종 이외의 경우로서 통상의 인체 제 3종 상태에서 접촉전압이 가해지면 위험성이 높 50[V] 이하 은상태 • 제1종. 제2종 이외의 경우로서 통상의 인 체상태에 접촉전압이 가해지더라도 위험 제 4종 제한 없음 성이 낮은 상태 • 접촉전압이 가해질 우려가 없는 경우 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #95
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류에서 “폭발성 물질 및 유기과산화물”에 해당하는 것은?', 2, 214)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('656acbfc-ed96-84f5-3b07-d33f2eaf7bb7', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '리튬', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c59a8cb0-36d2-31ee-98de-ed180ba4fa8f', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '아조화합물', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('203c2897-8c34-e9bc-b999-512f7839f001', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '아세틸렌', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3890ef3-d9f6-c700-7ef5-2a43455930e3', 'e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', '셀룰로이드류', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e6b5cdf6-b9b2-87ab-40d9-7421bf4aef1d', 'c59a8cb0-36d2-31ee-98de-ed180ba4fa8f', '② 아조화합물', '정답 ②. a 아조화합물은 폭발성 물질 및 유기과산화물에 해당한다. 오답해설 리튬, 셀룰로이드류: 물반응성 물질 및 인화성 고체 아세틸렌: 인화성가스', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #98
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 산화성 액체 및 산화성 고체 에 해당하지 않는 것은?', 2, 215)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a209c34-a0ca-c5f6-34e0-874f18bc8cd9', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '염소산', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2be9882e-8969-e95b-b1ae-d6db849f5581', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과망간산', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cccfd54a-c700-8d69-0cf4-d6250709bdf7', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과산화수소', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '피크린산', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '④ 피크린산', '정답 ④. a 피크린산（트리니트로페놀）은 니트로화합물로 폭발성 물질 및 유 기과산화물에 해당한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #99
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '11111111-1111-1111-1111-111111111104', 'mcq', '금속의 용접 - 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 옳지 않은 것은?', 2, 216)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc5e4bfa-9a58-b873-390f-07910fcfc221', '106208c0-3936-6afc-b014-8337d954d99a', '밸브의 개폐는 서서히 할 것', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76611713-0522-45bc-0080-652970863b71', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 온도를 40[℃] 이하로 유지할 것', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e1cfdeb-7218-6950-88cf-c98e31752764', '106208c0-3936-6afc-b014-8337d954d99a', '운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa310063-0cfa-6c1a-1dc6-b17f06a7cb37', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 부식 • 마모 또는 변형상태를 점검한 후 사용할 것', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '9e1cfdeb-7218-6950-88cf-c98e31752764', '③ 운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', '정답 ③. KOI 금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 운반 하는 경우에는 캡을 씌워야 한다. SUBJECT 03 기계 - 기구 및 설비 안전관리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #101
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3d310025-4685-f952-300a-6d7ba2e38cfa', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준은「산업안전 보건법」의 건설공사 중 총 공사금액이 얼마 이상인 공사에 적용하는가?（단, 단가계약에 의한 공사는 제외）', 2, 217)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83e5f51d-bb92-3d15-88d8-4d3a2c818eb9', '3d310025-4685-f952-300a-6d7ba2e38cfa', '4천만 원', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1bbd587a-b0ec-61bc-7ad7-e9c1349c25b5', '3d310025-4685-f952-300a-6d7ba2e38cfa', '3천만 원', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('37b7a592-a5de-a45c-e1dd-c07551a314da', '3d310025-4685-f952-300a-6d7ba2e38cfa', '2천만 원', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ee91055-84f0-7046-3f9d-308b6229fd30', '3d310025-4685-f952-300a-6d7ba2e38cfa', '1천만 원', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3d310025-4685-f952-300a-6d7ba2e38cfa', '37b7a592-a5de-a45c-e1dd-c07551a314da', '③ 2천만 원', '정답 ③. 건설업 산업안전보건관리비 계상 및 사용기준은 ’ 산업안전보건 법」의 건설공사 중 총 공사금액 2천만 원 이상인 공사에 적용한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #102
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령』에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 218)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977b965d-4b96-5507-4cbc-ca74296bca5c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '기온이 영상 28[℃] 이상인 경우', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('179c38f8-0178-1755-1a9a-04ab7cadb59c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '풍속이 초당 10[m] 이상인 경우', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6b9754d-7e01-c7da-3b86-1a0a52a481c4', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('354a500b-78a9-9ae2-af4a-9eaa85949704', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강우량이 시간당 l[mm] 이상인 경우', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '977b965d-4b96-5507-4cbc-ca74296bca5c', '① 기온이 영상 28[℃] 이상인 경우', '정답 ①. KOi 철골직업 중지를 위한 기후조건에 기온과 관련한 기준은 없다. 철골작업 시 작업의 제한기준 구분 내용 강풍 풍속이 10[m/s] 이상인 경우 강우 강우량이 1[mm/h] 이상인 경우 강설 강설량이 l[cm/h] 이상인 경우', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #109
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 말비계를 조립하여 사용하는 경우에 관한 준수사항 이다.( )안에 들어갈 내용으로 옳은 것은? • 지주부재와 수평면의 기울기를 ( A )。이하로 하고 지주 부재와 지주부재 사이를 고정시키는 보조부재를 설치할 것 • 말비계의 높이가 2[m]를 초과하는 경우에는 작업발판의 폭 을( B )[cm] 이상으로할것', 2, 219)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ce3c1a3-f01a-2369-b5c4-36a7d484e883', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A：75, B：30', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24ab3ffb-2846-19d7-21d7-48eba3e25717', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 75, B： 40', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc53e427-b210-292d-6252-42ae720c1513', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 85, B： 30', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76e17a31-e76d-146c-4131-7b065874d96d', 'e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', 'A： 85, B： 40', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e5846c80-7bbd-f1ed-fddf-b0ba16ef0315', '24ab3ffb-2846-19d7-21d7-48eba3e25717', '② A： 75, B： 40', '정답 ②. 3 말비계 조립 시 준수사항 • 지주부재의 하단에는 미끄럼 방지장치를 하고, 근로자가 양측 끝부분에 올라서서 작업하지 않도록 하여야 한다. • 지주부재와 수평면의 기울기를 75" 이하로 하고. 지주부재와 지주부재 사이를 고정하는 보조부재를 설치하여야 한다. • 말비계의 높이가 2[m]를 초과하는 경우에는 작업발판의 폭을 40[cm] 이상으로 하여야 한다. E ^l', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #111
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 셔블로더의 운영방법으로 옳은 것은?', 2, 220)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5c485c5-0dc8-4444-0adc-16d0964d0b1c', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '점검 시 버킷은 가장 상위의 위치에 올려놓는다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('146a301a-4cde-5f09-48c4-616e1c4a5df8', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '시동 시에는 사이드 브레이크를 풀고서 시동을 건다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '경사면을 오를 때에는 전진으로 주행하고 내려올 때는', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41b458cd-8bfe-b036-988d-9696a653cfa4', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '운전자가 운전석에서 나올 때는 버킷을 올려 놓은 상태', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', 'f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '③ 경사면을 오를 때에는 전진으로 주행하고 내려올 때는', '정답 ③. 로 이탈한다. KOI 셔블로더 운전 시 경사면을 오를 때에는 전진으로 주행하고. 내 려올 때에는 후진으로 주행한다. 1 아HAPTER 04 건설현장 안전시설 관리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #113
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 시스템비계의 구조에 관한 사항이다.（ ）안에 들어갈 내용으로 옳은 것은? 비계 밑단의 수직재와 받침철물은 밀착되도록 설치하고. 수직 재와 받침철물의 연결부의 겹침길이는 받침철물 전체길이의 （ ）이상이되도록할것', 2, 221)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6c37063-98b0-dbf8-ba87-c40d1fe93986', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '2분의 1', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1765d907-67b8-cdbc-b6f0-77190b0ab75e', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '3분의 1', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5786e8-5da6-f01e-c4a3-4f7ca5ee5527', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '4분의 1', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b592e9c6-f7cd-9d32-bf66-17c288323318', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '5분의 1', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '1765d907-67b8-cdbc-b6f0-77190b0ab75e', '② 3분의 1', '정답 ②. E9 시스템비계는 비계 밑단의 수직재와 받침철물은 밀착되도록 설 치하고, 수직재와 받침철물의 연결부의 겹침길이는 받침철물 전체길이의 & 이상이 되도록 하여야 한다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-2 #116
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '11111111-1111-1111-1111-111111111104', 'mcq', '차량계 하역운반기계의 안전조치사항 중 옳지 않은 것은?', 2, 222)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07d5c201-4079-d2bf-8ca5-b3fd7ed474be', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '최대제한속도가 시속 10[km]를 초과하는 차량계 건설', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e48696f-54e3-7ee3-a631-994360cd9dae', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기계의 운전자가 운전위치를 이탈하는 경', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18167fa1-0dfd-a019-6f17-3f8fd2bdd507', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 하역운반기계 등에 화물을 적재하는 경우 하중', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9e66d12-fe47-4c5a-418e-0ce0078c1d5a', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기 계를 사용하여 작업을 하는 경우 승차석', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '1e48696f-54e3-7ee3-a631-994360cd9dae', '② 차량계 건설기계의 운전자가 운전위치를 이탈하는 경', '정답 ②. 이 아닌 위치에 근로자를 탑승시키지 말 것 a 치량계 하역운반기계 등. 차량계 건설기계의 운전자가 운전위치 이탈 시에는 포크. 버킷, 디퍼 등의 장치를 가장 낮은 위치 또는 지면에 내 려 두어야 한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #4
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('27437fbb-b86c-ded6-aa14-f463f6089884', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음의 안전보건표지 중 기본모형이 다른 것은?', 2, 223)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dabc04ce-5a2e-363d-d605-a5b888941a5e', '27437fbb-b86c-ded6-aa14-f463f6089884', '위험장소경고', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24a973b-fec2-e7ee-d7b4-9be1aedb8865', '27437fbb-b86c-ded6-aa14-f463f6089884', '레이저광선경고', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('037e80f1-f707-3e37-921d-c324e564624e', '27437fbb-b86c-ded6-aa14-f463f6089884', '방사성물질경고', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f01cd47-7276-192f-69bd-77cb580bb6e2', '27437fbb-b86c-ded6-aa14-f463f6089884', '부식성물질경고', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('27437fbb-b86c-ded6-aa14-f463f6089884', '0f01cd47-7276-192f-69bd-77cb580bb6e2', '④ 부식성물질경고', '정답 ④. 경고표지 위험장소경고 레이저광선경고 방사성물질경고 부식성물질경고 令', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #5
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49e92883-e46d-3cf9-ebda-bb5608125673', '11111111-1111-1111-1111-111111111104', 'mcq', '브레인스토밍 기법에 관한 설명으로 옳은 것은?', 2, 224)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35dfe2de-5f88-6e8c-460a-86bc179fe1da', '49e92883-e46d-3cf9-ebda-bb5608125673', '타인의 의견을 수정하지 않는다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32e2aab0-b4ef-9fe2-0ff0-d982858fb361', '49e92883-e46d-3cf9-ebda-bb5608125673', '지정된 표현방식에서 벗어나 자유롭게 의견을 제시', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d46d775-aabf-958d-1dfe-81b238cdaae2', '49e92883-e46d-3cf9-ebda-bb5608125673', '참여자에게는 동일한 횟수의 의견제시 기회가 부여', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02fde279-8874-dfe1-ac90-8bdc8ba13db5', '49e92883-e46d-3cf9-ebda-bb5608125673', '주제와 내용이 다르거나 잘못된 의견은 지적하여 조정', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49e92883-e46d-3cf9-ebda-bb5608125673', '32e2aab0-b4ef-9fe2-0ff0-d982858fb361', '② 지정된 표현방식에서 벗어나 자유롭게 의견을 제시', '정답 ②. 한다. 3 브레인스토밍（Brain Storming） • 비판금지: “좋다. 나쁘다" 등의 비평을 하지 않는다. • 자유분방: 자유로운 분위기에서 발표한다. • 대량발언 : 무엇이든지 좋으니 많이 발언한다. • 수정발언 : 자유자재로 변하는 아이디어를 개발한다.（타인 의견의 수정발언） 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #9
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자 정기교육 내용에 해당하지 않는것은?', 2, 225)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('404e1a4a-79c9-b264-a206-0566105d73d3', '88c99b75-2663-2f2a-a55a-d72232ab5729', '산업안전 및 산업재해 예방에 관한 사항', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d65c6dd7-713b-c80d-3582-9b17c6bac9d9', '88c99b75-2663-2f2a-a55a-d72232ab5729', '안전보건교육 능력 배양에 관한 사항', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('427ea1f5-c018-be71-458f-02d3a1f47d70', '88c99b75-2663-2f2a-a55a-d72232ab5729', '유해 • 위험 작업환경 관리에 관한 사항', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c6e3912-cb17-d790-7b42-d03805600208', '88c99b75-2663-2f2a-a55a-d72232ab5729', '직무스트레스 예방 및 관리에 관한 사항', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', 'd65c6dd7-713b-c80d-3582-9b17c6bac9d9', '② 안전보건교육 능력 배양에 관한 사항', '정답 ②. a 는 관리감독자의 정기교육 내용이다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인(이동식 크레인 제외), 리프트(이삿짐운반용 리프트 제외) 및 곤돌라는 사업장에 설치가 끝난 날부터 ( (9 ) 이 내에 최초의 안전검사를 실시하되, 그 이후부터 ( © )마다 실시해야 한다. ( ) 안에 알맞은 것은?(단, 건설현장에서 사용하는 것은 제외한다.)', 2, 226)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('65ebd161-4a6d-e892-fd6b-dd9ee3c1b7ae', '13515c62-fae1-b264-360d-6b74f3e0924a', '<3： 2년, ©： 3년', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©： 2년', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f32049e-6eb0-5057-1bca-11d4e0be5044', '13515c62-fae1-b264-360d-6b74f3e0924a', '19： 2년, ©: 2년', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fbdd7c4-86a8-1fa6-0b5a-a468ecc28733', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©: 3년', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', 'ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '② @： 3년, ©： 2년', '정답 ②. 안전검사의 주기 크레인(이동식 크레인 제외), 리프트(이삿짐운반용 리프트 제외) 및 곤돌라 는 사업장에 설치가 끝난 날부터 3년 이내에 최초 안전검사를 실시하되, 그 이후부터 2년마다(건설현장에서 사용하는 것은 최초로 설치한 날부터 6개월마다) 안전검사를 실시한다. KBllSI SUBJECT 03 기계 - 기구 및 설비 안전관리', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 안전보건교육계획을 수립할 때 고려할 사항으로 가 장거리가 먼 것은?', 2, 227)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('633d23a1-7f0c-8b6c-55de-43eb2550ae5f', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '현장의 의견을 충분히 반영한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bccd0189-0dd0-94fd-6999-649256a4c000', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '대상자의 필요한 정보를 수집한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e0cc9dc-7ed6-cf2b-8f12-d81bb372d963', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '안전교육시행체계와의 연관성을 고려한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60ca3ce9-2670-1dfd-2141-187ff19a858d', 'b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '정부 규정에 의한 교육에 한정하여 실시한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b8c5ffd3-30d1-5908-61fe-dedd53effc8d', '60ca3ce9-2670-1dfd-2141-187ff19a858d', '④ 정부 규정에 의한 교육에 한정하여 실시한다.', '정답 ④. 안전보건교육계획 수립 시 법 규정에 의한 교육에만 그치지 앦아야 한다. E 81 아UPTER 05 안전보건교육의 내용 및 방법', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #17
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 228)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfebf709-e0b2-aaca-48c9-7512bcebd4a2', '81736865-fcc6-c1e0-b533-1ea39f454515', '생리적욕구', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('577c446d-2128-ba35-f96d-49cb99b36f86', '81736865-fcc6-c1e0-b533-1ea39f454515', '사회적욕구', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91757fca-40be-8db7-8c6e-5f4ecc430cac', '81736865-fcc6-c1e0-b533-1ea39f454515', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5608d316-9565-9c5a-7962-b5336efadd16', '81736865-fcc6-c1e0-b533-1ea39f454515', '안전의 욕구', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '91757fca-40be-8db7-8c6e-5f4ecc430cac', '③ 자아실현의 욕구', '정답 ③. 3 자아실현의 욕구（제5단계）는 잠재적인 능력을 실현하고자 하는 욕구（성취욕구）이다. 1 아UPTER 04 인간의 행동과학 01', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #20
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 방진마스크의 구비조건으로 적절하지 않은 것은?', 2, 229)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1736d531-7352-0b45-330b-90a97b82751c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡기밸브는 미약한 호흡에 대하여 확실하고 예민하게', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6a1b848-f8d3-c633-ca37-4630f72c720c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '쉽게 착용되어야 하고 착용하였을 때 안면부가 안면에', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc6c52b2-c043-d640-d9da-477e7db34333', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '여과재는 여과성능이 우수하고 인체에 장해를 주지 않', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afeddd4e-aa27-fd64-ee8e-098f33a98726', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', 'afeddd4e-aa27-fd64-ee8e-098f33a98726', '④ 흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', '정답 ④. 흡 •배기저항이 높을것 IBM 방진마스크 선정기준（구비조건） • 분집포집효율（여과효율）이 좋을 것 • 흡기. 배기저항이 낮을 것 • 사용적이적을 것 • 중량이 가벼울 것 • 시야가 넓을 것 • 안면밀착성이 좋을것 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #37
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '11111111-1111-1111-1111-111111111104', 'mcq', '어떤 결함수를 분석하여 Minimal Cut Set을 구한 결과 다음 과 같았다. 각 기본사상의 발생확률을 q„/ 1, 2, 3이라 할 때 정상사상의 발생확률함수로 옳은 것은? 서 [1. 2], 스 [1, 3], 息 [2, 3]', 2, 230)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5ab8619-e5e1-fa6f-17de-669c74b089d7', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Q1Q2+Q1Q2—q2q3', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d0c0b15-8726-be23-f368-248a38d8c29d', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '切切十91<53-9293', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fca3a452-f092-d975-4027-8dbd011cc3c3', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'qiqj+qiQa+qzQs-qi^aQs', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19358aa7-5fe9-c8cd-50c4-08790ec9384f', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Chqj+qKzH乃sq；!—2(?乃293', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '19358aa7-5fe9-c8cd-50c4-08790ec9384f', '④ Chqj+qKzH乃sq；!—2(?乃293', '정답은 ④ 입니다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #39
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH Lifting Guideline에서 권장무게한계(RWL)산출에 사용되는 계수가 아닌 것은?', 2, 231)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a138d45c-b9b0-3c31-87fb-8049ab0504cc', '1a733659-4428-afe3-ab60-ff2393bd9ace', '휴식계수', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2999822f-3286-e2a3-7cdd-026cceb593da', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수평계수', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d9c619a-5a4b-002e-7632-1f65c7ddeac3', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수직계수', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d2a90e4-cbc2-c3df-8a19-b34db793f6a7', '1a733659-4428-afe3-ab60-ff2393bd9ace', '비대칭계수', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', 'a138d45c-b9b0-3c31-87fb-8049ab0504cc', '① 휴식계수', '정답 ①. 1하丁 NLE(NIOSH Lifting Equation) 권장무게한계 (RWL) 23 xHMxVMxDMxAMxFMxCM 여기서. HM： 수평계수. VM： 수직계수, DM： 거리계수. AM： 비대칭계수, FM： 빈도계수. CM： 커플링계수 바WI', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #41
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 진동작업을 하는 근로자에 게 충분히 알려야 할 사항과 거리가 가장 먼 것은?', 2, 232)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5079907f-529f-a27b-ff76-4aed03856ee8', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '인체에 미치는 영향과 증상', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ac9051-3532-0517-fb6c-9d19248f7a25', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 기계 •기구관리방법', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62bc30fa-3438-a63a-31bb-2a685996c698', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '보호구 선정과 착용방법', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 재해 시 비상연락체계', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '④ 진동 재해 시 비상연락체계', '정답 ④. i E9 진동작업에 종사하는 근로자에게 알려야 할 사항 • 인체에 미치는 영향과 증상 • 보호구의 선정과 착용방법 • 진동 기계 • 기구 관리 및 사용 방법 • 진동 장해 예방방법 바"I', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #43
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 설비의 진단방법에 있어 비파괴시험이나 검사에 해 당하지 않는 것은?', 2, 233)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b35f364-aea7-623a-df02-13058c5ce98b', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '피로시험', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd81098b-2604-6de7-fb57-ba407349e324', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '음향탐상검사', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc07864d-d33f-c689-7141-ed75362eae82', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '방사선투과시험', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c3aa4df-5852-2bc4-09f9-a787d887f629', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '초음파탐상검사', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '9b35f364-aea7-623a-df02-13058c5ce98b', '① 피로시험', '정답 ①. 3 피로시험은 파괴시험의 일종이다. 비파괴검사의 종류 방사선투과검사(RT). 초음파탐상검사(UT). 자분 탐상검사(MT). 침투탐 상검사(PT). 음향탐상검사(AET). 와류탐상검사(ECT) 등', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #46
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9a2379f3-3a92-4db3-2460-cd09df023028', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러의 안전한 가동을 위하여 보 일러 규격에 맞는 압력방출장치가 2개 이상 설치된 경우에 최고사용압력 이하에서 1개가 작동되고, 다른 압력방출장 치는 최고 사용압력의 몇 배 이하에서 작동되도록 부착하여 야 하는가?', 2, 234)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d15b980-4202-7f45-f93e-d1391380c882', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.03 배', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('caa45313-d2aa-d354-d025-d01a88f23ace', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.05 배', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d637d4a-07ae-f8ec-af66-44e0bbf1e376', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.2 배', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('579e6be5-94e7-6525-6502-6636c74065ef', '9a2379f3-3a92-4db3-2460-cd09df023028', '1.5 배', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9a2379f3-3a92-4db3-2460-cd09df023028', 'caa45313-d2aa-d354-d025-d01a88f23ace', '② 1.05 배', '정답 ②. KOI 보일러의 안전한 가동을 위하여 보일러 규격에 맞는 압력방출장 치를 1개 또는 2개 이상 설치하고 최고사용압력 이하에서 작동되도록 하 여야 한다. 다만, 압력방출장치가 2개 이상 설치된 경우에는 최고사용압력 이하에서 1개가 작동되고. 다른 압력방출장치는 최고사용압력 1.05배 이 하에서 작동되도록 부착하여야 한다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #49
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('08ad7d51-ba12-1434-ba77-077dfc5a56d4', '11111111-1111-1111-1111-111111111104', 'mcq', '그림과 같이 50[kN]의 중량물을 와이어로프를 이용하여 상 부에 60。의 각도가 되도록 들어올릴 때, 로프 하나에 걸리 는 하중（?）은 약 몇 [kN]인가?', 2, 235)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('186fda2f-5ba6-2163-059d-cc933e1eed8f', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '16.8', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b71d8ef1-e56a-3800-eff3-19dd4aae24cf', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '24.5', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5218c117-4aeb-cdfb-93d8-dba46a0d6a59', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '28.9', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e8443025-3884-86ca-e59f-cb4e6a76bd80', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '37.9', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('08ad7d51-ba12-1434-ba77-077dfc5a56d4', '5218c117-4aeb-cdfb-93d8-dba46a0d6a59', '③ 28.9', '정답 ③. K i 헤 와이어로프 하나에 걸리는 하중 W 2 그 25 丄 _ d-— cos 30° 28.9[kN] cos —— 2 여기서. 死: 물체의 무게 d: 와이어로프 상부의 각도 tOlKI', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #52
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 선반의 안전장치 및 작업 시 주의사항으로 잘못된 것은?', 2, 236)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7cd5a8e-c30d-003c-7f2e-4db18e0ce50a', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 바이트는 되도록 짧게 물린다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('672c4609-a8e9-0b0d-fab4-f50eb638bc44', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc691de-7b6b-fa7f-8d76-ad5e93a887d8', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 베드 위에는 공구를 올려놓지 않는다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea70e10b-b921-0ff4-1d99-46eaa2282a45', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '칩 브레이커는 바이트에 직접 설치한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '672c4609-a8e9-0b0d-fab4-f50eb638bc44', '② 방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', '정답 ②. K3 선반작업 시 바이트는 끝을 짧게 장치하고 일감의 길이가 직경의 12배 이상일 때 방진구를 사용한다. 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #59
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 용해아세틸렌의 가스집합 용접장치 의 배관 및 부속기구에는 구리나 구리 함유량이 몇 퍼센트 이상인 합금을 사용할 수 없는가?', 2, 237)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e867cca3-5f40-2aed-2830-9871578d1b4f', 'aa0b1aab-7513-290e-b142-924697a553fc', '40[%]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff16dd19-e78e-8cbc-5819-39497d0a9aa7', 'aa0b1aab-7513-290e-b142-924697a553fc', '50[%]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6805ba2-2195-0c0b-a90e-edf6b6a20c32', 'aa0b1aab-7513-290e-b142-924697a553fc', '60[%]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9986909-da27-a058-ac45-e8cc623fe3dc', 'aa0b1aab-7513-290e-b142-924697a553fc', '70[%]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', 'e9986909-da27-a058-ac45-e8cc623fe3dc', '④ 70[%]', '정답 ④. KOI 용해아세틸렌의 가스집합 용접장치의 배관 및 부속기구는 구리 나 구리 함유량이 70[%] 이상인 합금을 사용해서는 아니 된다. - 사용 시 폭발성 물질（아세틸라이드）이 생성된다. t 8j', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #60
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '11111111-1111-1111-1111-111111111104', 'mcq', '. 「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）', 2, 238)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5bfe223-1eaa-9951-5c4f-5ef9cccd6750', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '0.9[m]', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b93f2b12-9cf3-9c67-16b0-7618838a5652', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.2[m]', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab093c41-43a2-d807-5d1d-265bb6654331', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.5[m]', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81ca72eb-e31a-1910-777d-fd10208f4d2f', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.8[m]', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '81ca72eb-e31a-1910-777d-fd10208f4d2f', '④ 1.8[m]', '정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. E*IE1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #70
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68a0ac92-770c-373f-f75d-7091e6ab96b7', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기기기에 “Ex ia IIC T4 Ga”라고 표시되어 있다. 해 당 기기에 대한 설명으로 틀린 것은?', 2, 239)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a37fbc44-1bb8-03ce-f2af-bf427322b18c', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '정상 작동, 예상된 오작동에 또는 드문 오작동 중에 점', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('223ae705-9296-bd09-2c4f-abacfba16b42', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '온도등급이 T4이므로 최고표면온도가 150[幻]를 초과', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29c8fc76-2f22-9370-0753-2dfd94327b19', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '본질안전방폭구조로 0종 장소에서 사용이 가능하다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b56c65d3-1832-2d17-a1f7-e5e363d96642', '68a0ac92-770c-373f-f75d-7091e6ab96b7', '수소 및 아세틸렌 등의 가스가 존재하는 곳에 사용이', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68a0ac92-770c-373f-f75d-7091e6ab96b7', '223ae705-9296-bd09-2c4f-abacfba16b42', '② 온도등급이 T4이므로 최고표면온도가 150[幻]를 초과', '정답 ②. 가능하다. 짜 온도등급 T4는 최고표면온도가 100[℃] 초과 135[℃] 이하인 것 을 말한다. 전기기기의 최고표면온도에 따른 온도등급 온도등급 전기기기의 최고표면온되。C] T1 300 초과 450 이하 T2 200 초과 300 이하 T3 135 초과 200 이하 T4 100 초과 135 이하 T5 85 초과 100 이하 T6 85 이하 1 1푸l', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;

-- 2023-3 #73
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항값을 저하시키는 방법 중 거리가 먼 것은?', 2, 240)
on conflict (id) do update set body = excluded.body, difficulty = excluded.difficulty, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('58de22a7-eca0-624c-94af-c195b2e26218', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉에 도전성이 좋은 금속을 도금한다.', 0)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('313e2f27-0e7a-9e3e-4f85-1a2990635114', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 병렬로 연결한다.', 1)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0fc0bce-9731-14bf-0668-e5006e5cfc3c', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '도전성 물질을 접지극 주변의 토양에 주입한다.', 2)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fe8e574-0661-ebd8-49ad-0e3b54cd1c44', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 땅속 깊이 매설한다.', 3)
on conflict (id) do update set body = excluded.body, sort_order = excluded.sort_order;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '58de22a7-eca0-624c-94af-c195b2e26218', '① 접지봉에 도전성이 좋은 금속을 도금한다.', '정답 ①. KHB 접지저항의 물리적 저감법 • 접지극의 병렬 접속 • 접지극의 치수 확대 • 접지봉 심타법 적용 • 매설지선 및 평판접지극 사용 • 메시(Mesh)공법 적용 • 다중접지 시트 사용 • 보링 공법 적용 ※ 도전성 물질을 접지극 주변의 토양에 주입하는 것은 접지저항의 화학적 저감법에 해당한다. @', array['산업안전기사','2023-3'])
on conflict (question_id) do update set
  correct_option_id = excluded.correct_option_id,
  answer_text = excluded.answer_text,
  explanation = excluded.explanation,
  concepts = excluded.concepts;
