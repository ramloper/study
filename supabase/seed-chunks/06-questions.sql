-- chunk 6
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」에 따라 누전에 의한 감전 의 위험을 방지하기 위하여 접지를 하여야 하는 대상의 기 준으로 틀린 것은?(단, 예외조건은 고려하지 않는다.)', 2, 201)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2d20bca-ed47-70ac-2478-b2cf566830be', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '전기기계 • 기구의 금속제 외함', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('028b842f-97cf-ba6b-c757-46af15c1752a', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고압 이상의 전기를 사용하는 전기기계 • 기구 주변의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6d09b620-05c2-00de-3ff1-aab9e847a88f', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d81e06e6-f73e-8b46-2f3a-103928820589', '4bc42807-8b33-92ae-b987-6a7ca25a1a54', '코드와 플러그를 접속하여 사용하는 전기기계 • 기구 중', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4bc42807-8b33-92ae-b987-6a7ca25a1a54', '6d09b620-05c2-00de-3ff1-aab9e847a88f', '③ 고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', '정답 ③. 고정배선에 접속된 전기기계 • 기구중 사용전압이 대지', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1f6bbf26-008c-93ee-9d14-2db64ce9d984', '11111111-1111-1111-1111-111111111104', 'mcq', 'KS C IEC 60079—6에 따른 유입방폭구조 “o” 방폭장비의 최소 IP 등급은?', 2, 202)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bceb1114-75d6-0b43-c5ae-7dab83e8b84c', '1f6bbf26-008c-93ee-9d14-2db64ce9d984', 'IP44', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b599596f-bdee-2c99-c100-1327572d8ef2', '1f6bbf26-008c-93ee-9d14-2db64ce9d984', 'IP54', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9bf3548f-8554-098d-8fc6-d63e81b4ce1f', '1f6bbf26-008c-93ee-9d14-2db64ce9d984', 'IP55', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b653bac1-5091-323e-6342-7e860932ca5a', '1f6bbf26-008c-93ee-9d14-2db64ce9d984', 'IP66', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1f6bbf26-008c-93ee-9d14-2db64ce9d984', 'b653bac1-5091-323e-6342-7e860932ca5a', '④ IP66', '정답 ④. 유입방폭구조의 밀봉되지 않은 기기의 통기장치의 배출구 및 밀 봉된 기기의 압력방출장치의 배출구는 아래를 향해야 하며 KS C IEC 60529에 따른 IP66 이상의 보호등급을 가져야 한다. 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '11111111-1111-1111-1111-111111111104', 'mcq', '가연성 가스가 있는 곳에 저압 옥내전기설비를 금속관공사 에 의해 시설하고자 한다. 관 상호 간 또는 관과 전기기계 • 기구와는 몇 턱 이상 나사조임으로 접속하여야 하는가?', 2, 203)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8ca9ecef-afb4-4eef-52b5-b4f0157e35db', '4191ce20-90ed-939f-d337-d7041b96dc65', '2턱', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb65ed23-b5ad-274a-8261-b5c529f8b95a', '4191ce20-90ed-939f-d337-d7041b96dc65', '3턱', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf137cbd-6907-7664-4345-0d424ece932b', '4191ce20-90ed-939f-d337-d7041b96dc65', '4턱', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f44f1f-a603-4d24-e697-3a9e4deda153', '4191ce20-90ed-939f-d337-d7041b96dc65', '5턱', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4191ce20-90ed-939f-d337-d7041b96dc65', '24f44f1f-a603-4d24-e697-3a9e4deda153', '④ 5턱', '정답 ④. 관 상호 간 또는 관과 박스, 기타의 부속품 - 풀박스 또는 전기기 계 - 기구와는 5턱 이상 나사조임으로 접속하여야 한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '11111111-1111-1111-1111-111111111104', 'mcq', '심실세동을 일으키는 위험한계에너지는 약 몇 이인가? (단, 심실세동전류 1=뜨[mA], 인체의 전기저항 R=800[Q], 통전시간 T=1 초이다.)', 2, 204)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('88ec9d61-bcfa-eed7-2af2-679d62c5ca91', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '12', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c07354b8-168a-b70c-f96e-fa9e3206faab', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '22', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5038ead4-4d6f-57df-63dd-bff70353154d', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '32', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('374d4552-9547-df40-0412-2659902007f9', 'e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', '42', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e65ba7eb-3180-28f6-2861-1f9d9b29dcf8', 'c07354b8-168a-b70c-f96e-fa9e3206faab', '② 22', '정답 ②. 22', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 5O[A] 미만이다.）', 2, 205)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96089b74-f3fd-85ee-6d18-8efdebed47e5', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '15[mA] 이하, 0.1 초 이내', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('698d147f-8788-8d39-9162-780bbe14f00e', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '30[mA] 이하, 0.03초 이내', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d09c2452-8428-07e5-1817-ed9225d292dc', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '50[mA] 이하, 0.5초 이내', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa5e7510-f518-e99b-46af-edea8a899778', 'c004b557-c3da-adce-dd26-3d7e0bb0bc45', '100[mA] 이하, 0.05초 이내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c004b557-c3da-adce-dd26-3d7e0bb0bc45', '698d147f-8788-8d39-9162-780bbe14f00e', '② 30[mA] 이하, 0.03초 이내', '정답 ②. 감전보호용누전차단기 • 정격감도전류 30[mA] 이하, 동작시간 0.03초 이내 • 정격전부하전류가 50[A] 이상인 경우, 정격감도전류 200[mA] 이하, 동 작시간 0.1 초이내 아1APTER 02 감전재해 및 방지대책', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 인화성 액체를 정의할 때 기준이 되는 표준압력은 몇 [kPa]인가?', 2, 206)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96fed05d-4f02-d9ed-44f8-2d273117caa4', '7989e810-6dda-399b-cac7-31c55f845afa', '1', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d0535bd-9c4d-3300-be10-8aeea810eda6', '7989e810-6dda-399b-cac7-31c55f845afa', '100', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '7989e810-6dda-399b-cac7-31c55f845afa', '101.3', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9df2b24c-5f76-e8a9-e53c-af668a5f3c34', '7989e810-6dda-399b-cac7-31c55f845afa', '273.15', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7989e810-6dda-399b-cac7-31c55f845afa', 'bb50eb20-d766-6e2b-c8a7-6f16abacf9e8', '③ 101.3', '정답 ③. 인화성 액체란 표준압력(101.3[kPa])에서 인화점이 60『c] 이하 이거나 고온 • 고압의 공정운전조건으로 인하여 화재 폭발위험이 있는 상 태에서 취급되는 가연성 액체 물질을 말한다. 1', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4ad8d904-edd0-ba6c-92d5-d583b34b4087', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출하려고 할 때 그 첨부서류와 가 장 거리가 먼 것은?', 2, 207)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3b5bb14-b52c-fe10-38df-3076a531b28a', '4ad8d904-edd0-ba6c-92d5-d583b34b4087', '공사개요서', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12a49abb-9fe8-0dc2-785f-f03d4ee8963c', '4ad8d904-edd0-ba6c-92d5-d583b34b4087', '산업안전보건관리비 작성요령', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5b7c4b23-d1b8-82d1-a834-fd8784ad349b', '4ad8d904-edd0-ba6c-92d5-d583b34b4087', '전체 공정표', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('541ed629-6111-38b3-5e24-771dba63e371', '4ad8d904-edd0-ba6c-92d5-d583b34b4087', '재해 발생 위험 시 연락 및 대피방법', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4ad8d904-edd0-ba6c-92d5-d583b34b4087', '12a49abb-9fe8-0dc2-785f-f03d4ee8963c', '② 산업안전보건관리비 작성요령', '정답 ②. 건설공사 유해위험방지계획서 제출 시 첨부서류 •공사개요서 • 공사현장으। 주변 현황 및 주변과의 관계를 나타내는 도면（매설물 현황 포함） • 전체 공정표 • 산업안전보건관리비 사용계획서 • 안전관리 조직표 • 재해 발생 위험 시 연락 및 대피방법', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 자립고(自立高) 이상의 높이로 설치할 때 지 지벽체가 없어 와이어로프로 지지하는 경우의 준수사항으 로 옳지 않은것은?', 2, 208)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a23ec0-19b2-0df8-a483-e0438a1d8a39', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7229f6b-f057-b3be-d691-dd15e986b67d', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프 설치 각도는 수평면에서 60° 이내로 하되,', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('339e31b1-8309-3ed2-db13-3753d4293997', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e599c8a9-b523-511c-de0e-5f87534ae93a', 'cf995029-5d8d-224c-bafc-16dfc9b903a6', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cf995029-5d8d-224c-bafc-16dfc9b903a6', '339e31b1-8309-3ed2-db13-3753d4293997', '③ 와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', '정답 ③. 타워크레인을 와이어로프로 지지하는 경우 준수사항 • 와이어로프를 고정하기 위한 전용 지지프레임을 사용할 것 • 와이어로프 설치각도는 수평면에서 60° 이내로 하되, 지지점은 4개소 이 상으로 하고. 같은 각도로 설치할 것 • 와이어로프와 그 고정부위는 충분한 강도와 장력을 갖도록 설치하고. 와 이어로프를 클립 • 샤클 등의 고정기구를 사용하여 견고하게 고정시켜 풀 리지 않도록 하며. 사용 중에는 충분한 강도와 장력을 유지하도록 할 것 • 와이어로프가 가공전선에 근접하지 않도록 할 것', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d5a27633-cbb6-5f30-bf61-545029214214', '11111111-1111-1111-1111-111111111104', 'mcq', '항만하역작업에서의 선박승강설비 설치기 준으로 옳지 않은 것은?', 2, 209)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f85ed565-18c2-9854-da93-54f6e465b611', 'd5a27633-cbb6-5f30-bf61-545029214214', '200톤급 이상의 선박에서 하역작업을 하는 경우에 근', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39b2b841-adba-9c4a-1692-e6d7e4985a50', 'd5a27633-cbb6-5f30-bf61-545029214214', '현문 사다리는 견고한 재료로 제작된 것으로 너비는', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e1df3b87-a7ef-38e7-5b09-f25cadf79314', 'd5a27633-cbb6-5f30-bf61-545029214214', '현문 사다리의 양측에는 82[cm] 이상의 높이로 울타리', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2aa13f8-3136-d97c-b47c-3c3f5b38f76e', 'd5a27633-cbb6-5f30-bf61-545029214214', '현문 사다리는 근로자의 통행에만 사용하여야 하며, 화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d5a27633-cbb6-5f30-bf61-545029214214', 'f85ed565-18c2-9854-da93-54f6e465b611', '① 200톤급 이상의 선박에서 하역작업을 하는 경우에 근', '정답 ①. 물용 발판 또는 화물용 보판으로 사용하도록 해서는 아 니 된다. K3 항만하역작업 시 300톤급 이상의 선박에서 하역작업을 하는 경 우에 근로자들이 안전하게 오르내릴 수 있는 현문 사다리를 설치하여야 하 며, 이 사다리 밑에 안전망을 설치하여야 한다', array['산업안전기사','2020-4'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보안경 착용을 포함하는 안전보건표 지의 종류는?', 2, 210)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fbbaa34-76a8-25df-6251-745ad0f0207f', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '지시표지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a17b85-d71d-15c7-8904-e18f16c66b78', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '안내표지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bba296f3-92dc-9d34-e9fe-f6c02765d570', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '금지표지', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11ec2e51-d49d-f4b4-e868-66eacb98d85b', '852e80cd-be87-58e2-3fa4-f7b5958afcd4', '경고표지', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('852e80cd-be87-58e2-3fa4-f7b5958afcd4', '7fbbaa34-76a8-25df-6251-745ad0f0207f', '① 지시표지', '정답 ①. 지시표지', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '11111111-1111-1111-1111-111111111104', 'mcq', 'Thorndike의 시행착오설에 의한 학습의 원칙이 아닌 것은?', 2, 211)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ffec3be7-b4a6-e9ae-4a0b-ce5dc3b79473', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '연습의 원칙', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c2d5229-67cc-3ab4-5792-959856796a34', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '효과의 원칙', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('082f04ec-e750-7f0c-1fba-079720e25370', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '동일성의원칙', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bd1a010c-0451-b8e8-93b1-0ddab6372490', '0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '준비성의원칙', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0c0d0d58-82d1-9d83-6076-a2ea20a8d578', '082f04ec-e750-7f0c-1fba-079720e25370', '③ 동일성의원칙', '정답 ③. 손다이크(Thorndike)의 시행착오설 • 준비성의 법칙 • 연습의 법칙 • 효과의 법칙', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히의 재해구성비율 “1 : 29 : 300”에서 “29”에 해당 되는 사고발생비율은?', 2, 212)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01b9c2b8-5546-9e38-05b9-45e49e6660ba', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '8.8[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f8e3d2d-c32e-f169-c69b-927c5bfb077c', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '9.8[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a873040-e990-c486-d4c4-9fe2c5168b63', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '10.8[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e8d32bc9-12d4-1cf2-de0d-fd07cdb9056a', '887475c0-1fa9-eab4-0a39-71aef26a5e27', '11.8[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('887475c0-1fa9-eab4-0a39-71aef26a5e27', '01b9c2b8-5546-9e38-05b9-45e49e6660ba', '① 8.8[%]', '정답 ①. 8.8[%]', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '11111111-1111-1111-1111-111111111104', 'mcq', '안전보건관리조직의 형태 중 라인—스태프（Line—Staff）형에 관한 설명으로 틀린 것은?', 2, 213)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('29059268-1365-92e1-6bd6-161b84de5ba3', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '조직원 전원을 자율적으로 안전 활동에 참여시킬 수 있다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35db8bf7-2c56-0300-416d-242871044edc', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '라인의 관리감독자에게도 안전에 관한 책임과 권한이 부', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('71b6cc76-a03c-9088-8a13-268d0819f05f', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f13f5a7e-4a68-aa66-0032-ad7b374d0327', '9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '안전 활동과 생산업무가 유리될 우려가 없기 때문에 균형', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9ad3258f-07a4-ad5b-93ae-ac47a45466fe', '71b6cc76-a03c-9088-8a13-268d0819f05f', '③ 중규모 사업장（100명 이상 〜 300명 미만）에 적합하다.', '정답 ③. 을유지할수 있어 이상적인 조직형태이다. «§ 라인 • 스태프（UNE-STAFF）형 조직（직계참모조직） • 대규모（1,000명 이상） 사업장에 적합한 조직으로서 라인형과 스태프형의 장점만을 채택한 형태이며. 안전업무를 전담하는 스태프를 두고 생산라 인의 각 계층에서도 각 부서장으로 하여금 안전업무를 수행하도록 하여 스태프에서 안전에 관한 사항이 결정되면 라인을 통하여 실천하도록 편 성된 조직이다. • 안전계획. 평가 및 조사는 스태프에서, 생산기술의 안전대책은 라인에서 실시한다. 1프 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9a502101-0178-bb6d-8f15-a982a6e6e77a', '11111111-1111-1111-1111-111111111104', 'mcq', '브레인스토밍 기법에 관한 설명으로 옳은 것은?', 2, 214)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa689555-75c5-6088-2606-2086d1bcc9a8', '9a502101-0178-bb6d-8f15-a982a6e6e77a', '타인의 의견을 수정하지 않는다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea528f47-8a57-bf20-7415-45af206d6016', '9a502101-0178-bb6d-8f15-a982a6e6e77a', '지정된 표현방식에서 벗어나 자유롭게 의견을 제시', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('784329f0-232e-61ed-d61d-5a99478f8941', '9a502101-0178-bb6d-8f15-a982a6e6e77a', '참여자에게는 동일한 횟수의 의견제시 기회가 부여', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('249d64fd-2733-3260-3ecd-f950a5961171', '9a502101-0178-bb6d-8f15-a982a6e6e77a', '주제와 내용이 다르거나 잘못된 의견은 지적하여 조정', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9a502101-0178-bb6d-8f15-a982a6e6e77a', 'ea528f47-8a57-bf20-7415-45af206d6016', '② 지정된 표현방식에서 벗어나 자유롭게 의견을 제시', '정답 ②. 자유분방: 자유로운 분위기에서 발퓨한다 ㆍ대량발언: 무엇이든지 좋으니 많이 발언한다. ㆍ수정발언: 자유지째로 변하는 아이디어를 개발한다,타인 의견의 수정발', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법 령」상 안전인증대상기계 등에 포함되는 기 계, 설비, 방호장치에 해당하지 않는 것은?', 2, 215)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01d60be1-ee84-326f-91e7-69a4cca4dcba', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '롤러기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f5da111-f6d4-a780-66d2-2ca3947d2c78', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '크레인', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a681010-7bab-c43f-e385-f94a95478ab1', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '동력식 수동대패용 칼날 접촉 방지장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72ccb8b3-0d96-0635-cb6a-71787fffae82', '16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '방폭구조（防爆構造） 전기기계 •기구 및 부품', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('16b43385-1c6a-6df1-bf59-4c1fb3dbe750', '9a681010-7bab-c43f-e385-f94a95478ab1', '③ 동력식 수동대패용 칼날 접촉 방지장치', '정답 ③. 동력식 수동대패용 칼날 접촉 방지장치', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1bb64617-ac4a-8037-4be5-729cf03834ae', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 해당 사업주가 유해위험방지계획서 를 작성하여 제출해야 하는 대상은?', 2, 216)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff09a006-e23e-6439-97e7-558df13d08b0', '1bb64617-ac4a-8037-4be5-729cf03834ae', '시•도지사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9894299e-ab3b-c1e9-c099-d168a44069f1', '1bb64617-ac4a-8037-4be5-729cf03834ae', '관할구청장', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('018457c4-63ea-f494-befa-0ea4f7b12c98', '1bb64617-ac4a-8037-4be5-729cf03834ae', '고용노동부장관', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adc2ff63-9aa7-fb28-4780-4d62a4313c59', '1bb64617-ac4a-8037-4be5-729cf03834ae', '행정안전부장관', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1bb64617-ac4a-8037-4be5-729cf03834ae', '018457c4-63ea-f494-befa-0ea4f7b12c98', '③ 고용노동부장관', '정답 ③. 하는 바에 따라 고용노동부장관에게 제출하고 심사를 받아야 한다', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('17dff332-b45a-1683-4b94-c74cabc0fbec', '11111111-1111-1111-1111-111111111104', 'mcq', '자동차를 생산하는 공장의 어떤 근로자가 95[dB(A)]의 소 음수준에서 하루 8시간 작업하며 매 시간 조용한 휴게실에 서 20분씩 휴식을 취한다고 가정하였을 때, 8시간 시간가 중평균(TWA)은?(단, 소음은 누적소음노출량측정기로 측정 하였으며, OSHA에서 정한 95[dB(A)]의 허용시간은 4시간 이라 가정한다.)', 2, 217)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d3b92235-2a23-f947-037f-92b8574176b4', '17dff332-b45a-1683-4b94-c74cabc0fbec', '약 91[dB(A)]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('41a74207-0017-f36f-86e1-f91bc77ede2d', '17dff332-b45a-1683-4b94-c74cabc0fbec', '약 92[dB(A)]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fa66f6e-d77c-006e-396c-f55c360d1bce', '17dff332-b45a-1683-4b94-c74cabc0fbec', '약 93[dB(A)]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aba82426-49d8-c95f-46ce-d71819b9bbe2', '17dff332-b45a-1683-4b94-c74cabc0fbec', '약 94[dB(A)]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('17dff332-b45a-1683-4b94-c74cabc0fbec', '41a74207-0017-f36f-86e1-f91bc77ede2d', '② 약 92[dB(A)]', '정답 ②. 약 92[dB(A)]', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 보일러에 설치해야 하는 안전장치로 거리가 가장 먼 것은?', 2, 218)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c35e47c0-e546-2adf-2451-5fb7fc1f8442', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '해지장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ff9ee67d-338d-55a5-a160-fb00310d8836', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력방출장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('405d7b3f-ae4e-0db6-a5cf-efbfe2953190', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '압력제한스위치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('df276102-62d6-c165-a72d-e0f3c8aab604', 'b48b4418-09ca-20c5-ae3d-a2fefa13357f', '고저수위 조절장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48b4418-09ca-20c5-ae3d-a2fefa13357f', 'c35e47c0-e546-2adf-2451-5fb7fc1f8442', '① 해지장치', '정답 ①. 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치. 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다. 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스 작동 후 작업점까지의 도달시간이 0.3초인 경우 위 험한계로부터 양수조작식 방호장치의 최단 설치거리는?', 2, 219)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57d8d0dd-a6af-db72-6e5e-af820ef86958', 'dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '48[cm] 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d25796c9-8a58-13b6-9c9d-ce2e95b19889', 'dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '58[cm] 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ac3346b-bd5c-d7ec-edb5-275ceabe5751', 'dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '68[cm] 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36dd674b-6189-e82d-54ab-45d0571ae3fb', 'dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '78[cm] 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd41c11a-9e5b-7e33-796e-bcd7cc39ec27', '57d8d0dd-a6af-db72-6e5e-af820ef86958', '① 48[cm] 이상', '정답 ①. 48[cm] 이상', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 고속회전체의 회전시험을 하는 경우 미리 회전축의 재질 및 형상 등에 상응하는 종류의 비파괴 검사를 해서 결함 유무를 확인해야 한다. 이때 검사대상이 되는 고속회전체의 기준은?', 2, 220)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13c890d7-d5bf-734c-d955-17b33b9bfc0c', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94d55ac-84a2-baaf-84a4-2d4f498c10ac', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회 전축의 중량이 0.5톤을 초과하고, 원주속도가', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20790b2e-3a24-87c1-5d86-e24d5e062e3f', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 10이m/', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('101e097d-ab1c-ae50-907a-99aa61872eaf', '4337c5ad-fea3-943e-2690-88e5dca384f1', '회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4337c5ad-fea3-943e-2690-88e5dca384f1', '101e097d-ab1c-ae50-907a-99aa61872eaf', '④ 회전축의 중량이 1톤을 초과하고, 원주속도가 120[m/', '정답 ④. [m/s] 이상인 것으로 한정)의 회전시험을 하는 경우에 미리 회전축의 재 질 및 형상 등에 상응하는 종류의 비파괴검사를 해서 결함 유무를 확인하여', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스의 손쳐내기식 방호장치 설치기준으로 틀린 것은?', 2, 221)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0dbd8161-a2f9-e4f2-9c38-94f967d40b99', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '방호판의 폭이 금형 폭의 1/2 이상이어야 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ee06d29-aecd-b442-dc53-0061e5984501', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('783119e5-8a62-cc9b-005b-7bb2151598d6', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '손쳐내기봉의 행정(Stroke) 길이를 금형의 높이에 따', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ca023fc3-a9c1-9746-6f89-019ada1b257e', 'ded56482-7308-d6ca-ac3c-c54596c0b5c6', '슬라이드 하행정거리의 3/4 위치에서 손을 완전히 밀', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ded56482-7308-d6ca-ac3c-c54596c0b5c6', '1ee06d29-aecd-b442-dc53-0061e5984501', '② 슬라이드 행정수가 300[SPM] 이상의 것에 사용한다.', '정답 ②. 라 조정할 수 있고 진동폭은 금형 폭 이상이어야 한다. ： 슬라이드 하행정거리의 3/4 위치에서 손을 완전히 밀 손쳐내기식 방호장치는 슬라이드 행정수가 100[5["1] 이하, 행 정길이가 40[mm] 이상의 것에 사용한다', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 롤러기의 방호장치 설치 시 유의해 야 할 사항으로 가장 적절하지 않은 것은?', 2, 222)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8205f28-1e94-f2eb-6e4b-4b0211e097ff', '9cabd798-3694-f712-101c-9d89e037a36e', '손으로 조작하는 급정지장치의 조작부는 롤러기의 전', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ab4e119c-e6b5-a898-862b-807e471470b2', '9cabd798-3694-f712-101c-9d89e037a36e', '앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('236af06e-647e-f7c0-061c-f898a3d34ff1', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 사용 중 늘어져', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a372beb5-b248-fc85-12cb-7f7ffeab37de', '9cabd798-3694-f712-101c-9d89e037a36e', '급정지장치의 조작부에 사용하는 줄은 충분한 인장강', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9cabd798-3694-f712-101c-9d89e037a36e', 'ab4e119c-e6b5-a898-862b-807e471470b2', '② 앞면 롤러의 표면속도가 3O[m/min] 미만인 경우 급정', '정답 ②. 도를 가져야 한다. K3 롤러기 급정지장치의 성능 앞면 롤러의 표면속되m/min] 급정지거리 앞면 롤러 원주의 } 이내 30 미만 앞면 롤러 원주의 닐〒 이내 30 이상', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('709a05af-2c8d-823b-491c-e54994a1475f', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 금속의 용접, 용단에 사용하는 가스 용기를 취급할 때 유의사항으로 틀린 것은?', 2, 223)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90e5341f-08a3-9784-3ba9-9ab953963d1b', '709a05af-2c8d-823b-491c-e54994a1475f', '밸브의 개폐는 서서히 할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fc811ce-3c9f-4e86-65e6-47bd2c3aa0fd', '709a05af-2c8d-823b-491c-e54994a1475f', '운반하는 경우에는 캡을 벗길 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22262f49-1557-8a6a-8fbe-5fd0e017f7e6', '709a05af-2c8d-823b-491c-e54994a1475f', '용기의 온도는 40[℃] 이하로 유지할 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd81bb68-37dc-7eb6-5ae9-3a80596ec610', '709a05af-2c8d-823b-491c-e54994a1475f', '통풍이나 환기가 불충분한 장소에는 설치하지 말 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('709a05af-2c8d-823b-491c-e54994a1475f', '1fc811ce-3c9f-4e86-65e6-47bd2c3aa0fd', '② 운반하는 경우에는 캡을 벗길 것', '정답 ②. 금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 운반 하는 경우에는 캡을 씌워야 한다. *10', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」제319조에 의한 정전전로 에서의 정전작업을 마친 후 전원을 공급하는 경우에 사업주 가 작업에 종사하는 근로자 및 전기기기와 접촉할 우려가 있는 근로자에게 감전의 위험이 없도록 준수해야 할 사항이 아닌 것은?', 2, 224)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21b76957-e720-c246-961e-730142b442b8', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '단락 접지기구 및 작업기구를 제거하고 전기기기 등이', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a1d4751-5362-e86b-ec9b-269cb81d154c', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 작업자가 작업이 완료된 전기기기에서 떨어져 있', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8643925f-f646-c4af-76e9-a87af880da6f', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '잠금장치와 꼬리표를 근로자가 직접 설치한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5a9bc79b-f673-e79e-bd17-141c510f7ca0', '48a41f23-bb1f-82cd-9e96-1ca86533deb7', '모든 이상 유무를 확인한 후 전기기 기 등의 전원을 투', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('48a41f23-bb1f-82cd-9e96-1ca86533deb7', '8643925f-f646-c4af-76e9-a87af880da6f', '③ 잠금장치와 꼬리표를 근로자가 직접 설치한다.', '정답 ③. 입한다. KOI 정전작업을 마친 후 전원을 공급하는 경우에는 작업에 종사하는 근로자 또는 그 인근에서 작업하거나 정전된 전기기기 등（고정 설치된 것 으로 한정）과 접촉할 우려가 있는 근로자에게 감전의 위험이 없도록 다음 의 사항을 준수하여야 한다. • 작업기구. 단락 접지기구 등을 제거하고 전기기기 등이 안전하게 통전될 수 있는지를 확인할 것 • 모든 작업자가 직업이 완료된 전기기기 등에서 떨어져 있는지를 확인할 것 • 잠금장치와 꼬리표는 설치한 근로자가 직접 철거할 것 • 모든 이상 유무를 확인한 후 전기기기 등의 전원을 투입할 것', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('00b612de-3752-a619-1184-c5328edbc010', '11111111-1111-1111-1111-111111111104', 'mcq', '변압기의 최소 ip 등급은?（단, 유입방폭구조의 변압기이다.）', 2, 225)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e84910e-30bf-89d3-d337-ccc41d91c43a', '00b612de-3752-a619-1184-c5328edbc010', 'IP55', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('749aa0a4-01bc-2764-c314-b85f2bce0d2f', '00b612de-3752-a619-1184-c5328edbc010', 'IP56', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57674e97-573b-5e25-fce6-d12f6e639da3', '00b612de-3752-a619-1184-c5328edbc010', 'IP65', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a82ea92-86c2-bc1c-4aa4-9dc3342425ec', '00b612de-3752-a619-1184-c5328edbc010', 'IP66', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('00b612de-3752-a619-1184-c5328edbc010', '7a82ea92-86c2-bc1c-4aa4-9dc3342425ec', '④ IP66', '정답 ④. 유입방폭구조의 밀봉되지 않은 기기의 통기장치의 배출구 및 밀 봉된 기기의 압력방출장치의 배출구는 아래를 향해야 하며 KS C IEC 60529011 따른 IP66 이상의 보호등급을 가져야 한다. 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e0dc8e3-878d-0577-bf04-a9c097ca387b', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기설비의 용기 내부에서 폭발성 가스 또는 증기가 폭 발하였을 때 용기가 그 압력에 견디고 접합면이나 개구부를 통해서 외부의 폭발성 가스나 증기에 인화되지 않도록 한 방폭구조는?', 2, 226)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69887483-0a70-94bf-2176-e0a616bb54e5', '8e0dc8e3-878d-0577-bf04-a9c097ca387b', '내압방폭구조', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('209357c4-3809-c5f2-18a9-9252f09db843', '8e0dc8e3-878d-0577-bf04-a9c097ca387b', '압력방폭구조', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f7441c0a-caaa-21a0-d30c-eafd1d204ceb', '8e0dc8e3-878d-0577-bf04-a9c097ca387b', '유입방폭구조', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9219e564-2b04-3a26-7936-c13f851b513f', '8e0dc8e3-878d-0577-bf04-a9c097ca387b', '본질안전방폭구조', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e0dc8e3-878d-0577-bf04-a9c097ca387b', '69887483-0a70-94bf-2176-e0a616bb54e5', '① 내압방폭구조', '정답 ①. 내압방폭구조', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 전기저항을 500[Q]으로 하는 경우 심실세동을 일 으킬 수 있는 에너지는 약 얼마인가?(단, 심실세동전류 /=쯔[mA]로 한다.)', 2, 227)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c88ff628-3ede-2778-3882-08fedc1eedb9', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[J]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('204595f7-a32c-8ce3-cba5-5b197bd78225', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[J]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('abd3d45a-8fc9-d220-80b2-ce3dda023721', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '13.6[mJ]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2f7bcdde-f927-a35f-7513-69a117db26ca', '5f110306-ee7f-3f3f-1858-50e5b0b2040d', '19.0[mJ]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f110306-ee7f-3f3f-1858-50e5b0b2040d', 'c88ff628-3ede-2778-3882-08fedc1eedb9', '① 13.6[J]', '정답 ①. 13.6[J]', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '11111111-1111-1111-1111-111111111104', 'mcq', '「한국전기설비규정」에 따라 과전류차단기로 저압전로에 사 용하는 범용 퓨즈（gG）의 용단전류는 정격전류의 몇 배인 가?（단, 정격전류가 4[A] 이하인 경우이다.）', 2, 228)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('185e5a34-bf56-753f-1f28-ff9cb7b166c0', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.5 배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('753b7236-8dd6-0965-a4b8-33b8e33dc037', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.6 배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('838ce4f2-6f87-a9d7-9879-189173952468', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '1.9 배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('853542f7-044d-6f17-63d2-1265335e1878', '2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '2.1 배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2343d2ef-b216-3eab-1db4-f653c3f5ecfe', '853542f7-044d-6f17-63d2-1265335e1878', '④ 2.1 배', '정답 ④. 2.1 배', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', '11111111-1111-1111-1111-111111111104', 'mcq', '정전기가 대전된 물체를 제전시키려고 한다. 다음 중 대전 된 물체의 절연저항이 증가되어 제전의 효과를 감소시키는 것은?', 2, 229)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8409726-b447-3da4-e92d-6c713a5aa469', 'ac24a843-02d5-6196-baa8-88b952085d2b', '접지한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b112d95e-2849-d286-2aa2-944bed0071c6', 'ac24a843-02d5-6196-baa8-88b952085d2b', '건조시킨다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad3c4341-8773-d317-f34c-a6d6afc8115d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '도전성 재료를 첨가한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0476061d-3509-a3e8-c117-0c5f8e51577d', 'ac24a843-02d5-6196-baa8-88b952085d2b', '주위를 가습한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ac24a843-02d5-6196-baa8-88b952085d2b', 'b112d95e-2849-d286-2aa2-944bed0071c6', '② 건조시킨다.', '정답 ②. 건조시킨다.', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '11111111-1111-1111-1111-111111111104', 'mcq', '극간 정전용량이 1,OOO[pF]이고, 착화에너지가 0.019[mJ] 인 가스에서 폭발한계 전압[V]은 약 얼마인가?（단, 소수점 이하는 반올림한다.）', 2, 230)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f0c05d91-11b7-5f76-61f8-86032c28ac3b', '5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '3,900', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('49fa108f-e59d-5d80-5bf2-4256abd594b0', '5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '1,950', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f448a368-d486-5442-7ecd-548acfec137d', '5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '390', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('98e71c39-6a16-b81d-0a4f-220b44232750', '5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '195', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f4e931d-d53e-6df3-68d0-8912f0c12ef5', '98e71c39-6a16-b81d-0a4f-220b44232750', '④ 195', '정답 ④. 195', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c7bad808-0a49-fbde-3326-b4dca3037abe', '11111111-1111-1111-1111-111111111104', 'mcq', '공기 중에서 A 물질의 폭발하한계가 4[v이%], 상한계가 75[vol%]라면 이 물질의 위험도는?', 2, 231)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec5aa88f-dc6b-14a0-1fb8-ac8c8536f384', 'c7bad808-0a49-fbde-3326-b4dca3037abe', '16.75', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09c2d3c6-2afe-e5be-2226-90cda1ec3a23', 'c7bad808-0a49-fbde-3326-b4dca3037abe', '17.75', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d91d10c1-e3cd-0305-71e5-bcc8c35e4e45', 'c7bad808-0a49-fbde-3326-b4dca3037abe', '18.75', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c31a5d4a-94c6-2c17-8a93-0c875ea959a8', 'c7bad808-0a49-fbde-3326-b4dca3037abe', '19.75', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c7bad808-0a49-fbde-3326-b4dca3037abe', '09c2d3c6-2afe-e5be-2226-90cda1ec3a23', '② 17.75', '정답 ②. 17.75', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '11111111-1111-1111-1111-111111111104', 'mcq', '위험물을「산업안전보건법령」에서 정한 기준량 이상으로 제조하거나 취급하는 설비로서 특수화학설비에 해당되는 것은?', 2, 232)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('321caffc-8c8b-996d-f326-bed112e6a10c', 'df9779b1-709f-381c-a402-cba4859a0769', '가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da833624-d1bd-d5f3-c024-7500b509ee6f', 'df9779b1-709f-381c-a402-cba4859a0769', '상온에서 게이지 압력으로 200[kPa]의 압력으로 운전', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90bab20b-3ccb-9a5b-d285-f502cb7b8fb7', 'df9779b1-709f-381c-a402-cba4859a0769', '대기압 하에서 30이。C]로 운전되는 설비', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('995c2b06-6642-d716-912a-01e6ea6e527d', 'df9779b1-709f-381c-a402-cba4859a0769', '흡열반응이 행하여지는 반응설비', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('df9779b1-709f-381c-a402-cba4859a0769', '321caffc-8c8b-996d-f326-bed112e6a10c', '① 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분', '정답 ①. 특수화학설비 • 발열반응이 일어나는 반응장치 • 증류 • 정류 • 증발 • 추출 등 분리를 하는 장치 • 가열시켜 주는 물질의 온도가 가열되는 위험물질의 분해온도 또는 발화 점보다 높은 상태에서 운전되는 설비 • 반응폭주 등 이상 화학반응에 의하여 위험물질이 발생할 우려가 있는 설비 • 온도가 350[℃] 이상이거나 게이지압력이 980[kPa] 이상인 상태에서 운전되는 설비 • 가열로 또는가열기', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 다음 내용에 해당하는 폭발위험장소 는? 20종 장소 밖으로서 분진운 형태의 가연성 분진이 폭발농도 를 형성할 정도의 충분한 양이 정상작동 중에 존재할 수 있는 장소를 말한다.', 2, 233)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3768261f-6c13-e2ac-3504-a9ab094083aa', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '21종 장소', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53dace85-5b0b-1c04-3c09-4f09fd4d28f0', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '22종 장소', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38355390-dcfe-fdf4-abf0-627d375092b4', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '0종 장소', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da7c31e9-3d59-35aa-8679-c0e10a5c0c4f', 'c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '1종 장소', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c5e8c0c5-e5bb-5d06-e8c3-9df79de87fa9', '3768261f-6c13-e2ac-3504-a9ab094083aa', '① 21종 장소', '정답 ①. 21종 장소 20종 장소 밖으로서 분진운 형태의 가연성 분진이 폭발농도를 형성할 정 도의 충분한 양이 정상작동 중에 존재할 수 있는 장소이다. EW틔', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '11111111-1111-1111-1111-111111111104', 'mcq', '크레인 등 건설장비의 가공전선로 접근 시 안전대책으로 옳 지 않은 것은?', 2, 234)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0399df4f-70e2-edeb-c133-a9cb914c4cbd', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '안전 이격거 리를 유지하고 작업한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비를 가공전선로 밑에 보관한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e438cb70-05ed-53ff-a2df-919478bce975', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비의 조립, 준비 시부터 가공전선로에 대한 감전 방', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3659fe62-984b-879e-c958-d901608f13a9', '7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', '장비 사용 현장의 장애물, 위험물 등을 점검 후 작업계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7713dcc8-89f6-7ca2-e0e7-43d67df3d43d', 'efe8e57d-9bc4-fc3b-7e16-b6bf665f843a', '② 장비를 가공전선로 밑에 보관한다.', '정답 ②. 있으므로 가공전선로와 이격된 장소에 보관하여야 한다', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('97d5a114-d91b-de9e-5fc6-31b377ead748', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하는 철골작업을 중지하여야 하는 기후조건에 해당하지 않는 것은?', 2, 235)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95d7cebe-7ac7-746a-b0d9-9aeac85cccdd', '97d5a114-d91b-de9e-5fc6-31b377ead748', '풍속이 초당 1이m] 이상인 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1b44bf6-2744-ce5b-6fd2-3a1c4ea1894f', '97d5a114-d91b-de9e-5fc6-31b377ead748', '강우량이 시간당 l[mm] 이상인 경우', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1af60192-ff57-1f1a-7a57-18bcc4cf678a', '97d5a114-d91b-de9e-5fc6-31b377ead748', '강설량이 시간당 l[cm] 이상인 경우', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a524a3a8-9800-cf95-92f1-229599d5bc8e', '97d5a114-d91b-de9e-5fc6-31b377ead748', '기온이 영하 5[℃] 이하인 경우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('97d5a114-d91b-de9e-5fc6-31b377ead748', 'a524a3a8-9800-cf95-92f1-229599d5bc8e', '④ 기온이 영하 5[℃] 이하인 경우', '정답 ④. 기온이 영하 5[℃] 이하인 경우', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', '11111111-1111-1111-1111-111111111104', 'mcq', '유해 위험방지계획서를 고용노동부 장관에게 제출하고 심사 를 받아야 하는 대상 건설공사 기준으로 옳지 않은 것은?', 2, 236)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6944bfe0-095c-ecac-94e6-19aea1c29aea', '7aed81b7-edc8-785c-17f9-d8a52b390080', '최대 지간길이가 5이m] 이상인 다리의 건설 등 공사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '7aed81b7-edc8-785c-17f9-d8a52b390080', '지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c8fcf36-3eed-9a90-6969-dc718ba7697f', '7aed81b7-edc8-785c-17f9-d8a52b390080', '깊이 10[m] 이상인 굴착공사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('478d2a78-b5b1-7b80-a0b3-d0f7caa5239b', '7aed81b7-edc8-785c-17f9-d8a52b390080', '다목적댐, 발전용댐, 저수용량 2천만 톤 이상의 용수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7aed81b7-edc8-785c-17f9-d8a52b390080', 'f4b1f94a-845f-c4c1-bff0-cf88f2d89487', '② 지상높이 25[m] 이상인 건축물 또는 인공구조물의 건', '정답 ②. 전용 댐 및 지방상수도 전용 댐의 건설 등 공사 na 유해위험방지계획서 제출대상 건설공사 • 지상높이가 31[m] 이상인 건축물 또는 인공구조물. 연면적 30.0001m2] 이상인 건축물 또는 연면적 5.000[m2] 이상의 문화 및 집회시설（전시장 및 동물원 • 식물원 제외）. 판매시설. 운수시설（고속철도의 역사 및 집배 송시설 제외）. 종교시설, 의료시설 중 종합병원. 숙박시설 중 관광숙박시 설. 지하도상가 또는 냉동 • 냉장 창고시설의 건설 • 개조 또는 해체（건설 등） 공사 • 연면적 5.000[m2] 이상의 냉동 • 냉장 창고시설의 설비공사 및 단열공사 • 최대 지간길이가 50[m] 이상인 다리의 건설 등 공사 • 터널의 건설 등 공사 • 다목적댐, 발전용댐. 저수용량 2천만 톤 이상의 용수 전용 댐 및 지방 상 수도 전용 댐의 건설 등 공사 • 깊이가 10[m] 이상인 굴착공사 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('0499e2c5-795a-f83b-e9bb-65a505cc45ff', '11111111-1111-1111-1111-111111111104', 'mcq', '이동식비계를 조립하여 작업을 하는 경우에 준수하여야 할 기준으로 옳지 않은 것은?', 2, 237)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9b8766a3-ea6f-70f2-5ce7-874209bef6fc', '0499e2c5-795a-f83b-e9bb-65a505cc45ff', '승강용 사다리는 견고하게 설치할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6cb83b44-05ad-963f-4922-61ee7dff7054', '0499e2c5-795a-f83b-e9bb-65a505cc45ff', '비계의 최상부에서 작업을 하는 경우에는 안전난간을', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d91affab-1dd1-4bea-3074-efb1efcd2ba7', '0499e2c5-795a-f83b-e9bb-65a505cc45ff', '작업발판의 최대적재하중은 40이kg]을 초과하지 않도', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64e75d9d-6ac7-d859-9f50-974f493bce39', '0499e2c5-795a-f83b-e9bb-65a505cc45ff', '작업발판은 항상 수평을 유지하고 작업발판 위에서 안', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('0499e2c5-795a-f83b-e9bb-65a505cc45ff', '6cb83b44-05ad-963f-4922-61ee7dff7054', '② 비계의 최상부에서 작업을 하는 경우에는 안전난간을', '정답 ②. 전난간을 딛고 작업을 하거나 받침대 또는 사다리를 사 용하여 작업하지 않도록 할 것 K9 이동식비계 작업발판의 최대적재하중은 250[kg｝을 초과하지 않 도록 하여야 한다. 1', array['산업안전기사','2021-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 경고표지의 기본모형(형태)이 다른 것은?', 2, 238)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6b2b483-4d55-607e-6276-2b7fa793ffdb', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '고압전기 경고', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('954a5dd0-d86b-7762-b232-8e62bb3cbb71', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '방사성물질 경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec1570b4-723b-43a6-2888-fe30569ce995', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '폭발성물질 경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b61c9742-4437-6d63-643e-ffe0fa7d241d', '3f107caf-98aa-f83e-ff43-bfbf5d86ffba', '매달린물체 경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f107caf-98aa-f83e-ff43-bfbf5d86ffba', 'ec1570b4-723b-43a6-2888-fe30569ce995', '③ 폭발성물질 경고', '정답 ③. 폭발성물질 경고', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('669cbc77-619f-e385-9029-7e9d831db31b', '11111111-1111-1111-1111-111111111104', 'mcq', '도수율이 24.5이고, 강도율이 1.15인 사업장에서 한 근로 자가 입사하여 퇴직할 때까지의 근로손실일수는?', 2, 239)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3e78ae4-5c6f-5ac2-1b85-ee352e515096', '669cbc77-619f-e385-9029-7e9d831db31b', '2.45일', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a7af8bc-682b-9694-f3e8-62bd62f7b791', '669cbc77-619f-e385-9029-7e9d831db31b', '115일', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ec563838-0293-04cd-ccc1-aa730930fe26', '669cbc77-619f-e385-9029-7e9d831db31b', '215일', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33e13545-bea7-357f-2de2-596861b6dd46', '669cbc77-619f-e385-9029-7e9d831db31b', '245일', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('669cbc77-619f-e385-9029-7e9d831db31b', '0a7af8bc-682b-9694-f3e8-62bd62f7b791', '② 115일', '정답 ②. 환산강도율이란 근로자가 입사하여 퇴직할 때까지(40년 10만 시간) 잃을 수 있는 근로손실일수이다. 환산강도율 강도율 x 100 1.15 x 100 115일', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건교육 교육대상별 교육내용 중 관리감독자 정기교육의 내용으로 틀린 것은?', 2, 240)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5da26322-69b9-6699-281c-d8113b0bca5c', 'bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '정리정돈 및 청소에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('816e1284-63fd-ef49-3e54-3004bf9ba565', 'bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '유해 • 위험 작업환경 관리에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('237dfb9b-882d-91c3-a83d-25697a586223', 'bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '표준안전 작업방법 결정 및 지도 • 감독 요령에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fdc9495f-fbb1-43e4-9fed-6b6fad310b91', 'bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '작업공정의 유해 • 위험과 재해 예방대책에 관한 사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bba9063a-1f80-778f-5a45-0eba3ec2b7f3', '5da26322-69b9-6699-281c-d8113b0bca5c', '① 정리정돈 및 청소에 관한 사항', '정답 ①. 은 근로자의 채용 시 및 작업내용 변경 시 교육내용이다. . 관리감독자 정기 교육내용 ㆍ산업안전 및 산업재해 예방에 관한 사항 ㆍ산업보건 및 건강장해 예방에 관한 사항 . ㆍ위험성 평가에 관한 사항 ㆍ유해ㆍ위험 작업환경 관리에 관한 사항 ㆍ산업안전보건법령」 및 산업재해보상보험 제도에 관한 사항 ㆍ직무스트레스 예방 및 관리에 관한 사항 ㆍ 직장 내 괴롭힘, 고객의 폭언 등으로 인한 건강장해 예방 및 관리에 관한 ㆍ작업공정의 유해 ㆍ위험과 재해 예방대책에 관한 사항 ㆍ사업장 내 안전보건관리체제 및 안전ㆍ보건조치 현황에 관한 사항 ㆍ표준안전 작업방법 결정 및 지도 ㆍ감독 요령에 관한 사항 ：현장 근로자와의 의사소통능력 및 강의능력 등 안전보건교육 능력 배양 ㆍ비상시 또는 재해 발생 시 긴급조치에 관한 사항', array['산업안전기사','2021-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
