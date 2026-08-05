-- chunk 12
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6abcddcc-76a6-e478-602a-b02f9080c7f1', '11111111-1111-1111-1111-111111111104', 'mcq', '교육심리학의 기본이론 중 학습지도의 원리가 아닌 것은?', 2, 441)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c0b3963-10d0-aa11-6abf-995e7ce21087', '6abcddcc-76a6-e478-602a-b02f9080c7f1', '직관의 원리', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5531862-8415-b81c-885b-38ec9c1fa531', '6abcddcc-76a6-e478-602a-b02f9080c7f1', '개별화의 원리', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('906a17be-03be-16b9-4fd1-a5218eaa279a', '6abcddcc-76a6-e478-602a-b02f9080c7f1', '계속성의 원리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5af659c7-81c6-e7cb-c937-7622dea9c652', '6abcddcc-76a6-e478-602a-b02f9080c7f1', '사회화의 원리', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6abcddcc-76a6-e478-602a-b02f9080c7f1', '906a17be-03be-16b9-4fd1-a5218eaa279a', '③ 계속성의 원리', '정답 ③. 계속성의 원리는 학습지도의 원리가 아닌 파블로프의 조건반사 설에 해당한다. 학습지도 이론 개별화의 원리, 통합의 원리. 사회화의 원리. 자발성의 원리. 직관의 원리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구위계이론 중 2단계에 해당되는 것은?', 2, 442)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cac1319e-9bb1-9045-4812-1ded01cc4ea6', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '생리적 욕구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c133bc09-f073-6f15-aec5-35e055ea9fac', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '안전에 대한 욕구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f0ecc06-a471-f51e-beb3-86adfb53653b', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ab52aa3-47d0-d3ef-8299-4dbc4a146860', 'a4b66c44-566b-58fe-44d9-51a3f8fcdb20', '존경과 긍지에 대한 욕구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a4b66c44-566b-58fe-44d9-51a3f8fcdb20', 'c133bc09-f073-6f15-aec5-35e055ea9fac', '② 안전에 대한 욕구', '정답 ②. 안전에 대한 욕구', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 시스템 내의 위험요소가 어떤 상태에 있는가를 정 성적으로 분석 ■ 평가하는 첫 번째 위험분석기법은?', 2, 443)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16b81d69-a4c6-8bba-1784-f0105ec16025', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함수분석', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('072df14d-f72f-c596-626e-c76810b886aa', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '예비위험분석', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5085aab-f800-323a-d8b7-85e36916ce90', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '결함위험분석', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4451557-4950-0ec6-6249-bfb70c6e382c', '87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '운용위험분석', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('87c04b81-dfa3-57f0-bae7-aba8cfa6d51f', '072df14d-f72f-c596-626e-c76810b886aa', '② 예비위험분석', '정답 ②. 규w 예비위험분석（PHA； Preliminary Hazards Analysis） 시스템 내의 위험요소가 얼마나 위험상태에 있는가를 평가하는 시스템안 전 프로그램의 최초단계（시스템 구상단계）의 정성적인 분석 방식이다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법에서 Path Set에 관한 설명으로 맞는 것은?', 2, 444)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae402dbb-3482-2fcd-0f03-5da29d3e8ea4', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템의 약점을 표현한 것이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8924100-53f2-95fc-7f8a-9cfa728bb19a', '214d56d1-865f-e92c-a5d8-fca433ae734b', 'TOP사상을 발생시키는 조합이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5856eff5-b10b-72c2-2b37-0736c1064c87', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템이 고장 나지 않도록 하는 사상의 조합이다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19eb62ec-bec9-5f1f-d978-d52da23d6841', '214d56d1-865f-e92c-a5d8-fca433ae734b', '시스템 고장을 유발시키는 필요불가결한 기본사상들의', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('214d56d1-865f-e92c-a5d8-fca433ae734b', '5856eff5-b10b-72c2-2b37-0736c1064c87', '③ 시스템이 고장 나지 않도록 하는 사상의 조합이다.', '정답 ③. 집합이다. " 패스셋（Path Set） 포함되어 있는 모든 기본사상이 일어나지 않을 때 정상사상（고장）이 일어 나지 않는 기본사상의 집합으로 시스템의 신뢰성을 나타낸다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 유해위험방지계획서의 제출대상 제 조업은 전기 계약용량이 얼마 이상인 경우에 해당되는가? （단, 기타 예외사항은 제외한다.）', 2, 445)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c5d9bee-0bdf-248d-b6bf-2f79cc430f42', '520415e0-0a82-94d4-cf06-a7e698a7b771', '50[kW]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f84ae4e-5269-6d75-0b50-a24808d6980e', '520415e0-0a82-94d4-cf06-a7e698a7b771', '100[kW]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac2ee9ab-8305-b031-942d-a8fe52c4616b', '520415e0-0a82-94d4-cf06-a7e698a7b771', '200[kW]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '520415e0-0a82-94d4-cf06-a7e698a7b771', '300[kW]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('520415e0-0a82-94d4-cf06-a7e698a7b771', '95f890ff-8a2a-d78a-23d5-ccb3690e62fc', '④ 300[kW]', '정답 ④. 전기 계약용량이 300[kW] 이상인 사업의 사업주는 해당 제품의 생산 공정과 직접적으로 관련된 건설물 • 기계 • 기구 및 설비 등 전부를 설 치 • 이전하거나 그 주요 구조부분을 변경할 때에는 유해위험방지계획서를 제출하여야 한다. t 뽀1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명 중 （ ） 안에 알맞은 내용은? |■산업안전보건법령」상 롤러기의 급정지장치는 롤러를 무부하 로 회전시킨 상태에서 앞면 롤러의 표면속도가 30[m/min] 미 만일 때에는 급정지거리가 앞면 롤러 원주의 （ ） 이내 에서 롤러를 정지시킬 수 있는 성능을 보유하여야 한다.', 2, 446)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2f77bd2-abed-a974-cd9c-833f324a1e5a', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/4', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aba26d33-e003-ad43-4adb-05f8130cb38c', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/3', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29216bcb-d379-c81b-c52a-0c7413a9a4a3', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2.5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5223f17c-fd2e-7e94-021e-93eb5aa36134', '3c9f4358-80f5-f876-b2c4-e5c571d71d2c', '1/2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3c9f4358-80f5-f876-b2c4-e5c571d71d2c', 'aba26d33-e003-ad43-4adb-05f8130cb38c', '② 1/3', '정답 ②. 롤러기 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의 & 이내 30 미만 앞면 롤러 원주의 하 이내 30 이상', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 목재가공용 둥근톱 작업에서 분할날 과 톱날 원주면과의 간격은 최대 얼마 이내가 되도록 조정 하는가?', 2, 447)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('54062b3a-d159-71f4-ea71-aaeec6131a53', '6b97ad26-7fef-3e82-684c-acff02a467be', '10[mm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '6b97ad26-7fef-3e82-684c-acff02a467be', '12[mm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f93ed1e4-e19b-dea0-a91f-000e02f23c30', '6b97ad26-7fef-3e82-684c-acff02a467be', '14[mm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('470679d6-be41-a6c0-481a-45760764bf12', '6b97ad26-7fef-3e82-684c-acff02a467be', '16 [mm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6b97ad26-7fef-3e82-684c-acff02a467be', 'd97bfa85-8a84-6ee3-7c1f-cd64eb76250f', '② 12[mm]', '정답 ②. 목재가공용 둥근톱 작업에서 분할날과 톱날 원주면과의 간격은 최대 12[mm] 이내가 되도록 조정하여야 한다. @1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9083a645-4ed3-8319-cae3-cd54bc28a6c5', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 선반작업 시 지켜야 할 안전수칙으로 거리가 먼 것 은?', 2, 448)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2b59da3-c645-50b3-c70c-f1cb5964354f', '9083a645-4ed3-8319-cae3-cd54bc28a6c5', '작업 중 절삭 칩이 눈에 들어가지 않도록 보안경을 착', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ccff01ef-92a7-df4b-e661-fd9f77b59842', '9083a645-4ed3-8319-cae3-cd54bc28a6c5', '공작물 세팅에 필요한 공구는 세팅이 끝난 후 바로 제', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('553b06a7-dd6c-23f2-9011-8b5d80ce1cfc', '9083a645-4ed3-8319-cae3-cd54bc28a6c5', '상의의 옷자락은 안으로 넣고, 끈을 이용하여 소맷자락', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4680dd9f-3639-0563-9d4f-921b6c736739', '9083a645-4ed3-8319-cae3-cd54bc28a6c5', '공작물은 전원스위치를 끄고 바이트를 충분히 멀리 위', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9083a645-4ed3-8319-cae3-cd54bc28a6c5', '553b06a7-dd6c-23f2-9011-8b5d80ce1cfc', '③ 상의의 옷자락은 안으로 넣고, 끈을 이용하여 소맷자락', '정답 ③. 상의의 옷자락은 안으로 넣고, 끈을 이용하여 소맷자락', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나, 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.', 2, 449)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1661895e-c91a-44a3-d207-a80fe3b6f3f1', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '선반', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83bc4ade-3a36-2495-e689-b7ae6e36db3d', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '밀링', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c07def0-dc72-e96d-4b39-4b357640abac', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '플레이너', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2b7b6f4-0eaa-ca2b-b470-5f9f761f93f5', 'c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '연삭기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c80de6b4-0f2b-ce55-25ae-8cdc957793bd', '83bc4ade-3a36-2495-e689-b7ae6e36db3d', '② 밀링', '정답 ②. 밀링작업 시 안전대책 • 밀링작업에서 생기는 칩은 가늘고 예리하며 부상을 입히기 쉬우므로 보 안경을 착용한다. • 칩은 기계를 정지시킨 후 브러시 등으로 제거한다. • 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. • 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않는다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '11111111-1111-1111-1111-111111111104', 'mcq', '금속성의 전기기계 • 기구나 구조물에 인체의 일부가 상시 접촉되어 있는 상태의 허용접촉전압으로 옳은 것은?', 2, 450)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31fbe368-799c-7581-2fdb-fae9247063d2', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '2.5[V] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc755ae2-f099-cc51-4f2e-62a60bc6277a', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '25[V] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28ee56cb-6b05-8331-5aee-db0d3fb2b08b', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '50[V] 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a52f8110-3fd8-7ecb-b4ea-1f7cc8d5ebab', 'a5d317d8-c7e8-ed32-de01-4f1d170e50b8', '제한 없음', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a5d317d8-c7e8-ed32-de01-4f1d170e50b8', 'bc755ae2-f099-cc51-4f2e-62a60bc6277a', '② 25[V] 이하', '정답 ②. 25[V] 이하', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('707f3239-2bd4-a96a-3523-8ab1f62bb443', '11111111-1111-1111-1111-111111111104', 'mcq', '감전사고 시 전선이나 개폐기 터미널 등의 금속분자가 고열 로 용융됨으로서 피부 속으로 녹아 들어가는 것은?', 2, 451)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93f6adb4-a206-5990-ae50-749ee621230b', '707f3239-2bd4-a96a-3523-8ab1f62bb443', '피부의 광성변화', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a276d33-96c2-1538-27f0-dd7b416c5f79', '707f3239-2bd4-a96a-3523-8ab1f62bb443', '전문', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d658265-1635-0095-1716-fc2f062d9794', '707f3239-2bd4-a96a-3523-8ab1f62bb443', '표피박탈', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6fbc1a2-248d-1360-0e02-0e5afbde7dc0', '707f3239-2bd4-a96a-3523-8ab1f62bb443', '전류반점', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('707f3239-2bd4-a96a-3523-8ab1f62bb443', '93f6adb4-a206-5990-ae50-749ee621230b', '① 피부의 광성변화', '정답 ①. 피부의 광성변화', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 산화성 액체 및 산화성 고체 에 해당하지 않는 것은?', 2, 452)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a209c34-a0ca-c5f6-34e0-874f18bc8cd9', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '염소산', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2be9882e-8969-e95b-b1ae-d6db849f5581', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과망간산', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cccfd54a-c700-8d69-0cf4-d6250709bdf7', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '과산화수소', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '45a57136-43ab-4f49-d0d1-6f83879cec2e', '피크린산', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45a57136-43ab-4f49-d0d1-6f83879cec2e', '3ad7c04a-2e94-4840-a221-2dfd1866ac9c', '④ 피크린산', '정답 ④. 피크린산（트리니트로페놀）은 니트로화합물로 폭발성 물질 및 유 기과산화물에 해당한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '11111111-1111-1111-1111-111111111104', 'mcq', '금속의 용접 - 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 옳지 않은 것은?', 2, 453)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc5e4bfa-9a58-b873-390f-07910fcfc221', '106208c0-3936-6afc-b014-8337d954d99a', '밸브의 개폐는 서서히 할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76611713-0522-45bc-0080-652970863b71', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 온도를 40[℃] 이하로 유지할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e1cfdeb-7218-6950-88cf-c98e31752764', '106208c0-3936-6afc-b014-8337d954d99a', '운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa310063-0cfa-6c1a-1dc6-b17f06a7cb37', '106208c0-3936-6afc-b014-8337d954d99a', '용기의 부식 • 마모 또는 변형상태를 점검한 후 사용할 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('106208c0-3936-6afc-b014-8337d954d99a', '9e1cfdeb-7218-6950-88cf-c98e31752764', '③ 운반할 때에는 환기를 위하여 캡을 씌우지 않을 것', '정답 ③. 금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 운반 하는 경우에는 캡을 씌워야 한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령』에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 454)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('977b965d-4b96-5507-4cbc-ca74296bca5c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '기온이 영상 28[℃] 이상인 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('179c38f8-0178-1755-1a9a-04ab7cadb59c', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '풍속이 초당 10[m] 이상인 경우', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6b9754d-7e01-c7da-3b86-1a0a52a481c4', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('354a500b-78a9-9ae2-af4a-9eaa85949704', '7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '강우량이 시간당 l[mm] 이상인 경우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f7effd9-8028-4ab6-6eb4-85b5a02cd580', '977b965d-4b96-5507-4cbc-ca74296bca5c', '① 기온이 영상 28[℃] 이상인 경우', '정답 ①. 철골직업 중지를 위한 기후조건에 기온과 관련한 기준은 없다. 철골작업 시 작업의 제한기준 구분 내용 강풍 풍속이 10[m/s] 이상인 경우 강우 강우량이 1[mm/h] 이상인 경우 강설 강설량이 l[cm/h] 이상인 경우', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 셔블로더의 운영방법으로 옳은 것은?', 2, 455)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5c485c5-0dc8-4444-0adc-16d0964d0b1c', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '점검 시 버킷은 가장 상위의 위치에 올려놓는다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('146a301a-4cde-5f09-48c4-616e1c4a5df8', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '시동 시에는 사이드 브레이크를 풀고서 시동을 건다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '경사면을 오를 때에는 전진으로 주행하고 내려올 때는', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41b458cd-8bfe-b036-988d-9696a653cfa4', '294ebab6-b9ac-5827-da5a-cfb6249fe5db', '운전자가 운전석에서 나올 때는 버킷을 올려 놓은 상태', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('294ebab6-b9ac-5827-da5a-cfb6249fe5db', 'f6ed70b0-0bcf-e77f-2d76-827b3e13151d', '③ 경사면을 오를 때에는 전진으로 주행하고 내려올 때는', '정답 ③. 로 이탈한다. KOI 셔블로더 운전 시 경사면을 오를 때에는 전진으로 주행하고. 내 려올 때에는 후진으로 주행한다. 1 아HAPTER 04 건설현장 안전시설 관리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 시스템비계의 구조에 관한 사항이다.（ ）안에 들어갈 내용으로 옳은 것은? 비계 밑단의 수직재와 받침철물은 밀착되도록 설치하고. 수직 재와 받침철물의 연결부의 겹침길이는 받침철물 전체길이의 （ ）이상이되도록할것', 2, 456)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6c37063-98b0-dbf8-ba87-c40d1fe93986', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '2분의 1', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1765d907-67b8-cdbc-b6f0-77190b0ab75e', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '3분의 1', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5786e8-5da6-f01e-c4a3-4f7ca5ee5527', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '4분의 1', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b592e9c6-f7cd-9d32-bf66-17c288323318', '6430e9a5-264d-2934-6dd2-84ecbd90ae44', '5분의 1', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6430e9a5-264d-2934-6dd2-84ecbd90ae44', '1765d907-67b8-cdbc-b6f0-77190b0ab75e', '② 3분의 1', '정답 ②. 시스템비계는 비계 밑단의 수직재와 받침철물은 밀착되도록 설 치하고, 수직재와 받침철물의 연결부의 겹침길이는 받침철물 전체길이의 & 이상이 되도록 하여야 한다. 1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '11111111-1111-1111-1111-111111111104', 'mcq', '차량계 하역운반기계의 안전조치사항 중 옳지 않은 것은?', 2, 457)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07d5c201-4079-d2bf-8ca5-b3fd7ed474be', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '최대제한속도가 시속 10[km]를 초과하는 차량계 건설', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e48696f-54e3-7ee3-a631-994360cd9dae', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기계의 운전자가 운전위치를 이탈하는 경', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18167fa1-0dfd-a019-6f17-3f8fd2bdd507', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 하역운반기계 등에 화물을 적재하는 경우 하중', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9e66d12-fe47-4c5a-418e-0ce0078c1d5a', '6552c7b1-1584-b5bf-2abc-5a78835aac17', '차량계 건설기 계를 사용하여 작업을 하는 경우 승차석', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6552c7b1-1584-b5bf-2abc-5a78835aac17', '1e48696f-54e3-7ee3-a631-994360cd9dae', '② 차량계 건설기계의 운전자가 운전위치를 이탈하는 경', '정답 ②. 이 아닌 위치에 근로자를 탑승시키지 말 것 a 치량계 하역운반기계 등. 차량계 건설기계의 운전자가 운전위치 이탈 시에는 포크. 버킷, 디퍼 등의 장치를 가장 낮은 위치 또는 지면에 내 려 두어야 한다', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '11111111-1111-1111-1111-111111111104', 'mcq', '건물 외부에 낙하물방지망을 설치할 경우 수평면과의 가장 적절한 각도는?', 2, 458)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5334434f-9a0a-a9b8-acd5-77d5eebaa5e7', '0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '5-10°', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5957d77-bc10-4066-4cb0-40218b900b8f', '0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '10〜15°', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52e15661-691b-67dc-1def-687302f1db2b', '0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '15〜25。', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50f2f1e6-eee6-e3aa-0cca-e17c8d82a835', '0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '20〜30。', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0f4ebe99-17c6-0f80-f739-fe81b5a0de36', '50f2f1e6-eee6-e3aa-0cca-e17c8d82a835', '④ 20〜30。', '정답 ④. 낙하물방지망 설치기준 • 높이 10[m] 이내마다 설치하고. 내민 길이는 벽면으로부터 2[m] 이상으 로 하여야 한다. • 수평면과의 각도는 20" 이상 30° 이하를 유지하여야 한다. E E1', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자 정기교육 내용에 해당하지 않는것은?', 2, 459)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('404e1a4a-79c9-b264-a206-0566105d73d3', '88c99b75-2663-2f2a-a55a-d72232ab5729', '산업안전 및 산업재해 예방에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d65c6dd7-713b-c80d-3582-9b17c6bac9d9', '88c99b75-2663-2f2a-a55a-d72232ab5729', '안전보건교육 능력 배양에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('427ea1f5-c018-be71-458f-02d3a1f47d70', '88c99b75-2663-2f2a-a55a-d72232ab5729', '유해 • 위험 작업환경 관리에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c6e3912-cb17-d790-7b42-d03805600208', '88c99b75-2663-2f2a-a55a-d72232ab5729', '직무스트레스 예방 및 관리에 관한 사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('88c99b75-2663-2f2a-a55a-d72232ab5729', 'd65c6dd7-713b-c80d-3582-9b17c6bac9d9', '② 안전보건교육 능력 배양에 관한 사항', '정답 ②. 안전보건교육 능력 배양에 관한 사항', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인(이동식 크레인 제외), 리프트(이삿짐운반용 리프트 제외) 및 곤돌라는 사업장에 설치가 끝난 날부터 ( (9 ) 이 내에 최초의 안전검사를 실시하되, 그 이후부터 ( © )마다 실시해야 한다. ( ) 안에 알맞은 것은?(단, 건설현장에서 사용하는 것은 제외한다.)', 2, 460)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('65ebd161-4a6d-e892-fd6b-dd9ee3c1b7ae', '13515c62-fae1-b264-360d-6b74f3e0924a', '<3： 2년, ©： 3년', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©： 2년', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f32049e-6eb0-5057-1bca-11d4e0be5044', '13515c62-fae1-b264-360d-6b74f3e0924a', '19： 2년, ©: 2년', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fbdd7c4-86a8-1fa6-0b5a-a468ecc28733', '13515c62-fae1-b264-360d-6b74f3e0924a', '@： 3년, ©: 3년', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('13515c62-fae1-b264-360d-6b74f3e0924a', 'ca78fdd9-e7f1-b470-2bcc-5459cd2d232e', '② @： 3년, ©： 2년', '정답 ②. @： 3년, ©： 2년', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('979dd67c-562a-0dc9-9080-f8fd51d84666', '11111111-1111-1111-1111-111111111104', 'mcq', '재해손실비를 다음과 같이 산정한 것은 어느 방식인가? 총 재해코스트 = 보험코스트 + 비보험코스트', 2, 461)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af6935d0-0fa2-38bd-0705-f06cd9041d45', '979dd67c-562a-0dc9-9080-f8fd51d84666', '하인리히 방식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0bc38265-abd1-ad9f-63d2-34c776e9da6f', '979dd67c-562a-0dc9-9080-f8fd51d84666', '버드의 방식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('92adabbd-845b-3815-f9e1-aa0350906f4a', '979dd67c-562a-0dc9-9080-f8fd51d84666', '시몬즈 방식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c8c10ae-c230-75d9-d938-dd2eff2e745e', '979dd67c-562a-0dc9-9080-f8fd51d84666', '콤패스 방식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('979dd67c-562a-0dc9-9080-f8fd51d84666', '92adabbd-845b-3815-f9e1-aa0350906f4a', '③ 시몬즈 방식', '정답 ③. 시몬즈 방식', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 462)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dfebf709-e0b2-aaca-48c9-7512bcebd4a2', '81736865-fcc6-c1e0-b533-1ea39f454515', '생리적욕구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('577c446d-2128-ba35-f96d-49cb99b36f86', '81736865-fcc6-c1e0-b533-1ea39f454515', '사회적욕구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91757fca-40be-8db7-8c6e-5f4ecc430cac', '81736865-fcc6-c1e0-b533-1ea39f454515', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5608d316-9565-9c5a-7962-b5336efadd16', '81736865-fcc6-c1e0-b533-1ea39f454515', '안전의 욕구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('81736865-fcc6-c1e0-b533-1ea39f454515', '91757fca-40be-8db7-8c6e-5f4ecc430cac', '③ 자아실현의 욕구', '정답 ③. 자아실현의 욕구（제5단계）는 잠재적인 능력을 실현하고자 하는 욕구（성취욕구）이다. 1 아UPTER 04 인간의 행동과학 01', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '11111111-1111-1111-1111-111111111104', 'mcq', '상시근로자 수가 300명 이상인 사업에 대해 안전보건관리 규정을 작성하여야 하는 것을 모두 고르면? @ 소프트웨어 개발업 © 금융 및 보험업 ©부동산업 ⑨ 인쇄. 출판업 © 사회복지 서비스업', 2, 463)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('398db073-6a8c-0c24-f2b7-66a09dc186c0', 'a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '(3, ©. @', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e79bd7d-e679-7df8-8d23-043ac76073e9', 'a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '(9, ©, @', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8dfba297-165a-af42-edde-4e85396f072a', 'a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '(3, ©, ©, @', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e581d53-17ea-5a8b-a7fb-88a09f1a3730', 'a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '6), ©, ©, ®, @', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a85a2c0a-b0d1-f2bb-406c-a3a548dc7d7d', '8e79bd7d-e679-7df8-8d23-043ac76073e9', '② (9, ©, @', '정답 ②. 안전보건관리규정 작성대상 사업의 종류 상시근로자수 농업. 어업. 소프트웨어 개발 및 공급업. 컴퓨터 프로 그래밍. 시스템 통합 및 관리업. 영상•오디오물 제 공 서비스업. 정보서비스업. 금융 및 보험업. 임대업 300명이상 （부동산 제외）. 전문. 과학 및 기술 서비스업（연구개 발업 제외）. 사업지원 서비스업. 사회복지 서비스업 위의 사업을 제외한 사업 100명이상', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 방진마스크의 구비조건으로 적절하지 않은 것은?', 2, 464)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1736d531-7352-0b45-330b-90a97b82751c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡기밸브는 미약한 호흡에 대하여 확실하고 예민하게', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6a1b848-f8d3-c633-ca37-4630f72c720c', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '쉽게 착용되어야 하고 착용하였을 때 안면부가 안면에', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc6c52b2-c043-d640-d9da-477e7db34333', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '여과재는 여과성능이 우수하고 인체에 장해를 주지 않', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afeddd4e-aa27-fd64-ee8e-098f33a98726', 'c9fe4f35-0448-89ac-a2c7-a836856d6ec1', '흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c9fe4f35-0448-89ac-a2c7-a836856d6ec1', 'afeddd4e-aa27-fd64-ee8e-098f33a98726', '④ 흡. 배기밸브는 외부의 힘에 의하여 손상되지 않도록', '정답 ④. 흡 •배기저항이 높을것 IBM 방진마스크 선정기준（구비조건） • 분집포집효율（여과효율）이 좋을 것 • 흡기. 배기저항이 낮을 것 • 사용적이적을 것 • 중량이 가벼울 것 • 시야가 넓을 것 • 안면밀착성이 좋을것 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '11111111-1111-1111-1111-111111111104', 'mcq', '어떤 결함수를 분석하여 Minimal Cut Set을 구한 결과 다음 과 같았다. 각 기본사상의 발생확률을 q„/=1, 2, 3이라 할 때 정상사상의 발생확률함수로 옳은 것은? 서 = [1. 2], 스 = [1, 3], 息 = [2, 3]', 2, 465)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5ab8619-e5e1-fa6f-17de-669c74b089d7', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Q1Q2+Q1Q2—q2q3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d0c0b15-8726-be23-f368-248a38d8c29d', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '切切十91<53-9293', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fca3a452-f092-d975-4027-8dbd011cc3c3', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'qiqj+qiQa+qzQs-qi^aQs', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19358aa7-5fe9-c8cd-50c4-08790ec9384f', '5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', 'Chqj+qKzH乃sq；!—2(?乃293', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a0c2b54-f55d-fed1-8fb7-9d3d06ef8c4d', '19358aa7-5fe9-c8cd-50c4-08790ec9384f', '④ Chqj+qKzH乃sq；!—2(?乃293', '정답 ④. Chqj+qKzH乃sq；!—2(?乃293', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH Lifting Guideline에서 권장무게한계(RWL)산출에 사용되는 계수가 아닌 것은?', 2, 466)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a138d45c-b9b0-3c31-87fb-8049ab0504cc', '1a733659-4428-afe3-ab60-ff2393bd9ace', '휴식계수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2999822f-3286-e2a3-7cdd-026cceb593da', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수평계수', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d9c619a-5a4b-002e-7632-1f65c7ddeac3', '1a733659-4428-afe3-ab60-ff2393bd9ace', '수직계수', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d2a90e4-cbc2-c3df-8a19-b34db793f6a7', '1a733659-4428-afe3-ab60-ff2393bd9ace', '비대칭계수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a733659-4428-afe3-ab60-ff2393bd9ace', 'a138d45c-b9b0-3c31-87fb-8049ab0504cc', '① 휴식계수', '정답 ①. 휴식계수', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업주가 진동작업을 하는 근로자에 게 충분히 알려야 할 사항과 거리가 가장 먼 것은?', 2, 467)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5079907f-529f-a27b-ff76-4aed03856ee8', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '인체에 미치는 영향과 증상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0ac9051-3532-0517-fb6c-9d19248f7a25', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 기계 •기구관리방법', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62bc30fa-3438-a63a-31bb-2a685996c698', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '보호구 선정과 착용방법', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '진동 재해 시 비상연락체계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('17de1f5a-d6ec-2ad5-91c9-361e23e16b67', '5cd9033d-4aa2-42e8-1337-d8f8cb3a0b9c', '④ 진동 재해 시 비상연락체계', '정답 ④. 9 진동작업에 종사하는 근로자에게 알려야 할 사항 • 인체에 미치는 영향과 증상 • 보호구의 선정과 착용방법 • 진동 기계 • 기구 관리 및 사용 방법 • 진동 장해 예방방법 바"I', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 설비의 진단방법에 있어 비파괴시험이나 검사에 해 당하지 않는 것은?', 2, 468)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b35f364-aea7-623a-df02-13058c5ce98b', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '피로시험', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd81098b-2604-6de7-fb57-ba407349e324', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '음향탐상검사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc07864d-d33f-c689-7141-ed75362eae82', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '방사선투과시험', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c3aa4df-5852-2bc4-09f9-a787d887f629', '1ecf5e78-6557-69ba-186b-f5d917e5d88b', '초음파탐상검사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1ecf5e78-6557-69ba-186b-f5d917e5d88b', '9b35f364-aea7-623a-df02-13058c5ce98b', '① 피로시험', '정답 ①. 피로시험은 파괴시험의 일종이다. 비파괴검사의 종류 방사선투과검사(RT). 초음파탐상검사(UT). 자분 탐상검사(MT). 침투탐 상검사(PT). 음향탐상검사(AET). 와류탐상검사(ECT) 등', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('08ad7d51-ba12-1434-ba77-077dfc5a56d4', '11111111-1111-1111-1111-111111111104', 'mcq', '그림과 같이 50[kN]의 중량물을 와이어로프를 이용하여 상 부에 60。의 각도가 되도록 들어올릴 때, 로프 하나에 걸리 는 하중（?）은 약 몇 [kN]인가?', 2, 469)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('186fda2f-5ba6-2163-059d-cc933e1eed8f', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '16.8', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b71d8ef1-e56a-3800-eff3-19dd4aae24cf', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '24.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5218c117-4aeb-cdfb-93d8-dba46a0d6a59', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '28.9', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e8443025-3884-86ca-e59f-cb4e6a76bd80', '08ad7d51-ba12-1434-ba77-077dfc5a56d4', '37.9', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('08ad7d51-ba12-1434-ba77-077dfc5a56d4', '5218c117-4aeb-cdfb-93d8-dba46a0d6a59', '③ 28.9', '정답 ③. 28.9', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 선반의 안전장치 및 작업 시 주의사항으로 잘못된 것은?', 2, 470)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7cd5a8e-c30d-003c-7f2e-4db18e0ce50a', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 바이트는 되도록 짧게 물린다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('672c4609-a8e9-0b0d-fab4-f50eb638bc44', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc691de-7b6b-fa7f-8d76-ad5e93a887d8', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '선반의 베드 위에는 공구를 올려놓지 않는다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea70e10b-b921-0ff4-1d99-46eaa2282a45', '8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '칩 브레이커는 바이트에 직접 설치한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8cb8cd5a-30c1-f36d-2c1c-731567bd16b8', '672c4609-a8e9-0b0d-fab4-f50eb638bc44', '② 방진구는 공작물의 길이가 지름의 5배 이상일 때 사용', '정답 ②. 선반작업 시 바이트는 끝을 짧게 장치하고 일감의 길이가 직경의 12배 이상일 때 방진구를 사용한다. 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bfedeaf7-2846-73e0-725c-2728fe195f4f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 타워크레인을 와이어로프로 지 지하는 경우, 와이어로프의 설치각도는 수평면에서 몇 도 이내로 해야 하는가?', 2, 471)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('564ad7ca-ce56-1804-37ca-17e76672f1dc', 'bfedeaf7-2846-73e0-725c-2728fe195f4f', '30。', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('186603db-0c4e-fd6c-2119-89df42ae4cdf', 'bfedeaf7-2846-73e0-725c-2728fe195f4f', '45°', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c676bd5-ba55-dcd0-93d4-3ec8e2adf816', 'bfedeaf7-2846-73e0-725c-2728fe195f4f', '60°', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3630df5e-072f-f549-3b93-533a390eecb2', 'bfedeaf7-2846-73e0-725c-2728fe195f4f', '75。', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bfedeaf7-2846-73e0-725c-2728fe195f4f', '7c676bd5-ba55-dcd0-93d4-3ec8e2adf816', '③ 60°', '정답 ③. 타워크레인을 와이어로프로 지지하는 경우 와이어로프 설치각도 는 수평면에서 60” 이내로 하되. 지지점은 4개소 이상으로 하고. 같은 각도 로 설치하여야 한다. E S1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 용해아세틸렌의 가스집합 용접장치 의 배관 및 부속기구에는 구리나 구리 함유량이 몇 퍼센트 이상인 합금을 사용할 수 없는가?', 2, 472)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e867cca3-5f40-2aed-2830-9871578d1b4f', 'aa0b1aab-7513-290e-b142-924697a553fc', '40[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff16dd19-e78e-8cbc-5819-39497d0a9aa7', 'aa0b1aab-7513-290e-b142-924697a553fc', '50[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6805ba2-2195-0c0b-a90e-edf6b6a20c32', 'aa0b1aab-7513-290e-b142-924697a553fc', '60[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9986909-da27-a058-ac45-e8cc623fe3dc', 'aa0b1aab-7513-290e-b142-924697a553fc', '70[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aa0b1aab-7513-290e-b142-924697a553fc', 'e9986909-da27-a058-ac45-e8cc623fe3dc', '④ 70[%]', '정답 ④. 용해아세틸렌의 가스집합 용접장치의 배관 및 부속기구는 구리 나 구리 함유량이 70[%] 이상인 합금을 사용해서는 아니 된다. - 사용 시 폭발성 물질（아세틸라이드）이 생성된다. t 8j', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '11111111-1111-1111-1111-111111111104', 'mcq', '. 「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）', 2, 473)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5bfe223-1eaa-9951-5c4f-5ef9cccd6750', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '0.9[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b93f2b12-9cf3-9c67-16b0-7618838a5652', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.2[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab093c41-43a2-d807-5d1d-265bb6654331', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.5[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81ca72eb-e31a-1910-777d-fd10208f4d2f', '3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '1.8[m]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3cc0a75f-0475-7a82-5f2c-63cd90bd16e5', '81ca72eb-e31a-1910-777d-fd10208f4d2f', '④ 1.8[m]', '정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. E*IE1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기기보호등급(EPL)과 그 지역을 바르게 짝지은 것 은?', 2, 474)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a3497644-fd72-6bba-aa72-e6eaa723ef95', 'e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', 'ZONE 2 — Da', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73ca4568-8165-2347-db52-1266dc0b8b76', 'e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', 'ZONE 20 — Gc', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed80b41a-d357-6d4a-f3c6-34b13981f994', 'e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', 'ZONE 21 - Ga', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2d76ea0-8ff0-a89a-372c-980318d60b6e', 'e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', 'ZONE 22 - De', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e2d11a5f-c6b7-a5a1-7c23-13d36e8512fb', 'a2d76ea0-8ff0-a89a-372c-980318d60b6e', '④ ZONE 22 - De', '정답 ④. ZONE 22 - De', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항값을 저하시키는 방법 중 거리가 먼 것은?', 2, 475)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('58de22a7-eca0-624c-94af-c195b2e26218', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉에 도전성이 좋은 금속을 도금한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('313e2f27-0e7a-9e3e-4f85-1a2990635114', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 병렬로 연결한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0fc0bce-9731-14bf-0668-e5006e5cfc3c', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '도전성 물질을 접지극 주변의 토양에 주입한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fe8e574-0661-ebd8-49ad-0e3b54cd1c44', '54e6b0f5-3867-aacb-dd51-3868e4c5e933', '접지봉을 땅속 깊이 매설한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('54e6b0f5-3867-aacb-dd51-3868e4c5e933', '58de22a7-eca0-624c-94af-c195b2e26218', '① 접지봉에 도전성이 좋은 금속을 도금한다.', '정답 ①. 접지저항의 물리적 저감법 • 접지극의 병렬 접속 • 접지극의 치수 확대 • 접지봉 심타법 적용 • 매설지선 및 평판접지극 사용 • 메시(Mesh)공법 적용 • 다중접지 시트 사용 • 보링 공법 적용 ※ 도전성 물질을 접지극 주변의 토양에 주입하는 것은 접지저항의 화학적 저감법에 해당한다. @@1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c32667d3-aea5-1f6a-c372-4e7feb222e43', '11111111-1111-1111-1111-111111111104', 'mcq', '절연물의 절연계급을 최고허용온도가 낮은 온도에서 높은 온도 순으로 배치한 것은?', 2, 476)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ba5ed18-4804-592e-3495-2e5f0ee5c96a', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'Y종 — A종으 E종 — B종', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70976341-7331-b472-7c92-1242247a9775', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'A종 一 B종 一 E종—• Y종', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('030bd85a-31e0-97db-eba7-0dabe67f458c', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'Y종 一 E종—♦ B종으 A종', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2fed380e-3344-dde3-588f-9a7783ceacf5', 'c32667d3-aea5-1f6a-c372-4e7feb222e43', 'B종 一 Y종一♦ A종一♦ E종', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c32667d3-aea5-1f6a-c372-4e7feb222e43', '2ba5ed18-4804-592e-3495-2e5f0ee5c96a', '① Y종 — A종으 E종 — B종', '정답 ①. Y종 — A종으 E종 — B종', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '11111111-1111-1111-1111-111111111104', 'mcq', '펌프의 사용 시 공동현상(Cavitation)을 방지하고자 할 때의 조치사항으로 틀린 것은?', 2, 477)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ae0b97d-49a5-26e1-62a3-9c2ebdb441df', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 회전수를 높인다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f9f1479-e6c7-e14b-96f5-8422b620c77d', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '흡입비 속도를 작게 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('30210f3f-b992-c23e-9808-d578ea831bd7', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 흡입관의 두(Head) 손실을 줄인다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d6887d9-e4a8-69bb-f807-d5e3c903a0d0', '4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4ed2e05f-91aa-bc10-3aa9-871bd5faf7a9', '1ae0b97d-49a5-26e1-62a3-9c2ebdb441df', '① 펌프의 회전수를 높인다.', '정답 ①. 공동현상은 유속이 빠를 경우 발생할 수 있으므로 공동현상을 예 방하려면 펌프의 회전수를 낮춰야 한다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4e236c54-0651-addf-9d61-db906f86e746', '11111111-1111-1111-1111-111111111104', 'mcq', '추락재해에 대한 예방차원에서 고소작업의 감소를 위한 근 본적인 대책으로 옳은 것은?', 2, 478)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('248eb8be-adf4-be48-e8b8-f73a64653c55', '4e236c54-0651-addf-9d61-db906f86e746', '방망 설치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b66cbf97-7579-2cbe-f07c-8ada0668f8fa', '4e236c54-0651-addf-9d61-db906f86e746', '지붕트러스의 일체화 또는 지상에서 조립', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fc69cea-eee1-8d35-0401-319f11d23a6f', '4e236c54-0651-addf-9d61-db906f86e746', '안전대 사용', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89a6ae06-a807-d090-555a-b4899db33c8d', '4e236c54-0651-addf-9d61-db906f86e746', '비계등에 의한 작업대 설치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4e236c54-0651-addf-9d61-db906f86e746', 'b66cbf97-7579-2cbe-f07c-8ada0668f8fa', '② 지붕트러스의 일체화 또는 지상에서 조립', '정답 ②. 지붕트러스의 일체화 또는 지상에서 조립하는 경우 고소작업을 최소화할 수 있다. @1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('227813e1-3a9a-5564-54e0-84a91d15fb7c', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 벽이음의 수직방향 조립간격은?', 2, 479)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('235daa10-88bb-e43a-a030-9c8994c099b9', '227813e1-3a9a-5564-54e0-84a91d15fb7c', '2[m] 이내마다', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e99e307-6d7f-b3a4-112c-9e85c92fc5fd', '227813e1-3a9a-5564-54e0-84a91d15fb7c', '5[m] 이내마다', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('563213da-20cb-4b19-4900-6c4e35a11002', '227813e1-3a9a-5564-54e0-84a91d15fb7c', '6[m] 이내마다', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dccb6fcb-4bd5-8966-eff7-5cb14806afed', '227813e1-3a9a-5564-54e0-84a91d15fb7c', '8[m] 이내마다', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('227813e1-3a9a-5564-54e0-84a91d15fb7c', '563213da-20cb-4b19-4900-6c4e35a11002', '③ 6[m] 이내마다', '정답 ③. 강관틀비계에는 수직방향으로 6[m], 수평방향으로 8[m] 이내마 다 벽이음을 하여야 한다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5a5cbb42-390e-40e0-c59a-560e31600c0b', '11111111-1111-1111-1111-111111111104', 'mcq', '추락방호망의 그물코 크기의 기준으로 옳은 것은?', 2, 480)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad3fd5cf-11a7-8868-3b16-0683398c6219', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '5[cm] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '10[cm] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d919531-d475-3b17-d6c6-1464391ca91d', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '20[cm] 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba906ced-5f0e-3ab3-f2b8-b4f2a3479447', '5a5cbb42-390e-40e0-c59a-560e31600c0b', '3O[cm] 이하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5a5cbb42-390e-40e0-c59a-560e31600c0b', 'dd3f9d91-2ce7-b26e-a6a3-ab792feec7fc', '② 10[cm] 이하', '정답 ②. 추락방호망의 그물코는 사각 또는 마름모로서 크기는 10[cm] 이 하이어야 한다. 1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
