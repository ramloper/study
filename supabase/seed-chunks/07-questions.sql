-- chunk 7
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('346313ba-39b9-5d02-d280-db2ee994d04e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 협의체 구성 및 운영에 관한 사항으 로( )에알맞은내용은? 도급인은 관계수급인 근로자가 도급인의 사업장에서 작업을 하는 경우 도급인과 수급인을 구성원으로 하는 안전 및 보건 에 관한 협의체를 구성 및 운영하여야 한다. 이 협의체는 ( )정기적으로 회의를 개최하고 그 결과를 기록 • 보존 해야한다.', 2, 241)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d2367338-d785-2bea-0fd6-252094ff5c28', '346313ba-39b9-5d02-d280-db2ee994d04e', '매월 1회 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df10de18-e58e-386b-51f9-211aafc40f1f', '346313ba-39b9-5d02-d280-db2ee994d04e', '2개월마다 1회', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c190bee5-6ec5-e6a2-a176-6a278f7c6f0d', '346313ba-39b9-5d02-d280-db2ee994d04e', '3개월마다 1회', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ded23f63-ab53-aff8-7ce0-b6d6e1893ed9', '346313ba-39b9-5d02-d280-db2ee994d04e', '6개월마다 1회', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('346313ba-39b9-5d02-d280-db2ee994d04e', 'd2367338-d785-2bea-0fd6-252094ff5c28', '① 매월 1회 이상', '정답 ①. 에 관한 협의쳐를 구성 및 운영하여야 한다. 이 협의체는 |( ) 정기적으로 회의를 개최하고 그 결과를 기록ㆍ보존 매월 1회 이상 2개월마다 1회 협의체는 매월 1회 이상 정기적으로 회의를 개최하고 그 결과를 기록 ㆍ보존하여야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보호구 안전인증대상 방독마스크의 유기화합물용 정화통 외부 측면 표시색으로 옳은 것은?', 2, 242)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fcd647cb-c37d-6970-3a3a-e599fd216730', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '갈색', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d9269c5-99f1-ae50-bd76-c15f9f5aa29e', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '녹색', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7baa671-26a2-108b-4524-80c704e36878', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '회색', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69503672-9e94-c9b6-d629-943059f23dbd', 'a88fc512-3186-577e-6cb0-5a30b6e8e628', '노랑색', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a88fc512-3186-577e-6cb0-5a30b6e8e628', 'fcd647cb-c37d-6970-3a3a-e599fd216730', '① 갈색', '정답 ①. 정화통 외부 측면의 표시색 종류 표시색 유기화합물용 정화통 갈색 할로겐용 정화통 황화수소용 정화통 회색 시안화수소용 정화통 아황산용 정화통 노란색 암모니아용 정화통 녹색', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '11111111-1111-1111-1111-111111111104', 'mcq', '재해원인 분석기법의 하나인 특성요인도의 작성 방법에 대 한 설명으로 틀린 것은?', 2, 243)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b8936dd-997d-cb9a-e050-affd88d15568', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '큰뼈는 특성이 일어나는 요인이라고 생각되는 것을 크', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('716dc2ae-b409-86a0-4ba2-43423da325ad', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b629e800-7d63-1b1f-48f4-304f0ada83ca', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '특성의 결정은 무엇에 대한 특성요인도를 작성할 것인', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6021e41-ea99-fb91-b770-b7c20c9a68d4', 'adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '중뼈는 특성이 일어나는 큰뼈의 요인마다 다시 미세하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('adf3850f-f7c0-bb26-4419-5a5a06e19ca8', '716dc2ae-b409-86a0-4ba2-43423da325ad', '② 등뼈는 원칙적으로 우측에서 좌측으로 향하여 가는 화', '정답 ②. 게 원인을 결정하여 기 입한다. E3 특성요인도 특성과 요인관계를 두ff 루 하여 어골상으로 세분화한 분석법으로 원인과 결과를 연계하여 상호관계를 파악한다. 오른쪽 끝의 박스 안에 앞에서 정 한 특성을 기입하고 왼쪽에서 오른쪽으로 굵은 화살표를 표시한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b145da30-906e-11fc-cd5e-bfcc34f1b506', '11111111-1111-1111-1111-111111111104', 'mcq', '정보를 전송하기 위해 청각적 표시장치보다 시각적 표시장 치를 사용하는 것이 더 효과적인 경우는?', 2, 244)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39a9732e-42d6-43f5-4456-9e47493ea7d7', 'b145da30-906e-11fc-cd5e-bfcc34f1b506', '정보의 내용이 간단한 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e822447-7f3a-3b79-55db-7279b5fa73ce', 'b145da30-906e-11fc-cd5e-bfcc34f1b506', '정보가 후에 재참조되는 경우', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aed1ee59-5ec2-40b1-3270-68e84341be00', 'b145da30-906e-11fc-cd5e-bfcc34f1b506', '정보가즉각적인 행동을 요구하는 경우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f222968-6ddf-6305-54b3-2d25bd867b80', 'b145da30-906e-11fc-cd5e-bfcc34f1b506', '정보의 내용이 시간적인 사건을 다루는 경우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b145da30-906e-11fc-cd5e-bfcc34f1b506', '2e822447-7f3a-3b79-55db-7279b5fa73ce', '② 정보가 후에 재참조되는 경우', '정답 ②. 는 시각적 표시장치보다 청각적 표시장치가 더 유리한 경우이다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', '11111111-1111-1111-1111-111111111104', 'mcq', '감각저장으로부터 정보를 작업기억으로 전달하기 위한 코 드화 분류에 해당되지 않는 것은?', 2, 245)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd5a6257-febe-7388-2fb8-30f67d413d41', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '시각코드', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '촉각코드', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3764b7f7-bda6-3f6e-1508-c0c0ec8c5726', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '음성코드', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd917ab6-bf72-34aa-3685-fe0257f13b4a', 'e3be2f86-9648-b6a9-3449-7a45c8af4d95', '의미코드', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e3be2f86-9648-b6a9-3449-7a45c8af4d95', 'ca4d23ab-a4e1-b85d-f233-8d19a94d6d62', '② 촉각코드', '정답 ②. 짜 일반적으로 작업기억의 정보는 시각(Visual), •음성(Phonetic). 의미(Semantic) 코드로 저장된다. 시각 및 음성 코드는 자극의 시각적 또 는 청각적인 표현이며. 이 각각은 반대 유형의 자극에 의하거나 장기기억에 서 내부적으로 발생할 수 있다. 의미코드는 자극에 의해 발생되는 상이나 음 이 아니라 자극 의미의 추상적인 표현으로서 장기기억에서 중요한 요소이다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05312944-f17b-fa5b-c06b-e6c630dcadc1', '11111111-1111-1111-1111-111111111104', 'mcq', '욕조곡선에서의 고장 형태에서 일정한 형태의 고장률이 나 타나는 구간은?', 2, 246)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91f0b6d9-788d-b851-0a14-cff5b9d49a59', '05312944-f17b-fa5b-c06b-e6c630dcadc1', '초기고장 구간', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51f28a0f-eb30-89e9-47c8-7238486d2a29', '05312944-f17b-fa5b-c06b-e6c630dcadc1', '마모고장 구간', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4194c9a1-d800-ba59-af1f-75621bf104ea', '05312944-f17b-fa5b-c06b-e6c630dcadc1', '피로고장 구간', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c9789fc-ab40-a806-57e0-75b8a08945d2', '05312944-f17b-fa5b-c06b-e6c630dcadc1', '우발고장 구간', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05312944-f17b-fa5b-c06b-e6c630dcadc1', '5c9789fc-ab40-a806-57e0-75b8a08945d2', '④ 우발고장 구간', '정답 ④. 고장률의 유형(욕조곡선) 고 장 률 거 t) 내용수명 DFR CFR IFR 초기고장 우발고장 마모고장 • 초기고장(감소형): 제조가 불량하거나 생산과정에서 품질관리가 안 되어 서생기는 고장 • 우발고장(일정형): 실제 사용하는 상태에서 발생하는 고장으로 예측할 수 없는 랜덤의 간격으로 생기는 고장 • 마모고장(증가형): 설비 또는 장치가 수명을 다하여 생기는 고장 WM 아4APTER 02 위험성 파악 - 결정', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1d7298f7-996d-8a25-230f-828e95de0c98', '11111111-1111-1111-1111-111111111104', 'mcq', '인간공학 연구방법 중 실제의 제품이나 시스템이 추구하는 특성 및 수준이 달성되는지를 비교하고 분석하는 연구는?', 2, 247)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e531028-96a5-f412-c0d3-5846113bda9a', '1d7298f7-996d-8a25-230f-828e95de0c98', '조사연구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c7a2162-fc12-e314-2908-34a2846c99a8', '1d7298f7-996d-8a25-230f-828e95de0c98', '실험연구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cf2ca0b-4130-6c13-5c59-03bb879369f1', '1d7298f7-996d-8a25-230f-828e95de0c98', '분석연구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6f1e629-4748-15de-c5d4-498807c71629', '1d7298f7-996d-8a25-230f-828e95de0c98', '평가연구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1d7298f7-996d-8a25-230f-828e95de0c98', 'c6f1e629-4748-15de-c5d4-498807c71629', '④ 평가연구', '정답 ④. 평가연구 시스템 성능에 대한 인간一기계시스템이나 제품 등이 의도한 성능. 목표 수준에 도달하였는지 분석하는 연구방법이다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 프레스 등 금형을 부착 • 해체 또는 조정하는 작업을 할 때, 슬라이드가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위해 사용 해야 하는 것은?(단, 해당 작업에 종사하는 근로자의 신체 가 위험한계 내에 있는 경우이다.)', 2, 248)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('721ec1c8-38d3-e79f-da7a-7a2323ba8fa5', '18a79c5a-b660-6995-92a8-b35a81882906', '방진구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ff29067-51df-ddc1-9977-0705383cfb56', '18a79c5a-b660-6995-92a8-b35a81882906', '안전블록', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e9fe5ec4-bc6e-1354-ebfa-dea891e7ee77', '18a79c5a-b660-6995-92a8-b35a81882906', '시건장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ab5e6dc-c556-c3d0-da62-2525dc6abe90', '18a79c5a-b660-6995-92a8-b35a81882906', '날접촉예방장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18a79c5a-b660-6995-92a8-b35a81882906', '8ff29067-51df-ddc1-9977-0705383cfb56', '② 안전블록', '정답 ②. 안전블록', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 드릴작업의 안전사항으로 틀린 것은?', 2, 249)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e73b3879-e370-4ae0-d202-a806660e6617', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '옷소매가 길거나 찢어진 옷은 입지 않는다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1ed676b-6f15-5f5b-6c62-84f56366d25e', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '회전하는 드릴에 걸레 등을 가까이 하지 않는다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fda8c0f-2df8-a4f3-f831-6b7533ac5186', '77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '스핀들에서 드릴을 뽑아낼 때에는 드릴 아래에 손을 내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('77ecf93a-9279-dc27-8f87-d14bb0c2b1c9', '6fdb76fd-64d2-9b45-ea73-b80fc7b760e5', '② 작고, 길이가 긴 물건은 손으로 잡고 뚫는다.', '정답 ②. 밀지 않는다. K9 드릴링 머신의 안전작업수칙 • 일감은 견고하게 고정시켜야 하며 손으로 쥐고 구멍을 뚫는 것은 위험하다. • 작업시작 전 척 렌치(Chuck Wrench)를 반드시 뺀다. • 장갑을 끼고 작업을 하지 않아야 하고. 회전하는 드릴에 걸레 등을 가까 이 하지 않는다. • 구멍을 뚫을 때 관통된 것을 획인하기 위하여 손을 집어넣지 않아야 한다. • 칩은 회전을 중지시킨 후 브러시로 제거하여야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16ce7709-481c-200a-6d20-df790948544b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 양중기의 과부하방지장치에서 요구 하는 일반적인 성능기준으로 가장 적절하지 않은 것은?', 2, 250)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('255b34d7-426d-bc5c-5ce9-fa3f706dae03', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치 작동 시 경보음과 경보램프가 작동되', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a92382c-bd21-c7d8-7f4d-c09e124906d1', '16ce7709-481c-200a-6d20-df790948544b', '외함의 전선 접촉부분은 고무 등으로 밀폐되어 물과 먼', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6d53d-1272-166a-4dab-9d7da8a5c59e', '16ce7709-481c-200a-6d20-df790948544b', '과부하방지장치와 타 방호장치는 기능에 서로 장애를', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '16ce7709-481c-200a-6d20-df790948544b', '방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16ce7709-481c-200a-6d20-df790948544b', '9d4d3df6-dea2-19ae-6c69-bde57c3bfbbc', '④ 방호장치의 기능을 정지 및 제거할 때 양중기의 기능이', '정답 ④. 동시에 원활하게 작동하는 구조이며 정지해서는 안 된다. 양중기 과부하방지장치의 일반적인 성능기준 방호장치의 기능을 제거 또는 정지할 때 양중기의 기능도 동시에 정지할 수 있는 구조이어야 한다. 뽀I', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bd3651f3-0cb9-c159-b87d-763bf97ccde9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러 수위가 이상현상으로 인해 위험수위로 변하면 작업자가 쉽게 감지할 수 있도록 경보 등, 경보음을 발하고 자동적으로 급수 또는 단수되어 수위 를 조절하는 방호장치는?', 2, 251)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('495b2ed0-a8c2-1392-6cf9-f6c2e1d88391', 'bd3651f3-0cb9-c159-b87d-763bf97ccde9', '압력방출장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('242d5a06-f131-7084-3f51-15252b351a50', 'bd3651f3-0cb9-c159-b87d-763bf97ccde9', '고저수위 조절장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c28974b-1c39-6871-937c-0e20266a43e2', 'bd3651f3-0cb9-c159-b87d-763bf97ccde9', '압력 제한 스위치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da1c0e68-f7c6-200e-b372-5a7519143462', 'bd3651f3-0cb9-c159-b87d-763bf97ccde9', '과부하방지장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bd3651f3-0cb9-c159-b87d-763bf97ccde9', '242d5a06-f131-7084-3f51-15252b351a50', '② 고저수위 조절장치', '정답 ②. 고저수위 조절장치', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇의 작동범위 내에서 그 로봇에 관하여 교시 등 작업을 행하는 때 작업시작 전 점검사항으 로 옳은 것은?(단, 로봇의 동력원을 차단하고 행하는 것은 제외)', 2, 252)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b33858-a38a-63e6-eb4c-451d20996b70', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '과부하방지장치의 이상 유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38839e3e-881e-0cb4-0b23-3b9c97542875', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '압력제한스위치의 이상 유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf2aafc-6765-a83e-eff7-2db4be4569fb', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '외부 전선의 피복 또는 외장의 손상 유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61a98a5-37a3-2fdf-36c4-313cff79e91e', '73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', '권과방지장치의 이상유무', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('73cd17fa-0ec0-ee09-463c-034b4fe1e5fe', 'ebf2aafc-6765-a83e-eff7-2db4be4569fb', '③ 외부 전선의 피복 또는 외장의 손상 유무', '정답 ③. 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차 작업시작 전 점검사항으로 거리가 가장 먼 것은?', 2, 253)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b5ee9f3-4a1d-69d5-e38a-9fafaeed5502', '52083862-c8df-e49e-0174-57c32e717f2b', '제동장치 및 조종장치 기능의 이상 유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43d81af1-51b4-f454-86fc-2378448cb05b', '52083862-c8df-e49e-0174-57c32e717f2b', '압력방출장치의 작동 이상 유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('999a88c8-2e3f-d366-b9fd-52fdb42c9657', '52083862-c8df-e49e-0174-57c32e717f2b', '바퀴의 이상유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c798629-9a1c-4205-5432-15610483fe45', '52083862-c8df-e49e-0174-57c32e717f2b', '전조등• 후미등• 방향지시기 및 경보장치 기능의 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52083862-c8df-e49e-0174-57c32e717f2b', '43d81af1-51b4-f454-86fc-2378448cb05b', '② 압력방출장치의 작동 이상 유무', '정답 ②. 유무 a 압력방출장치의 기능은 공기압축기를 가동할 때 작업시작 전 점 검사항이다. 지게차 작업시작 전 점검사항 • 제동장치 및 조종장치 기능의 이상 유무 • 하역장치 및 유압장치 기능의 이상 유무 • 바퀴의 이상유무 • 전조등 • 후미등 - 방향지시기 및 경보장치 기능의 이상 유무 E 81', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0fe9909a-d905-747e-7c17-af6bc0fc5836', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 가공재료의 칩이나 절삭유 등이 비산되어 나오는 위험으로부터 보호하기 위한 선반의 방호장치는?', 2, 254)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f4f650d-b5f4-98fa-18d8-da508081b58c', '0fe9909a-d905-747e-7c17-af6bc0fc5836', '바이트', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fded7dc8-d2bd-639e-9910-2c94f06d3ad7', '0fe9909a-d905-747e-7c17-af6bc0fc5836', '권과방지장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93e1cb0e-05e3-9af6-9014-5b74214fe0c7', '0fe9909a-d905-747e-7c17-af6bc0fc5836', '압력 제한스위 치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62701945-0b3e-1e16-9d95-7e775ecd7eeb', '0fe9909a-d905-747e-7c17-af6bc0fc5836', '쉴드(shield)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0fe9909a-d905-747e-7c17-af6bc0fc5836', '62701945-0b3e-1e16-9d95-7e775ecd7eeb', '④ 쉴드(shield)', '정답 ④. 퓨| 선반의 안전장치 • 칩 브레이커(Chip Breaker)： 칩이 짧게 끊어지도록 하는 장치 • 덮개(Shi이d)： 가공재료의 칩이나 절삭유 등이 비산되어 나오는 위험으 로부터 작업자의 보호를 위해 이동이 가능한 장치 • 브레이크(Brake)： 가공 작업 중 선반을 급정지시킬 수 있는 장치 • 척 커버(Chuck Cover): 척에 고정한 가공물의 돌출부에 작업자가 접 촉하여 발생하는 위험을 방지하는 장치 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '11111111-1111-1111-1111-111111111104', 'mcq', '지락이 생긴 경우 접촉상태에 따라 접촉전압을 제한할 필요 가 있다. 인체의 접촉상태에 따른 허용접촉전압을 나타낸 것으로 다음 중 옳지 않은 것은?', 2, 255)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0ef41d37-7cdf-a658-d0f7-533e432dddf5', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제1종: 2.5［V］ 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2dbfa5a7-2658-c325-8063-31c35174d7fa', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제2종: 25［V］ 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49916f43-52aa-52b9-2fde-134b6d2e5ff7', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제3종: 35［V］ 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d87e516e-cb66-f771-4119-378835ebb974', 'f381a3b6-6324-72e1-1772-0d0fab02c030', '제4종: 제한 없음', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f381a3b6-6324-72e1-1772-0d0fab02c030', '49916f43-52aa-52b9-2fde-134b6d2e5ff7', '③ 제3종: 35［V］ 이하', '정답 ③. 제3종: 35［V］ 이하', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 공정안전보고서에 포함해야 할 세부내용 중 공정안전자료에 해당하지 않는 것은?', 2, 256)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('812c7bac-71e8-2c94-7b24-0a1f0c635bb3', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '안전운전지침서', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f094eb1-bfed-4a8c-a4d0-31d9fc7fb68e', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '각종건물 •설비의 배치도', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9c6022e-605c-fb9e-4657-e689d9b6b17c', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '유해하거나 위험한 설비의 목록 및 사양', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9f75f3b-d3dd-fa58-7853-0c9947537c38', 'de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '위험설비의 안전설계 - 제작 및 설치관련 지침서', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de8aded9-87ec-9e66-8df2-dfc3a06dfbd4', '812c7bac-71e8-2c94-7b24-0a1f0c635bb3', '① 안전운전지침서', '정답 ①. 안전운전지침서는 안전운전계획에 포함하여야 할 세부내용이다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비 사이의 안전거리는 설비의 바깥면부 터 얼마 이상이 되어야 하는가?', 2, 257)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6031f72-f327-cac6-08f3-96d6d652c319', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '5[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '10[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('533ba44b-af15-2283-c9d4-ae7ef24a6ce1', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '15[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8e192d43-2198-1869-5b74-0bb67aa06724', '8a120861-63f8-a0f3-bb25-56e973f0bb71', '20fm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8a120861-63f8-a0f3-bb25-56e973f0bb71', '5ce82cf0-0099-7e0f-04ae-78b5b5fe10d9', '② 10[m]', '정답 ②. 단위공정시설 및 설비로부터 다른 단위공정시설 및 설비의 사이 는 설비의 바깥면으로부터 10[m] 이상의 안전거리를 두어야 한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '11111111-1111-1111-1111-111111111104', 'mcq', '불연성이지만 다른 물질의 연소를 돕는 산화성 액체 물질에 해당하는 것은?', 2, 258)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d4f6dc4-7e12-27d4-8372-177aec1c702c', '90073b77-7122-dadd-4e4e-b1f981d75deb', '하이드라진', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93547554-03f2-75ca-6d7d-70692117df33', '90073b77-7122-dadd-4e4e-b1f981d75deb', '과염소산', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5b1bf29-6f37-0cdc-45e1-fdc4c5717149', '90073b77-7122-dadd-4e4e-b1f981d75deb', '벤젠', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5404b53-7278-e940-0cd4-8dacb8513690', '90073b77-7122-dadd-4e4e-b1f981d75deb', '암모니아', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('90073b77-7122-dadd-4e4e-b1f981d75deb', '93547554-03f2-75ca-6d7d-70692117df33', '② 과염소산', '정답 ②. 과염소산은 산화성 액체로 자신은 불연성이지만 산화성이 커서 다른 물질의 연소를 돕는다. 오답해설 하이드라진. 벤젠: 인화성 액체 암모니아: 인화성 가스 E 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬. 칼륨, 나트륨. 황. 황린, 황화인. 적린', 2, 259)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac37ff72-0a28-586a-deaf-b6ea7584f596', '682e4864-eb43-84b9-74c7-1457a812014c', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3efcf50f-0b92-44ea-f37c-42fec1fe0727', '682e4864-eb43-84b9-74c7-1457a812014c', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073355e6-0e05-6007-7917-4e2387a9aae2', '682e4864-eb43-84b9-74c7-1457a812014c', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b3f3553-bbc6-d5f6-187f-56af7fc51b0b', '682e4864-eb43-84b9-74c7-1457a812014c', '급성 독성 물질', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('682e4864-eb43-84b9-74c7-1457a812014c', '073355e6-0e05-6007-7917-4e2387a9aae2', '③ 물반응성 물질 및 인화성 고체', '정답 ③. 보기의 물질은 물반응성 물질 및 인화성 고체에 해당한다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '11111111-1111-1111-1111-111111111104', 'mcq', '제1종 분말소화약제의 주성분에 해당하는 것은?', 2, 260)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69763a4e-5ded-2b93-32c8-b3310323c5ee', '03cede15-f4c4-40ec-7772-cab895d6cf20', '사염화탄소', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1096d646-bb8e-976c-7051-1ccdc9e1e131', '03cede15-f4c4-40ec-7772-cab895d6cf20', '브롬화메탄', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('272a8f3a-c213-4fa9-2598-9a0daeb14543', '03cede15-f4c4-40ec-7772-cab895d6cf20', '수산화암모늄', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '03cede15-f4c4-40ec-7772-cab895d6cf20', '탄산수소나트륨', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03cede15-f4c4-40ec-7772-cab895d6cf20', '194f6bce-e0eb-cf2d-fdfc-b6fd8aa0017e', '④ 탄산수소나트륨', '정답 ④. 탄산수소나트륨', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사도급인은 건설공사 중에 가설구조물의 붕괴 등 산 업재해가 발생할 위험이 있다고 판단되면 건축 - 토목 분야 의 전문가의 의견을 들어 건설공사 발주자에게 해당 건설공 사의 설계변경을 요청할 수 있는데, 이러한 가설구조물의 기준으로 옳지 않은 것은?', 2, 261)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '882a9cf5-418c-5e18-4c18-67e35843be90', '높이 20[m] 이상인 비계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('434acb1d-8135-f18b-59ae-87184873d8a4', '882a9cf5-418c-5e18-4c18-67e35843be90', '작업발판 일체형 거푸집 또는 높이 5[m] 이상인 거푸', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7f5a0d-9f7b-1297-2947-337664491be9', '882a9cf5-418c-5e18-4c18-67e35843be90', '터널의 지보공 또는 높이 2[m] 이상인 흙막이 지보공', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d153137-55f0-c1eb-d045-faf20723335a', '882a9cf5-418c-5e18-4c18-67e35843be90', '동력을 이용하여 움직이는 가설구조물', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('882a9cf5-418c-5e18-4c18-67e35843be90', '6b3fc349-d9c9-e0e0-dcb6-d6d543a704d4', '① 높이 20[m] 이상인 비계', '정답 ①. 설계변경 요청 대상 가설구조물에는 높이 31[m] 이상인 비계가 해당된다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '11111111-1111-1111-1111-111111111104', 'mcq', '콘크리트 타설 시 안전수칙으로 옳지 않은 것은?', 2, 262)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df0452ca-efa7-be63-82a3-0ccf9aa0d529', '48946813-c13f-98e6-6992-65deaf49932b', '타설순서는 계획에 의하여 실시하여야 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9e1a1c-7f79-8391-6ec3-feef8131a495', '48946813-c13f-98e6-6992-65deaf49932b', '진동기는 최대한 많이 사용하여야 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec73d395-d54e-3b18-a5d2-9798efccecb0', '48946813-c13f-98e6-6992-65deaf49932b', '콘크리트를 치는 도중에는 거푸집, 지보공 등의 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9825fd8a-e376-df4e-1e24-8811e1fa29a2', '48946813-c13f-98e6-6992-65deaf49932b', '손수레로 콘크리트를 운반할 때에는 손수레를 타설하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48946813-c13f-98e6-6992-65deaf49932b', '1c9e1a1c-7f79-8391-6ec3-feef8131a495', '② 진동기는 최대한 많이 사용하여야 한다.', '정답 ②. 는 위치까지 천천히 운반하여 거푸집에 충격을 주지 아 니하도록 타설하여야 한다. KOI 진동기는 적절히 사용되어야 하며. 지나친 진동은 거푸집 붕괴의 원인이 될 수 있으므로 주의하여야 한다. 1', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('415990f2-eced-8f93-c61c-1ffd56aca778', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 작업발판 일체형 거푸집에 해 당되지 않는 것은?', 2, 263)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43d000b1-56a9-d0a8-feee-07331f53e9fe', '415990f2-eced-8f93-c61c-1ffd56aca778', '갱 폼 (Gang Form)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36d932ec-c814-08e3-c51a-d02ec3f2573c', '415990f2-eced-8f93-c61c-1ffd56aca778', '슬립 폼(Slip Form)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce3ccf1d-1ce6-92b1-6013-b28814140310', '415990f2-eced-8f93-c61c-1ffd56aca778', '유로 폼(Euro Form)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fccac44a-6641-84dc-a189-2ed78a237b8c', '415990f2-eced-8f93-c61c-1ffd56aca778', '클라이밍 폼(Climbing Form)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('415990f2-eced-8f93-c61c-1ffd56aca778', 'ce3ccf1d-1ce6-92b1-6013-b28814140310', '③ 유로 폼(Euro Form)', '정답 ③. 유로 폼(Euro Form)', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 건설공사 중 다리 건설공사의 경우 유해위험방지계획서를 제출하여야 하는 기준으로 옳 은 것은?', 2, 264)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('983a83d5-bed8-858e-5b33-94a004a4a8d1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 40[m] 이상인 다리의 건설등 공사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8925e944-c2ad-c1b8-8df8-557508591fcf', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 50[m] 이상인 다리의 건설등 공사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa06d513-86db-470d-289f-01bf4b822308', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 60[m] 이상인 다리의 건설등 공사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8af2c81-f58d-9307-21ca-4646213036f1', '92924d31-0dc1-438f-bd4a-008dd6c15d2a', '최대 지간길이가 7O[m] 이상인 다리의 건설등 공사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92924d31-0dc1-438f-bd4a-008dd6c15d2a', '8925e944-c2ad-c1b8-8df8-557508591fcf', '② 최대 지간길이가 50[m] 이상인 다리의 건설등 공사', '정답 ②. 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물. 연면적 30,0001m2] 이상인 건축물 또는 연면적 5.000[m1 이상의 문화 및 집회시설(전시장 및 동물원 • 식물원 제외). 판매시설. 운수시설(고속철도의 역사 및 집배 송시설 제외). 종교시설. 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체(건설 등) 공사 • 연면적 5.0001m2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐. 발전용댐. 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 ◎W1 아1APTER 02 건설공사 위험성', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 준수하여야 할 사항 으로 옳지 않은 것은?', 2, 265)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('523d723f-c9f7-dce3-2419-9365c5858d55', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '비계기둥의 밑둥에는 밑받침철물을 사용할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1173e542-7f8c-c2db-34bb-47442869510e', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40122837-07e1-8f3e-5402-ac618acd9995', '49798d55-2fb8-4353-1ccd-9abf4ef30269', '길이가 띠장 방향으로 4[m] 이하이고 높이가 1이m]를', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49798d55-2fb8-4353-1ccd-9abf4ef30269', 'e57b7260-a8e1-4a9f-9ab9-ff26f06a9e71', '③ 주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', '정답 ③. 주틀 간에 교차 가새를 설치하고 최하층 및 3층 이내마', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 양중기의 종류에 해당하지 않 는것은?', 2, 266)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed974c1-70a6-b25e-c025-466e6626b38c', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '고소작업차', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('674f5072-ef75-e957-86cc-613ed25120b3', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '이동식 크레인', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1e84eb4-3a9f-04a0-e5ab-314aa74929ab', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '승강기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df292d10-9827-75d7-502b-eff00b12cbbe', 'c7fd6e68-9662-977e-6a4d-82832f3a2665', '리프트(Lift)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7fd6e68-9662-977e-6a4d-82832f3a2665', '2ed974c1-70a6-b25e-c025-466e6626b38c', '① 고소작업차', '정답 ①. 고소작업차', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건 법령」에 따른 산업안전보건관리비의 사용에 관한 규정이다.( )안에 들어갈 내용을 순서대로 옳게 작성한 것은? 건설공사도급인은 고용노동부장관이 정하는 바에 따라 해당 건설공사를 위하여 계상된 산업안전보건관리비를 그가 사용 하는 근로자와 그의 관계수급인이 사용하는 근로자의 산업재 해 및 건강장해 예방에 사용하고, 그 사용명세서를 ( ) 작성하고 건설공사 종료 후 ( )간 보존해야 한다.', 2, 267)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a97eca70-0407-533d-9d76-a2203eadd6b1', 'dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '매월, 6개월', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93068aa3-f4d6-259d-228c-3ab354cf6a8c', 'dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '매월, 1년', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e22e0802-c6ff-713d-43ee-f9af7139e4a4', 'dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '2개월마다, 6개월', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('125104dc-b949-9e9c-572d-779f809dda80', 'dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '2개월마다, 1년', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd5d741d-a22f-51ab-9aab-0142c4f8e2da', '93068aa3-f4d6-259d-228c-3ab354cf6a8c', '② 매월, 1년', '정답 ②. 매월, 1년', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '11111111-1111-1111-1111-111111111104', 'mcq', '터널공사의 전기발파작업에 관한 설명으로 옳지 않은 것 은?', 2, 268)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b0fac8f-a300-c745-96b1-8af805df8874', 'd109d14c-531c-2365-60b1-8c3f16868e35', '전선은 점화하기 전에 화약류를 충진한 장소로부터', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb2e5dc9-3f0d-208a-4592-d0fea15e84a4', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 충분한 허용량을 갖는 발파기를 사용하고 규정', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('033ed884-59a7-d3e4-aab1-94cc98be9aef', 'd109d14c-531c-2365-60b1-8c3f16868e35', '발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96f19aed-ee3a-ff18-0803-b317fa7f5c26', 'd109d14c-531c-2365-60b1-8c3f16868e35', '점화는 선임된 발파책임자가 행하고 발파기의 핸들을', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d109d14c-531c-2365-60b1-8c3f16868e35', '033ed884-59a7-d3e4-aab1-94cc98be9aef', '③ 발파 후 발파기와 발파모선의 연결을 유지한 채 그 단', '정답 ③. 된 스위치를 반드시 사용하여야 한다. (9) 발파 후 발파기와 발파모선의 AAS 유지한 a 그 단 부를 절연시킨 후 재점화가 되지 않도록 한다. 점화는 선임된 발파책임자가 행하고 발파기의 핸들을 점화할 때 이외는 시건장치를 하거나 모선을 분리하여 OF 하며 발파책임자의 엄중한 관리하에 두어야 한다. 발파 후 즉시 발파모선을 발파기에서 분리하여 단락시키는 등 재 기폭되지 않도록 조치하여야 한다. ※ 「터널공사 표준안전 작업지침-찌4 114.이 개정됨에 따라 ''전기발파 작업 시 준수사항''이 삭제되었습니다', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('831a66ca-73ca-fa8f-6609-d84a020d13e5', '11111111-1111-1111-1111-111111111104', 'mcq', '화물을 적재하는 경우의 준수사항으로 옳지 않은 것은?', 2, 269)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5bacd036-adfc-1eb3-b139-7d984bc3a885', '831a66ca-73ca-fa8f-6609-d84a020d13e5', '침하 우려가 없는 튼튼한 기반 위에 적재할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbbaaf67-3080-992a-b5b7-c379934c651d', '831a66ca-73ca-fa8f-6609-d84a020d13e5', '건물의 칸막이나 벽 등이 화물의 압력에 견딜 만큼의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40429195-0342-c9c1-bfb5-1543e7126f4b', '831a66ca-73ca-fa8f-6609-d84a020d13e5', '불안정할 정도로 높이 쌓아 올리지 말 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52d6aa78-52a7-a463-b3ff-4af6237649ec', '831a66ca-73ca-fa8f-6609-d84a020d13e5', '하중이 한쪽으로 치우치더라도 화물을 최대한 효율적', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('831a66ca-73ca-fa8f-6609-d84a020d13e5', '52d6aa78-52a7-a463-b3ff-4af6237649ec', '④ 하중이 한쪽으로 치우치더라도 화물을 최대한 효율적', '정답 ④. 하중이 한쪽으로 치우치더라도 화물을 최대한 효율적', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4단계의 진행 순서를 바르게 나열한 것은?', 2, 270)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee998e12-99e3-444b-9528-46f5b586c6fc', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 一 현상파악 - 대책수립 一 본질추구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('492f9e0c-4be6-cf5c-04be-64cd79b67915', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '목표설정 _ 현상파악 一 본질추구 一 대책수립', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 대책수립 一 목표설정', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0421cc7-b801-f7ac-62ee-22df622895fd', '8b65bb41-651d-98c1-daad-b7b0c43288d7', '현상파악 一 본질추구 一 목표설정 - 대책수립', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8b65bb41-651d-98c1-daad-b7b0c43288d7', 'a4320ab9-34b5-cc9a-808f-61e948cbc6c0', '③ 현상파악 一 본질추구 一 대책수립 一 목표설정', '정답 ③. 라운드: 본질추구(원인조사)- 이것이 위험의 포인트이다. 3라운드: 대책수립(대책을 세운다)-당신이라면 어떻게 하겠는가? 4라운드: 목표설정(행동계획 작성)-우리들은 이렇게 하자!', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0725984-925e-c035-ac50-ce74c4190c47', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 근로자에 대한 일반건강진단의 실시 시기 기준으로 옳은 것은?', 2, 271)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff6d1954-aff4-7ae5-9f83-610457936778', 'f0725984-925e-c035-ac50-ce74c4190c47', '사무직에 종사하는 근로자: 1년에 1회 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f31c3de-bfb1-4f0d-c57f-a749f8e048e3', 'f0725984-925e-c035-ac50-ce74c4190c47', '사무직에 종사하는 근로자: 2년에 1회 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e440f1cf-9621-7a68-d678-bb7d50552a70', 'f0725984-925e-c035-ac50-ce74c4190c47', '사무직 외의 업무에 종사하는 근로자: 6월에 1회 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8fdbaea0-d5ae-4724-46ca-59e7b6e15e62', 'f0725984-925e-c035-ac50-ce74c4190c47', '사무직 외의 업무에 종사하는 근로자: 2년에 1회 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0725984-925e-c035-ac50-ce74c4190c47', '1f31c3de-bfb1-4f0d-c57f-a749f8e048e3', '② 사무직에 종사하는 근로자: 2년에 1회 이상', '정답 ②. 일반건강진단의 주기 • 사무직에 종사하는 근로자: 2년에 1회 이상 • 그 밖의 근로자: 1년에 1회 이상 1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '11111111-1111-1111-1111-111111111104', 'mcq', '상황성 누발자의 재해유발원인이 아닌 것은?', 2, 272)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ed3128e-bfc5-2b7e-779b-c118ccc8440e', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '심신의근심', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f5f3923-8233-22fe-7bd0-81735acdac85', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '작업의어려움', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a0ba6f8-7c59-f488-1593-10e53cde4545', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '도덕성의결여', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca03f279-2212-1b4e-9df6-a27ea2599402', '049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '기계설비의결함', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('049dbdc9-f091-f71b-65cb-cc8139d4b8b8', '4a0ba6f8-7c59-f488-1593-10e53cde4545', '③ 도덕성의결여', '정답 ③. 상황성 누발자 작업이 어렵거나, 기계설비의 결함. 환경상 주의력의 집중이 혼란된 경우. 심신의 근심으로 사고경향자가 되는 경우이 다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업장에서 산업재해 발생 시 사업 주가 기록 • 보존하여야 하는 사항을 모두 고른 것은?（단, 산업재해조사표와 요양신청서의 사본은 보존하지 않았다. ） @ 사업장의 개요 및 근로자의 인적사항 © 재해발생의 일시 및 장소 © 재해발생의 원인 및 과정 @ 재해 재발방지 계획', 2, 273)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('74b0299e-1874-cc8d-442a-0b2260e408cb', '22c0b839-5ff8-41ff-e068-0871076e8349', '@, @', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('930a4b2c-7d35-41c3-767d-c64bae6f4345', '22c0b839-5ff8-41ff-e068-0871076e8349', '©, ©, @', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('842cfac1-5d10-ca08-67d2-97eaff9c0e75', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('734d82b3-5d40-40b4-6220-9c74fe4496ff', '22c0b839-5ff8-41ff-e068-0871076e8349', '(3, ©, ©, ®', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('22c0b839-5ff8-41ff-e068-0871076e8349', '734d82b3-5d40-40b4-6220-9c74fe4496ff', '④ (3, ©, ©, ®', '정답 ④. 산업재해 기록 사업주는 산업재해가 발생한 때에는 다음 사항을 기록 • 보존하여야 한다. 다만. 산업재해조사표 사본을 보존하거나 요양신청서의 사본에 재해 재발 방지 계획을 첨부하여 보존한 경우에는 그러하지 아니하다. • 사업장의 개요 및 근로자의 인적사항 • 재해발생의 일시 및 장소 • 재해발생의 원인 및과정 • 재해 재발방지 계획', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '11111111-1111-1111-1111-111111111104', 'mcq', '안전점검표（체크리스트） 항목 작성 시 유의사항으로 틀린 것은?', 2, 274)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c2b8594-106c-64f8-bd33-4cfe693f752b', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '정기적으로 검토하여 설비나 작업방법이 타당성 있게', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b0eaf76-d333-83ec-baf5-1b4f974e83e9', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '사업장에 적합한 독자적 내용을 가지고 작성할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb4142b5-7142-41a1-29c9-510157433703', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0d7900-73c7-7184-0999-d1a272d08235', 'b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', '점검항목을 이해하기 쉽게 구체적으로 표현할 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b9c1fdf9-3f5b-8c19-adad-c33cfe7f57ae', 'fb4142b5-7142-41a1-29c9-510157433703', '③ 위험성이 낮은 순서 또는 긴급을 요하는 순서대로 작성', '정답 ③. 안전점검표（체크리스트） 작성 시 유의사항 • 위험성이 높은 순이나 긴급을 요하는 순으로 작성할 것 • 정기적으로 검토하여 설비나 작업방법이 타당성 있게 개조된 내용일 것 • 점검항목을 이해하기 쉽게 구체적으로 표현할 것 • 사업장에 적합한 독자적 내용을 가지고 작성할 것', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육에 있어서 동기부여방법으로 가장 거리가 먼 것 은?', 2, 275)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6db7ce54-7df3-596a-c400-ea614e0da9e3', '6ffdac53-54a3-a691-82e3-1b57943deed9', '책임감을 느끼게 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '6ffdac53-54a3-a691-82e3-1b57943deed9', '관리감독을 철저히 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22d47331-4120-3f47-5c96-0095bbbc0b85', '6ffdac53-54a3-a691-82e3-1b57943deed9', '자기 보존본능을 자극한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f6877a2-b0df-a7b5-5d66-ea935855a393', '6ffdac53-54a3-a691-82e3-1b57943deed9', '물질적 이해관계에 관심을 두도록 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6ffdac53-54a3-a691-82e3-1b57943deed9', '9e6985d6-d86c-9e6e-8caa-855b2b2e51de', '② 관리감독을 철저히 한다.', '정답 ②. 관리감독을 철저히 한다.', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3a4d3865-3608-6381-6369-f2b64132a174', '11111111-1111-1111-1111-111111111104', 'mcq', '기술 개발과정에서 효율성과 위험성을 종합적으로 분석 • 판단할 수 있는 평가방법으로 가장 적절한 것은?', 2, 276)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6bee96a-ecf8-9266-e4d2-ff59938e3e37', '3a4d3865-3608-6381-6369-f2b64132a174', 'Risk Assessment', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('211b9e04-452c-90b5-a517-a5cf0adf9888', '3a4d3865-3608-6381-6369-f2b64132a174', 'Risk Management', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b767ca4-c373-f4bd-7e4f-fccc0f2be816', '3a4d3865-3608-6381-6369-f2b64132a174', 'Safety Assessment', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9e0cfa8e-f080-2600-da04-2134bf48548e', '3a4d3865-3608-6381-6369-f2b64132a174', 'Technology Assessment', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3a4d3865-3608-6381-6369-f2b64132a174', '9e0cfa8e-f080-2600-da04-2134bf48548e', '④ Technology Assessment', '정답 ④. 테크놀로지 어세스먼트(Technology Assessment) 안전성 평가 중 기술 개발과정에서의 효율성과 위험성을 종합적으로 분석. 판단하는 프로세스이다. 이비', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef42d44f-a467-5db3-7337-850c8bde5c12', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전에서 평균수리시간을 나타내는 것은?', 2, 277)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c53df6d-2dcb-d74b-2aa7-ffc51c6f4982', 'ef42d44f-a467-5db3-7337-850c8bde5c12', 'MTBF', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3eeb5af7-1301-1c47-cef7-d0d6c1e86358', 'ef42d44f-a467-5db3-7337-850c8bde5c12', 'MTTR', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90006c88-b832-d826-01df-aa8117f49b59', 'ef42d44f-a467-5db3-7337-850c8bde5c12', 'MTTF', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfbad2e8-e33f-9745-a7e7-c427689fac88', 'ef42d44f-a467-5db3-7337-850c8bde5c12', 'MTBP', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef42d44f-a467-5db3-7337-850c8bde5c12', '3eeb5af7-1301-1c47-cef7-d0d6c1e86358', '② MTTR', '정답 ②. MTTR', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', '11111111-1111-1111-1111-111111111104', 'mcq', '일반적으로 인체측정치의 최대 집단치를 기준으로 설계하는 것은?', 2, 278)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b453459a-1d6a-3582-90b7-daf85018aa63', '0897c1a6-5d62-a382-f0a6-655c381c192e', '선반의 높이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27d1af94-99f1-2ca4-5d9b-2c6db09f79e6', '0897c1a6-5d62-a382-f0a6-655c381c192e', '공구의 크기', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb801195-de16-d370-4d30-bea2b6c08f32', '0897c1a6-5d62-a382-f0a6-655c381c192e', '출입문의 크기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe44fcf2-0778-4580-4aaf-d7e719f6f381', '0897c1a6-5d62-a382-f0a6-655c381c192e', '안내 데스크의 높이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0897c1a6-5d62-a382-f0a6-655c381c192e', 'fb801195-de16-d370-4d30-bea2b6c08f32', '③ 출입문의 크기', '정답 ③. 출입문의 크기', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7dbaa745-8c0e-a7a8-3fde-c073c7882542', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 프레스기에 사용되는 방호장치에 있어 원칙적으로 급정지기구가 부착되어야만 사용할 수 있는 방식은?', 2, 279)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e81a77e4-5f2b-d294-07b5-0994e963ae54', '7dbaa745-8c0e-a7a8-3fde-c073c7882542', '양수조작식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94f76bc-ddd3-151f-6396-d00d9feb8bd6', '7dbaa745-8c0e-a7a8-3fde-c073c7882542', '손쳐내기식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b307c63f-cd5c-7846-80b4-e4cd5cff41f4', '7dbaa745-8c0e-a7a8-3fde-c073c7882542', '가드식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e38faa67-607a-68b3-287d-0111fe27125a', '7dbaa745-8c0e-a7a8-3fde-c073c7882542', '수인식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7dbaa745-8c0e-a7a8-3fde-c073c7882542', 'e81a77e4-5f2b-d294-07b5-0994e963ae54', '① 양수조작식', '정답 ①. 양수조작식(Two-hand Control) 방호장치 기계의 조작을 양손으로 동시에 하지 않으면 기계가 가동하지 않으며 한 손이라도 떼어내면 기계가 급정지 또는 급상승하게 하는 장치를 말한다. 급정지기구가 있는 마찰프레스에 적합하다', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('00abdc06-3e14-02ce-f3b8-466e3caa2b86', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러 방호장치로 거리가 가장 먼 것은?', 2, 280)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1f8935d-1821-152e-0335-8a1b15347251', '00abdc06-3e14-02ce-f3b8-466e3caa2b86', '고저수위 조절장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c49e9ffb-f3ba-2501-5ae8-643d5d821794', '00abdc06-3e14-02ce-f3b8-466e3caa2b86', '아웃트리거', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dde5fa51-bd58-21cc-de37-cd7a7b99ec7d', '00abdc06-3e14-02ce-f3b8-466e3caa2b86', '압력방출장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4414507-63cd-f2f5-1002-13b7c051f502', '00abdc06-3e14-02ce-f3b8-466e3caa2b86', '압력제한스위치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('00abdc06-3e14-02ce-f3b8-466e3caa2b86', 'c49e9ffb-f3ba-2501-5ae8-643d5d821794', '② 아웃트리거', '정답 ②. 리 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치. 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다. E E1', array['산업안전기사','2021-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
