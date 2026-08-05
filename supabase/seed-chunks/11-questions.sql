-- chunk 11
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발하한계에 관한 설명으로 옳지 않은 것은?', 2, 401)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('98b60771-9c7e-7e66-ec43-7b97e47b0ae9', '9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', '폭발하한계에서 화염의 온도는 최저치로 된다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e4c8cfe-0d4f-87c3-41b0-76172612c32c', '9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', '폭발하한계에 있어서 산소는 연소하는 데 과잉으로 존', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d41a0031-454c-4828-4a83-f78ba032ab51', '9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', '화염이 하향전파인 경우 일반적으로 온도가 상승함에', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b22dfce-5383-7032-9c72-cabfa109cb7b', '9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', '폭발하한계는 혼합가스의 단위체적당의 발열량이 일정', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9cfc497c-2901-36f5-4f10-1ac30dfc6cf8', 'd41a0031-454c-4828-4a83-f78ba032ab51', '③ 화염이 하향전파인 경우 일반적으로 온도가 상승함에', '정답 ③. 한 한계치에 도달하는 데 필요한 가연성 가스의 농도이 다. « 기준이 되는 25[℃]에서 100[℃]씩 증가할 때마다 폭발하한계의 값이 8[야] 감소하며. 폭발상한은 8[%] 증가한다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 제2종 분말소화약제의 주성분은 어느 것인가?', 2, 402)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b1d5634-1840-c484-814d-1cbaab08d549', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NaHCO3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '34f6e468-12f0-9433-04f5-56b05269f68d', 'KHCO3', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b77325a-77be-dcfe-d8c7-8ab549991bfb', '34f6e468-12f0-9433-04f5-56b05269f68d', 'NH4H2P(으', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('42dbf547-9f95-13c8-766e-90b25580f544', '34f6e468-12f0-9433-04f5-56b05269f68d', '(NH2)2CO', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('34f6e468-12f0-9433-04f5-56b05269f68d', '78bcb02a-5b2f-e567-81f3-fbfd221b5b04', '② KHCO3', '정답 ②. KHCO3', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a3a4f194-84b2-cfb9-da5f-e77e677b7d46', '11111111-1111-1111-1111-111111111104', 'mcq', '에틸알코올 완전연소 시, 생성되는 이산화탄소와 물의 비 는?', 2, 403)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('22c8685a-6fcc-8ff1-2899-23424169eae1', 'a3a4f194-84b2-cfb9-da5f-e77e677b7d46', '1：2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('389dc47c-6339-8b43-7c58-83ac57589948', 'a3a4f194-84b2-cfb9-da5f-e77e677b7d46', '2：1', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5adc54b-d6a8-4ecd-48cd-838180c13c63', 'a3a4f194-84b2-cfb9-da5f-e77e677b7d46', '2：3', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83545ebd-f05f-3a65-103a-942e65bfa4d6', 'a3a4f194-84b2-cfb9-da5f-e77e677b7d46', '3：2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a3a4f194-84b2-cfb9-da5f-e77e677b7d46', 'b5adc54b-d6a8-4ecd-48cd-838180c13c63', '③ 2：3', '정답 ③. 에틸알코올 완전연소 시 MATE 이산화탄소와 물의 비는 2 : 3이다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4a263db8-0810-221f-da1f-e560a75a986a', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?(단, Le Chatelier의 법칙을 이용한다.)', 2, 404)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afd7c293-1d31-ddef-991a-dbcd6336257c', '4a263db8-0810-221f-da1f-e560a75a986a', '메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b49f4b86-ad20-2095-8460-5045f3094967', '4a263db8-0810-221f-da1f-e560a75a986a', '메탄 301Vo1%], 에탄 30[vol%], 프로판 40[vol%]의 혼', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f26b71c2-09b0-f721-9e74-8da65f9b8238', '4a263db8-0810-221f-da1f-e560a75a986a', '메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('423d636d-979b-3c70-8a40-4fa0047249f0', '4a263db8-0810-221f-da1f-e560a75a986a', '메탄 50[vol%], 에탄 30[vol%], 프로판 20[vol%]의 혼', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4a263db8-0810-221f-da1f-e560a75a986a', 'afd7c293-1d31-ddef-991a-dbcd6336257c', '① 메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼', '정답 ①. 메탄 20[vol%], 에탄 30[vol%], 프로판 50[vol%]의 혼', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ae7f53a6-047e-47e5-edee-82e3a6dc3d94', '11111111-1111-1111-1111-111111111104', 'mcq', '유류저장탱크에서 화염의 차단을 목적으로 외부에 증기를 방출하기도 하고 탱크 내 외기를 흡입하기도 하는 부분에 설치하는 안전장치는?', 2, 405)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5bd4c000-0559-cf1e-4d91-4d0dafcaccce', 'ae7f53a6-047e-47e5-edee-82e3a6dc3d94', 'Vent Stack', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8305f019-9f3a-4e25-9794-eadf7b78f94d', 'ae7f53a6-047e-47e5-edee-82e3a6dc3d94', 'Safety Valve', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a54309b3-8644-a8ff-6178-dc3d810b7166', 'ae7f53a6-047e-47e5-edee-82e3a6dc3d94', 'Gate Valve', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17dd6aab-3e02-e1be-e179-8951b4c21ca0', 'ae7f53a6-047e-47e5-edee-82e3a6dc3d94', 'Flame Arrester', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ae7f53a6-047e-47e5-edee-82e3a6dc3d94', '17dd6aab-3e02-e1be-e179-8951b4c21ca0', '④ Flame Arrester', '정답 ④. 화염방지기(Flame Arrester) 비교적 저압 또는 상압에서 가연성 증기를 발생시키는 인화성 물질 등을 저장하는 탱크에서 외부에 그 증기를 방출하거나 탱크 내에 외기를 흡입하 는 부분에 설치하는 안전장치이다. E S1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f70b8eda-e8e9-086e-bded-4fcbd2ded571', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 차량계 건설기계에 해당되지 않는 것은?', 2, 406)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d91fcdb4-ed47-d37e-fe4b-bc131f287bf6', 'f70b8eda-e8e9-086e-bded-4fcbd2ded571', '불도저', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('914d7105-20a8-e54a-568f-08aaba3e94e5', 'f70b8eda-e8e9-086e-bded-4fcbd2ded571', '어스드릴', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('11b399dc-c8bc-ceb1-8aca-34b193372410', 'f70b8eda-e8e9-086e-bded-4fcbd2ded571', '타워크레인', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c13c01d0-8acb-8ed6-1b07-ff2e3e535674', 'f70b8eda-e8e9-086e-bded-4fcbd2ded571', '콘크리트 펌프카', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f70b8eda-e8e9-086e-bded-4fcbd2ded571', '11b399dc-c8bc-ceb1-8aca-34b193372410', '③ 타워크레인', '정답 ③. 타워크레인은 양중기에 해당된다. 차량계 건설기계의 종류 • 도저형 건설기계（불도저, 스트레이트도저, 틸트도저, 앵글도저, 버킷도저） •굴착기 • 항타기 및 항발기 • 천공용 건설기계（어스드릴. 어스오거, 크롤러드릴. 점보드릴） • 지반 다짐용 건설기계（타이어롤러. 매커덤롤러. 탠덤롤러） • 콘크리트 펌프카', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '11111111-1111-1111-1111-111111111104', 'mcq', '히빙(Heaving)현상 방지대책으로 틀린 것은?', 2, 407)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('70a1b5f9-1f0b-6999-852b-fda8166601ee', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '소단굴착을 실시하여 소단부 흙의 중량이 바닥을 누르', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d997bac9-96dc-d081-7fc8-ee3c8c1a1d89', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체 배면의 지반을 개량하여 흙의 전단강도를', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('285e667a-cad3-d37d-a34f-bb7125891df3', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '부풀어 솟아오르는 바닥면의 토사를 제거한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e58ca86-cce5-3c3d-b7bb-83b139e06c50', 'b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '흙막이벽체의 근입 깊이를 깊게 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b6c2208f-b7b9-b5e3-2a75-a0c9ea5503da', '285e667a-cad3-d37d-a34f-bb7125891df3', '③ 부풀어 솟아오르는 바닥면의 토사를 제거한다.', '정답 ③. 히빙의 예방대책 • 흙막이벽의 근입 깊이 증가 • 흙막이벽 배면지반의 상재호주 제거 • 저면의 굴착부분을 남겨두어 굴착예정인 부분의 일부를 미리 굴착하여 기초콘크리트 타설 • 굴착주변을 웰 포인트(Well Point) 공법과 병행 • 굴착저면에 토사 등 인공중력 증가 W@1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서를 제출해야 할 대상 공사의 조건으로 옳지 않은 것은?', 2, 408)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a390d02f-b48d-d897-ff30-55c2dbdad73c', '68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '터널의 건설 등공사', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('62d7e580-97c0-1ca9-4432-d12c5101b4d9', '68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '최대 지간길이가 5이m] 이상인 다리의 건설 등 공사', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32019097-77d7-5e41-c638-c2bb67db97e8', '68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '다목적댐 • 발전용댐, 저수용량 2천만 톤 이상의 용수', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('75f62f4c-f87a-c985-942d-aac030df1c10', '68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '깊이가 5[m] 이상인 굴착공사', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('68804cf8-5e3a-b5f6-06fe-90c605bfc0f6', '75f62f4c-f87a-c985-942d-aac030df1c10', '④ 깊이가 5[m] 이상인 굴착공사', '정답 ④. 깊이가 10[m] 이상인 굴착공사가 유해위험방지계획서 제출대상 이다', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('69b21ec4-1034-23a8-2114-c124e638a80f', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업 산업안전보건관리비 계상 및 사용기준은「산업안전 보건법」의 건설공사 중 총 공사금액이 얼마 이상인 공사에 적용하는가?（단, 단가계약에 의한 공사는 제외）', 2, 409)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cb3c29ba-5db8-1c71-3529-dbf765a7fa91', '69b21ec4-1034-23a8-2114-c124e638a80f', '4천만 원', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21cb995a-9441-a2bd-50c6-a0d59ea4a85e', '69b21ec4-1034-23a8-2114-c124e638a80f', '3천만 원', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6fbd4e6-98e7-30fd-864b-d22edb18c6e4', '69b21ec4-1034-23a8-2114-c124e638a80f', '2천만 원', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('371a8ecc-d270-daf4-68fe-9f6c3028b1ab', '69b21ec4-1034-23a8-2114-c124e638a80f', '1천만 원', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('69b21ec4-1034-23a8-2114-c124e638a80f', 'a6fbd4e6-98e7-30fd-864b-d22edb18c6e4', '③ 2천만 원', '정답 ③. 2천만 원', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1b1881ab-8ece-2d83-3c16-0bb988e43d78', '11111111-1111-1111-1111-111111111104', 'mcq', '건설업의 공사금액이 850억 원일 경우「산업안전보건법령」 에 따른 안전관리자의 수로 옳은 것은?（단, 전체 공사기간 을 100으로할 때 공사전 후 15에 해당하는 경우는고려 하지 않는다.）', 2, 410)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('09492cc0-f64d-7fac-0923-933f29ed36be', '1b1881ab-8ece-2d83-3c16-0bb988e43d78', '1명이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f4e914e-491d-c3d9-15a4-c7205a78d0fd', '1b1881ab-8ece-2d83-3c16-0bb988e43d78', '2명이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b9b1b18f-7ca3-06de-0be6-a499db6d6870', '1b1881ab-8ece-2d83-3c16-0bb988e43d78', '3명 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1483a6f6-fb59-f897-791f-8a5837916412', '1b1881ab-8ece-2d83-3c16-0bb988e43d78', '4명 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1b1881ab-8ece-2d83-3c16-0bb988e43d78', '5f4e914e-491d-c3d9-15a4-c7205a78d0fd', '② 2명이상', '정답 ②. 2명이상', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '11111111-1111-1111-1111-111111111104', 'mcq', '달비 계에 사용하는 와이어로프의 사용금지기준으로 옳지 않은것은?', 2, 411)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d68428bc-c548-9258-a049-a07b0fae6cf9', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '이음매가 있는 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('26f1058a-e790-3449-1e93-95f942492e7d', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '열과 전기 충격에 의해 손상된 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f84a81bf-4b4b-390b-ef53-0366de9f05f8', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '지름의 감소가 공칭지름의 7[%]를 초과하는 것', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47beac02-2a71-277e-1945-932399f6e942', '2275faed-249f-aa3d-63f9-b63d4fbd071e', '와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2275faed-249f-aa3d-63f9-b63d4fbd071e', '47beac02-2a71-277e-1945-932399f6e942', '④ 와이어로프의 한 꼬임에서 끊어진 소선의 수가 7[%] 이', '정답 ④. 상인 것 K 찌 달비계 와이어로프의 사용금지 조건 •이음매가있는 것 • 와이어로프의 한꼬임（Strand）에서 끊어진 소선의 수가 10[%] 이상인 것 • 지름의 감소가 공칭지름의 7[%]를 초과하는 것 •꼬인것 • 심하게 변형되거나 부식된 것 • 열과 전기충격에 의해 손상된 것 1', array['산업안전기사','2022-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 바탕은 파 란색, 관련 그림은 흰색을 사용하는 표지는?', 2, 412)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af065b72-b66c-3c7b-dfea-103387bd845d', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '사용금지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e334a6f-534b-69e5-33e5-502fa50d596f', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '세안장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00e3aac8-3e6a-e9d1-58d4-f392ed912a93', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '몸균형상실 경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('924ec823-03f2-1bfe-13d0-65130851e680', '58b95caa-e277-abbd-4b8e-8d55a73530a8', '안전복 착용', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('58b95caa-e277-abbd-4b8e-8d55a73530a8', '924ec823-03f2-1bfe-13d0-65130851e680', '④ 안전복 착용', '정답 ④. 파란색 바탕에 관련 그림이 흰색인 안전보건표지는 ‘지시표지’이 다. 보기 중 ‘ 지시표지 ’는 ‘안전복 착용’이다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('79283855-3e0a-6098-434f-c3053379ff22', '11111111-1111-1111-1111-111111111104', 'mcq', '재해조사 시 유의사항으로 적절하지 않은 것은?', 2, 413)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba3aa292-51a4-b451-e7fd-c184ace5e53e', '79283855-3e0a-6098-434f-c3053379ff22', '조사는 신속하게 행한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ac45788-f06c-5ad5-97a6-5a0973867409', '79283855-3e0a-6098-434f-c3053379ff22', '긴급조치를 하여 2차 재해방지를 도모한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fb30aacf-346d-b4b3-f253-d1bf30f4798e', '79283855-3e0a-6098-434f-c3053379ff22', '조사는 2인 이상이 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('21759aa5-ec1c-a425-9bfb-cd816c764ef7', '79283855-3e0a-6098-434f-c3053379ff22', '책임추궁을 우선으로 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('79283855-3e0a-6098-434f-c3053379ff22', '21759aa5-ec1c-a425-9bfb-cd816c764ef7', '④ 책임추궁을 우선으로 한다.', '정답 ④. 재해조사 시 책임추궁보다는 재발방지를 우선하는 기본 태도를 갖는다. 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8970671b-7028-0675-1792-082e1997f79b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육시간에 관한 설명으로 옳지 않은 것은?', 2, 414)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('073f6631-d9e7-a4e5-9d15-349ff4824584', '8970671b-7028-0675-1792-082e1997f79b', '사무직 종사 근로자 정기교육: 매반기 6시간 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b57bf4f6-dd57-455c-ffe7-7e3f09515245', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dca6939c-9ae0-81d9-340a-bbbbe769cda5', '8970671b-7028-0675-1792-082e1997f79b', '일용근로자 작업내용 변경 시 교육: 2시간 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('91912107-9c4a-bf88-9b0f-cdafd6aeca5c', '8970671b-7028-0675-1792-082e1997f79b', '건설 일용근로자 건설업 기초안전 • 보건교육: 4시간 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8970671b-7028-0675-1792-082e1997f79b', 'dca6939c-9ae0-81d9-340a-bbbbe769cda5', '③ 일용근로자 작업내용 변경 시 교육: 2시간 이상', '정답 ③. 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 ! 판매업무에 직접 종사하는 매반기 6시간 이상 정기교육 그 밖의 근로자 근로자 판매업무에 직접 종사하는 매반기 12시간이상 근로자 외의 근로자 일용근로자 및 근로계약기간이 1주일 1 시간이상 이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월 이 4시간이상 하인 기간제근로자 그 밖의 근로자 8시간이상 일용근로자 및 근로계약기간이 1주일 작업내용 1시간이상 이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시간이상 건설업 기초 건설 일용근로자 4시간이상 안전 • 보건교육 ※ 이 문제는 개정된 법령에 따라 수정한 문제입니다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의식 교육을 1시간 하려고 한다. 다음 중 가장 시간이 많이 소비되는 단계는?', 2, 415)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00c7c6a1-aff5-9565-db21-0bc14a1982da', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '도입', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b5ab025-be10-8794-1e43-7c646f6c7fd4', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '제시', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e5a8dd1-64d4-802a-9e77-c682bc6e5bde', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '적용', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97b057ac-7cbc-674d-73dc-d20df5fa2aa3', 'f138949f-4fc2-5a2e-ba93-6fcffb33f263', '확인', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f138949f-4fc2-5a2e-ba93-6fcffb33f263', '7b5ab025-be10-8794-1e43-7c646f6c7fd4', '② 제시', '정답 ②. 교육법의 4단계 및 시간배분（60분 기준） 교육법의 4단계 강의식 토의식 제1 단계-도입（준비） 5분 5분 제2단계-제시（설명） 40분 10분 제3단계-적용（응용） 10분 40분 제4단계-확인（총괄） 5 분 5분 아IAPTER 05 안전보건교육의 내용 및 방법', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6c1740d3-c70f-05f1-7318-3754e0b22abd', '11111111-1111-1111-1111-111111111104', 'mcq', '태양광선이 내리쬐는 옥외 장소의 자연습구온도 25[℃], 흑 구온도 20[℃], 건구온도 28『C]일 때, 습구흑구온도지수 [℃]는?', 2, 416)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('256f9ece-18b2-9d7b-58fa-fe8ccce091f5', '6c1740d3-c70f-05f1-7318-3754e0b22abd', '21.W', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('447b160f-50ff-3bb2-52b1-72bbe5ebd8bd', '6c1740d3-c70f-05f1-7318-3754e0b22abd', '24.3[幻]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ecf3c7c1-6894-3cd3-ea6c-1e4f1f482ea5', '6c1740d3-c70f-05f1-7318-3754e0b22abd', '26.1[t]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('782454e5-8cf0-e85b-8db2-2db9c7c87458', '6c1740d3-c70f-05f1-7318-3754e0b22abd', '26.6[幻]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6c1740d3-c70f-05f1-7318-3754e0b22abd', '447b160f-50ff-3bb2-52b1-72bbe5ebd8bd', '② 24.3[幻]', '정답 ②. 24.3[幻]', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 각 단계를 결함수분석법(FTA)에 의한 재해사례의 연구 순서대로 나열한 것은? O정상사상의 선정 © FT도 작성 및 분석 © 개선계획의 작성 ⑨ 각 사상의 재해원인 규명', 2, 417)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b6bdfab0-cdc1-6bf7-47d2-0d49fd63a024', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0>—*©—*© — (§)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4abfc455-6b88-46a2-ac3a-452fe9347e32', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '0—>@—*©--©', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('895ae29f-9da5-999a-c7d4-e0a59f4811bb', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '©-©—*©—*(§)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b443d30-0349-3e34-a2eb-cb3323ff884e', '95a2c6fc-452c-202a-6c2d-1614877f67fb', '(9—>@-+© —©', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('95a2c6fc-452c-202a-6c2d-1614877f67fb', '7b443d30-0349-3e34-a2eb-cb3323ff884e', '④ (9—>@-+© —©', '정답 ④. (9—>@-+© —©', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c8fc4b4e-938d-c6e1-48f6-677bf7f85191', '11111111-1111-1111-1111-111111111104', 'mcq', '시스템안전 프로그램에서의 최초 단계 해석으로 시스템의 위험요소가 어떤 위험 상태에 있는가를 정성적으로 평가하 는 방법은?', 2, 418)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ad6a870-0046-1ba8-1060-db39630b3d2f', 'c8fc4b4e-938d-c6e1-48f6-677bf7f85191', 'PHA', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b12ecb6d-6c00-e268-e2bb-4b2a47b758c7', 'c8fc4b4e-938d-c6e1-48f6-677bf7f85191', 'FHA', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8133fbb7-88fc-c5bb-4e2a-598e6ad6e838', 'c8fc4b4e-938d-c6e1-48f6-677bf7f85191', 'FMEA', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eee7947f-403e-aff7-dcfa-c7850419a7bd', 'c8fc4b4e-938d-c6e1-48f6-677bf7f85191', 'FTA', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c8fc4b4e-938d-c6e1-48f6-677bf7f85191', '1ad6a870-0046-1ba8-1060-db39630b3d2f', '① PHA', '정답 ①. 예비위험분석(PHA； Preliminary Hazards Analysis) 시스템 내의 위험요소가 얼마나 위험상태에 있는가를 평가하는 시스템안 전 프로그램의 최초단계(시스템 구상단계)의 정성적인 분석 방식이다. 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법（FTA）에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 419)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5daf9669-d187-62fa-80d3-2c0f0f41f8fd', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19ad1763-713e-e37b-7cd1-7fce3ad8a9b9', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fd7956c-d972-4a0d-ce20-0c7428ff4a79', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc1690d7-62f2-0f8c-b1df-4358e76a6b80', 'c97a9924-2e1c-fc1d-e710-2cd58422e8b7', '미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c97a9924-2e1c-fc1d-e710-2cd58422e8b7', 'bc1690d7-62f2-0f8c-b1df-4358e76a6b80', '④ 미니멀 컷셋은 정상사상（Top Event）을 일으키기 위한', '정답 ④. 최소한의 컷셋이다. KOI 미니멀 컷셋은 시스템의 위험성을 표시하는 것이다. 미니멀 패스셋은 시스템의 신뢰성을 표시하는 것이다. 미니멀 패스셋은 정상사상（고장）이 일어나지 않는 최소한의 패스셋이다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('52e3d18a-5d1e-936f-b382-11194e5db54b', '11111111-1111-1111-1111-111111111104', 'mcq', '비상구 출입문 설계 시, 가장 적합한 인체측정자료의 응용 원칙은?', 2, 420)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d29403a-32ed-a4a5-0f2f-5c4f7bf1cf46', '52e3d18a-5d1e-936f-b382-11194e5db54b', '조절식 설계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5fc080e1-1017-e6f5-2198-10bce76e5cd5', '52e3d18a-5d1e-936f-b382-11194e5db54b', '평균치를 이용한 설계', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('574bec24-bbe2-6c96-da1b-c552bddd7569', '52e3d18a-5d1e-936f-b382-11194e5db54b', '최대치수를 이용한 설계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1650d5d-5c16-3249-ce9a-0761258e3703', '52e3d18a-5d1e-936f-b382-11194e5db54b', '최소치수를 이용한 설계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('52e3d18a-5d1e-936f-b382-11194e5db54b', '574bec24-bbe2-6c96-da1b-c552bddd7569', '③ 최대치수를 이용한 설계', '정답 ③. 특정한 설비를 설계할 때, 거의 SE 사람을 수용할 수 있도록 설계한다. + 최소치 설계: 하위 백분위 수 기준 1, 5, 10[%tile] 예 선반의 높이, 조종장치까지의 거리 등 x ㆍ최대치 설계: 상위 백분위 수 기준 90, 95, 99[% 116] 에 문, 통로, 탈출구 등', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 상시 작업에 종사하는 장소에 서 보통작업을 하고자 할 때 작업면의 최소 조도[I니X]로 맞 는것은?', 2, 421)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7e3bd57c-33ee-5cd3-dbd0-4865c8fa3818', '39a168be-3965-66d8-cbb2-3b0b399ce490', '75', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '39a168be-3965-66d8-cbb2-3b0b399ce490', '150', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a13250f5-3f98-1b34-521f-2fa6180f67b3', '39a168be-3965-66d8-cbb2-3b0b399ce490', '300', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ef3fde9-7be9-cc1f-1d28-f67a0e055d3d', '39a168be-3965-66d8-cbb2-3b0b399ce490', '750', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('39a168be-3965-66d8-cbb2-3b0b399ce490', '12d068bc-e5c9-c1fd-aeb2-44735d67fcdf', '② 150', '정답 ②. 150', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '11111111-1111-1111-1111-111111111104', 'mcq', '광원으로부터 직사휘광을 처리하기 위한 방법으로 틀린 것은?', 2, 422)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f605cc0-3966-b770-168b-88c108bc6f0e', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 휘도를 줄인다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1e6887d1-f14e-3810-3f6b-2a29d629f84d', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '가리개나 차양을 사용한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85b2d5fc-21ec-c767-eb0f-fe59a7582b43', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원을 시선에서 멀리 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1fefa86e-7d28-e193-1755-4c4ec39fd615', '4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '광원의 주위를 어둡게 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4c18bdd9-dfbc-8239-8d9f-b105ccb1d4bd', '1fefa86e-7d28-e193-1755-4c4ec39fd615', '④ 광원의 주위를 어둡게 한다.', '정답 ④. 광원의 주위를 어둡게 한다.', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비에서 기계 고장률의 기본모형으로 옳지 않은 것은?', 2, 423)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '조립고장', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('566de4a0-73d4-cfa6-3e04-046520196c1e', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '초기고장', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e16e3b9-c14e-8267-57c5-f8530984ad9b', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '우발고장', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f58264ca-cea9-0247-52bb-6c45f621a22c', 'c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '마모고장', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c32f86aa-ea81-b54f-452f-2c936b5f9f9c', '84f6e6c3-f9f9-0dad-cd65-ffc42b8b0d59', '① 조립고장', '정답 ①. 고장률의 유형 • 초기고장（감소형）: 제조가 불량하거나 생산과정에서 품질관리가 안 되어 서생기는 고장 • 우발고장（일정형）: 실제 사용하는 상태에서 발생하는 고장으로 예측할 수 없는 랜덤의 간격으로 생기는 고장 • 마모고장（증가형）: 설비 또는 장치가 수명을 다하여 생기는 고장', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '11111111-1111-1111-1111-111111111104', 'mcq', '기계설비가 이상이 있을 때 기계를 급정지시키거나 방호장 치가 작동되도록 하는 것과 전기회로를 개선하여 오동작을 방지하거나 별도의 안전한 회로에 의해 정상기능을 찾을 수 있도록 하는 것은?', 2, 424)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b8a71ce-2ab3-2136-7ba1-c8ab2f174ffb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '외형의 안전화', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28c3e9f0-a59a-470e-3604-c20004a9c9fb', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '기능상의 안전화', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('921fe360-3f9e-b12b-60d6-b8ecdb1f2ea3', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업의안전화', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('271c8ce3-d082-fb89-5cec-d5d8bb339953', 'ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '작업점의안전화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce39809f-22c0-0b0e-98ed-abf9b8e9e281', '28c3e9f0-a59a-470e-3604-c20004a9c9fb', '② 기능상의 안전화', '정답 ②. 기능상의 안전화', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '11111111-1111-1111-1111-111111111104', 'mcq', '보일러의 안전한 가동을 위하여 압력방출장치를 2개 설치 한 경우에 작동방법으로 옳은 것은?', 2, 425)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b90a37bd-0622-a26e-d93b-6c1226a1267b', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 2개가 동시 작동', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7fe74f7a-111a-ba0e-8476-0b99a5c9389c', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10a7775e-cdd6-fdc4-d1fb-25b8fddb1c07', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력 이하에서 1개가 작동되고 다른 것은 최', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f084691-fa37-99a6-bebf-bf29c0faf31e', 'b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '최고사용압력의 1.1 배 이하에서 2개가 동시 작동', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b99e3a32-24ec-0e2c-b888-a28bae7ac5f6', '7fe74f7a-111a-ba0e-8476-0b99a5c9389c', '② 최고사용압력 이하에서 1개가 작동되고 다른 것은 최', '정답 ②. 보일러의 안전한 가동을 위하여 보일러 규격에 맞는 압력방출장 치를 1개 또는 2개 이상 설치하고 최고사용압력 이하에서 작동되도록 하 여야 한다. 다만. 압력방출장치가 2개 이상 설치된 경우에는 최고사용압력 이하에서 1개가 작동되고. 다른 압력방출장치는 최고사용압력 1.05배 이 하에서 작동되도록 부착하여야 한다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 아세틸렌 용접장치에서 역화의 원인으로 가장 거리 가 먼 것은?', 2, 426)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d1a2644e-9338-56c0-db90-b14b8de8f4a7', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '아세틸렌의 공급과다', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5def6de2-d78c-93b0-9fba-e88eb9e50a67', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 성능의 부실', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('82350cee-cec0-b65a-4677-3fafbf48a24e', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '압력조정기의 고장', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44b2614e-c655-e67b-6512-9a6638460f91', '897d0ea1-662f-88b3-c888-ab2d66d4c932', '토치 팁에 이물질이 묻은 경우', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('897d0ea1-662f-88b3-c888-ab2d66d4c932', 'd1a2644e-9338-56c0-db90-b14b8de8f4a7', '① 아세틸렌의 공급과다', '정답 ①. 아세틸렌의 공급 과다는 역화의 원인이 아니다. 산소의 공급이 과다할 경우 역화가 발생할 수 있다. 역화의 원인 • 토치 팁에 이물질이 묻은 경우 • 팁과 모재의 접촉 • 토치의 성능 불량 • 토치 팁의 과열 • 압력조정기의 고장', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 500[Q]이라 한다면 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값은 Dalziel 의 식 /=5g_[mA]를 이용하고, 통전시간은 2초로 한다.)', 2, 427)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce515dfa-46e3-9fae-733c-61de9922dc57', '70754ff7-fca7-8388-5049-a664d0b6d53e', '13.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e325e3-7342-8841-f46a-cedf9fa27108', '70754ff7-fca7-8388-5049-a664d0b6d53e', '16.2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4617e1e-85e9-6161-163a-baffb2915692', '70754ff7-fca7-8388-5049-a664d0b6d53e', '27.2', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('45ba3c11-0c3c-94fd-da03-db8dacee65c6', '70754ff7-fca7-8388-5049-a664d0b6d53e', '32.4', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('70754ff7-fca7-8388-5049-a664d0b6d53e', 'ce515dfa-46e3-9fae-733c-61de9922dc57', '① 13.6', '정답 ①. 13.6', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a43e6826-e832-bb2a-50d8-2ad85e495dd6', '11111111-1111-1111-1111-111111111104', 'mcq', '전기기계 • 기구에 설치되어 있는 감전방지용 누전차단기의 정격감도전류 및 동작시간으로 옳은 것은?（단, 정격전부하 전류가 50[A] 미만이다.）', 2, 428)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b1c63333-89f4-45c0-72b2-b268b6c46bf5', 'a43e6826-e832-bb2a-50d8-2ad85e495dd6', '15[mA] 이하, 0.1 초 이내', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9c04e88f-0353-f5b6-a81d-513cc01c88cd', 'a43e6826-e832-bb2a-50d8-2ad85e495dd6', '3O[mA] 이하, 0.03초 이내', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28fa0d2a-f24d-e164-6971-2afc486aa76e', 'a43e6826-e832-bb2a-50d8-2ad85e495dd6', '50[mA] 이하, 0.5초 이내', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d7ee58b-c7af-fadf-d67c-fcd2376fd62c', 'a43e6826-e832-bb2a-50d8-2ad85e495dd6', '100[mA] 이하, 0.05초 이내', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a43e6826-e832-bb2a-50d8-2ad85e495dd6', '9c04e88f-0353-f5b6-a81d-513cc01c88cd', '② 3O[mA] 이하, 0.03초 이내', '정답 ②. 감전보호용누전차단기 • 정격감도전류 30[mA] 이하, 동작시간 0.03초 이내 • 정격전부하전류가 50[A] 이상인 경우. 정격감도전류 200[mA] 이하. 동 작시간 0.1초이내 Wllil 아1APTER 02 감전재해 및 방지대책 07', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발위험장소의 분류 중 인화성 액체의 증기 또는 가연성 가스에 의한 폭발위험이 지속적으로 또는 장기간 존재하는 장소는 몇 종 장소로 분류되는가?', 2, 429)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b02e9881-865e-34e6-8909-07401c841102', 'c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', 'o종장소', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac837fee-8cbd-fb5e-cdaf-fa4bc9782289', 'c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', '1종장소', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('60c016a0-c981-88bb-58e2-1c8c24e41956', 'c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', '2종 장소', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('246b8ace-8245-2d58-14b3-99ff3568bde7', 'c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', '3종 장소', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c62ba7df-a19d-28ce-d1c2-e7f86acc4d21', 'b02e9881-865e-34e6-8909-07401c841102', '① o종장소', '정답 ①. 가스폭발 위험장소 분류 적요 인화성 액체의 증기 또는 가연성 가스에 의한 폭발위험이 지속적 0종장소 으로 또는 장기간 존재하는 장소 정상 작동상태에서 인화성 액체의 증기 또는 가연성 가스에 의한 1종장소 폭발위험 분위기가 존재하기 쉬운 장소 정상 작동상태에서 인화성 액체의 증기 또는 가연성 가스에 의한 2종장소 폭발위험 분위기가 존재할 우려가 없으나. 존재할 경우 그 빈도 가 아주 적고 단기간만 존재할 수 있는 장소', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰기의 여유도가 33[%]이고, 충격절연강도가 1,OOO[kV] 라고 할 때 피뢰기의 제한전압은 약 몇 [W]인가?', 2, 430)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d94dd79c-bf86-f096-2105-d6715ead8d9f', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '852', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d79333c8-9f1f-9e4a-7000-48d8aa270a65', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '752', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4c58ad8-c829-be44-fa95-5bd9679543a4', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '652', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fcc5ff6-1b4e-af7f-c7d8-44470c5b48a5', '9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', '552', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9bdfdd6f-c98d-253b-eb74-1ff1972a81aa', 'd79333c8-9f1f-9e4a-7000-48d8aa270a65', '② 752', '정답 ②. 752', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 고압 활선작업 시 감전의 위험이 발생할 우려가 있 을 때의 조치사항으로 옳지 않은 것은?', 2, 431)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c9dd72e-2964-7847-29a7-ed9f543a1483', '2dc8481a-a273-f778-749f-f30f221f0267', '접근한계거리 유지', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1a4d570-0237-b7fe-92f9-914b308faa84', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 보호구 착용', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a6e53dc-1519-bb33-e0c5-0c5fe10e008d', '2dc8481a-a273-f778-749f-f30f221f0267', '활선작업용 기구 사용', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ac4d8425-5643-2a5a-c0e8-9e5cd5f608f2', '2dc8481a-a273-f778-749f-f30f221f0267', '절연용 방호용구 설치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2dc8481a-a273-f778-749f-f30f221f0267', '1c9dd72e-2964-7847-29a7-ed9f543a1483', '① 접근한계거리 유지', '정답 ①. 노출 충전부에 접근한계거리 이내로 접근할 수 없도록 한다. E E1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험물질의 종류를 구분할 때 다음 물질들이 해당하는 것은? 리튬, 칼륨, 나트륨, 황, 황린. 황화인, 적린', 2, 432)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35ac0c80-5d49-e319-c3bf-95750547c954', 'f93d0311-a9b2-8e74-9873-865b6b224708', '폭발성 물질 및 유기과산화물', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a401a58-fa89-e530-95fe-8ca5652235f9', 'f93d0311-a9b2-8e74-9873-865b6b224708', '산화성 액체 및 산화성 고체', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', 'f93d0311-a9b2-8e74-9873-865b6b224708', '물반응성 물질 및 인화성 고체', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cdf4fcc8-afca-894e-cb78-54ff1091ba02', 'f93d0311-a9b2-8e74-9873-865b6b224708', '급성 독성 물질', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f93d0311-a9b2-8e74-9873-865b6b224708', '1f5edc4b-2357-9d5f-45bd-a591c9cbfa21', '③ 물반응성 물질 및 인화성 고체', '정답 ③. 물반응성 물질 및 인화성 고체', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '11111111-1111-1111-1111-111111111104', 'mcq', '메탄, 에탄, 프로판의 폭발하한계가 각각 5[vol%], 3[vol%], 2.1 [vol%]일 때 다음 중 폭발하한계가 가장 낮은 것은?（단, Le Chatelier의 법칙을 이용한다.）', 2, 433)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39764f1b-7aab-f123-0e3c-a60b571b0171', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e9e5feb-5e1e-26d4-e7fe-97acd0681721', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 30[vol%], 에탄 30[vol%], 프로판 40[vol%]의 혼', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('72c8c44d-3482-e995-5ff3-1760880a07e8', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 40[vol%], 에탄 30[vol%], 프로판 30[vol%]의 혼', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dc7b511-5f9d-dece-32a8-d5d6a2abb913', '5ec826b9-21f9-2b72-b393-f5729cf7076a', '메탄 50[vol%]. 에탄 30[vol%]. 프로판 20[vol%]의 혼', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ec826b9-21f9-2b72-b393-f5729cf7076a', '39764f1b-7aab-f123-0e3c-a60b571b0171', '① 메탄 20[vol%]. 에탄 30[vol%], 프로판 50[vol%]의 혼', '정답 ①. 합가스 K3 혼합가스의 폭발하한계 븐+브+''••+브 여기서, L： 혼합가스의 폭발하한계[vol%] Aw： 각 성분가스의 폭발하한계[vol%] V,,： 각 성분가스의 부피 비율[vol%] 보기에서 제시된 혼합가스의 폭발하한계는 다음과 같다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '11111111-1111-1111-1111-111111111104', 'mcq', '사업주는 인화성 액체 및 인화성 가스를 저장 • 취급하는 화 학설비에서 증기나 가스를 대기로 방출하는 경우에는 외부 로부터의 화염을 방지하기 위하여 화염방지기를 설치하여 야 한다. 다음 중 화염방지기의 설치 위치로 옳은 것은?', 2, 434)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6fa73235-a8cf-47e4-1ce1-2d2de89e405d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 상단', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56da38c0-a4c1-e803-4560-2eb28b3e8ce5', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 하단', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('008cc2c5-6ff4-b520-6614-eb6b9b86fe4d', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 측면', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2b0c2ad0-2e67-8c49-85c3-3b67282e6018', 'ae807068-4dcd-88f3-34b0-fdc054a4a00f', '설비의 조작부', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ae807068-4dcd-88f3-34b0-fdc054a4a00f', '6fa73235-a8cf-47e4-1ce1-2d2de89e405d', '① 설비의 상단', '정답 ①. 화염방지기는 외부로부터의 화염을 방지하기 위하여 그 설비 상 단에 설치하여야 한다. 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '11111111-1111-1111-1111-111111111104', 'mcq', '[℃], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇『C]가 되겠는가?(단, 공기의 비열비는 1.4이다.)', 2, 435)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24810209-7d84-97bb-1c3b-f88d27786dfb', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '32', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dffd6c96-3f1d-c7ac-8712-2eb03727756d', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '191', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('55550b16-4d55-b3a3-7876-1f0f98519ef2', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '305', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('96ecbfa3-a297-d777-3777-83c6db4c00d3', 'd35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', '464', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d35a1394-ca42-86ef-bebe-6ea1f1ca1b9d', 'dffd6c96-3f1d-c7ac-8712-2eb03727756d', '② 191', '정답 ②. 191', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '11111111-1111-1111-1111-111111111104', 'mcq', '탄산수소나트륨을 주요성분으로 하는 것은 제 몇 종 분말소 화기인가?', 2, 436)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c84d28d2-d42a-dbf6-3791-e33974de364a', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제1종', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7df3656b-6d1b-bc4b-f18d-aa01fe2ec3b0', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제2종', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('64032cff-ffcc-b528-3cb4-f153b774b3ea', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제3종', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('942ca45c-7595-e9c1-41b8-cfa7c168b777', 'c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', '제4종', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c26a9f7c-07f8-00c8-ff1b-0fb42d87549f', 'c84d28d2-d42a-dbf6-3791-e33974de364a', '① 제1종', '정답 ①. 제1종', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '11111111-1111-1111-1111-111111111104', 'mcq', '사면보호공법 중 구조물에 의한 보호공법에 해당되지 않는 것은?', 2, 437)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d0ee7b-678c-e7e9-aeb3-03a3a75fbfc5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '블럭공', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97ac684a-1a7a-1f58-0c85-699bf5aecbb5', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '식생구멍공', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f731750-e4ea-485d-4ec4-97e711001e56', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '돌쌓기공', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7aacc14b-966e-cccb-fd0b-14ad005ac827', 'b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '현장타설 콘크리트 격자공', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b89b60d6-d59f-dd67-a5f7-50d1cb92b527', '97ac684a-1a7a-1f58-0c85-699bf5aecbb5', '② 식생구멍공', '정답 ②. 식생구멍공은 구조물에 의한 보호공법이 아닌 수목 등을 활용한 식생공법에 해당된다', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1c907440-35df-1642-b25d-4fafe3b57a16', '11111111-1111-1111-1111-111111111104', 'mcq', '유해위험방지계획서 첨부서류에 해당되지 않는 것은?', 2, 438)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aab94a88-4d9e-7770-72b0-9192363f2076', '1c907440-35df-1642-b25d-4fafe3b57a16', '안전관리를 위한 교육자료', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2e980aaf-c44b-0ab4-e229-79aac43d60bb', '1c907440-35df-1642-b25d-4fafe3b57a16', '안전관리 조직표', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c8c92f65-21ba-aab9-3d78-b937a789c45c', '1c907440-35df-1642-b25d-4fafe3b57a16', '전체 공정표', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6204c79-26e1-3e6d-e72d-3941dab63b8c', '1c907440-35df-1642-b25d-4fafe3b57a16', '재해발생 위험 시 연락 및 대피방법', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1c907440-35df-1642-b25d-4fafe3b57a16', 'aab94a88-4d9e-7770-72b0-9192363f2076', '① 안전관리를 위한 교육자료', '정답 ①. 건설공사 유해위험방지계획서 제출 시 첨부서류 • 공사 개요서 • 공사현장의 주변 현황 및 주변과의 관계를 나타내는 도면（매설물 현황 포함） • 전체 공정표 • 산업안전보건관리비 사용계획서 • 안전관리 조직표 • 재해 발생 위험 시 연락 및 대피방법 1', array['산업안전기사','2023-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '11111111-1111-1111-1111-111111111104', 'mcq', '「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 종류와 외부 측면의 표시색이 잘못 연결된 것은?', 2, 439)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7d696e3-8e23-75e9-c8c3-c3f072ddebd1', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '할로겐용 - 회색', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('671b0059-5313-f7d5-ef84-345c495edd7e', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '황화수소용 - 회색', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e0c58652-0043-daf7-9717-5f1c2a001771', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '암모니아용 - 회색', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c3ac2273-da9f-75ff-f908-51fcd7db6cfc', '2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', '시안화수소용 - 회색', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2bbb89a7-fefc-a6d1-4813-4cdb69141d0f', 'e0c58652-0043-daf7-9717-5f1c2a001771', '③ 암모니아용 - 회색', '정답 ③. 정화통 외부 측면의 표시색 종류 표시색 유기화합물용 정화통 갈색 할로겐용 정화통 황화수소용 정화통 회색 시안화수소용 정화통 아황산용 정화통 노란색 암모니아용 정화통 녹색 아1APTER 02 안전보호구 관리', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 다음 표지 의 명칭은?（단, 마름모 테두리는 빨간색이며, 안의 내용은 검은색이다.） ^5', 2, 440)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('da71f7b3-e407-1a58-3630-6102751c09fd', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '폭발성물질 경고', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('18e6d847-577b-9869-3989-b462c3d57213', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '산화성물질 경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89ebf31d-bb25-e989-2aec-d70bdbf06e6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '부식성물질 경고', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('191d2d80-a103-ab95-d5a9-48c2e95e9c6f', 'f5fbb343-8af6-fa50-ed9c-8af72222f46b', '급성독성물질 경고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5fbb343-8af6-fa50-ed9c-8af72222f46b', '191d2d80-a103-ab95-d5a9-48c2e95e9c6f', '④ 급성독성물질 경고', '정답 ④. 급성독성물질 경고', array['산업안전기사','2023-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
