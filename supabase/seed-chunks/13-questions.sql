-- chunk 13
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('417d212a-a753-70b6-7343-8a8952b850a6', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 항타기 또는 항발기에 권상용 와이어로프를 사용하는 경우에 준수하여야 할 사항 이다. ( ) 안에 알맞은 내용으로 옳은 것은? 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼 에 적어도 ( ) 감기고 남을 수 있는 충분한 길이일 것', 2, 481)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46a025e3-16bd-e4cc-12b6-66023baa1e97', '417d212a-a753-70b6-7343-8a8952b850a6', '1회', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ce48df0-967e-3a48-af66-da07e4177851', '417d212a-a753-70b6-7343-8a8952b850a6', '2회', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('163fd12a-8fc9-4aab-4f60-9db8bd29da3c', '417d212a-a753-70b6-7343-8a8952b850a6', '4회', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c456f2b0-a2a5-32ba-53fc-71fab93a8537', '417d212a-a753-70b6-7343-8a8952b850a6', '6회', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('417d212a-a753-70b6-7343-8a8952b850a6', '5ce48df0-967e-3a48-af66-da07e4177851', '② 2회', '정답 ②. 권상용 와이어로프는 추 또는 해머가 최저의 위치에 있을 때 또 는 널말뚝을 빼내기 시작할 때를 기준으로 권상장치의 드럼에 적어도 2회 감기고 남을 수 있는 충분한 길이여야 한다', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c3d36636-9a21-9ce1-6374-01dc9af228b7', '11111111-1111-1111-1111-111111111104', 'mcq', '터널공사 시 인화성 가스가 농도 이상으로 상승하는 것을 조기에 파악하기 위하여 자동경보장치를 설치하여야 하는 데 작업시작 전에 점검해야 할 사항이 아닌 것은?', 2, 482)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2bf0bbe-b0df-e70e-088e-6fbbdca8c92c', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '계기의이상유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '발열여부', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00f87e92-d41c-583f-5fb9-ab0eddc03045', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '검지부의 이상 유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('02895217-20ab-2b57-4bb0-9bab86af2727', 'c3d36636-9a21-9ce1-6374-01dc9af228b7', '경보장치의 작동상태', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c3d36636-9a21-9ce1-6374-01dc9af228b7', '7b2fb6f4-1f24-f50f-3b63-c0f70df9a09a', '② 발열여부', '정답 ②. 자동경보장치의 작업시작 전 점검사항 • 계기의 이상 유무 • 검지부의 이상유무 • 경보장치의 작동상태 W1ISI 아1APTER 05 비계 - 거푸집 가시설 위험방지 11', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('40dfd443-4399-7f39-f790-13471788d85d', '11111111-1111-1111-1111-111111111104', 'mcq', '점토질 지반의 침하 및 압밀 재해를 막기 위하여 실시하는 지반개량 탈수공법으로 적합하지 않은 것은?', 2, 483)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b9de8f9a-fc89-2940-8213-00ed8619c8f0', '40dfd443-4399-7f39-f790-13471788d85d', '샌드드레인공법', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff443081-1789-d27b-1704-b248b6cdce1a', '40dfd443-4399-7f39-f790-13471788d85d', '생석회공법', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06eb731b-5c45-b0d6-c821-ffd197205543', '40dfd443-4399-7f39-f790-13471788d85d', '진동공법', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('616ed395-0fb6-1cc8-5d54-ba8d550df469', '40dfd443-4399-7f39-f790-13471788d85d', '페이퍼드레인공법', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('40dfd443-4399-7f39-f790-13471788d85d', '06eb731b-5c45-b0d6-c821-ffd197205543', '③ 진동공법', '정답 ③. 진동다짐 공법은 사질토 연약지반 개량공법이다. E <1', array['산업안전기사','2023-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('efcb7722-049d-426f-f792-7389fac70f02', '11111111-1111-1111-1111-111111111104', 'mcq', 'r산업안전보건법령」상 안전보건표지의 색채와 용도의 연결 이 틀린 것은?', 2, 484)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('475e7e5f-4009-5866-1f77-d31364246eb9', 'efcb7722-049d-426f-f792-7389fac70f02', '검은색-금지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0f34df2-2f5a-0731-28cb-16e238bb4c57', 'efcb7722-049d-426f-f792-7389fac70f02', '파란색-지시', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28088f1a-77bd-eea2-5b2a-21e38b3d7e2d', 'efcb7722-049d-426f-f792-7389fac70f02', '녹색 - 안내', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84d936b7-9b25-ea38-c661-2b15f72cb1f9', 'efcb7722-049d-426f-f792-7389fac70f02', '노란색 - 경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('efcb7722-049d-426f-f792-7389fac70f02', '475e7e5f-4009-5866-1f77-d31364246eb9', '① 검은색-금지', '정답 ①. 검은색-금지', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4f44b3cd-2481-7730-f972-8f87843040d3', '11111111-1111-1111-1111-111111111104', 'mcq', '라인（Line）형 안전관리조직의 특징으로 옳은 것은?', 2, 485)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49968414-16d2-c328-7224-902625ae6751', '4f44b3cd-2481-7730-f972-8f87843040d3', '안전에 관한 기술의 축적이 용이하다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84742727-48f6-eb99-d127-e3dc1191e3e8', '4f44b3cd-2481-7730-f972-8f87843040d3', '안전에 관한 지시나 조치가 신속하다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f8ff66d-6eb0-3c7b-ef2c-b3eda714b014', '4f44b3cd-2481-7730-f972-8f87843040d3', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eeafb5eb-f023-7fea-dfd4-89d5a28d6c07', '4f44b3cd-2481-7730-f972-8f87843040d3', '권한 다툼이나 조정 때문에 통제수속이 복잡해지며, 시', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4f44b3cd-2481-7730-f972-8f87843040d3', '84742727-48f6-eb99-d127-e3dc1191e3e8', '② 안전에 관한 지시나 조치가 신속하다.', '정답 ②. 안전에 관한 지시나 조치가 신속하다.', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b5ae2cfe-89de-571f-2edd-c718eac35a7e', '11111111-1111-1111-1111-111111111104', 'mcq', '인간관계의 메커니즘 중 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기와 비슷한 것을 발견 하는 것은?', 2, 486)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fcf98cad-6ba4-9dbf-b098-8546aedfb21e', 'b5ae2cfe-89de-571f-2edd-c718eac35a7e', '동일화', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fdaf018-a230-2b44-829b-7be979f8d332', 'b5ae2cfe-89de-571f-2edd-c718eac35a7e', '일체화', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('324ec6fe-79a2-fc32-9e5f-78c0d00b67cf', 'b5ae2cfe-89de-571f-2edd-c718eac35a7e', '투사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2a8d574b-c55d-f3bc-a402-e613647c4cbd', 'b5ae2cfe-89de-571f-2edd-c718eac35a7e', '공감', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b5ae2cfe-89de-571f-2edd-c718eac35a7e', 'fcf98cad-6ba4-9dbf-b098-8546aedfb21e', '① 동일화', '정답 ①. 누 Hi 동일호Kldentification) 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기 와 비슷한 점을 발견하는 것이다. 1', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '11111111-1111-1111-1111-111111111104', 'mcq', '아담스(Edward Adams)의 사고연쇄반응이론 5단계에서 불안전 행동 및 불안전 상태는 어느 단계에 해당되는가?', 2, 487)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eabbdbec-7f9f-96f5-dce5-5b22c3803b75', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제1단계: 관리구조', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657d29db-8dc8-10cf-9c94-035cad787510', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제2단계: 작전적 에러', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a85efff-c4db-0e32-9829-51206188342a', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제 3단계: 전술적 에러', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04d89d7e-00cd-cf5b-f1fb-1862a8422c95', '7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '제4단계: 사고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d', '3a85efff-c4db-0e32-9829-51206188342a', '③ 제 3단계: 전술적 에러', '정답 ③. 제 3단계: 전술적 에러', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6f3182f8-0021-0a85-d9f2-6e61c5317646', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업재해통계업무처리규정」상 사망만인율 계산 시 적용하 는 사망자 수에 대한 설명으로 옳지 않은 것은?', 2, 488)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9bd0b4c1-9b80-16c8-cef3-d97276d5b56c', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '사고발생일로부터 1년을 경과하여 사망한 경우는 제외', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db6f0890-bab8-fde3-2cb0-34a0b10cd834', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '통상의 출퇴근에 의한 사망자는 제외한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6336223-6bf2-e6c4-4388-3c053b3777c5', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '체육행사에 의한 사망자는 제외한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1375002e-e12f-d2a7-2b7e-bf60b9090880', '6f3182f8-0021-0a85-d9f2-6e61c5317646', '근로복지공단의 유족급여가 지급된 사망자(지방고용노', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6f3182f8-0021-0a85-d9f2-6e61c5317646', '1375002e-e12f-d2a7-2b7e-bf60b9090880', '④ 근로복지공단의 유족급여가 지급된 사망자(지방고용노', '정답 ④. 동관서의 산재미보고 적발 사망자 미포함)를 말한다. a “사망자 수”는 근로복지공단의 유족급여가 지급된 사망자(지방 고용노동관서의 산재미보고 적발 사망자 포함)수를 말한다. 다만. 사업장 밖의 교통사고(운수업. 음식숙박업은 사업장 밖의 교통사고도 포함) • 체육 행사 • 폭력행위 • 통상의 출퇴근에 의한 사망. 사고발생일로부터 1년을 경 과하여 사망한 경우는 제외한다. m', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '11111111-1111-1111-1111-111111111104', 'mcq', '기술지원규정(KOSHA GUIDE)에 대한 설명으로 옳지 않은 것은?', 2, 489)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e92bbe28-f755-22e4-f970-5c5ec5106326', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '가이드 표시, 분야별 분류기호, 세부분야별 분류기호,', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5f7cdd1-ce13-2a8d-c912-8dba9d1d0dc8', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '법적 기준이 아닌 사업장의 이해를 돕기 위해 작성된', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68b047cf-be23-d0c4-648f-bd7b6e3cfbb1', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '안전보건 향상을 위해 참고할 수 있는 기술적 내용을', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b38de69-74e8-82a1-ad6b-5baad7881efd', '30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '한국산업안전보건공단에 의해 제 - 개정되고 있다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9', '68b047cf-be23-d0c4-648f-bd7b6e3cfbb1', '③ 안전보건 향상을 위해 참고할 수 있는 기술적 내용을', '정답 ③. 안전보건 향상을 위해 참고할 수 있는 기술적 내용을', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1681f995-5518-e586-e21c-7a1aef17518d', '11111111-1111-1111-1111-111111111104', 'mcq', '모든 시스템안전 분석에서 제일 첫 번째 단계의 분석으로, 실행되고 있는 시스템을 포함한 모든 것의 상태를 인식하고 시스템의 개발단계에서 시스템 고유의 위험상태를 식별하 여 예상되고 있는 재해의 위험수준을 결정하는 것을 목적으 로 하는 위험분석 기법은?', 2, 490)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21e97f38-7b2e-68a9-0687-a7c87cf262c7', '1681f995-5518-e586-e21c-7a1aef17518d', '결함위험분석 (FHA； Fault Hazard Analysis)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ce78d5f-38e2-764e-205d-e589739a3bdd', '1681f995-5518-e586-e21c-7a1aef17518d', '시스템위험분석(SHA； System Hazard Analysis)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('012dc590-d6b0-c4cc-5dec-71f710099ca3', '1681f995-5518-e586-e21c-7a1aef17518d', '예비위험분석(PHA； Preliminary Hazard Analysis)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb7a6af-50f5-5017-a078-ccc1310165d0', '1681f995-5518-e586-e21c-7a1aef17518d', '운용위험분석 (OHA； Operating Hazard Analysis)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1681f995-5518-e586-e21c-7a1aef17518d', '012dc590-d6b0-c4cc-5dec-71f710099ca3', '③ 예비위험분석(PHA； Preliminary Hazard Analysis)', '정답 ③. 예비위험분석(PHA； Preliminary Hazard Analysis)', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH Ufting Guideline에서 권장무게한계(RWL) 산출에 사용되는 계수가 아닌 것은?', 2, 491)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7355aea3-3656-cefa-60f7-4849e628ecc6', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '휴식계수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18415fac-0c2d-516c-f931-663a3859209d', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '수평계수', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d910441e-2dbf-fa4d-aec1-7b46a3950973', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '수직계수', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e4596db-ece1-6544-6482-05ed17703d9d', 'bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '비대칭계수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d', '7355aea3-3656-cefa-60f7-4849e628ecc6', '① 휴식계수', '정답 ①. 휴식계수', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7b2f5fff-264a-39a0-1e50-f7e156df2604', '11111111-1111-1111-1111-111111111104', 'mcq', '일반적으로 은행의 접수대 높이나 공원의 벤치를 설계할 때 가장 적합한 인체측정자료의 응용원칙은?', 2, 492)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b0ff2d0-a77f-25fc-d7f3-9ed2aa9baf46', '7b2f5fff-264a-39a0-1e50-f7e156df2604', '조절식 설계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e7b473-9dad-928c-e2dd-0dc97d5ac8bd', '7b2f5fff-264a-39a0-1e50-f7e156df2604', '평균치를 이용한 설계', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd89f2f7-99ee-4bad-2fcd-98ae9cc70fa3', '7b2f5fff-264a-39a0-1e50-f7e156df2604', '최대치를이용한설계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a25f2f07-24aa-bac5-59bc-3b870b029e2f', '7b2f5fff-264a-39a0-1e50-f7e156df2604', '최소치를이용한설계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7b2f5fff-264a-39a0-1e50-f7e156df2604', '57e7b473-9dad-928c-e2dd-0dc97d5ac8bd', '② 평균치를 이용한 설계', '정답 ②. 평균치 설계 최대치수나 최소치수를 기준 또는 조절식으로 설계하기 부적절한 경우, 평 균치를 기준으로 설계한다. ® 손님의 평균 신장을 기준으로 만든 은행의 계산대 등 1', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0551e2b2-95f1-3a55-9abf-15107824079f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 비파괴시험의 종류에 해당하지 않는 것은?', 2, 493)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42a4c54d-3f07-6fbb-639c-ee63f476610a', '0551e2b2-95f1-3a55-9abf-15107824079f', '와류탐상시험', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6dfdfb0-f6ae-4981-0718-3a917727356d', '0551e2b2-95f1-3a55-9abf-15107824079f', '초음파탐상시험', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab001cf8-42a2-9cca-1bd0-7e66ec96079b', '0551e2b2-95f1-3a55-9abf-15107824079f', '인장시험', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d1b6ce9-f127-fc42-a0c6-c67d9413f69e', '0551e2b2-95f1-3a55-9abf-15107824079f', '방사선투과시험', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0551e2b2-95f1-3a55-9abf-15107824079f', 'ab001cf8-42a2-9cca-1bd0-7e66ec96079b', '③ 인장시험', '정답 ③. 인장시험', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bd7e5a95-40d0-4423-df53-dec4f07df33f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 아세틸렌 용접장치 발생기실의 구조에 관한 설명으로 옳지 않은 것은?', 2, 494)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5588d641-b3cb-5d41-c0df-5dad18cd9aea', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '벽은불연성 재료로 할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93a05f81-0dbf-896a-0722-1e62247be665', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '지붕과 천장에는 얇은 철판과 같은 가벼운 불연성 재료', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4235d5b6-014e-e043-b0af-d0c0767d5a9f', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '벽과 발생기 사이에는 작업에 필요한 공간을 확보할 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0809281d-ca64-a459-6c7f-5ffbdeff2a55', 'bd7e5a95-40d0-4423-df53-dec4f07df33f', '배기통을 옥상으로 돌출시키고 그 개구부를 출입구로', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bd7e5a95-40d0-4423-df53-dec4f07df33f', '0809281d-ca64-a459-6c7f-5ffbdeff2a55', '④ 배기통을 옥상으로 돌출시키고 그 개구부를 출입구로', '정답 ④. 부터 1.5[m] 거 리 이내에 설치할 것 M!EM 발생기실의 구조 벽은 불연성 재료로 하고 철근 콘크리트 또는 그 밖에 이와 같은 수준이 거나 그 이상의 강도를 가진 구조로 할 것 • 지붕과 천장에는 얇은 철판이나 가벼운 불연성 재료를 사용할 것 • 바닥면적의 스 이상의 단면적을 가진 배기통을 옥상으로 돌출시키고 그 개구부를 창이나 출입구로부터 1.5[m] 이상 떨어지도록 할 것 • 출입구의 문은 불연성 재료로 하고 두께 1.5[mm] 이상의 철판이나 그 밖에 그 이상의 강도를 가진 구조로 할 것 • 벽과 발생기 사이에는 발생기의 조정 또는 카바이드 공급 등의 작업을 방해하지 않도록 간격을 확보할 것 5B1', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5cd09b83-4a1d-be2c-8089-048b783de7fd', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 산업용 로봇의 작동범위에서 교시 등의 작업을 하는 경우에 로봇에 의한 위험을 방지하 기 위한 조치사항으로 틀린 것은?', 2, 495)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f09a0e06-1eb6-a7fb-2e08-bfa51dd3f729', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '2명 이상의 근로자에게 작업을 시킬 경우의 신호방법', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d18eebd6-cd9a-3c0c-8b46-ecb6545a7ebb', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업 중의 매니퓰레이터 속도에 관한 지침을 정하고 그', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d294f088-c5fc-6bab-8249-4e05bbcf9094', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업을 하는 동안 다른 작업자가 작동시킬 수 없도록', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebcca066-dedc-f4be-5ce5-a0c0093a997f', '5cd09b83-4a1d-be2c-8089-048b783de7fd', '작업에 종사하고 있는 근로자가 이상을 발견하면 즉시', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5cd09b83-4a1d-be2c-8089-048b783de7fd', 'ebcca066-dedc-f4be-5ce5-a0c0093a997f', '④ 작업에 종사하고 있는 근로자가 이상을 발견하면 즉시', '정답 ④. 안전담당자에 게 보고하고 계속해서 로봇을 운전한다. 9 산업용 로봇의 작업 시 작업에 종사하고 있는 근로자 또는 그 근 로자를 감시하는 사람은 이상을 발견하면 즉시 로봇의 운전을 정지시키기 위한 조치를 하여야 한다', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('30ab0ba9-99aa-7555-f316-31717da856ad', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 변전소에서 고장전류가 유입되었을 때 도전성 구조물 과 그 부근 지표상의 점과의 사이（약 1[m｝）의 허용접촉전압 씌으 은 약 몇 [V]인가?（단, 심실세동전류: 4= [A], 인체 의 저항: 1,OOO[Q], 지표면의 저항률: 150[Q • m], 통전시 간을 1초로 한다.）', 2, 496)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9739b2d5-3808-a955-204a-bcfc0b20a994', '30ab0ba9-99aa-7555-f316-31717da856ad', '164', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('851c6203-5d04-db0a-26a9-c1303142619d', '30ab0ba9-99aa-7555-f316-31717da856ad', '186', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eadb6be3-316c-325c-923f-9e55c7b7d091', '30ab0ba9-99aa-7555-f316-31717da856ad', '202', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51ef42ae-fed4-fbfb-d370-7785f86bbd18', '30ab0ba9-99aa-7555-f316-31717da856ad', '228', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('30ab0ba9-99aa-7555-f316-31717da856ad', 'eadb6be3-316c-325c-923f-9e55c7b7d091', '③ 202', '정답 ③. 202', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('420ff15c-6112-daab-a554-3d33e82790de', '11111111-1111-1111-1111-111111111104', 'mcq', '유입차단기의 약어로 옳은 것은?', 2, 497)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09cc6ab9-6175-ff87-6bb0-378e7cbfa33a', '420ff15c-6112-daab-a554-3d33e82790de', 'OCB', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be0e7272-a4b0-f870-756d-b69c93698c09', '420ff15c-6112-daab-a554-3d33e82790de', 'ELB', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c779285-4ade-4e79-bce8-3efa3f867c9b', '420ff15c-6112-daab-a554-3d33e82790de', 'VCB', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6927992e-3ed7-92fb-e125-e268f5fdb8c1', '420ff15c-6112-daab-a554-3d33e82790de', 'MCCB', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('420ff15c-6112-daab-a554-3d33e82790de', '09cc6ab9-6175-ff87-6bb0-378e7cbfa33a', '① OCB', '정답 ①. OCB', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a1d28050-0526-0ec2-9095-160e42d83f53', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」제319조에 따라 감전될 우려가 있는 장소에서 작업을 하기 위해서는 전로를 차단하 여야 한다. 전로 차단을 위한 시행 절차 중 틀린 것은?', 2, 498)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d5aa150-896c-ac34-5f52-9ddeb5c6428e', 'a1d28050-0526-0ec2-9095-160e42d83f53', '전기기기 등에 공급되는 모든 전원을 관련 도면, 배선', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79a6b325-1a98-f54a-8151-3b2ae4363d1d', 'a1d28050-0526-0ec2-9095-160e42d83f53', '각 단로기를 개방한 후 전원 차단', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49b6fc4a-1c95-530b-8986-38ab4552b6f8', 'a1d28050-0526-0ec2-9095-160e42d83f53', '단로기 개방 후 차단장치나 단로기 등에 잠금장치 및', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('622a2c3e-abb2-27f2-e413-a2578f3251d6', 'a1d28050-0526-0ec2-9095-160e42d83f53', '잔류전하 방전 후 검전기를 이용하여 작업 대상 기기가', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a1d28050-0526-0ec2-9095-160e42d83f53', '79a6b325-1a98-f54a-8151-3b2ae4363d1d', '② 각 단로기를 개방한 후 전원 차단', '정답 ②. 각 단로기를 개방한 후 전원 차단', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9d09ea62-e5d0-0de9-1089-93dee82655d2', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 위험물질의 종류와 해당 물 질이 올바르게 연결된 것은?', 2, 499)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f32f372d-3927-d982-44df-20c17f0afc57', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '부식성 산류-아세트산（농도 90[%]）', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1b0f01e0-979d-22b8-67a1-0f18269228ec', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '부식성 염기류—아세톤（농도 90[%]）', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc91ab85-f702-b78e-fe30-fea387545ca0', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '인화성 가스-이황화탄소', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8d4a288-e2c8-ed07-539c-d46f7ba6d22e', '9d09ea62-e5d0-0de9-1089-93dee82655d2', '인화성 가스-수산화칼륨', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9d09ea62-e5d0-0de9-1089-93dee82655d2', 'f32f372d-3927-d982-44df-20c17f0afc57', '① 부식성 산류-아세트산（농도 90[%]）', '정답 ①. 농도 60[%] 이상인 아세트산은 부식성 산류에 해당한다. 오답해설 아세톤 一 인화성 액체 ® 이황화탄소 - 인화성 액체 © 농도 40[%] 이상인 수산화칼륨 一 부식성 염기류 »', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cb76be63-1e76-84f2-637b-7676f802b616', '11111111-1111-1111-1111-111111111104', 'mcq', '송풍기의 회전차 속도가 1,300[rpm]일 때 송풍량이 분당 300[m3]였다. 송풍량을 분당 400[m3]로 증가시키고자 한 다면 송풍기의 회전차 속도는 약 몇 [rpm]으로 하여야 하는 가?', 2, 500)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7aef4b7b-88dc-d3b1-5189-4c6c5d6bfa6e', 'cb76be63-1e76-84f2-637b-7676f802b616', '1,533', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('141e480b-8b03-8391-5b36-f0db7edaf9c5', 'cb76be63-1e76-84f2-637b-7676f802b616', '1,733', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d7bea70-9be4-4355-a727-fa775c1db517', 'cb76be63-1e76-84f2-637b-7676f802b616', '1,967', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d3cd1a0-0441-dfe0-9c3b-266b204e40c5', 'cb76be63-1e76-84f2-637b-7676f802b616', '2,167', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cb76be63-1e76-84f2-637b-7676f802b616', '141e480b-8b03-8391-5b36-f0db7edaf9c5', '② 1,733', '정답 ②. 1,733', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c33c0b92-9556-d4cf-e192-3663e062534d', '11111111-1111-1111-1111-111111111104', 'mcq', '할론소화약제 중 H기on 2402의 화학식으로 옳은 것은?', 2, 501)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a5db05d-2d46-161b-6e0b-58742a8ae33f', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2F4Br2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40933588-bdbe-773e-f416-bc1869416533', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2H4Br2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('614fd856-9ce6-88e4-9ca8-d66992ebd26a', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2Br4H2', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50a0dbb9-e568-70f0-0562-93f3ddb62320', 'c33c0b92-9556-d4cf-e192-3663e062534d', 'C2Br4F2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c33c0b92-9556-d4cf-e192-3663e062534d', '3a5db05d-2d46-161b-6e0b-58742a8ae33f', '① C2F4Br2', '정답 ①. C2F4Br2', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('09fb702f-b409-d829-397a-96be2a089dae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 인화성 가스가 발생할 우려가 있는 지하작업장에서 작업하는 경우 조치사항으로 적절하 지 않은 것은?', 2, 502)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddac6da0-066b-5172-bb42-064995110efb', '09fb702f-b409-d829-397a-96be2a089dae', '매일 작업을 시작하기 전 해당 가스의 농도를측정한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a940feb0-6e5b-87be-6677-f5881955e0a1', '09fb702f-b409-d829-397a-96be2a089dae', '가스의 누출이 의심되는 경우 해당 가스의 농도를 측정', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0bde3af5-1a26-57f0-2eb5-68bcaa2d092b', '09fb702f-b409-d829-397a-96be2a089dae', '장시간 작업을 계속하는 경우 6시간마다 해당 가스의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6340d6a7-2ecd-ba53-d8cb-bcb04c9d193d', '09fb702f-b409-d829-397a-96be2a089dae', '가스의 농도가 인화하한계 값의 25[%] 이상으로 밝혀', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('09fb702f-b409-d829-397a-96be2a089dae', '0bde3af5-1a26-57f0-2eb5-68bcaa2d092b', '③ 장시간 작업을 계속하는 경우 6시간마다 해당 가스의', '정답 ③. 진 경우에는 즉시 근로자를 안전한 장소에 대피시킨다. K1H 지하작업장 작업 시 화재 방지를 위한 조치사항 가스의 농도를 측정하는 사람을 지명하고 다음의 경우에 그로 하여금 해당 가스의 농도를 측정하도록 하여야 한다. • 매일 작업을 시작하기전 • 가스의 누출이 의심되는 경우 • 가스가 발생하거나 정체할 위험이 있는 장소가 있는 경우 • 장시간 작업을 계속하는 경우（이 경우 4시간마다 가스 농도를 측정） EM8I', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9e983ec-94f3-5c37-a4ff-390465589512', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지반의 종류에 따른 굴착면의 기울 기 기준으로 옳지 않은 것은?', 2, 503)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f7b277f-88dd-e3a2-42a2-288150626278', 'f9e983ec-94f3-5c37-a4ff-390465589512', '경암一 1 ： 1.0', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19243dc4-f750-cd49-ae6d-f29385e91b17', 'f9e983ec-94f3-5c37-a4ff-390465589512', '연암 및 풍화암 -i：i.o', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55d686e9-a293-ef07-1f12-32e6f8612e01', 'f9e983ec-94f3-5c37-a4ff-390465589512', '모래 — 1 ： 1.8', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a12928c-3132-d15b-b9db-38366c42b957', 'f9e983ec-94f3-5c37-a4ff-390465589512', '그 밖의 흙 - 1 : 1.2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9e983ec-94f3-5c37-a4ff-390465589512', '8f7b277f-88dd-e3a2-42a2-288150626278', '① 경암一 1 ： 1.0', '정답 ①. 굴착면의 기울기 기준 지반의 종류 굴착면의 기울기 모래 1 : 1.8 연암 및 풍화암 1 : 1.0 경암 1 ：0.5 그 밖의 흙 1 : 1.2 miE!', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2902d477-4fbf-7b61-8b56-6e276805493f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 양중기에 해당되지 않는 것 은?', 2, 504)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e5abbc49-896d-0ea8-cf2a-4f2a0366e487', '2902d477-4fbf-7b61-8b56-6e276805493f', '어스드릴', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fc6cb36-b207-9d4c-d862-f4d144a8fa45', '2902d477-4fbf-7b61-8b56-6e276805493f', '크레인', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fa134fa-8e95-c285-0d17-691037dde3b5', '2902d477-4fbf-7b61-8b56-6e276805493f', '리프트', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('283c868c-13fd-5fa0-a161-257dbf92cb92', '2902d477-4fbf-7b61-8b56-6e276805493f', '곤돌라', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2902d477-4fbf-7b61-8b56-6e276805493f', 'e5abbc49-896d-0ea8-cf2a-4f2a0366e487', '① 어스드릴', '정답 ①. 어스드릴은 차량계 건설기계에 해당한다. 양중기의종류 • 크레인(호이스트 (Hoist) 포함) • 이동식 크레인 • 리프트(이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로 한정) •곤돌라 •승강기 1', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('13f3cf26-e011-e3ab-160a-d99ea9a09445', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에서 높이 5[m] 이상인 콘크리트 교량의 설치작업 을 하는 경우 재해예방을 위해 준수해야 할 사항으로 옳지 않은것은?', 2, 505)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9cd38924-e09e-4eda-f89e-58454dc60fb3', '13f3cf26-e011-e3ab-160a-d99ea9a09445', '작업을 하는 구역에는 관계 근로자가 아닌 사람의 출입', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a9696b8-bb41-fc05-fe8a-88e0185c3083', '13f3cf26-e011-e3ab-160a-d99ea9a09445', '재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('40098d45-a780-f286-3e2e-41982bcd29ae', '13f3cf26-e011-e3ab-160a-d99ea9a09445', '중량물 부재를 크레인 등으로 인양하는 경우에는 부재', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7acd939-3efd-61b6-733c-effe535bdf22', '13f3cf26-e011-e3ab-160a-d99ea9a09445', '자재나 부재의 낙하 ■ 전도 또는 붕괴 등에 의하여 근로', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('13f3cf26-e011-e3ab-160a-d99ea9a09445', '0a9696b8-bb41-fc05-fe8a-88e0185c3083', '② 재료, 기구 또는 공구 등을 올리거나 내릴 경우에는 근', '정답 ②. 재료, 기구 또는 공구 SS 올리거나 내릴 경우에는 근 로자로 하여금 크레인을 이용하도록 하고, 달줄, 달포 대 등의 사용을 금하도록 할 것 (8) 중량물 부재를 크레인 등으로 인양하는 경우에는 부재 에 인양용 고리를 견고하게 설치하고, 인양용 로프는 부재에 두 군데 이상 결속하여 인양하여야 하며, 중량 물이 안전하게 거치되기 전까지는 걸이로프를 해제시 자재나 부재의 낙하ㆍ전도 또는 붕괴 등에 의하여 근로 자에게 위험을 미칠 우려가 있을 경우에는 출입금지구 역의 설정, 자재 또는 가설시설의 좌굴(0458) 또는 변형 방지를 위한 보강재 부착 등의 조치를 할 것 교량의 설치 -해체 또는 변경작업을 하는 Bol 재료. 기구 또는 공구 등을 올리거나 내리는 경우에는 근로자로 하여금 달줄, 달포대 SS 사용하도록 하여야 한다', array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('90337d61-eee8-5bfd-2c22-8e14d9fde183', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 외부 측면의 표시색이 회색이 아닌 것은?', 2, 506)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1575ab4-3346-0e77-4746-c37e3c555e2d', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '할로겐용 정화통', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f01b8338-ac47-1c9d-677b-4c7e1cf86a10', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '황화수소용 정화통', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fab0f04f-8ecd-f266-f474-19f1548de08f', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '시안화수소용 정화통', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('013e9013-5835-6392-09c8-bf7f65fbb67b', '90337d61-eee8-5bfd-2c22-8e14d9fde183', '암모니아용정화통', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('90337d61-eee8-5bfd-2c22-8e14d9fde183', '013e9013-5835-6392-09c8-bf7f65fbb67b', '④ 암모니아용정화통', '정답 ④. 정화통 외부 측면의 표시색 종류 — 표시색 유기화합물용 정화통 _ 갈색 할25_정W'' i호수소i 정화통—— 회색 시안i&^i정화통 느 ___________________아 i자i 정화통 노란색 암모니아용 정화통 녹색 BBI', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('20da0023-7033-6777-31eb-790e6b7d6695', '11111111-1111-1111-1111-111111111104', 'mcq', '부주의의 현상 중 하나로 혼미한 정신상태에서 심신이 피로 하거나 단조로운 반복작업 등이 원인이 되는 경우는?', 2, 507)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0edff13c-b7fb-75ae-f718-d4c995bc0661', '20da0023-7033-6777-31eb-790e6b7d6695', '의식의단절', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3e5b47d-0f4f-d45d-b373-b91d651f8154', '20da0023-7033-6777-31eb-790e6b7d6695', '의식수준저하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1b342391-25b9-f2c0-28e2-2504975f9ea1', '20da0023-7033-6777-31eb-790e6b7d6695', '의식의과잉', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d5bdc5a-1eaf-fae1-1250-81a5bea905af', '20da0023-7033-6777-31eb-790e6b7d6695', '의식의우회', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('20da0023-7033-6777-31eb-790e6b7d6695', 'c3e5b47d-0f4f-d45d-b373-b91d651f8154', '② 의식수준저하', '정답 ②. 부주의의 원인(현상) • 의식의 우회: 의식의 흐름이 옆으로 빗나가 발생하는 것(걱정, 고민. 욕 구불만 등에 의하여 정신을 빼앗기는 것)이다. • 의식수준의 저하: 혼미한 정신상태에서 심신이 피로할 경우나 단조로운 반복작업 둥의 경우에 일어나기 쉽다. • 의식의 단절: 지속적인 의식의 흐름에 단절이 생기고 공백의 상태가 나 타나는 것으로 주로 질병의 경우에 나타난다. • 의식의 과잉: 돌발사태에 직면하면 주의가 일점(주시점)에 집중되어 판 단정지 및 긴장 상태에 빠지게 되어 유효한 대응을 못하게 된다. • 의식의 혼란: 외적 조건에 의해 의식이 혼란하거나 분산되어 위험요인 에 대응할 수 없을 때 발생한다. E ^l', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1e445429-a7fe-306d-6a71-45149903f73b', '11111111-1111-1111-1111-111111111104', 'mcq', '길포드의 Y-G 성격검사에서 정서불안적, 활동적, 외향적 성향에 해당하는 형의 종류는?', 2, 508)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7c652fa-8040-7795-3b93-9c4779d76c16', '1e445429-a7fe-306d-6a71-45149903f73b', 'A형', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89757dab-830a-c79a-5475-0b91a8ae757e', '1e445429-a7fe-306d-6a71-45149903f73b', 'B형', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('673435de-259a-5764-103c-22d4404d8c2a', '1e445429-a7fe-306d-6a71-45149903f73b', 'C형', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45166fa4-b4e9-837a-0cf0-a0bdd5751e69', '1e445429-a7fe-306d-6a71-45149903f73b', 'D형', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1e445429-a7fe-306d-6a71-45149903f73b', '89757dab-830a-c79a-5475-0b91a8ae757e', '② B형', '정답 ②. 찌 길포드의 Y-G 성격검사 프로필 유형 • A형（평균형）: 조화적, 적응적 • B형（우편형）: 정서불안적, 활동적, 외향적 • C형（좌편형）: 안전소극형 • D형（우하형）: 안정, 적응. 적극형 • E 형（좌하형）: 불안정, 부적응, 수동형 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5e9ce289-3b12-52e7-60ad-503c0062763f', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건법령」상 중대재해에 해당되지 않는 것은?', 2, 509)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6080d178-7c71-95c2-68fc-4c9fa8486751', '5e9ce289-3b12-52e7-60ad-503c0062763f', '3개월 이상의 요양을 요하는 부상자가 동시에 2명 이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2', '5e9ce289-3b12-52e7-60ad-503c0062763f', '직업성 질병자가동시에 5명 이상 발생한 재해', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d30e1bb6-3c59-8a59-f847-199036c66373', '5e9ce289-3b12-52e7-60ad-503c0062763f', '부상자가 동시에 10명 이상 발생한 재해', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59072d8b-252a-878e-5b5f-a2d3cff5cd2b', '5e9ce289-3b12-52e7-60ad-503c0062763f', '사망자가 1명 이상 발생한 재해', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5e9ce289-3b12-52e7-60ad-503c0062763f', 'bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2', '② 직업성 질병자가동시에 5명 이상 발생한 재해', '정답 ②. 직업성 질병자가동시에 5명 이상 발생한 재해', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법(FTA)에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 510)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb6fa231-5f0e-e93c-b215-5d6f2afa475b', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1bce5a9f-9f25-8f77-f01c-581a9527cdf3', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7712bd4-9fa5-c360-bc04-da3d75d4191a', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbb99be9-d385-cee2-33c8-9f6c437fbba2', '5ef85f62-f54b-7637-fddb-ed2b4cfa657b', '미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b', 'fbb99be9-d385-cee2-33c8-9f6c437fbba2', '④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', '정답 ④. 최소한의 컷셋이다. »廢 미니멀 컷셋은 시스템의 위험성을 표시하는 것이다. 미니멀 패스셋은 시스템의 신뢰성을 표시하는 것이다. 미니멀 패스셋은 정상사상(고장)이 일어나지 않는 최소한의 패스셋이다. E S1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6427f7e4-e710-2fe7-6735-74f944ccbe7e', '11111111-1111-1111-1111-111111111104', 'mcq', '태양광선이 내리쬐는 옥외 장소의 자연습구온도 25『C], 흑 구온도 2O[℃], 건구온도 28[℃]일 때, 습구흑구온도지수 [℃] 는?', 2, 511)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2c7a42c-6536-e831-982f-c7ea67d3d23e', '6427f7e4-e710-2fe7-6735-74f944ccbe7e', '21.8|?0]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27b898bb-3f49-f233-a093-922507e27892', '6427f7e4-e710-2fe7-6735-74f944ccbe7e', '24.3[t]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('517d9eb3-1d07-ed8e-d9ce-db76d066ca7c', '6427f7e4-e710-2fe7-6735-74f944ccbe7e', '26.1[℃]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed76860a-a9fd-f04a-1916-45021621b99f', '6427f7e4-e710-2fe7-6735-74f944ccbe7e', '26.6[幻]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6427f7e4-e710-2fe7-6735-74f944ccbe7e', '27b898bb-3f49-f233-a093-922507e27892', '② 24.3[t]', '정답 ②. 24.3[t]', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('276133bb-f9df-82e4-7a73-633342fc73ec', '11111111-1111-1111-1111-111111111104', 'mcq', '소음으로부터 3O[m] 떨어진 곳의 음압수준이 140[dB]이면 3,000[m] 떨어진 곳의 음의 강도는 얼마인가?', 2, 512)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4b23c86c-0a26-3807-0ebd-500aae1319c6', '276133bb-f9df-82e4-7a73-633342fc73ec', '100[dB]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2694ffbd-d0e7-a25b-d587-55f029fc00f5', '276133bb-f9df-82e4-7a73-633342fc73ec', '110[dB]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9520f553-3bc9-abff-cb6a-635ef527db70', '276133bb-f9df-82e4-7a73-633342fc73ec', '120[dB]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8e5d578-d3fb-7626-2a30-9771e1f90bac', '276133bb-f9df-82e4-7a73-633342fc73ec', '140[dB]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('276133bb-f9df-82e4-7a73-633342fc73ec', '4b23c86c-0a26-3807-0ebd-500aae1319c6', '① 100[dB]', '정답 ①. 100[dB]', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('326c53d4-338f-dd75-2e05-95fc331cc113', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 신호검출이론(SDT)에서 두 정규분포 곡선이 교차 하는 부분에 판별기준이 놓였을 경우 Beta 값으로 옳은 것은?', 2, 513)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b7e57f9-18b4-294b-7e2d-ba05fe70a01f', '326c53d4-338f-dd75-2e05-95fc331cc113', 'Beta=0', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6c981a6-b22c-c2b6-4b9e-49e8a422aaf7', '326c53d4-338f-dd75-2e05-95fc331cc113', 'Beta< 1', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b8ff5a4-fdf1-308c-0871-787e8dd00841', '326c53d4-338f-dd75-2e05-95fc331cc113', 'Beta= 1', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('998eac8a-d40d-ad47-024a-ae0fbc27d8ab', '326c53d4-338f-dd75-2e05-95fc331cc113', 'Beta> 1', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('326c53d4-338f-dd75-2e05-95fc331cc113', '9b8ff5a4-fdf1-308c-0871-787e8dd00841', '③ Beta= 1', '정답 ③. 신호검출이론(SDT； Signal Detection Theory) 배경소음｛Noise)이 신호검출에 미치는 영향에 관한 이론으로 기준점에서 두 곡선의 높이의 비(신호/소음｝를 으라고 하며. 두 정규분포 곡선이 교차하 는 부분에 판별기준이 놓였을 경우 으 1이다. 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('516bcc9d-b621-a87b-08a9-73314143d8aa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 제조업 등 유해위험방지계획서 를 작성하고자 할 때 관련 규정에 따라 1 명 이상 포함시켜 야 하는 사람의 자격으로 적합하지 않은 것은?', 2, 514)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d65e62d-da66-f05b-a424-66d91e9f8f94', '516bcc9d-b621-a87b-08a9-73314143d8aa', '한국산업안전보건공단이 실시하는 관련교육을 8시간', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68f1a6fb-a3e4-6c15-7e4f-c41b17476159', '516bcc9d-b621-a87b-08a9-73314143d8aa', '기계, 재료, 화학, 전기, 전자, 안전관리 또는 환경분야', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d10601f-ef20-12d4-e8b9-c3cd0050dc77', '516bcc9d-b621-a87b-08a9-73314143d8aa', '관련분야 기사 자격을 취득한 사람으로서 해당 분야에', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2e89a0d-84b2-79b8-2d8f-f485c5509e12', '516bcc9d-b621-a87b-08a9-73314143d8aa', '기계안전, 전기안전, 화공안전분야의 산업안전지도사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('516bcc9d-b621-a87b-08a9-73314143d8aa', '5d65e62d-da66-f05b-a424-66d91e9f8f94', '① 한국산업안전보건공단이 실시하는 관련교육을 8시간', '정답 ①. 또는 산업보건지도사 자격을 취득한 사람 K9 제조업 등 유해위험방지계획서 작성자 계획서를 작성할 때 다음의 자격을 갖춘 사람 또는 공단이 실시하는 관련 교육을 20시간 이상 이수한 사람 중 1명 이상을 포함시켜야 한다. • 기계, 재료. 화학. 전기 전자. 안전관리 또는 환경분야 기술사 자격을 취 득한 사람 • 기계안전 - 전기안전 화공안전분야의 산업안전지도사 또는 산업보건지 도사 자격을 취득한 사람 • 관련분야 기사 • 산업기사 자격을 취득한 사람으로서 해당 분야에서 3년 (산업기사는 5년) 이상 근무한 경력이 있는 사람 E S1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '11111111-1111-1111-1111-111111111104', 'mcq', '연삭숫돌의 파괴원인으로 거리가 가장 먼 것은?', 2, 515)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f04e35c-769c-3e68-977a-61483f95ee76', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌이 외부의 큰 충격을 받았을 때', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91242482-26d1-7b31-3667-56e31bdc5382', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌의 회전속도가 너무 빠를 때', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07804abc-6992-3eef-c84a-1a03aebed497', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '숫돌 자체에 이미 균열이 있을 때', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('090c311e-ba36-1a3c-40d8-ef1f77b1da23', '0df06330-80cd-c7f6-4eea-adbf6bff07a1', '플랜지 직경이 숫돌 직경의 4 이상일 때', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0df06330-80cd-c7f6-4eea-adbf6bff07a1', '090c311e-ba36-1a3c-40d8-ef1f77b1da23', '④ 플랜지 직경이 숫돌 직경의 4 이상일 때', '정답 ④. 플랜지 지름이 현저하게 작을 때（플랜지 지름은 숫돌 직경의 i 이상인 것이 적당함） 연삭숫돌이 파괴된다. 연삭숫돌의 파괴 및 재해원인 • 숫돌에 균열이 있는 경우 • 숫돌이 고속으로 회전하는 경우 • 회전력이 결합력보다 큰 경우 • 무거운 물체가 충돌한 경우（외부의 큰 충격을 받은 경우） • 숫돌의 측면을 일감으로써 심하게 가압했을 경우 • 베어링이 마모되어 진동을 일으키는 경우 • 플랜지 지름이 현저하게 작은 경우 • 회전중심이 잡히지 않은 경우 E W1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH 지침에서 최대허용한계（MPL）는 활동한계（AL）의 몇 배인가?', 2, 516)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d97f6257-4d1d-c8ad-20fc-ad51186b1444', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '1배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '3배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a1285e3-f588-01c9-0dc3-856a372fc020', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '5배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b11b7296-dada-f2af-ffe5-686ff4d84fed', '9e350f8d-15fc-190f-2d3b-65644a82ff31', '9배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9e350f8d-15fc-190f-2d3b-65644a82ff31', 'e4d8b32e-87eb-2e5c-0deb-3fdce011373e', '② 3배', '정답 ②. 3배', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 롤러기의 급정지장치 설치방법으로 틀린 것은?', 2, 517)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('34b1c68a-b688-0fee-2cc6-6011ab2270f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '손조작식 급정지장치의 조작부는 밑면에서 1.8[m] 이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4da05446-e624-09fd-1997-69341cdcf3f4', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '복부조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b135daeb-02fc-6705-62ab-70476dd06029', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('77932eba-5362-22ae-51a2-7036f7cac783', 'f9da1869-3d76-cb3e-1e12-95ad2e783926', '급정지장치의 위치는 급정지장치의 조작부 중심점을', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f9da1869-3d76-cb3e-1e12-95ad2e783926', 'b135daeb-02fc-6705-62ab-70476dd06029', '③ 무릎조작식 급정지장치 조작부는 밑면에서 0.8[m] 이', '정답 ③. 기준으로 한다. 급정지장치 조작부의 위치 종류 설치위치 손조작식 밑면에서 1.8[m] 이내 복부조작식 밑면에서 Q.8[m] 이상 1.1[m] 이내 무릎조작식 밑면에서 0.6[m] 이내 ※ 위치는 급정지장치 조작부의 중심점을 기준으로 한다. 1', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?（단, 심실세동전류 는 쯔[mA]이며, 통전시간 7''는 1초, 전원은 정현파 교류 이다.）', 2, 518)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cab2c9bb-9414-d2b8-ef6a-21bd04933dba', '9298f097-426b-9258-b73e-112e4f3c92d5', '13.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '9298f097-426b-9258-b73e-112e4f3c92d5', '27.2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3aea2fb8-4c73-341a-8c89-db2f20181eae', '9298f097-426b-9258-b73e-112e4f3c92d5', '136.6', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('27b430fb-c16b-fb81-b9d7-f16df877238a', '9298f097-426b-9258-b73e-112e4f3c92d5', '272.2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9298f097-426b-9258-b73e-112e4f3c92d5', '21834b48-ee90-86f9-f3a4-c3fa289c7ca6', '② 27.2', '정답 ②. 27.2', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '11111111-1111-1111-1111-111111111104', 'mcq', '누전차단기의 구성요소가 아닌 것은?', 2, 519)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4b3ee5a-b7ac-0f19-1beb-228acc8919dd', '3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '누전검출부', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f160fc33-a61d-a885-469d-542e36264d36', '3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '영상변류기', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6146e5aa-1adc-d42b-12e6-a27794e00be0', '3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '차단장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85bd8b57-fc6e-8854-fe60-7422be833659', '3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '전력퓨즈', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f551fd7-47e5-fa08-6cb2-3de9ab9ba895', '85bd8b57-fc6e-8854-fe60-7422be833659', '④ 전력퓨즈', '정답 ④. 누전차단기 구성요소 영상변류기, 누전검출부, 트립코일, 차단장치 및 시험버튼 1 아1APTER 02 감전재해 및 방지대책 06', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', '11111111-1111-1111-1111-111111111104', 'mcq', '고속형 누전차단기의 동작시간으로 옳은 것은?', 2, 520)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df64ceda-be3d-8387-3db5-2362d7a0639c', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 o.i 초 이내', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91bb42f6-aab2-1969-f77b-ed81b11a990e', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.3초 이내', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01058185-5b2d-3ea6-9671-f87d1c46d5e1', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.01 초 이내', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8064c86-9db4-e6c7-0eb0-befcd0631ef4', '965e8231-a785-84d4-86c8-1128de8ea6dc', '정격감도전류에서 0.03초 이내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('965e8231-a785-84d4-86c8-1128de8ea6dc', 'df64ceda-be3d-8387-3db5-2362d7a0639c', '① 정격감도전류에서 o.i 초 이내', '정답 ①. 고속형 누전차단기의 동작시간은 정격감도전류에서 o.i초 이내 이어야 한다. 감전보호용 누전차단기 정격감도전류 30[mA] 이하. 동작시간 0.03초 이내 폐0 아4APTER 02 감전재해 및 방지대책', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
