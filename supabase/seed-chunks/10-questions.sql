-- chunk 10
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', '11111111-1111-1111-1111-111111111104', 'mcq', '설비보전은 예방보전과 사후보전으로 대별된다. 다음 중 예 방보전의 종류가 아닌 것은?', 2, 361)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c317ef8b-7b9d-fa0c-3620-e4e3d0651651', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '시간계획보전', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd812c9d-3bfa-803d-a175-c0456a33c75c', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '개량보전', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e47d6ada-3b31-f390-710a-dbfaa13db707', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '상태기준보전', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8327bacc-83d1-c4f1-bb6d-acc3e095b5c9', 'ab9e3b82-077e-2099-82ba-30fedc927d02', '적응보전', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab9e3b82-077e-2099-82ba-30fedc927d02', 'cd812c9d-3bfa-803d-a175-c0456a33c75c', '② 개량보전', '정답 ②. 예방보전의 종류 시간계획보전. 상태감시보전（상태기준보전）. 수명보전（적응보전） 개량보전 설비가 두 번 다시 동일한 원인에 의한 고장이 일어나지 않도록 연구를 거 듭하는 것으로 사후보전에 해당한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '11111111-1111-1111-1111-111111111104', 'mcq', '천장크레인에 중량 3[kN]의 화물을 2줄로 매달았을 때 매 달기용 와이어（sling wire）에 걸리는 장력은 약 몇 [kN]인 가?（단. 매달기용 와이어（sling wire） 2줄 사이의 각도는 55°이다.）', 2, 362)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66496ca5-cda0-6326-655f-ced7cee86493', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('540afe1f-2c66-4090-d802-db814f925616', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '1.7', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f771b8ef-707d-da57-e38d-52def50eca0d', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.0', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5514dcf7-e13b-8c84-a796-afece36522f4', '9ff2160b-4f9e-a51d-2595-8236a2681a1d', '2.3', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ff2160b-4f9e-a51d-2595-8236a2681a1d', '540afe1f-2c66-4090-d802-db814f925616', '② 1.7', '정답 ②. 1.7', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cefeece6-2a29-aaa4-d548-57d554eb9dbd', '11111111-1111-1111-1111-111111111104', 'mcq', '조작자의 신체부위가 위험한계 밖에 위치하도록 기계의 조 작장치를 위험구역에서 일정거리 이상 떨어지게 하는 방호 장치는?', 2, 363)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7187e663-dc85-0e9f-5ed8-3274f68edc19', 'cefeece6-2a29-aaa4-d548-57d554eb9dbd', '덮개형 방호장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c661226e-c942-d6c0-ef79-1524f248b950', 'cefeece6-2a29-aaa4-d548-57d554eb9dbd', '차단형 방호장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd0deca7-a7af-fb22-c2fd-bf6aa64af485', 'cefeece6-2a29-aaa4-d548-57d554eb9dbd', '위치제한형 방호장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fac6b96f-246e-21d8-8235-51272b0d7d3a', 'cefeece6-2a29-aaa4-d548-57d554eb9dbd', '접근반응형 방호장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cefeece6-2a29-aaa4-d548-57d554eb9dbd', 'bd0deca7-a7af-fb22-c2fd-bf6aa64af485', '③ 위치제한형 방호장치', '정답 ③. 위치제한형 방호장치 작업자의 신체부위가 위험한계 밖에 있도록 기계의 조작장치를 위험구역 에서 일정거리 이상 떨어지게 한 방호장치（양수조작식 안전장치）이다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 아세틸렌 용접장치의 아세틸렌 발생 기실을 설치하는 경우 준수하여야 하는 사항으로 옳은 것 은?', 2, 364)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19d7d10c-4422-f31e-9a1f-ed937ecdd813', '173ad79f-edb9-2cb1-0431-a8067bb169af', '벽은 가연성 재료로 하고 철근 콘크리트 또는 그 밖에', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b728f5b-a690-6144-1aaf-2b792eaa5aea', '173ad79f-edb9-2cb1-0431-a8067bb169af', '바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb491eca-d2b1-ebdc-b1f8-34a0c4f8e448', '173ad79f-edb9-2cb1-0431-a8067bb169af', '출입구의 문은 불연성 재료로 하고 두께 1.0밀리미터', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4241360-025c-429a-64af-f274c4eb4870', '173ad79f-edb9-2cb1-0431-a8067bb169af', '발생기실을 옥외에 설치한 경우에는 그 개구부를 다른', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('173ad79f-edb9-2cb1-0431-a8067bb169af', '6b728f5b-a690-6144-1aaf-2b792eaa5aea', '② 바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', '정답 ②. 바닥면적의 16분의 1 이상의 단면적을 가진 배기통을', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 사람이 쉽게 접촉할 우려가 있 는 곳에 금속제 외함을 가지는 저압의 기계 • 기구가 시설되 어 있다. 이 기계 • 기구의 사용전압이 몇 [v]를 초과할 때 전기를 공급하는 전로에 누전차단기를 시설해야 하는가? (단, 누전차단기를 시설하지 않아도 되는 조건은 제외한다.)', 2, 365)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a7569c9-0b98-963a-c0bd-0e5e1c92802a', '733bed40-d05f-da9f-4342-2183de37b5a2', '30[V]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d64ffb0-6fe9-b89e-79ca-af70d744b7b5', '733bed40-d05f-da9f-4342-2183de37b5a2', '40[V]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('212334b9-d402-bf03-877c-a55c72fcef2a', '733bed40-d05f-da9f-4342-2183de37b5a2', '50[V]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9e8d497-3b89-fce5-1135-515d3df14b1f', '733bed40-d05f-da9f-4342-2183de37b5a2', '60[V]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('733bed40-d05f-da9f-4342-2183de37b5a2', '212334b9-d402-bf03-877c-a55c72fcef2a', '③ 50[V]', '정답 ③. 금속제 외함을 가지는 사용전압이 5o[v]를 초과하는 저압의 기 계 - 기구로서 사람이 쉽게 접촉할 우려가 있는 곳에 시설하는 것에 전기를 공급하는 전로에는 누전차단기를 시설하여야 한다. E gl 아UPTER 02 감전재해 및 방지대책 06', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('85545b71-0072-c5d4-a3b3-7257764b7ec3', '11111111-1111-1111-1111-111111111104', 'mcq', '접지저항 저감방법으로 틀린 것은?', 2, 366)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5890b94e-fbfc-a058-e000-c556d7e741d4', '85545b71-0072-c5d4-a3b3-7257764b7ec3', '접지극의 병렬 접지를 실시한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f44efe41-6c21-1ea9-14e1-dd1bfcc1f2e1', '85545b71-0072-c5d4-a3b3-7257764b7ec3', '접지극의 매설 깊이를 증가시킨다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f21ce22a-1627-28e3-74a5-f516250b4de2', '85545b71-0072-c5d4-a3b3-7257764b7ec3', '접지극의 크기를 최대한 작게 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('579e8446-ebc0-bd14-1c0e-e781cf8a7a1b', '85545b71-0072-c5d4-a3b3-7257764b7ec3', '접지극 주변의 토양을 개량하여 대지 저항률을 떨어뜨', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('85545b71-0072-c5d4-a3b3-7257764b7ec3', 'f21ce22a-1627-28e3-74a5-f516250b4de2', '③ 접지극의 크기를 최대한 작게 한다.', '정답 ③. 접지극의 크기를 최대한 작게 한다.', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '11111111-1111-1111-1111-111111111104', 'mcq', '교류 아크용접기의 사용에서 무부하 전압이 80[V], 아크 전 압 25[V], 아크 전류 300[A]일 경우 효율은 약 몇 [%]인 가?(단, 내부손실은 4[kW]이다.)', 2, 367)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61ab9dcb-787a-dc42-ea2b-851387392526', '50e12b69-919c-1b81-8cca-62cfae26f03b', '65.2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6762e2dd-e3e2-7d34-13f2-bb12e19c38d5', '50e12b69-919c-1b81-8cca-62cfae26f03b', '70.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1613b29e-fc00-6a0e-9609-080b862885fb', '50e12b69-919c-1b81-8cca-62cfae26f03b', '75.3', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cb52e04-fdd0-f722-8a75-6ee72f11f109', '50e12b69-919c-1b81-8cca-62cfae26f03b', '80.6', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('50e12b69-919c-1b81-8cca-62cfae26f03b', '61ab9dcb-787a-dc42-ea2b-851387392526', '① 65.2', '정답 ①. 65.2', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 기기보호등급(EPL)에 해당하지 않는 것은?', 2, 368)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bec621af-b127-b5fa-76ef-517977e68fe2', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ga', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8946e00-5cec-0eb8-b011-cb9f5c06038d', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Ma', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e10712b-88ab-94cc-819c-dbb9a51dcfe6', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL De', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ed173bd-0cc4-6aab-941e-8c9f069eee57', '6cd9babc-9738-1eef-821c-53fa6d7f83b3', 'EPL Me', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6cd9babc-9738-1eef-821c-53fa6d7f83b3', '2ed173bd-0cc4-6aab-941e-8c9f069eee57', '④ EPL Me', '정답 ④. EPL Me', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중「산업안전보건기준에 관한 규칙」에 따라 누전차단 기를 설치하지 않아도 되는 곳은?', 2, 369)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3af73291-cdfe-9e17-2bf6-38cdf02051e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '철판 • 철골 위 등 도전성이 높은 장소에서 사용하는 이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f4ead73-cbf1-7978-64a4-73fd357260e9', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '대지전압이 22O[V]인 휴대형 전기기 계 • 기구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41759bbd-f823-a057-a443-76f8710326e8', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '임시배선의 전로가 설치되는 장소에서 사용하는 이동', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c038004d-3ea0-e410-2c0e-6e760fbe86ff', 'f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', '절연대 위에서 사용하는 전기기계 • 기구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0e8e6b6-37ae-5062-5e81-e06c9cf8b564', 'c038004d-3ea0-e410-2c0e-6e760fbe86ff', '④ 절연대 위에서 사용하는 전기기계 • 기구', '정답 ④. 지 절연대 위 등과 같이 감전위험이 없는 장소에서 사용하는 전기기 계 • 기구에는 누전차단기를 설치하지 않아도 된다. 누전차단기의 적용대상 • 대지전압이 150[V]를 초과하는 이동형 또는 휴대형 전기기계 • 기구 • 물 등 도전성이 높은 액체가 있는 습윤장소에서 사용하는 저압용 전기기 계 • 기구 • 철판 • 철골 위 등 도전성이 높은 장소에서 사용하는 이동형 또는 휴대형 전기기계기구 • 임시배선의 전로가 설치되는 장소에서 사용하는 이동형 또는 휴대형 전 기기계•기구 t 찌 다4APTER 02 감전재해 및 방지대책', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동전류 /=쯔[mA]라면 심실세동 시 인체에 직접 받는 전기에너지[cal]는 약 얼마인가?（단, 丁는 통전시간으 로 1초이며, 인체의 저항은 500[Q]으로 한다.）', 2, 370)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657ff74e-d8b3-f5c3-3c18-1350426e8a99', '9c03aab2-f457-7716-1ff4-937a67b41842', '0.52', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60bfd10e-d74e-bf68-df6d-2507da45e7c0', '9c03aab2-f457-7716-1ff4-937a67b41842', '1.35', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cfc4751-d1d9-447f-fb2d-4c9179ce45ab', '9c03aab2-f457-7716-1ff4-937a67b41842', '2.14', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('657495c8-b12a-f824-3756-edfb55bccb05', '9c03aab2-f457-7716-1ff4-937a67b41842', '3.26', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c03aab2-f457-7716-1ff4-937a67b41842', '657495c8-b12a-f824-3756-edfb55bccb05', '④ 3.26', '정답 ④. 3.26', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 조치사항으로 틀린 것은?', 2, 371)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e6371abc-e34f-c2be-a0d6-123fac256eb4', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '작업 전 전기설비의 잔류 전하를 확실히 방전한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f2830fb-4821-ba33-eb30-1ac72430bce0', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개로된 전로의 충전 여부를 검전기구에 의하여 확인한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04b87857-bc03-c25c-9660-f82652612141', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1dd39885-56b7-ae3f-020f-4613d01900f2', 'a3057e74-4f77-6ded-35a8-c72051dbd829', '예비 동력원의 역송전에 의한 감전의 위험을 방지하기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3057e74-4f77-6ded-35a8-c72051dbd829', '04b87857-bc03-c25c-9660-f82652612141', '③ 개폐기에 잠금장치를 하고 통전금지에 관한 표지판은', '정답 ③. 위해 단락접지 기구를 사용하여 단락 접지를 한다. EB 정전전로에서 전기작업 시 차단장치나 단로기 등에 잠금장치 및 꼬리표를 부착하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 정한 위험물질을 기준량 이상 제 조하거나 취급하는 화학설비로서 내부의 이상상태를 조기 에 파악하기 위하여 필요한 온도계 ■ 유량계 • 압력계 등의 계측장치를 설치하여야 하는 대상이 아닌 것은?', 2, 372)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a25a749-3e58-b0a8-23e8-565283517b95', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '가열로 또는 가열기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('344f6b2f-b99b-e045-4dc9-ca9bddcd1f25', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '증류 •정류 •증발 •추출 등분리를 하는 장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d429f2e4-341b-4b1c-4fb5-eb62780272c6', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '반응폭주 등 이상 화학반응에 의하여 위험물질이 발생', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1304793-a233-719d-bb07-3e04ea9c2098', 'cc9d8dbc-b318-3427-be40-ea68e06b5242', '흡열반응이 일어나는 반응장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cc9d8dbc-b318-3427-be40-ea68e06b5242', 'b1304793-a233-719d-bb07-3e04ea9c2098', '④ 흡열반응이 일어나는 반응장치', '정답 ④. 계측장치를 설치하여야 하는 특수화학설비 • 발열반응이 일어나는 반응장치 • 증류 •정류'' 증발 • 추출 등 분리를 하는 장치 • 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분해온도 또는 발화 점보다 높은 상태에서 운전되는 설비 • 반응폭주 등 이상 화학반응에 의하여 위험물질이 발생할 우려가 있는 설비 • 온도가 350[℃] 이상이거나 게이지압력이 980[kPa] 이상인 상태에서 운전되는 설비 •가열로 또는가열기', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 폭발방호대책과 가장 거리가 먼 것은?', 2, 373)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('93bffc62-f324-2337-3fab-9a6bf4425182', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '불활성화', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5537b439-895d-75e2-8da2-042fe2d0b102', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '억제', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('15ca6108-a105-6f3e-8ec2-6ed564a98930', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '방산', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('642bc03e-808b-04a9-69f9-7d4b720fc430', '5be4c6e9-c346-7969-2cbb-f39551c72f63', '봉쇄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5be4c6e9-c346-7969-2cbb-f39551c72f63', '93bffc62-f324-2337-3fab-9a6bf4425182', '① 불활성화', '정답 ①. 폭발방호대책은 폭발 시 피해를 최소화하기 위한 대책이다. 불활 성화는 폭발을 예방하기 위한 대책이므로 폭발방지대책에 해당한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 ■ 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 374)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 상단', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86d518d4-9b4a-de8c-5470-b58131842840', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 하단', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31e7e55b-f28a-a90c-1668-3c435dbe0902', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 측면', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a62b8f8-4a80-576b-25fb-d698f61c83f1', '01b32c3c-4800-72bf-6f5e-3744c1cff9d6', '설비의 조작부', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('01b32c3c-4800-72bf-6f5e-3744c1cff9d6', 'e83966f4-c9e2-ad44-a6df-20dc19c0dc85', '① 설비의 상단', '정답 ①. 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 인화성 가스의 정의에서( ) 안에 알맞은 값은? “인화성 가스”란 인화한계 농도의 최저한도가 ( @ )[%] 이하 또는 최고한도와 최저한도의 차가 ( © )[%] 이상인 것으로서 표준압력(101.3[kPa]). 2O『C]에서 가스 상태인 물질 을 말한다.', 2, 375)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7032875-10d0-a52c-52a1-77082bbf2f4f', '3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', '@ 13 ©12', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('661eac5c-2f94-07d7-c842-6f8f794b182e', '3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', '0)13 ©15', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a75ff25a-ffd7-6772-da49-e234434942f2', '3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', '@ 12 ©13', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ab5d0f0-5132-d796-3254-0bb2f8367040', '3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', '<9 12 ©15', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f2a2f74-5e32-43d8-66c7-e9b00b238c2a', 'f7032875-10d0-a52c-52a1-77082bbf2f4f', '① @ 13 ©12', '정답 ①. 인화성 가스란 인화한계 농도의 최저한도가 13[%] 이하 또는 최 고한도와 최저한도의 차가 12[%] 이상인 것으로서 표준압력(101.3[kPa]). 20[℃]에서 가스 상태인 물질을 말한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('490ba124-d1f2-ad34-9f20-30c25e3cee7b', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물의 저장방법으로 적절하지 않은 것은?', 2, 376)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2928648c-f4e6-48ea-3f99-b8d9fe7ec7ba', '490ba124-d1f2-ad34-9f20-30c25e3cee7b', '탄화칼슘은 물속에 저장한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04a1cb9f-6466-1f31-7132-8fa62447a38d', '490ba124-d1f2-ad34-9f20-30c25e3cee7b', '벤젠은 산화성 물질과 격리시킨다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca0c2f35-b91f-1e33-63bf-1f2d40f085e3', '490ba124-d1f2-ad34-9f20-30c25e3cee7b', '금속나트륨은 석유 속에 저장한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46fd521b-949b-8ae4-23a7-1de8d97911dc', '490ba124-d1f2-ad34-9f20-30c25e3cee7b', '질산은 갈색병에 넣어 냉암소에 보관한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('490ba124-d1f2-ad34-9f20-30c25e3cee7b', '2928648c-f4e6-48ea-3f99-b8d9fe7ec7ba', '① 탄화칼슘은 물속에 저장한다.', '정답 ①. 탄화칼슘은 물속에 저장한다.', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('684452d2-0547-02dc-b30d-1fb0aef5ba0e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 공기 중 최소발화에너지 값이 가장 작은 물질은?', 2, 377)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14793fe1-7645-5c45-11f9-407075ac325d', '684452d2-0547-02dc-b30d-1fb0aef5ba0e', '에틸렌', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f3ba6bfa-38c7-7383-e9d3-7346bedf1679', '684452d2-0547-02dc-b30d-1fb0aef5ba0e', '아세트알데히드', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06c1f12d-5e3c-b616-5d22-698eb131e7db', '684452d2-0547-02dc-b30d-1fb0aef5ba0e', '메탄', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f8f5460-a9cf-06b5-263c-98a9be2cd4a5', '684452d2-0547-02dc-b30d-1fb0aef5ba0e', '에탄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('684452d2-0547-02dc-b30d-1fb0aef5ba0e', '14793fe1-7645-5c45-11f9-407075ac325d', '① 에틸렌', '정답 ①. 에틸렌', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사의 유해위험방지계획서 제출 기준일로 옳은 것은?', 2, 378)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2cf5cbc-4008-db66-5068-5c3a806da78b', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 1개월 전까지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('98323b77-9f5d-def3-56e3-8aca2adad1e3', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 전까지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4c226e0-41c8-b58c-a820-a99224f615f7', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 전날까지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c4cd8a7-e2e9-b5ac-0966-f24d2df14c39', '690c9a04-34e7-76e5-c60e-7c456c331dc1', '당해공사 착공 15일 후까지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('690c9a04-34e7-76e5-c60e-7c456c331dc1', 'd4c226e0-41c8-b58c-a820-a99224f615f7', '③ 당해공사 착공 전날까지', '정답 ③. 건설공사 유해위험방지계획서는 해당 공사의 착공 전날까지 공 단에 2부를 제출하여야 한다. 5뽀I', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '11111111-1111-1111-1111-111111111104', 'mcq', '철골건립준비를 할 때 준수하여야 할 사항으로 옳지 않은 것은?', 2, 379)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09ee102f-d978-0859-6df0-6b9ab8bb7c93', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '지상 작업장에서 건립준비 및 기계기구를 배치할 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aeb2006f-5b50-785f-6850-d57cbcaea4b2', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '건립작업에 다소 지장이 있다 하더라도 수목은 제거하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6dbf1f38-1caf-cab3-6c26-7796de749390', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '사용 전에 기계. 기구에 대한 정비 및 보수를 철저히 실', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24bfbfa2-d425-37a6-c91c-db3217bec300', '3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', '기계에 부착된 앵커 등 고정장치와 기초구조 등을 확인', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3b57b3f9-5fce-21ef-15ef-f7bafeb1df70', 'aeb2006f-5b50-785f-6850-d57cbcaea4b2', '② 건립작업에 다소 지장이 있다 하더라도 수목은 제거하', '정답 ②. 하여야 한다. a 철골 건립작업에 지장을 주는 수목은 제거하거나 이설하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '11111111-1111-1111-1111-111111111104', 'mcq', '「가설공사 표준안전 작업지침」에 따른 통로발판을 설치하 여 사용함에 있어 준수사항으로 옳지 않은 것은?', 2, 380)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b7ecb3b-7334-7b69-490a-dc3007960007', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '추락의 위험이 있는 곳에는 안전난간이나 철책을 설치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a270c681-1969-08ae-32e1-44c32a9b76a1', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '작업발판의 최대폭은 1.6[m] 이내이어야 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc41a8c-c4de-2174-f0d7-e1677874f71d', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '비계발판의 구조에 따라 최대 적재하중을 정하고 이를', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb80710a-392d-31b1-fdf9-79ad3f2dc659', '5265cfd6-07e3-0972-9699-e0b5b5cdf21f', '발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5265cfd6-07e3-0972-9699-e0b5b5cdf21f', 'bb80710a-392d-31b1-fdf9-79ad3f2dc659', '④ 발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고', '정답 ④. 비계발판의 구조에 따라 최대 적재하중을 정하고 이를 초과하지 않도록 하여야 한다. 발판을 겹쳐 이음하는 경우 장선 위에서 이음을 하고 겹침길이는 10101 이상으로 하여야 한다. 통로발판을 겹쳐서 이음하는 경우에는 장선 위에서 이음을 하고 겹침길이는 20[010] 이상으로 하여야 한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ff255541-18bb-9298-e6a1-609bc5a2e1f9', '11111111-1111-1111-1111-111111111104', 'mcq', '항타기 또는 항발기의 사용 시 준수사항으로 옳지 않은 것 은?', 2, 381)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f36e4234-2d7d-3152-0e1b-6d4a5d7907e7', 'ff255541-18bb-9298-e6a1-609bc5a2e1f9', '공기를 차단하는 장치를 작업관리자가 쉽게 조작할 수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('343b05e3-efe4-579b-868c-bb4a760229d3', 'ff255541-18bb-9298-e6a1-609bc5a2e1f9', '해머의 운동에 의하여 공기호스와 해머의 접속부가 파', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a49a5d9-8886-5fc5-28ba-e52b972cbcf5', 'ff255541-18bb-9298-e6a1-609bc5a2e1f9', '항타기나 항발기의 권상장치의 드럼에 권상용 와이어', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3bac03d-eddf-f4a3-846c-7d5da4817f9f', 'ff255541-18bb-9298-e6a1-609bc5a2e1f9', '항타기나 항발기의 권상장치에 하중을 건 상태로 정지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ff255541-18bb-9298-e6a1-609bc5a2e1f9', 'f36e4234-2d7d-3152-0e1b-6d4a5d7907e7', '① 공기를 차단하는 장치를 작업관리자가 쉽게 조작할 수', '정답 ①. 로프가 꼬인 경우에는 와이어로프에 하중을 걸어서는 항타기나 항발기의 권상장치에 하중을 건 상태로 정지 하여 두는 경우에는 HA) 또는 역회전방지용 브레 이크를 사용하여 제동하는 등 확실하게 정지시켜 두어 압축공기를 동력원으로 하는 항타기나 항발기를 사용하는 경우 공기를 차단하는 장치는 해머의 운전자가 쉽게 조작할 수 있는 위치에', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '11111111-1111-1111-1111-111111111104', 'mcq', '건설작업용 타워크레인의 안전장치로 옳지 않은 것은?', 2, 382)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9175826c-1eb2-03be-0244-f6b35ba17c80', '267b77c0-0000-08b4-f288-b61360884e40', '권과방지장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ca1fb8-6be4-c209-c70a-96c33b3c51d8', '267b77c0-0000-08b4-f288-b61360884e40', '과부하방지장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69fafe4a-16ca-6de3-5607-c86888130160', '267b77c0-0000-08b4-f288-b61360884e40', '비상정지장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95e040e2-c2e1-25f3-5075-f7672f82eb37', '267b77c0-0000-08b4-f288-b61360884e40', '호이스트 스위치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('267b77c0-0000-08b4-f288-b61360884e40', '95e040e2-c2e1-25f3-5075-f7672f82eb37', '④ 호이스트 스위치', '정답 ④. 타워크레인의 방호장치 권과방지장치 • 과부하방지장치 • 비상정지장치 • 제동장치 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우의 준수기준으로 옳지 않은 것은?', 2, 383)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17cc2fba-a68c-aa20-a2c0-ab2897701d5a', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '비계의 최상부에서 작업을 할 때에는 안전난간을 설치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61256c69-1a72-c41f-3dbf-bb87bbe88089', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판의 최대적재하중은 400[kg]을 초과하지 않도', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9deaade-758b-706e-1f80-6d094eec9117', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '승강용 사다리는 견고하게 설치하여야 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a33e3c7-0c34-4064-684a-4e50a1161038', 'b313759a-2de1-1e7b-2dec-932cef4f9c32', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b313759a-2de1-1e7b-2dec-932cef4f9c32', '61256c69-1a72-c41f-3dbf-bb87bbe88089', '② 작업발판의 최대적재하중은 400[kg]을 초과하지 않도', '정답 ②. 전난간을 딛고 작업을 하거나 받침대 또는 사다리를 사 용하여 작업하지 않도록 한다. MM 이동식비계 작업발판의 최대적재하중은 250[kg]을 초과하지 않 도록 하여야 한다. 1', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '11111111-1111-1111-1111-111111111104', 'mcq', '사면지반 개량공법으로 옳지 않은 것은?', 2, 384)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d7d6cf4-349a-42c2-5c35-27a223324726', '496ba631-88d6-8df9-b644-cac91e41a571', '전기 화학적 공법', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('30703104-3b99-6fdb-5a39-0b3668c6ea43', '496ba631-88d6-8df9-b644-cac91e41a571', '석회안정처리 공법', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ed8e8f17-f7ad-ac11-69f2-bdfd33d2f2ae', '496ba631-88d6-8df9-b644-cac91e41a571', '이온 교환 공법', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5880533e-070b-c7c9-48e0-bc9cca0791a8', '496ba631-88d6-8df9-b644-cac91e41a571', '옹벽 공법', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('496ba631-88d6-8df9-b644-cac91e41a571', '5880533e-070b-c7c9-48e0-bc9cca0791a8', '④ 옹벽 공법', '정답 ④. 옹벽 공법은 지반개량공법이 아닌 사면보강공법에 해당한다', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '11111111-1111-1111-1111-111111111104', 'mcq', '법면 붕괴에 의한 재해 예방조치로서 옳은 것은?', 2, 385)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '지표수와 지하수의 침투를 방지한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('817cbf6a-1b2a-a09c-e2fb-ed085131a818', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '법면의 경사를증가한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d3c260a-44a1-cf08-35b1-0f03dc1c32f0', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '절토 및 성토높이를 증가한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33daf4f5-c930-bac1-371d-b62acebe2988', '55efa3b2-01bd-30e7-cdb5-96fdd392e98a', '토질의 상태에 관계없이 기울기 조건을 일정하게 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('55efa3b2-01bd-30e7-cdb5-96fdd392e98a', 'fe4f68cd-6732-ca59-0ad9-f38be702b2ac', '① 지표수와 지하수의 침투를 방지한다.', '정답 ①. 지표수와 지하수의 침투를 방지한다.', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '11111111-1111-1111-1111-111111111104', 'mcq', '가설통로의 설치기준으로 옳지 않은 것은?', 2, 386)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2009c5-6c8a-1971-e00f-f42d1cafa4c4', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '경사가 15°를 초과하는 때에는 미끄러지지 않는 구조로', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4115d05-1f6f-b1d2-e15e-ed4d217fdaf7', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '건설공사에 사용하는 높이 8[m] 이상인 비계다리에는', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf6fa544-c7b7-e564-771a-90a1352002b9', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e03172bd-9098-5d1b-fbe6-674377ef0f16', 'dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', '추락의 위험이 있는 장소에는 안전난간을 설치한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd9fc3f5-7fcd-708e-af4d-6db65c992fa4', 'cf6fa544-c7b7-e564-771a-90a1352002b9', '③ 수직갱에 가설된 통로의 길이가 15[m] 이상일 경우에', '정답 ③. 가설통로 설치 시 준수 사항 견고한 구조로 할 것 • 경사는 30" 이하로 할 것 • 경사가 15’를 초과하는 경우에는 미끄러지지 아니하는 구조로 할 것 • 추락할 위험이 있는 장소에는 안전난간을 설치할 것 • 수직갱에 가설된 통로의 길이가 15[m] 이상인 경우에는 10[m] 이내마 다 계단참을 설치할 것 • 건설공사에 사용하는 높이 8[m] 이상인 비계다리에는 7[m] 이내마다 계단참을 설치할 것', array['산업안전기사','2022-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a18f516d-596c-81f4-61e9-07844a324d71', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육 중 판매업무에 직접 종사하는 근로자 외의 근 로자를 대상으로 실시하여야 할 정기교육의 교육시간은?', 2, 387)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eba39d47-b847-34c2-1cce-14824104d479', 'a18f516d-596c-81f4-61e9-07844a324d71', '매반기 6시간 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('752610e4-8a00-e25d-4464-c6f5255571ee', 'a18f516d-596c-81f4-61e9-07844a324d71', '매반기 12시간 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb19d58-1e68-c2d6-7980-73a99ccbc27d', 'a18f516d-596c-81f4-61e9-07844a324d71', '1시간 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90571f3a-0477-d2fc-eb0b-500cf6ac16a3', 'a18f516d-596c-81f4-61e9-07844a324d71', '2시간 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a18f516d-596c-81f4-61e9-07844a324d71', '752610e4-8a00-e25d-4464-c6f5255571ee', '② 매반기 12시간 이상', '정답 ②. 매반기 12시간 이상', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구순서대로 나열한 것은? @정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성', 2, 388)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ac87a52-0992-f6e7-8f77-b056089eacf3', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '각 사상의 재해원인 규명', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('558534be-93d6-1e89-4ae6-f3aa369740ce', '04b7b1ff-7232-02dd-cb12-21d293949f5c', 'O —©--©—*®', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd583951-4b64-a814-d924-547d027cc96d', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—*•©—*©—*• (§)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9cd0294-df43-40ee-9bb8-ade26fafbad8', '04b7b1ff-7232-02dd-cb12-21d293949f5c', '(9—’<§)—*’©—” ©', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('04b7b1ff-7232-02dd-cb12-21d293949f5c', 'f9cd0294-df43-40ee-9bb8-ade26fafbad8', '④ (9—’<§)—*’©—” ©', '정답 ④. (9—’<§)—*’©—” ©', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '11111111-1111-1111-1111-111111111104', 'mcq', '시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[L/min]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?', 2, 389)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d295e75-b124-c222-39b6-0856d4b2242f', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '124［분］', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57e6c919-8114-38bd-96f8-3693e4602a52', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '134［분］', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39ba19a3-0075-8db5-2f9e-54dfbfb4f388', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '144［분］', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8c37353-f3fe-3ca3-2cc4-1c247756561e', 'e19454cc-9533-c3ef-935e-fadc23b8c945', '154［분］', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e19454cc-9533-c3ef-935e-fadc23b8c945', '39ba19a3-0075-8db5-2f9e-54dfbfb4f388', '③ 144［분］', '정답 ③. 144［분］', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d553f467-6122-5908-6a72-a251835c946f', '11111111-1111-1111-1111-111111111104', 'mcq', '국내 규정상 1일 노출횟수가 100일 때 최대 음압수준이 몇 [dB]을 초과하는 충격소음에 노출되어서는 아니 되는가?', 2, 390)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d95b305-9841-1fe8-a07b-351a283a3d3d', 'd553f467-6122-5908-6a72-a251835c946f', '110', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d4fe03d-3538-2b94-6676-e5539813331c', 'd553f467-6122-5908-6a72-a251835c946f', '120', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85e925c3-790a-5d13-a805-bbec4c330cd0', 'd553f467-6122-5908-6a72-a251835c946f', '130', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83455000-74f9-b4e1-d432-6ee84dbd579f', 'd553f467-6122-5908-6a72-a251835c946f', '140', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d553f467-6122-5908-6a72-a251835c946f', '83455000-74f9-b4e1-d432-6ee84dbd579f', '④ 140', '정답 ④. 충격소음작업 소음이 1초 이상의 간격으로 발생하는 작업 중 다음의 어느 하나에 해당하 는 작업을 말한다. • 120[dB]을 초과하는 소음이 1일 1만 회 이상 발생하는 작업 • 130[dB]을 초과하는 소음이 1일 1천 회 이상 발생하는 작업 • 140[dB]을 초과하는 소음이 1일 1백 회 이상 발생하는 작업', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '11111111-1111-1111-1111-111111111104', 'mcq', '방사선 투과검사에서 투과사진의 상질을 점검할 때 확인해 야 할 항목으로 거리가 먼 것은?', 2, 391)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28f937e2-8028-992d-a9ee-a94fc5a24945', '655ac728-af7a-a96e-e89b-4ef9828a2773', '투과도계의 식별도', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82bdf2eb-03e5-6cf7-52f4-d12fa4759df5', '655ac728-af7a-a96e-e89b-4ef9828a2773', '시험부의 사진농도 범위', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b07e9bb7-5a1d-fa42-4d3a-f4b4e5dde073', '655ac728-af7a-a96e-e89b-4ef9828a2773', '계조계의 값', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9eb6b05c-9a55-a3a2-9065-25cd66c11481', '655ac728-af7a-a96e-e89b-4ef9828a2773', '주파수의 크기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('655ac728-af7a-a96e-e89b-4ef9828a2773', '9eb6b05c-9a55-a3a2-9065-25cd66c11481', '④ 주파수의 크기', '정답 ④. 투과사진의 상질을 점검할 때 확인해야 할 항목 • 투과도계의 식별 최소선경 • 시험부의 사진농도 • 계조계의 값(농도차/농도)', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '11111111-1111-1111-1111-111111111104', 'mcq', '와이어로프의 구성요소가 아닌 것은?', 2, 392)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c395391-8717-81a8-33b9-42ce59831f65', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '소선', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('903e2c8e-f962-5ae5-9c81-21cf50c5d64e', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '클립', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07535a7b-0f1a-89eb-c03b-e0401630c06a', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '스트랜드 (Strand)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a442c38-ae52-e8a6-9845-ffcecf1bd375', 'db7bef9a-7b01-3f45-b283-f7fc872cd836', '심강(Core)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db7bef9a-7b01-3f45-b283-f7fc872cd836', '903e2c8e-f962-5ae5-9c81-21cf50c5d64e', '② 클립', '정답 ②. 클립은 와이어로프를 고정하는 기구이다. 와이어로프 구성요소', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '11111111-1111-1111-1111-111111111104', 'mcq', '개구면에서 위험점까지의 거리가 5O[mm]인 위치에 풀리 (Pulley)가 회전하고 있다. 가드(Guard)의 개구부 간격으로 설정할 수 있는 최댓값은?', 2, 393)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f0b7d3c-0f41-4061-119e-0e563dc33284', 'b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '9.0[mm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7140d9c9-1700-de8a-d171-12b6645cc290', 'b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '12.5[mm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5ac4ccb1-f784-dcb9-3378-47f81c20e571', 'b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '13.5[mm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7591fce0-ada3-6e61-b27b-e932cc180d06', 'b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '25[mm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b7f84f49-6cdc-a9e6-ed19-2a79ed862be0', '5ac4ccb1-f784-dcb9-3378-47f81c20e571', '③ 13.5[mm]', '정답 ③. 13.5[mm]', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 밀링작업 시 안전수칙으로 옳지 않은 것은?', 2, 394)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32302100-f671-8676-0240-e12826063bb0', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '테이블 위에 공구나 기타 물건 등을 올려놓지 않는다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f67abd5c-1a40-320b-51d7-967524bee2a8', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '제품 치수를 측정할 때는 절삭 공구의 회전을 정지한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0e3d9de-02dc-0e82-6edc-f658ca0577ae', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c6a84b60-09fb-26c9-b350-3557a2a26a7b', 'bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', '상하 좌우 이송장치의 핸들은 사용 후 풀어 둔다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bc40931b-5ae4-8d29-bbb1-942aca8bc3c4', 'e0e3d9de-02dc-0e82-6edc-f658ca0577ae', '③ 강력 절삭을 할 때는 일감을 바이스에 얕게 물린다.', '정답 ③. 밀링작업 시 강력절삭을 할 때는 일감을 바이스에 깊게 물린다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('94948349-671d-6a84-40d0-601dc14eb374', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 설명은 보일러의 장해 원인 중 어느 것에 해당되는가? 보일러 수중에 용해고형분이나 수분이 발생, 증기 중에 다량 함유되어 증기의 순도를 저하시킴으로써 관내 응축수가 생겨 워터해머의 원인이 되고 증기과열기나 터빈 등의 고장의 원인 이 된다.', 2, 395)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9851c43d-b20f-9be7-b551-33a84209282f', '94948349-671d-6a84-40d0-601dc14eb374', '프라이 밍 (Priming)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082900df-8774-edc7-9d67-4c1bfd13c4e1', '94948349-671d-6a84-40d0-601dc14eb374', '포밍 (Foaming)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf73f42b-66a3-c689-1122-0883d791e70c', '94948349-671d-6a84-40d0-601dc14eb374', '캐리오버 (Carry Over)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c9ba1a6-9ac5-f9b6-a753-548906341508', '94948349-671d-6a84-40d0-601dc14eb374', '역화(Back Fire)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('94948349-671d-6a84-40d0-601dc14eb374', 'cf73f42b-66a3-c689-1122-0883d791e70c', '③ 캐리오버 (Carry Over)', '정답 ③. 누W 캐리오버(Carry Over) 보일러 증기관 쪽에 보내는 증기에 대량의 물방울이 포함되는 경우가 있는 데 이것을 캐리오버라 하며, 프라이밍이나 포밍이 생기면 필연적으로 캐리 오버가 발생한다. I 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '11111111-1111-1111-1111-111111111104', 'mcq', '일반 허용접촉전압과 그 종별을 짝지은 것으로 틀린 것은?', 2, 396)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제1종: 0.5[V] 이하', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26474057-9b6e-3dcb-659e-d9e00eebb352', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제2종: 25[V] 이하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4eb8d3ac-20e6-26ef-4d0b-fe27a1ec6ebb', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제3종: 5O[V] 이하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebe5fbd6-4a0c-66ff-def6-818a87df78d6', '2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '제4종: 제한 없음', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2ac525fe-ad67-a7c7-c5ca-82dd3e0bf991', '39e7ffe0-fc5e-6b12-6b91-190994c3b57a', '① 제1종: 0.5[V] 이하', '정답 ①. 제1종: 0.5[V] 이하', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 /=」等 [mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 397)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c45a6453-23aa-7228-cf13-e9725daec9d6', '47192335-1c4e-fbe2-caba-b7931471f777', '13.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c7686ce-6f12-244a-7282-a9ddffd09633', '47192335-1c4e-fbe2-caba-b7931471f777', '16.2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91ebd79d-0824-623f-8c21-c4135bd2d2c3', '47192335-1c4e-fbe2-caba-b7931471f777', '27.2', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc09a761-3c50-928c-9914-4a4293ef10c7', '47192335-1c4e-fbe2-caba-b7931471f777', '32.4', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('47192335-1c4e-fbe2-caba-b7931471f777', 'c45a6453-23aa-7228-cf13-e9725daec9d6', '① 13.6', '정답 ①. 13.6', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 피뢰설비에서 외부피뢰시스템 의 수뢰부시스템으로 적합하지 않은 것은?', 2, 398)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6588442b-ab47-efa9-c9f5-efd8ab24a123', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '돌침', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1048f2c-d549-fceb-db5c-9723098b560e', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '수평도체', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d700dc5f-6d02-b6f9-6187-6196db3b5c21', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '그물망도체', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '환상도체', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05c2a4cf-1386-b5d1-db3f-c5221de82ae3', '7bc9540a-7baf-fc5c-cbee-cbaae5855fa9', '④ 환상도체', '정답 ④. 수뢰부시스템은 돌침. 수평도체. 그물망도체의 요소 중에 한 가 지 또는 이를 조합한 형식으로 시설하여야 한다. 1151 아dAPTER 05 전기설비 위험요인관리 2022년 3회 CBT 복원문제 • 335 08', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 유기과산화물로 분류되는 것은?', 2, 399)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b9c203-f383-7e40-bbce-1f2d37342c9b', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '메틸에틸케톤', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec38ea26-cc99-cde7-8574-b2854762f371', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과망간산칼륨', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d84eeeb8-9aae-550a-5b19-437a3d132033', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화마그네슘', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', 'fdca2ac6-b350-1da6-39d5-0329d9726977', '과산화벤조일', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fdca2ac6-b350-1da6-39d5-0329d9726977', '08f01d55-ba3e-989c-ff5d-dd7ce9160bc0', '④ 과산화벤조일', '정답 ④. 보기에 있는 물질의 분류（「위험물안전관리법령」기준） 메틸에틸케톤: 제4류 위험물로 제1석유류이다. 과망간산칼륨: 제1류 위험물로 산화성 고체이다. 과산화마그네슘: 제1류 위험물로 무기과산화물이다. 과산화벤조일 : 제5류 위험물로 유기과산화물이다. 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('53d8c87b-b8c5-f9bc-18d2-5569e6045121', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악하기 위하여 필요한 계측장치를 설 치하여야 한다. 이러한 계측장치로 거리가 먼 것은?', 2, 400)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90010b1b-b666-37ea-8fc1-0dc46e2d9eb6', '53d8c87b-b8c5-f9bc-18d2-5569e6045121', '압력계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('51a7c406-f768-962d-8601-e682214cdf06', '53d8c87b-b8c5-f9bc-18d2-5569e6045121', '유량계', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a5f928d-a9d1-43ed-e703-12aa5b439099', '53d8c87b-b8c5-f9bc-18d2-5569e6045121', '온도계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a42c829-b61c-d5a9-c9a3-08e5b288a8d5', '53d8c87b-b8c5-f9bc-18d2-5569e6045121', '비중계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('53d8c87b-b8c5-f9bc-18d2-5569e6045121', '0a42c829-b61c-d5a9-c9a3-08e5b288a8d5', '④ 비중계', '정답 ④. 특수화학설비를 설치하는 경우에는 내부의 이상 상태를 조기에 파악하기 위하여 필요한 온도계 • 유량계 • 압력계 등의 계측장치를 설치하 여야 한다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
