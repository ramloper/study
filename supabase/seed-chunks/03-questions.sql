-- chunk 3
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('26f42b86-d194-7699-34fa-144c728f7830', '11111111-1111-1111-1111-111111111104', 'mcq', '시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[LVmin]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?', 2, 81)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39c8e039-ad7e-cf56-6dfe-73cf842f209f', '26f42b86-d194-7699-34fa-144c728f7830', '124[분]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fb16026-eab1-065a-5918-c8a58f776a6e', '26f42b86-d194-7699-34fa-144c728f7830', '134[분]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d458476-fdca-de3a-b31a-234d902a82b5', '26f42b86-d194-7699-34fa-144c728f7830', '144[분]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b10f0761-f00b-e7c0-7c35-f26043380f84', '26f42b86-d194-7699-34fa-144c728f7830', '154[분]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('26f42b86-d194-7699-34fa-144c728f7830', '6d458476-fdca-de3a-b31a-234d902a82b5', '③ 144[분]', '정답 ③. 144[분]', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '11111111-1111-1111-1111-111111111104', 'mcq', '파에서 사용하는 수정게이트의 종류 중 3개의 입력현상 중 2개가 발생한 경우에 출력이 생기는 것은?', 2, 82)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53fcbf2f-2ed7-b241-710b-0aeb776b5f38', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '위험지속기호', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('990c6801-30a4-3c15-feca-8b882cc3ae51', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '조합 AND 게이트', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f7a692-8e4d-5b8b-7666-d0e218e5e582', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '배타적 OR 게이트', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('852b12a4-a363-3a5e-1f86-9781758f0683', 'bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '억제 게이트', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e', '990c6801-30a4-3c15-feca-8b882cc3ae51', '② 조합 AND 게이트', '정답 ②. 조합 AND 게이트', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '11111111-1111-1111-1111-111111111104', 'mcq', '시각 표시장치보다 청각 표시장치의 사용이 바람직한 경우 는?', 2, 83)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('065e74a2-1d7a-e1a6-df89-088e84b5ff30', '1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '전언이 복잡한 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25d619d7-5d22-b171-9b47-a064723a8040', '1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '전언이 재참조되는 경우', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b7c3b04-7310-13aa-5096-c87564d98f24', '1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '전언이 즉각적인 행동을 요구하는 경우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('954dbe9d-db46-4396-58c1-4bbeace97301', '1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '직무상 수신자가 한곳에 머무는 경우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1b2a5200-dcfa-ea15-1a54-d3aeee8e3b4a', '2b7c3b04-7310-13aa-5096-c87564d98f24', '③ 전언이 즉각적인 행동을 요구하는 경우', '정답 ③. 는 청각적 표시장치보다 시각적 표시장치가 더 유리한 경우이다. 1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d49628b1-0c2f-9486-80c2-73d5cf61e91a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 사업주가 보일러의 폭발사고를 예방하기 위하여 유지 •관리하여야 할 안전장치가 아닌 것 은?', 2, 84)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('266b0688-a0a6-d2f7-042e-2bf780d4e31b', 'd49628b1-0c2f-9486-80c2-73d5cf61e91a', '압력방호판', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a72cf795-c035-cd51-105d-64d9780ce775', 'd49628b1-0c2f-9486-80c2-73d5cf61e91a', '화염검출기', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac5dbf47-69de-6fa3-9bb2-3db7a346f352', 'd49628b1-0c2f-9486-80c2-73d5cf61e91a', '압력방출장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d0c43bf1-bd58-2197-62d0-e3901c5409bd', 'd49628b1-0c2f-9486-80c2-73d5cf61e91a', '고저수위 조절장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d49628b1-0c2f-9486-80c2-73d5cf61e91a', '266b0688-a0a6-d2f7-042e-2bf780d4e31b', '① 압력방호판', '정답 ①. 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치, 고저수위 조절장치. 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('75d07efd-5553-a37b-e0c3-38c545a89e4f', '11111111-1111-1111-1111-111111111104', 'mcq', '재료가 변형 시에 외부응력이나 내부의 변형과정에서 방출 되는 낮은 응력파（Stress Wave｝를 감지하여 측정하는 비파 괴시험은?', 2, 85)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6251dd6-f7a6-1668-2e0a-7a2857fabd6f', '75d07efd-5553-a37b-e0c3-38c545a89e4f', '와류탐상시험', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cc4d2147-f7fa-e81e-3b99-973830f6295e', '75d07efd-5553-a37b-e0c3-38c545a89e4f', '침투탐상시험', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e288684-c072-1191-5629-b6578f66fcc3', '75d07efd-5553-a37b-e0c3-38c545a89e4f', '음향탐상시험', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1241cbdd-d1e7-e794-5d73-36566e48dbab', '75d07efd-5553-a37b-e0c3-38c545a89e4f', '방사선투과시험', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('75d07efd-5553-a37b-e0c3-38c545a89e4f', '1e288684-c072-1191-5629-b6578f66fcc3', '③ 음향탐상시험', '정답 ③. 음향탐상시험', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b13c1505-21a3-6a84-cf3f-947b091ff14d', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 승강기의 종류에 해당하지 않 는것은?', 2, 86)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '리프트', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3c464118-01fc-aa91-c0b4-97b9ffe09995', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '승객용 엘리베이터', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7f52d4c2-4252-1640-9e24-1370e6a503cd', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '에스컬레이터', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f106850e-39e7-d838-7adb-4024248c78d6', 'b13c1505-21a3-6a84-cf3f-947b091ff14d', '화물용 엘리베이터', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b13c1505-21a3-6a84-cf3f-947b091ff14d', '3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82', '① 리프트', '정답 ①. 승강기의 종류 승객용 엘리베이터. 승객화물용 엘리베이터, 화물용 엘리베이터, 소형화물 용 엘리베이터, 에스컬레이터 1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('627e7076-a493-cb6b-28b1-b0bf8c4a270c', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 다음（ ）안에 들어갈 내용 으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）미터 이상인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하 는 경우에는 근로자의 추가 위험을 방지하기 위하여 해당 작 업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전 하게 오르내리기 위한 설비를 설치하여야 한다.', 2, 87)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3f414b2d-f2f4-2578-51cb-85cf21903f6d', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '1.5', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5282fe22-26c4-8d1d-696a-ab2e8a930864', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('de782688-8580-c348-eb47-607d162f5d80', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '2.5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46360e06-f57e-e4a2-af29-b6838feb697a', '627e7076-a493-cb6b-28b1-b0bf8c4a270c', '3', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('627e7076-a493-cb6b-28b1-b0bf8c4a270c', '5282fe22-26c4-8d1d-696a-ab2e8a930864', '② 2', '정답 ②. 는 경우에는 근로자의 추가 위험을 방지하기 위하여 해당 작 ㅣ 업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전 ㅣ ㅣ 하게 오르내리기 위한 설비를 설치하여야 한다. | 사업주는 바닥으로부터 짐 윗면까지의 높이가 200] 이상인 화물 자동차에 짐을 AE 작업 또는 내리는 작업을 하는 경우에는 근로자의 추 가위혐을 방지하기 위하여 해당 작업에 종사하는 근로자가 바닥과 적재함 의 짐 윗면 간을 안전하게 오르내리기 위한 설비를 설치하여야 한다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bea7484e-d12c-46f2-613f-c86f605fdab0', '11111111-1111-1111-1111-111111111104', 'mcq', '전기화재 발생원인으로 틀린 것은?', 2, 88)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc5fafda-2220-f82c-cb13-3132e3c0c45f', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '발화원', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4adecda5-9d8d-58d0-5963-cb7e9928e473', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '내화물', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aebc51ec-e5bf-36f7-050e-6b05bbf332f3', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '착화물', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10416b82-8e41-bcf2-1736-bba8b57d1ea1', 'bea7484e-d12c-46f2-613f-c86f605fdab0', '출화의 경과', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bea7484e-d12c-46f2-613f-c86f605fdab0', '4adecda5-9d8d-58d0-5963-cb7e9928e473', '② 내화물', '정답 ②. 전기화재의 원인 발화원. 착화물. 출화의 경과＜발화형태）', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ab916a27-9b91-712f-ba75-ed941f555e2e', '11111111-1111-1111-1111-111111111104', 'mcq', '누전차단기의 설치가 필요한 것은?', 2, 89)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa70df56-8d87-e12b-34a2-1d286188a036', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '이중절연구조의 전기기계 •기구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df326cf1-7a81-813f-f268-4a3c6f00c906', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '비접지식 전로의 전기기계 •기구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1256db2-9aea-097c-80cc-5a3a4a85b662', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '절연대 위에서 사용하는 전기기계 • 기구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a80e04fd-0b73-48e3-c897-bc25ba8b0774', 'ab916a27-9b91-712f-ba75-ed941f555e2e', '도전성이 높은 장소의 전기기 계 • 기구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ab916a27-9b91-712f-ba75-ed941f555e2e', 'a80e04fd-0b73-48e3-c897-bc25ba8b0774', '④ 도전성이 높은 장소의 전기기 계 • 기구', '정답 ④. 누전차단기의 적용비대상 • r전기용품 및 생활용품 안전관리법」에 따른 이중절연 또는 이와 동등 이 상으로 보호되는 전기기계 • 기구 • 절연대 위 등과 같이 감전위험이 없는 장소에서 사용하는 전기기계 - 기구 • 비접지방식의 전로', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '11111111-1111-1111-1111-111111111104', 'mcq', '과전류에 의해 전선의 허용전류보다 큰 전류가 흐르는 경우 절연물이 화구가 없더라도 자연히 발화하고 심선이 용단되 는 발화단계의 전선 전류밀도［A/mm2］는?', 2, 90)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b68d0c3e-43a0-6d2c-9771-c2d885dce4a2', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '10〜20', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('739f7f64-0acb-9f7b-5b12-7ffdccfdfe61', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '30~50', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5316acee-e384-53aa-edab-f73a9df63e83', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '60-120', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd354f8f-9523-4d3f-560c-5fb121ed8c64', 'f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '130-200', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff', '5316acee-e384-53aa-edab-f73a9df63e83', '③ 60-120', '정답 ③. 나선으로 접속된 분기회로의 접속점 전선의 열화가 발생한 곳 부도체를 사용하여 이중절연이 되어 있는 곳 리드선과 단자와의 접속이 불량한 곳 a 부도체를 사용하여 이중절연이 되어 있는 곳은 누전사고 발생 취 약 개소로 보기 어렵다. ES@1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a41e7977-b1d5-6db6-a716-d0701a1da423', '11111111-1111-1111-1111-111111111104', 'mcq', '기중차단기의 기호로 옳은 것은?', 2, 91)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('351ea0df-7f9a-5347-d85c-fabce2df714b', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'VCB', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('025a33f5-b182-f4da-f31c-08064fb97846', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'MCCB', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb0563e0-b68c-feb6-ac2b-c443a08e94b6', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'OCB', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a075ad2a-8fc4-5479-e000-809c912db43c', 'a41e7977-b1d5-6db6-a716-d0701a1da423', 'ACB', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a41e7977-b1d5-6db6-a716-d0701a1da423', 'a075ad2a-8fc4-5479-e000-809c912db43c', '④ ACB', '정답 ④. ACB', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기설비의 용기 내부에 보호가스를 압입하여 내부압력 을 외부 대기 이상의 압력으로 유지함으로써 용기 내부에 폭 발성 가스 분위기가 형성되는 것을 방지하는 방폭구조는?', 2, 92)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('23b936f3-09fc-1885-2748-c4c712cc8683', '80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '내압방폭구조', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b02c326-85c3-3fbd-2866-bcee4c9b063b', '80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '압력방폭구조', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d0c7682-e75a-03c8-96d0-bc56d5da5820', '80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '안전증방폭구조', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24437c66-3717-68e9-9285-3aba92993093', '80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '유입방폭구조', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('80ad396e-8c16-2691-0fc7-8b3c1836d3b2', '0b02c326-85c3-3fbd-2866-bcee4c9b063b', '② 압력방폭구조', '정답 ②. 압력방폭구조 용기 내부에 보호가스（신선한 공기 또는 불연성 기체）를 압입하여 내부압 력을 유지함으로써 폭발성 가스 또는 증기가 내부로 유입되지 않도록 한 구조이다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '11111111-1111-1111-1111-111111111104', 'mcq', '「위험물안전관리법령」상 제3류 위험물 중 금수성 물질에 대 하여 적응성이 있는 소화기는?', 2, 93)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('771d89b0-9203-77f8-15ab-b37830e11104', '3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '포소화기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f913677f-3963-558e-bda1-0979ed59feac', '3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '이산화탄소소화기', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('401aa18d-e436-efc6-fb1d-73adbacc3666', '3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '할로겐화합물소화기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('408c0c40-24ee-4fbd-3bce-b22ba6b2fce6', '3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '탄산수소염류분말소화기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3e944f53-da34-d3b9-f9f4-b119ed1bd51d', '408c0c40-24ee-4fbd-3bce-b22ba6b2fce6', '④ 탄산수소염류분말소화기', '정답 ④. 탄산수소염류분말소화기', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('054abc01-a903-4263-c005-a0db01491072', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 이황화탄소(cs2)의 폭발한계는 하한값이 1.25[v이%], 상한값이 44[v이%]이다. 이를 20[℃] 대기압 하에서 [mg/L]의 단위로 환산하면 하한값과 상한값은 각각 약 얼마인가?(단, 이황화탄소의 분자량은 76.1 이다.)', 2, 94)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b9b926f-9c7e-8030-7ba1-c55c91b10c57', '054abc01-a903-4263-c005-a0db01491072', '하한값: 61, 상한값: 640', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c4aeac8-7d69-aca7-a879-0fdb128a7812', '054abc01-a903-4263-c005-a0db01491072', '하한값: 39.6, 상한값: 1,395', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db1f37b4-5fad-9526-4b35-37e52c814efc', '054abc01-a903-4263-c005-a0db01491072', '하한값: 146, 상한값: 860', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5eda28ef-6a86-63bb-d656-1a566a1cb724', '054abc01-a903-4263-c005-a0db01491072', '하한값: 55.4, 상한값: 1,642', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('054abc01-a903-4263-c005-a0db01491072', '7c4aeac8-7d69-aca7-a879-0fdb128a7812', '② 하한값: 39.6, 상한값: 1,395', '정답 ②. 하한값: 39.6, 상한값: 1,395', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('18638906-2e39-9557-2b5e-7664034e5333', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 “부식성 산류”에 해당하지 않는 것은?', 2, 95)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0d49351b-0e0e-eecd-d63f-a9eb1f86896e', '18638906-2e39-9557-2b5e-7664034e5333', '농도 2이%]인 염산', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71bff625-b99f-c99b-ab80-da6390943212', '18638906-2e39-9557-2b5e-7664034e5333', '농도 4이%]인 인산', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8f7a04bd-d498-786f-fbd6-897a16aa71bf', '18638906-2e39-9557-2b5e-7664034e5333', '농도 5이%]인 질산', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a19669e5-ea63-696e-e205-d88bd2937755', '18638906-2e39-9557-2b5e-7664034e5333', '농도 60[%]인 아세트산', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('18638906-2e39-9557-2b5e-7664034e5333', '71bff625-b99f-c99b-ab80-da6390943212', '② 농도 4이%]인 인산', '정답 ②. 부식성 산류 • 농도가 20[%] 이상인 염산, 황산. 질산. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 물질 • 농도가 60[%] 이상인 인산, 아세트산, 불산, 그 밖에 이와 같은 정도 이 상의 부식성을 가지는 물질', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('470abd0e-2399-90cc-2d91-ce3fcff124ae', '11111111-1111-1111-1111-111111111104', 'mcq', 'Burgess-Wheeler의 법칙에 따르면 서로 유사한 탄화수소 계의 가스에서 폭발하한계의 농도[vol%]와 연소열[kcal/ mol]의 곱의 값은 약 얼마 정도인가?', 2, 96)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46ae555e-d8f4-1302-f3b6-2b3dc3634651', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '1,100', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9add3281-5b29-dcd8-a435-0c2e7423c81b', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '2,800', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c80c4971-13a7-cad3-e635-8d474bf2d6a4', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '3,200', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72fc3ec3-3f24-8045-abd9-36035d059834', '470abd0e-2399-90cc-2d91-ce3fcff124ae', '3,800', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('470abd0e-2399-90cc-2d91-ce3fcff124ae', '46ae555e-d8f4-1302-f3b6-2b3dc3634651', '① 1,100', '정답 ①. 1,100', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '11111111-1111-1111-1111-111111111104', 'mcq', '프로판가스 1[m3]를 완전연소시키는 데 필요한 이론 공기량 은 몇 [m3]인가?（단, 공기 중의 산소농도는 20[vol%]이다.）', 2, 97)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7381ac19-dfca-29eb-d86d-17767d432928', '358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '20', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56ec62e2-1386-2b7b-d59f-f6d36f90b6df', '358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '25', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1783c335-aa2e-e29a-7735-d100c2f99c53', '358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '30', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8eae22bd-cd34-7dd2-d89a-1faf643379db', '358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '35', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('358d3384-b9f0-124c-2cf0-dee7dec4ce5f', '56ec62e2-1386-2b7b-d59f-f6d36f90b6df', '② 25', '정답 ②. 25', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9487b1e9-437d-8724-9575-2457dc1e6581', '11111111-1111-1111-1111-111111111104', 'mcq', '디에틸에테르와 에틸알코올이 3 ： 1로 혼합된 혼합증기의 몰비가 각각 0.75, 0.25이고, 디에틸에테르와 에틸알코올 의 폭발하한값이 각각 1.9[vol%], 4.3[vol%]일 때 혼합가스 의 폭발하한값은 약 몇 [vol%]인가?', 2, 98)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44e81ec3-715f-82be-9b9f-ed19cfbab2e0', '9487b1e9-437d-8724-9575-2457dc1e6581', '2.2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('362c288e-067b-a441-d33a-116c572d15a8', '9487b1e9-437d-8724-9575-2457dc1e6581', '3.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dea9b422-d8d0-51ae-125e-a72785a68528', '9487b1e9-437d-8724-9575-2457dc1e6581', '22.0', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b8867b9-d47e-11f7-118f-95571a07109a', '9487b1e9-437d-8724-9575-2457dc1e6581', '34.7', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9487b1e9-437d-8724-9575-2457dc1e6581', '44e81ec3-715f-82be-9b9f-ed19cfbab2e0', '① 2.2', '정답 ①. 2.2', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ba666b73-8998-5f9e-58a1-7093f47f5dba', '11111111-1111-1111-1111-111111111104', 'mcq', '일산화탄소에 대한 설명으로 틀린 것은?', 2, 99)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bfdddd7-6485-dec2-e436-78aac5c5d211', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '무색-무취의 기체이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7f6ec23f-b1a6-c4e9-07d8-cb1bb6071b99', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '염소와 촉매 존재하에 반응하여 포스겐이 된다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d6b578-4d5b-f1c2-aca9-d9c044c1e2e3', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '인체 내의 헤모글로빈과 결합하여 산소운반기능을 저', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69a863a6-dd9e-069a-c515-6f24a4028061', 'ba666b73-8998-5f9e-58a1-7093f47f5dba', '불연성 가스로서, 허용농도가 10[ppm]이다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ba666b73-8998-5f9e-58a1-7093f47f5dba', '69a863a6-dd9e-069a-c515-6f24a4028061', '④ 불연성 가스로서, 허용농도가 10[ppm]이다.', '정답 ④. 일산화탄소는 허용농도가 30[ppm]인 독성 가스이자. 공기 중 연 소범위가 12.5~74[vol%]인 가연성 가스이다. Wil리', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef841e56-905e-5bb4-cd53-0c54b62c01d6', '11111111-1111-1111-1111-111111111104', 'mcq', '금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 틀린 것은?', 2, 100)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6acb5ba4-7dcd-15fc-25e9-c2d301a83bb5', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '전도의 위험이 없도록 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4bb54cc6-26cd-59d0-5230-753350ed0196', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '밸브를 서서히 개폐한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83d78ce6-2403-b4fe-3fa2-1f4dd94faaab', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '용해아세틸렌의 용기는 세워서 보관한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2263699f-1b48-f7a3-c75a-77bf58aec755', 'ef841e56-905e-5bb4-cd53-0c54b62c01d6', '용기의 온도를 65도 이하로 유지한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef841e56-905e-5bb4-cd53-0c54b62c01d6', '2263699f-1b48-f7a3-c75a-77bf58aec755', '④ 용기의 온도를 65도 이하로 유지한다.', '정답 ④. 금속의 용접 용단 또는 가열에 사용되는 가스 등의 용기를 취급 하는 경우에는 용기의 온도를 40[’C] 이하로 유지하여야 한다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('816d73b6-6caa-8481-cd81-c4dd3e05fc26', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 동바리 로 사용하는 파이프서 포트의 설치기 준이다. （ ） 안에 들어갈 내용으로 옳은 것은? 파이프서포트를（ ）이상 이어서 사용하지 않도록 할것', 2, 101)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22f62b36-c01a-e3a0-fae4-c789f1ccb38d', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '2개', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b689d04a-28a0-b578-911e-1a97f215e8ae', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '3개', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d9aa4db2-e3dc-f55a-96e2-953c423c3e42', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '4개', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68c22778-131d-4ae5-dc81-d87b2a0d6f15', '816d73b6-6caa-8481-cd81-c4dd3e05fc26', '5개', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('816d73b6-6caa-8481-cd81-c4dd3e05fc26', 'b689d04a-28a0-b578-911e-1a97f215e8ae', '② 3개', '정답 ②. 동바리로 사용하는 파이프서포트를 3개 이상 이어서 사용하지 않아야 한다. W@1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f2746c0-9619-2bce-c759-c9d307d35e4a', '11111111-1111-1111-1111-111111111104', 'mcq', '권상용 와이어로프의 절단하중이 200[ton]일 때 와이어로 프에 걸리는 최대하중은?（단, 안전계수는 5이다.）', 2, 102)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e66d6f1-18d9-781a-c6dc-e62ded84c392', '3f2746c0-9619-2bce-c759-c9d307d35e4a', '1,00이ton]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6229b543-3c4a-4326-71dd-98f98b071003', '3f2746c0-9619-2bce-c759-c9d307d35e4a', '40이ton]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a55335ac-342f-4ed5-983b-3241a5cce32d', '3f2746c0-9619-2bce-c759-c9d307d35e4a', '100[ton]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fd9a00a8-4c61-ea19-6f72-5e4e3137883c', '3f2746c0-9619-2bce-c759-c9d307d35e4a', '40[ton]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f2746c0-9619-2bce-c759-c9d307d35e4a', 'fd9a00a8-4c61-ea19-6f72-5e4e3137883c', '④ 40[ton]', '정답 ④. 40[ton]', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be2a3e14-e434-f4d2-0c64-def2739fae24', '11111111-1111-1111-1111-111111111104', 'mcq', '굴착기계의 운행 시 안전대책으로 옳지 않은 것은?', 2, 103)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('16a468e0-35a2-5e8c-b88b-5ef930e57c0c', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '버킷에 사람의 탑승을 허용해서는 안 된다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dcb608c6-2c62-34e0-1c98-769180417fb5', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff8fd43e-d7da-8676-a946-141a168ba742', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '장비의 주차 시 경사지나 굴착작업장으로부터 충분히', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9df1a5f1-f837-f030-20a8-066dc0da3dd1', 'be2a3e14-e434-f4d2-0c64-def2739fae24', '전선이나 구조물 등에 인접하여 붐을 선회해야 할 작업에', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be2a3e14-e434-f4d2-0c64-def2739fae24', 'dcb608c6-2c62-34e0-1c98-769180417fb5', '② 운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의', '정답 ②. 는 사전에 회전반경, 높이제한 등 방호조치를 강구한다. 굴착기계 운행 시 운전반경 내에 사람이 있어서는 안 된다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a9932be4-7d43-a04c-3cc2-079c84062bc6', '11111111-1111-1111-1111-111111111104', 'mcq', '온도가 하강함에 따라 토층수가 얼어 부피가 약 9[%] 정도 증대하게 됨으로써 지표면이 부풀어오르는 현상은?', 2, 104)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('48781051-3178-997a-2383-7bd1a8b5ac70', 'a9932be4-7d43-a04c-3cc2-079c84062bc6', '동상현상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b73870c-4b1d-a88b-fa0a-0e7159e6dc99', 'a9932be4-7d43-a04c-3cc2-079c84062bc6', '연화현상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b62a0754-bd0f-93d3-9e5e-14bed042124d', 'a9932be4-7d43-a04c-3cc2-079c84062bc6', '리칭현상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7566fb0-84f2-7105-4076-711f2b90826c', 'a9932be4-7d43-a04c-3cc2-079c84062bc6', '액상화현상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a9932be4-7d43-a04c-3cc2-079c84062bc6', '48781051-3178-997a-2383-7bd1a8b5ac70', '① 동상현상', '정답 ①. 동상현상은 지반 내 토층수가 동결하여 부피가 증가하면서 지표 면이 부풀어오르는 현상이다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('efb860ee-6176-9bad-8920-405fa4ac68e9', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 가설통로를 설치하는 경우의 준수사항이다. （ ） 에 알맞은 수치를 고르면? 건설공사에 사용하는 높이 8[m] 이상인 비계다리에는 （ ）[m] 이내마다계단참을설치할 것', 2, 105)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('809fe37e-bb23-a67c-eb8d-ee3cf9456bf1', 'efb860ee-6176-9bad-8920-405fa4ac68e9', '7', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5db4dc1-ef0a-0c65-32be-272f9e39408a', 'efb860ee-6176-9bad-8920-405fa4ac68e9', '6', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e898cf8b-1bda-8ea0-3d1d-9acdbc221176', 'efb860ee-6176-9bad-8920-405fa4ac68e9', '5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6d350b2-046f-8f62-1698-9475a562dfe4', 'efb860ee-6176-9bad-8920-405fa4ac68e9', '4', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('efb860ee-6176-9bad-8920-405fa4ac68e9', 'a5db4dc1-ef0a-0c65-32be-272f9e39408a', '② 6', '정답 ②. 가설통로 설치 시 건설공사에 사용하는 높이 8[m] 이상인 비계 다리에는 7[m] 이내마다 계단참을 설치하여야 한다', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d39438a4-8198-053b-f3aa-d0931339392e', '11111111-1111-1111-1111-111111111104', 'mcq', '강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준으 로 옳지 않은 것은?', 2, 106)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b60c20c-3deb-ef87-a1ea-6eee158150f2', 'd39438a4-8198-053b-f3aa-d0931339392e', '높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0f9eeef-edc6-8843-c762-e6b046f8a4aa', 'd39438a4-8198-053b-f3aa-d0931339392e', '수직방향으로 6[m], 수평방향으로 8[m] 이내마다 벽이', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c78baf1e-9e50-38c6-e933-c7ccdac97db6', 'd39438a4-8198-053b-f3aa-d0931339392e', '길이가 띠장 방향으로 4[m] 이하이고 높이가 10[m]를', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d3899f0-0494-9db2-770e-b9cc30234014', 'd39438a4-8198-053b-f3aa-d0931339392e', '주틀 간에 교차가새를 설치하고 최상층 및 5층 이내마', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d39438a4-8198-053b-f3aa-d0931339392e', '7b60c20c-3deb-ef87-a1ea-6eee158150f2', '① 높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', '정답 ①. 높이가 20[m]를 초과하거나 중량물의 적재를 수반하는', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0a7e70e3-f6a9-0f15-7040-b6be649a4410', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비의 사용 내역에 대하여 도급인은 공사 시작 후 몇 개월마다 1 회 이상 발주자 또는 감리자의 확인을 받아야 하는가?', 2, 107)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7f0f381e-19fe-5cb3-b62b-f951fed5112f', '0a7e70e3-f6a9-0f15-7040-b6be649a4410', '3개월', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c0167987-9ec3-b8df-ccf4-b53b16beb7f8', '0a7e70e3-f6a9-0f15-7040-b6be649a4410', '4개월', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63e8222b-ebba-fe73-5f50-0e59dd74fbfe', '0a7e70e3-f6a9-0f15-7040-b6be649a4410', '5개월', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('620a6c35-f445-1b20-7d55-c8ce11c6da5f', '0a7e70e3-f6a9-0f15-7040-b6be649a4410', '6개월', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0a7e70e3-f6a9-0f15-7040-b6be649a4410', '63e8222b-ebba-fe73-5f50-0e59dd74fbfe', '③ 5개월', '정답 ③. 약한 방향으로 작용하는 100[kg] 이상의 하중에 견딜 수 있는 튼튼한 구조일 것 OI 안전난간의 난간대는 지름 2.7[cm] 이상의 금속제 파이프나 그 이상의 강도가 있는 재료이어야 한다. W@I 아4APTER 04 건설현장 안전시설 관리 11', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03568d74-38ad-77ba-d1a4-2af192f9ad61', '11111111-1111-1111-1111-111111111104', 'mcq', '차량계 하역운반기계를 사용하여 작업할 때에 그 기계가 넘 어지거나 굴러 떨어짐으로써 근로자가 위험해질 우려가 있. 는 경우에 조치하여야 할 사항과 거리가 먼 것은?', 2, 108)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9708f4bd-4dab-3353-b1ff-91fcb40a137b', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '해당 기계에 대한유도자 배치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1a176b6-d7af-c658-4590-9f21e63763c2', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '경보장치 설치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99abd836-4b6b-3b1c-ae9a-a3be8acb4942', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '지반의 부동침하 방지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85d2340a-17a8-623d-c658-d3cab2cc6e30', '03568d74-38ad-77ba-d1a4-2af192f9ad61', '갓길의 붕괴 방지조치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03568d74-38ad-77ba-d1a4-2af192f9ad61', 'c1a176b6-d7af-c658-4590-9f21e63763c2', '② 경보장치 설치', '정답 ②. 차량계 하역운반기계 전도 등의 방지 • 유도자 배치 • 지반의 부동침하 방지 • 갓길의 붕괴 방지 @1', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '11111111-1111-1111-1111-111111111104', 'mcq', '건설공사 유해 위험방지계획서를 제출해야 할 대상공사에 해당하지 않는 것은?', 2, 109)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1787ea3e-507f-2a75-b397-c331e4ad1b8f', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '깊이 10[m]인 굴착공사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ab761ae-567f-482e-36f9-d3108f5b5748', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '다목적댐 건설공사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fac7fb33-0b5e-fd32-1275-943d83ccadcd', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '최대 지간길이가 40[m]인 교량건설 공사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9755da9c-5bee-a50a-6a56-482def0b53d4', '3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', '연면적 5,00이m2]인 냉동 • 냉장 창고시설의 설비공사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10', 'fac7fb33-0b5e-fd32-1275-943d83ccadcd', '③ 최대 지간길이가 40[m]인 교량건설 공사', '정답 ③. 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물, 연면적 30,0001m2] 이상인 건축물 또는 연면적 S.OOOtm2] 이상의 문화 및 집회시설（전시장 및 동물원 • 식물원 제외）. 판매시설. 운수시설（고속철도의 역사 및 집배 송시설 제외）, 종교시설, 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체（건설 등） 공사 • 연면적 S.OOOtm2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐, 발전용댐, 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 ▽IM', array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건 법령」상 산업안전보건위원회의 사용자위원 에 해당되지 않는 사람은?(단, 각 사업장은 해당하는 사람 을 선임하여야 하는 대상 사업장으로 한다.)', 2, 110)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba8dd5dc-41c8-24c7-0c13-0c97635863af', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '안전관리자', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb2adf6a-62f8-62f8-878b-cb823262e94e', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '산업보건의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '명예산업안전감독관', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('038907d4-11e1-d013-a49d-6a9d79c2ff85', '500a7b42-3d31-a3a5-2c84-a867a3eef15f', '해당 사업장 부서의 장', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('500a7b42-3d31-a3a5-2c84-a867a3eef15f', 'a799a54a-35bd-8bef-ad79-8d6d6e9ffadc', '③ 명예산업안전감독관', '정답 ③. 명예산업 안전감독관은 근로자위원에 해당한다. 산업안전보건위원회의 사용자 위원 • 해당 사업의 대표자 • 안전관리자 • 보건관리자 • 산업보건의 • 해당 사업의 대표자가 지명하는 9명 이내의 해당 사업장 부서의 장', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지에 해당하지 않는 것은?', 2, 111)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f194a90c-aa9f-2591-4db5-e0d85e188c21', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '레이저광선 경고', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('769f8e6c-5021-2081-e8a9-34b3365987cf', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '급성독성물질 경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb61b566-fb2c-c02d-b6d2-be4c2ed5d457', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '매달린물체 경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06baf5e1-104e-53a5-d237-f7326490b0b8', 'b46fb47e-620e-4581-8a38-17ee07d3550a', '차량통행 경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b46fb47e-620e-4581-8a38-17ee07d3550a', '06baf5e1-104e-53a5-d237-f7326490b0b8', '④ 차량통행 경고', '정답 ④. 경고표지 중 차량통행 경고는 없고, 금지표지에 차량통행 금지가 있다', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '11111111-1111-1111-1111-111111111104', 'mcq', '어느 사업장에서 물적손실이 수반된 무상해사고가 180건 발생하였다면 중상은 몇 건이나 발생할 수 있는가?（단, 버 드의 재해구성 비율법칙에 따른다.）', 2, 112)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45c57278-fa21-32d2-73c1-fdbb82adba0d', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '6건', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b5d3175-43ca-5017-b79b-bbc04d836db0', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '18건', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ff1ab2-aaf0-471e-58b6-14e2bd27731a', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '20건', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97902f5a-b6ce-6875-d274-df18740b76b2', 'c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '29건', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c43a1ca5-aff4-41e9-4451-0ebb0dcc717f', '45c57278-fa21-32d2-73c1-fdbb82adba0d', '① 6건', '정답 ①. 6건', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건교육 계획에 포함해야 할 사항이 아닌 것은?', 2, 113)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c7c07e6-e211-92e9-da50-f9f6acb928ba', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육지도안', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eb716917-8adb-945c-960e-7e4940758a1e', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육장소 및 교육방법', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b6424ae-ff56-a846-3353-5e553309c402', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 종류 및 대상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a37d18b-3b09-806b-5240-db4709af9a04', 'c99e14b0-0153-a540-41e5-423da9f3a177', '교육의 과목 및 교육내용', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c99e14b0-0153-a540-41e5-423da9f3a177', '7c7c07e6-e211-92e9-da50-f9f6acb928ba', '① 교육지도안', '정답 ①. 교육지도안', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7546794d-d443-4553-941b-56c650c70cba', '11111111-1111-1111-1111-111111111104', 'mcq', 'Y • G 성격검사에서 “안전, 적응, 적극형 ”에 해당하는 형의 종류는?', 2, 114)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dd19b6b-4ae3-0471-f778-bc3c509f8566', '7546794d-d443-4553-941b-56c650c70cba', 'A형', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c7e24e24-fc64-280d-e2c2-2742cd13299e', '7546794d-d443-4553-941b-56c650c70cba', 'B형', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70e2196-6461-57c3-a73b-4b0ac74713cf', '7546794d-d443-4553-941b-56c650c70cba', 'C형', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21a4acce-f390-24bb-f6ad-c262cd72a662', '7546794d-d443-4553-941b-56c650c70cba', 'D형', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7546794d-d443-4553-941b-56c650c70cba', '21a4acce-f390-24bb-f6ad-c262cd72a662', '④ D형', '정답 ④. 성격검사 프로필 유형 • A형（평균형）: 조화적. 적응적 • B형（우편형）: 정서불안적, 활동적, 외향적 • C형（좌편형）: 안전소극형 • D형（우하형）: 안전. 적응, 적극형 • E형（좌하형）: 불안정. 부적응. 수동형 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 환기가 극히 불량한 좁은 밀폐 된 장소에서 용접작업을 하는 근로자를 대상으로 한 특별교 육 내용에 포함되지 않는 것은?（단, 일반적인 안전 • 보건에 필요한 사항은 제외한다.）', 2, 115)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69a96674-1b97-e19e-5b52-33d7f0e40d0b', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '환기설비에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9444afcb-9ad8-1d97-46cb-02395ee9c988', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '질식 시 응급조치에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('52140dac-ef85-8d40-00aa-6e4091cbd774', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '작업순서, 안전작업 방법 및 수칙에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6889e66-8696-eac3-0d19-fc4d4836ac9d', '487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', '폭발 한계점, 발화점 및 인화점 등에 관한 사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('487a02d0-128d-b4a0-4ff8-cd11fb5c0dca', 'd6889e66-8696-eac3-0d19-fc4d4836ac9d', '④ 폭발 한계점, 발화점 및 인화점 등에 관한 사항', '정답 ④. 밀페된 장소에서 하는 용접작업 또는 습한 장소에서 하는 전 기용접 작업 시 특별교육내용 • 작업순서. 안전작업방법 및 수칙에 관한 사항 • 환기설비에 관한 사항 • 전격 방지 및 보호구 착용에 관한 사항 • 질식 시 응급조치에 관한 사항 •작업환경 점검에 관한 사항 • 그 밖에 안전 • 보건관리에 필요한 사항 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '11111111-1111-1111-1111-111111111104', 'mcq', '무재해 운동의 기본이념 3원칙 중 다음에서 설명하는 것은? 직장 내의 모든 잠재위험요인을 적극적으로 사전에 발견, 파 악. 해결함으로써 뿌리에서부터 산업재해를 제거하는 것', 2, 116)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8028bdbe-a387-839f-bfef-8213c9a730f3', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '무의 원칙', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a5dab1e-78d8-f05c-80a5-e03f2fa5cd07', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '선취의 원칙', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d526f53d-4946-4cc6-ccb3-e4743dd5f1a8', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '참가의 원칙', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('226f82e6-15dd-cc5c-38a1-25238d901106', '7ead3efc-93d4-72cd-de14-9c79d1b62218', '확인의 원칙', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ead3efc-93d4-72cd-de14-9c79d1b62218', '8028bdbe-a387-839f-bfef-8213c9a730f3', '① 무의 원칙', '정답 ①. 무재해 운동의 3원칙 • 무의 원칙: 모든 잠재위험요인을 사전에 발견 • 파악 • 해결함으로써 근 원적으로 산업재해를 제거한다. • 참여의 원칙（참가의 원칙）: 직업에 따르는 잠재적인 위험요인을 발견 • 해결하기 위하여 전원이 협력하여 문제해결 운동을 실천한다. • 안전제일의 원칙（선취의 원칙）: 직장의 위험요인을 행동하기 전에 발 견 •파악. 해결하여 재해를 예방한다. 1', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 4R（라운드） 기법의 진행방법에서 3R에 해당 하는 것은?', 2, 117)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4f70d122-3121-9375-fd0d-17705550d665', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '목표설정', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '대책수립', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fbc7fe70-0c52-b9f8-189f-42254c8e9ff4', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '본질추구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2254851-262a-9a81-4d67-692d3fec66ef', '5c7ccf4e-0030-b505-cf29-d24621fdb110', '현상파악', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5c7ccf4e-0030-b505-cf29-d24621fdb110', '6bccaaf7-b955-c7b9-4f67-bcc8e6b5c479', '② 대책수립', '정답 ②. 위험예지훈련의 추진을 위한 문제해결 4단계 O 1라운드: 현상파악（사실의 파악）-어떤 위험이 잠재하고 있는가? © 2라운드: 본질추구（원인조사）-이것이 위험의 포인트이다. © 3라운드: 대책수립（대책을 세운다）-당신이라면 어떻게 하겠는가? （D 4라운드: 목표설정（행동계획 작성）-우리들은 이렇게 하자!', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('be5cefd4-eb0b-5a31-fa05-e3507416a343', '11111111-1111-1111-1111-111111111104', 'mcq', '방진마스크의 사용 조건 중 산소농도의 최소기준으로 옳은 것은?', 2, 118)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('03eae0de-63ed-4f30-5f35-15fb4d0c67bd', 'be5cefd4-eb0b-5a31-fa05-e3507416a343', '16[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d5e3e0be-96b9-9d33-4987-cae63673d2d3', 'be5cefd4-eb0b-5a31-fa05-e3507416a343', '18[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c782b853-1b0f-8751-5b72-c48e88703da9', 'be5cefd4-eb0b-5a31-fa05-e3507416a343', '21[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8959063c-2f19-9691-28d9-a7ffebc0ce8f', 'be5cefd4-eb0b-5a31-fa05-e3507416a343', '23.5[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('be5cefd4-eb0b-5a31-fa05-e3507416a343', 'd5e3e0be-96b9-9d33-4987-cae63673d2d3', '② 18[%]', '정답 ②. 18[%]', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('800762de-162a-b907-7126-eadaaa8f445c', '11111111-1111-1111-1111-111111111104', 'mcq', '관리감독자를 대상으로 교육하는 TWI의 교육내용이 아닌 것은?', 2, 119)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5180c99-49e8-b7e3-493b-76065209af08', '800762de-162a-b907-7126-eadaaa8f445c', '문제해결훈련', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62ecf551-e11b-50e0-6b2d-1f7c7bbbbb5a', '800762de-162a-b907-7126-eadaaa8f445c', '작업지도훈련', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8b0d0505-3dc0-e3d5-1423-0163729e4ca9', '800762de-162a-b907-7126-eadaaa8f445c', '인간관계훈련', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a19aacbb-297e-e61f-e090-d0a2882d42fe', '800762de-162a-b907-7126-eadaaa8f445c', '작업방법훈련', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('800762de-162a-b907-7126-eadaaa8f445c', 'a5180c99-49e8-b7e3-493b-76065209af08', '① 문제해결훈련', '정답 ①. 문제해결훈련', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTD)의 발생인자와 가장 거리가 먼 것은?', 2, 120)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45712355-ff04-a780-e23a-dc6cb3d2286d', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '무리한 힘', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '다습한 환경', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ded4364-9630-fc16-e4bd-4fb8187a1364', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '장시간의 진동', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c5f437d-a76d-5a8b-f7c0-54a48da5e702', '2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '반복도가 높은 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2e3a4bc4-79e0-ad7c-8992-80a629cbe25f', '5f440a82-7e26-c946-aaa9-bfbc8c9bd1c0', '② 다습한 환경', '정답 ②. 다습한 환경', array['산업안전기사','2020-12'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
