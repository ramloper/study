-- chunk 15
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('dd8db9be-568d-9d08-0c19-bafcebeddd80', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 그림은 심장맥동주기를 나타낸 것이다. T파는 어떤 경 우인가?', 2, 561)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('04f9a31d-3f75-ff1d-d4e6-de3b004c40a1', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심방의 수축에 따른 파형', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5e2a6064-b486-43e9-e681-63ecb3b3dd29', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심실의 수축에 따른 파형', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a9fc70c-bc1f-d367-00b6-4e6c9a326e81', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심실의 휴식 시 발생하는 파형', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8081a4c8-5943-0b4b-9c7f-3428d132d43f', 'dd8db9be-568d-9d08-0c19-bafcebeddd80', '심방의 휴식 시 발생하는 파형', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('dd8db9be-568d-9d08-0c19-bafcebeddd80', '3a9fc70c-bc1f-d367-00b6-4e6c9a326e81', '③ 심실의 휴식 시 발생하는 파형', '정답 ③. 파 심실의 수축 종료 후 심실의 휴식 시 발생하는 파형으로 전격이 인가되면 심실세동을 일으키는 확률이 가장 크고 위험한 부분이다. W 1 아1APTER 02 감전재해 및 방지대책 2025년 1회 CBT 복원문제 • 19 06', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9c31e762-7e22-cd91-d7b8-ee69ec560369', '11111111-1111-1111-1111-111111111104', 'mcq', '사업장에서 많이 사용되고 있는 이동식 전기기계 • 기구의 안전대책으로 가장 거리가 먼 것은?', 2, 562)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ae20597c-3438-2c34-8ee0-f8e2f8f41daf', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '충전부 전체를 절연한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3093b7a0-af73-f694-b794-9f80831ddc80', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '절연이 불량인 경우 접지저항을 측정한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6256a3d2-5776-38d5-6671-89f630a860d2', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '금속제 외함이 있는 경우 접지를 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a783adb9-2a90-84c6-9424-4fdf09fcdf21', '9c31e762-7e22-cd91-d7b8-ee69ec560369', '습기가 많은 장소는 누전차단기를 설치한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9c31e762-7e22-cd91-d7b8-ee69ec560369', '3093b7a0-af73-f694-b794-9f80831ddc80', '② 절연이 불량인 경우 접지저항을 측정한다.', '정답 ②. 절연이 불량인 경우 절연저항을 측정하여 조치를 하여야 한다', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('05b88569-e4cd-2454-3162-35c09ce96cfe', '11111111-1111-1111-1111-111111111104', 'mcq', '인체저항을 WQ]이라 한다면, 심실세동을 일으키는 위험 한계에너지는 약 몇 [J]인가?(단, 심실세동전류값 /=쯔 [mA]의 Dalziel의 식을 이용하며, 통전시간은 1 초로 한다.)', 2, 563)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0479eeab-ea1c-cef5-3bee-a2439066893a', '05b88569-e4cd-2454-3162-35c09ce96cfe', '11.5', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('302a6f19-ad88-f7ee-3c4c-4ee320d7efef', '05b88569-e4cd-2454-3162-35c09ce96cfe', '13.6', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dc82a157-0736-1bdc-2ed4-1e2ee394051f', '05b88569-e4cd-2454-3162-35c09ce96cfe', '15.3', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d868e510-ad32-22de-62a6-a54397d94860', '05b88569-e4cd-2454-3162-35c09ce96cfe', '16.2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('05b88569-e4cd-2454-3162-35c09ce96cfe', '302a6f19-ad88-f7ee-3c4c-4ee320d7efef', '② 13.6', '정답 ②. 13.6', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '11111111-1111-1111-1111-111111111104', 'mcq', '.9[kV] 충전전로에 대해 필수적으로 작업자와 이격시켜 야 하는 접근한계거리는?', 2, 564)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2859555a-4f26-acd1-e9a4-2d6802257a65', 'd7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '45[cm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61b7a873-72c9-0a3a-98d3-36848c42ef14', 'd7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '60[cm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7de13ad6-9f0f-a81d-5c89-73adcdc24c56', 'd7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '90[cm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('43b256e9-bbfc-2ec3-4e02-87ae333179a4', 'd7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '110[cm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d7e6ecda-3b63-91a2-fa06-02ceb6bc0adb', '7de13ad6-9f0f-a81d-5c89-73adcdc24c56', '③ 90[cm]', '정답 ③. 충전전로 접근한계거리 기준 충전전로의 선간전압[kV] 충전전로에 대한 접근한계거리[cm] 2 초과 15 이하 60 15 초과 37 이하 90 37 초과 88 이하 110', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 피부 전기저항은 여러 가지의 제반조건에 의해서 변 화를 일으키는데 제반조건으로서 가장 가까운 것은?', 2, 565)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('adad863b-c5ba-15b0-fe33-9c0b28a3506b', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '피부의청결', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c1e6df46-c61f-60c9-cd77-2869abed894e', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '피부의노화', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2d0b1be-631a-86de-6cfc-fc5ee512bc67', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '인가전압의 크기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56edaba8-f916-d1c0-b954-1385ba97cebb', 'f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', '통전경로', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f0e750a3-cbe1-4bf0-12e6-8b0dfee56ff1', 'e2d0b1be-631a-86de-6cfc-fc5ee512bc67', '③ 인가전압의 크기', '정답 ③. 인가전압의 크기', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3f36d7d0-73f2-883a-fdab-c9fdd379b189', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 대부분이 수중에 있는 상태에서 허용접촉전압은 몇 [V] 이하인가?', 2, 566)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('87792bf5-a33d-406a-053c-3d1e950596c2', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '2.5[V]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7045e12-3372-18d8-3c3b-9260f7477894', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '25[V]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('35006957-3a6f-723c-b06f-af24c8431cc5', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '30[V]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13f4e5fc-1a31-7307-8be3-7a8c5c87f19c', '3f36d7d0-73f2-883a-fdab-c9fdd379b189', '50[V]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3f36d7d0-73f2-883a-fdab-c9fdd379b189', '87792bf5-a33d-406a-053c-3d1e950596c2', '① 2.5[V]', '정답 ①. 허용접촉전압 종별 접촉상태 허용접촉전압 제1 종 인체의 대부분이 수중에 있는 상태 Z5[V] 이하 • 인체가 현저히 젖어 있는 상태 제 2종 •금속성의 전기기계 • 기구나 구조물에 인체의 일 25[V] 이하 부가 상시 접촉되어 있는 상태', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6266a964-246d-0b68-01be-b2c7f4d93ded', '11111111-1111-1111-1111-111111111104', 'mcq', '인체통전으로 인한 전격(Electric Shock)의 정도를 정함에 있어 그 인자로서 가장 거리가 먼 것은?', 2, 567)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b24e39c9-4c53-d4d2-73a5-62f1888ce2a9', '6266a964-246d-0b68-01be-b2c7f4d93ded', '전압의 크기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a67ace3d-0cda-46c1-be43-7a53e6f13044', '6266a964-246d-0b68-01be-b2c7f4d93ded', '통전시간', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cd5846d4-501e-0efa-ba86-2d739f192a4e', '6266a964-246d-0b68-01be-b2c7f4d93ded', '전류의 크기', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2b768c7-3b83-47a6-ff73-35f0faf84f2b', '6266a964-246d-0b68-01be-b2c7f4d93ded', '통전경로', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6266a964-246d-0b68-01be-b2c7f4d93ded', 'b24e39c9-4c53-d4d2-73a5-62f1888ce2a9', '① 전압의 크기', '정답 ①. 전압의 크기', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '11111111-1111-1111-1111-111111111104', 'mcq', '자동차가 통행하는 도로에서 고압의 지중전선로를 직접 매 설식으로 시설할 때 사용되는 전선으로 가장 적합한 것은?', 2, 568)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7c79f70-9dc0-0ecd-1358-78711ab30bb5', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '비닐외장케이블', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5d8e2590-0e20-81d8-45b6-dbaba9c9f824', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '폴리에틸렌외장케이블', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d29eddd0-9298-bef5-ff93-ec9c0cd2f595', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '클로로프렌외장케이블', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('07c1d786-73c5-0d66-5b60-9ea1775536db', '1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '콤바인덕트 케이블(Combine Duct Cable)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1c23e3ba-1a30-c07d-ef7e-fd9b6dd555d6', '07c1d786-73c5-0d66-5b60-9ea1775536db', '④ 콤바인덕트 케이블(Combine Duct Cable)', '정답 ④. 지중 전선로를 직접 매설식에 의하여 매설하는 경우 저압 또는 고압의 지중전선에 콤바인덕트 케이블을 사용하여 시설한다. 1', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ee21f7f4-3252-4c35-bed5-1d4598477962', '11111111-1111-1111-1111-111111111104', 'mcq', '내압방폭구조는 다음 중 어느 경우에 가장 가까운가?', 2, 569)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('220a0974-857f-f7ec-1237-19e1b380b0f6', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '점화능력의 본질적 억제', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('456a2131-ccb6-041f-412c-cc833ec2e74f', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '점화원의 방폭적 격리', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('90e238d5-c6b4-70bd-34ad-a7167e7617a0', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '전기설비의 안전도 증강', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7dcfbf88-83ac-e6ee-1b93-5e74bf0b35f3', 'ee21f7f4-3252-4c35-bed5-1d4598477962', '전기설비의 밀폐화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ee21f7f4-3252-4c35-bed5-1d4598477962', '456a2131-ccb6-041f-412c-cc833ec2e74f', '② 점화원의 방폭적 격리', '정답 ②. 전기설비의 방폭화 • 점화원의 방폭적 격리(압력방폭, 유입방폭, 내압방폭) • 전기설비의 안전도 증강(안전증방폭) • 점화능력의 본질적 억제(본질안전방폭)', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '11111111-1111-1111-1111-111111111104', 'mcq', '「위험물안전관리법령」에 의한 위험물의 분류 중 제1류 위험 물에 속하는 것은?', 2, 570)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3e81cbba-bf6e-8453-01d0-e4469f9a73a0', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '염소산염류', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('28859e66-3536-8c58-3c30-e6d16b19b9cd', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '황린', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47fd0c13-7202-801d-1f4a-cad31b61b4cf', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '질산에스테르', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('69b64eb2-e9a7-2204-6e46-fd1ee2566c01', '45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '칼륨: 제3류 위험물（자연발화성 물질 및 금수성 물질）', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45dd20eb-e87b-e9b3-5764-6abb83fd3ecd', '3e81cbba-bf6e-8453-01d0-e4469f9a73a0', '① 염소산염류', '정답 ①. 질산에스테르류: 제5류 위험물（자기반응성 물질） 1', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e302d31a-2a7a-ea7f-9dc5-48289b804ff4', '11111111-1111-1111-1111-111111111104', 'mcq', '각 물질(A〜D)의 폭발상한계와 하한계가 다음 ［표］와 같을 때 다음 중 위험도가 가장 큰 물질은? 구분 A B C D 폭발상한계 9.5 8.4 15.0 13 폭발하한계 2.1 1.8 5.0 入6', 2, 571)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8a4354ae-1893-9404-e51f-968b8ee3cba0', 'e302d31a-2a7a-ea7f-9dc5-48289b804ff4', 'A', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee51a512-f2b5-4ccc-14af-815462c47f11', 'e302d31a-2a7a-ea7f-9dc5-48289b804ff4', 'B', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d0afeec-f386-70fc-9a90-0f6c05ac36d1', 'e302d31a-2a7a-ea7f-9dc5-48289b804ff4', 'C', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46ab2444-1406-3dac-fcb4-e3fffbbb4ee8', 'e302d31a-2a7a-ea7f-9dc5-48289b804ff4', 'D', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e302d31a-2a7a-ea7f-9dc5-48289b804ff4', '46ab2444-1406-3dac-fcb4-e3fffbbb4ee8', '④ D', '정답 ④. D', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', '11111111-1111-1111-1111-111111111104', 'mcq', '트리에틸알루미늄에 화재가 발생하였을 때 다음 중 가장 적 합한소화약제는?', 2, 572)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e2053e8d-ba18-169b-697f-a36635aec4cb', '7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', '팽창질석', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7a1dee47-e7f8-d7f9-963e-b6140b2f90f1', '7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', '할로겐화합물', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fa5862fb-c4e1-7a46-8e8f-45aa3a0d7e67', '7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', '이산화탄소', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f778e226-8761-b9e1-fca7-55fa6a9e72e3', '7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', '물', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7805be1a-f2fd-80df-eaf2-e897b5aa5b6a', 'e2053e8d-ba18-169b-697f-a36635aec4cb', '① 팽창질석', '정답 ①. 트리에틸알루미늄（제3류 위험물）은 물과 접촉하면 폭발적으로 반응하므로 마른모래. 건조사. 팽창질석 등으로 질식소화한다. IE1', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('596e42f7-7b61-096f-dc74-133564404f8e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에서 규정하고 있는 차량계 건설기계 중 낙하물 보호구조를 갖추어야 하는 기계가 아닌 것은?', 2, 573)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdfbe217-4dbc-aac1-ae1d-e9c51a407c25', '596e42f7-7b61-096f-dc74-133564404f8e', '불도저', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d4de41cc-fec6-ae13-9c05-5b0bd4ac0f4e', '596e42f7-7b61-096f-dc74-133564404f8e', '트랙터', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25931ee5-87da-4dc9-895b-94c73e67c4f2', '596e42f7-7b61-096f-dc74-133564404f8e', '타워크레인', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d40bb02-def4-9f85-8e99-e18b872407cf', '596e42f7-7b61-096f-dc74-133564404f8e', '덤프트럭', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('596e42f7-7b61-096f-dc74-133564404f8e', '25931ee5-87da-4dc9-895b-94c73e67c4f2', '③ 타워크레인', '정답 ③. 타워크레인', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8e5f1a87-f6df-0260-191b-904ecc7ded1f', '11111111-1111-1111-1111-111111111104', 'mcq', '브레인스토밍（Brain-storming） 기법의 4원칙에 관한 설명 으로 틀린 것은?', 2, 574)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc34c5ce-119e-84ef-30b7-b7603ccada4a', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '한 사람이 많은 의견을 제시할 수 있다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7de33915-dde8-0d7f-a486-be829145d8ce', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '타인의 의견을 수정하여 발언할 수 있다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('addae297-1a04-9ea4-2e9d-64a0445c7891', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '타인의 의견에 대하여 비판, 비평하지 않는다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f6b8007c-0ad3-b647-1902-9babfd62f28c', '8e5f1a87-f6df-0260-191b-904ecc7ded1f', '의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8e5f1a87-f6df-0260-191b-904ecc7ded1f', 'f6b8007c-0ad3-b647-1902-9babfd62f28c', '④ 의견을 발언할 때에는 주어진 요건에 맞추어 발언한다.', '정답 ④. 발언할 때에는 주어진 요건에 맞추어 발언한다. *비판금지: “좋다, 나쁘다” 등의 비평을 하지 않는다. ㆍ자유분방: 자유로운 분위기에서 발표한다. + 대량발언: 무엇이든지 좋으니 많이 발언한다. ㆍ수정발언: 자유자재로 변하는 아이디어를 개발한다.(타인 의견의 수정발', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c149c105-44d1-d4a6-f471-63a23f9b1c44', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 안전보건표지의 종류 중 안내표지에 해당하지 않는 것은?', 2, 575)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('349b6d95-0283-5a0e-7bb9-896e5ebb0f2b', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '들것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0446538d-81e0-d95f-d2fe-9f0d2e52938c', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '비상용기구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('538d14ba-0766-89b0-122d-7c523674070f', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '출입구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9ba3690d-b9d3-b570-1d7f-9eafeecbf031', 'c149c105-44d1-d4a6-f471-63a23f9b1c44', '세안장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c149c105-44d1-d4a6-f471-63a23f9b1c44', '538d14ba-0766-89b0-122d-7c523674070f', '③ 출입구', '정답 ③. 출입구는「산업안전보건법령」상 안전보건표지에 해당하지 않는다. 녹십자표지 응급구호표지 들것 세안장치 비상용기구 비상구 좌측비상구 우측비상구 A 안내표지의 종류', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 안전보건관리규정에 포함되어 야 할 세부내용이 아닌 것은?', 2, 576)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2c5fb54e-cf39-4ed2-906d-5541530e7608', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '위험성 감소대책 수립 및 시행에 관한 사항', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('561bb80c-46ed-8419-f47c-215691cce562', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '하도급 사업장에 대한 안전 ■ 보건관리에 관한 사항', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7bf810de-cec5-1940-68e1-486737a2826c', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '질병자의 근로 금지 및 취업 제한 등에 관한 사항', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('81fb9498-da3f-1eae-dd76-8bbfec97dd5f', 'cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '물질안전보건자료에 관한 사항', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cdf15dea-18a4-0cc4-e1d4-d71ea24f6dcf', '81fb9498-da3f-1eae-dd76-8bbfec97dd5f', '④ 물질안전보건자료에 관한 사항', '정답 ④. 물질안전보건자료에 관한 사항은 안전보건관리규정의 세부내용 에 포함되지 않는다. 오답해설 은 위험성평가에 관한 사항. 는 총칙, ®은 작업장 보건관리 에 관한 사항이다', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef97bb60-27c0-7932-50aa-d3b050f05900', '11111111-1111-1111-1111-111111111104', 'mcq', '시스템이 저장되어 이동되고 실행됨에 따라 발생하는 작동 시스템의 기능이나 과업, 활동으로부터 발생되는 위험에 초 점을 맞춘 위험분석 차트는?', 2, 577)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ee29f32-1779-5687-ad46-be79b4de5e04', 'ef97bb60-27c0-7932-50aa-d3b050f05900', '결함수분석(FTA； Fault Tree Analysis)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c8cf752-7d93-b646-bd20-50e547e8f26f', 'ef97bb60-27c0-7932-50aa-d3b050f05900', '사상수분석(ETA； Event Tree Analysis)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a1c9bf1-f211-865e-f57b-4e06c4476e22', 'ef97bb60-27c0-7932-50aa-d3b050f05900', '결함위험분석 (FHA； Fault Hazard Analysis)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0e949aae-99ec-4c7b-6cc4-df80471f47b9', 'ef97bb60-27c0-7932-50aa-d3b050f05900', '운용위험분석 (OHA； Operating Hazard Analysis)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef97bb60-27c0-7932-50aa-d3b050f05900', '0e949aae-99ec-4c7b-6cc4-df80471f47b9', '④ 운용위험분석 (OHA； Operating Hazard Analysis)', '정답 ④. 누mw 운용위험분석(OHA； Operating Hazard Analysis) 시스템의 모든 사용단계에서 생산. 보전, 시험, 저장. 운전. 비상탈출. 구조 훈련 및 폐기 등에 사용되는 인원. 순서, 설비에 대한 위험을 평가하고 안 전요건을 결정하기 위한 해석방법이며. 위험에 초점을 맞춘 위험분석 차트 이다. EH코m', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('1a75ef8e-8e29-ad70-7fa2-b252a4160750', '11111111-1111-1111-1111-111111111104', 'mcq', '연속제어 조종장치에서 정확도보다 속도가 중요하다면 조 종반응의 비율（C/R）은 어떻게 하여야 하는가?', 2, 578)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b17e91b8-7c07-d971-7084-11ac56f0159a', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1로 조절하여야 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1aa5366b-b055-7968-7e0b-6bcb14c0037b', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1보다 낮게 조절하여야 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4188fb0c-60c8-b74f-2f6a-be245b674832', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 1보다 높게 조절하여야 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94b6efd4-6c40-686a-b087-3c383028ded0', '1a75ef8e-8e29-ad70-7fa2-b252a4160750', 'C/R 비율을 조절할 필요가 없다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('1a75ef8e-8e29-ad70-7fa2-b252a4160750', '1aa5366b-b055-7968-7e0b-6bcb14c0037b', '② C/R 비율을 1보다 낮게 조절하여야 한다.', '정답 ②. 승비가 작을수록 조정이 어려워 조정장치가 민감하나 이동시간 이 짧으므로. 정확도보다 속도가 중요하다면 음•비를 1보다 낮게 조절하 여야 한다', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('69208970-a551-174c-a70d-99434c714d48', '11111111-1111-1111-1111-111111111104', 'mcq', 'OOO 음향기기 부품 생산공장에서 안전업무를 담당하는 대리는 공장 내부에 경보등을 설치하는 과정에서 도움이 될 만한 몇 가지 지식을 적용하고자 한다. 적용 지식 중 맞는 것은?', 2, 579)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47b3b3ae-4158-e242-7ca7-38eb63553937', '69208970-a551-174c-a70d-99434c714d48', '신호 대 배경의 휘도대비가 작을 때는 백색신호가 효과', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('50520090-6e25-be26-0948-708efec8a818', '69208970-a551-174c-a70d-99434c714d48', '광원의 노출시간이 1초보다 작으면 광속발산도는 작아', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('af5fb552-592e-d14d-69d8-4a077e08503b', '69208970-a551-174c-a70d-99434c714d48', '표적의 크기가 커짐에 따라광도의 역치가 안정되는노', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b0b4e4e-b162-c8e8-269b-201b6afceea7', '69208970-a551-174c-a70d-99434c714d48', '배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('69208970-a551-174c-a70d-99434c714d48', '0b0b4e4e-b162-c8e8-269b-201b6afceea7', '④ 배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 점멸', '정답 ④. 등은 사용하지 않는 것이 좋다. K9 배경광 중 점멸 잡음광의 비율이 10[%] 이상이면 상점등을 신호 로 사용하는 것이 더 효과적이다. 오답해설 신호 대 배경의 휘도대비가 작을 때는 작업자가 백색신호를 경보신호로 인지하기 어렵다. 광원의 노출시간이 짧아질수록 광속발산도는 커져야 신호를 인지할 수 있다. 표적의 크기가 커짐에 따라 광도의 역치가 안정되는 노출시간은 감소한다. 1', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eadbec63-b3fd-3822-d371-4284106b10b5', '11111111-1111-1111-1111-111111111104', 'mcq', '작업장 배치 시 유의사항으로 적절하지 않은 것은?', 2, 580)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bf20bf12-b4db-b931-f221-3a8ff53f43a5', 'eadbec63-b3fd-3822-d371-4284106b10b5', '작업의 흐름에 따라 기계를 배치한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24b2b552-0f03-44da-eeef-52e36ada2235', 'eadbec63-b3fd-3822-d371-4284106b10b5', '생산효율 증대를 위해 기계설비 주위에 재료나 반제품', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('876d63ba-6e08-1db4-562b-7a1c95592dd5', 'eadbec63-b3fd-3822-d371-4284106b10b5', '공장 내외에는 안전한 통로를 두어야 하며, 통로는 선', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e96f6cd5-ad8e-a736-d9b8-15cc8291b296', 'eadbec63-b3fd-3822-d371-4284106b10b5', '비상시에 쉽게 대비할 수 있는 통로를 마련하고 사고', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eadbec63-b3fd-3822-d371-4284106b10b5', '24b2b552-0f03-44da-eeef-52e36ada2235', '② 생산효율 증대를 위해 기계설비 주위에 재료나 반제품', '정답 ②. 진압을 위한 활동통로가 반드시 마련되 어 야 한다. KS 시설배치 시 기계설비의 주위에 충분한 공간을 확보하고. 재료 반제품 공구상자 등을 놓을 수 있는 공간도 고려하여야 한다. 5푸l', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cd42b9eb-e5fb-d9b8-34d7-5429415881da', '11111111-1111-1111-1111-111111111104', 'mcq', '산업안전표지에서 경고표지는 삼각형 , 안내표지는 사각형 , 지시표지는 원형 등으로 부호가 고안되어 있다. 이처럼 부 호가 이미 고안되어 이를 사용자가 배워야 하는 부호는 다 음 중 무엇이라 하는가?', 2, 581)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c9fb8d23-3564-b1db-14ad-9e62f6454f5e', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '묘사적 부호', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e666154c-f1d1-2e3d-c411-f99adf2df401', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '추상적 부호', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39156df4-869c-e1dd-f20b-df1007835b9d', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '임의적 부호', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a27de09-64ad-603d-891a-76322278ef54', 'cd42b9eb-e5fb-d9b8-34d7-5429415881da', '사실적 부호', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cd42b9eb-e5fb-d9b8-34d7-5429415881da', '39156df4-869c-e1dd-f20b-df1007835b9d', '③ 임의적 부호', '정답 ③. 시각적 부호 사물이나 행동을 단순하고 정확하게 묘사한 것 묘사적 부호 ⑭ 도로표지판의 보행신호 메시지의 기본요소를 도식적으로 압축한 부호로 원래의 개념 추상적 부호 과는 약간의 유사성이 있음 부호가 이미 고안되어 사용자가 이를 배워야 하는 것 임의적 부호 현t 산업안전표지의 원형 一 금지표지. 사각형 으 안내표지 등', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5745703c-b324-8e93-169d-80ad3020e860', '11111111-1111-1111-1111-111111111104', 'mcq', '한 대의 기계를 10시간 가동하는 동안 4회의 고장이 발생 하였고, 이때의 고장수리시간이 다음 표와 같을 때 MT「R(Mean Time To Repair)은 얼마인가? 가동시갠시간] 수리시갠시간] T,=27 Ta=0.1 T2=1.8 7b=0.2 T3=1.5 Tc=0.3 T4=i3 Ta=0.3', 2, 582)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec', '5745703c-b324-8e93-169d-80ad3020e860', '0.225［시간/회］', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4ed06f6f-42f6-c27f-2d9f-a549d74a37bb', '5745703c-b324-8e93-169d-80ad3020e860', '0.325［시간/회］', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fd37617-e7f0-3fc5-1cfb-5d7ad4983fb4', '5745703c-b324-8e93-169d-80ad3020e860', '0.425［시간/회］', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73e2b386-66c4-bf0f-c023-c227247ebaf9', '5745703c-b324-8e93-169d-80ad3020e860', '0.525［시간/회］', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5745703c-b324-8e93-169d-80ad3020e860', 'bbb2d947-e6ca-f177-c9bf-0f7d4fa786ec', '① 0.225［시간/회］', '정답 ①. 0.225［시간/회］', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('cc964b0f-da21-baa6-1272-2d41e8663138', '11111111-1111-1111-1111-111111111104', 'mcq', '초음파탐상법의 종류에 해당하지 않는 것은?', 2, 583)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('83474df9-73ee-8f50-eb90-912f09cabbb5', 'cc964b0f-da21-baa6-1272-2d41e8663138', '반사식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5288175-871f-96cb-ba18-bbca6ef124b9', 'cc964b0f-da21-baa6-1272-2d41e8663138', '투과식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84f07656-9922-3f24-774e-0151b283842d', 'cc964b0f-da21-baa6-1272-2d41e8663138', '공진식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('280fd133-41b7-43fd-c673-9341b5a964a1', 'cc964b0f-da21-baa6-1272-2d41e8663138', '침투식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('cc964b0f-da21-baa6-1272-2d41e8663138', '280fd133-41b7-43fd-c673-9341b5a964a1', '④ 침투식', '정답 ④. 초음파탐상법의 종류로는 투과법. 펄스반사법, 공진법 등이 있다. E 8I', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('64d1f2af-db87-e8b7-8f17-504f7b413b5d', '11111111-1111-1111-1111-111111111104', 'mcq', '로봇의 작동범위 내에서 그 로봇에 관하여 교시 등(로봇의 동력원을 차단하고 행하는 것을 제외함)의 작업을 행할 때 작업시작 전 점검사항으로 옳은 것은?', 2, 584)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4773fecd-e7fb-a114-c063-5e1904f94dcc', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '과부하방지장치의 이상 유무', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b607be13-b08a-3bee-2f5a-6c130ec676a5', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '압력제한 스위치 등의 기능의 이상 유무', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a82e6b5f-9d68-c736-fa95-2aa06e31b919', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '외부 전선의 피복 또는 외장의 손상 유무', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b119c8f5-ee24-d6ce-8012-c327443c9c12', '64d1f2af-db87-e8b7-8f17-504f7b413b5d', '권과방지장치의 이상유무', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('64d1f2af-db87-e8b7-8f17-504f7b413b5d', 'a82e6b5f-9d68-c736-fa95-2aa06e31b919', '③ 외부 전선의 피복 또는 외장의 손상 유무', '정답 ③. 산업용 로봇의 작업시작 전 점검사항 • 외부 전선의 피복 또는 외장의 손상 유무 • 매니퓰레이터(Manipulator) 작동의 이상 유무 • 제동장치 및 비상정지장치의 기능', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fe8d629e-f27c-f678-4757-a306cd943270', '11111111-1111-1111-1111-111111111104', 'mcq', '아세 틸 렌 용접장치에 사용하는 역화방지기에서 요구되는 일반적인 구조로 옳지 않은 것은?', 2, 585)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c', 'fe8d629e-f27c-f678-4757-a306cd943270', '재사용 시 안전에 우려가 있으므로 역화방지 후 바로', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('560de3d1-6566-af43-83e6-11d87c1b33c1', 'fe8d629e-f27c-f678-4757-a306cd943270', '다듬질 면이 매끈하고 사용상 지장이 있는 부식, 흠, 균', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('948b08d8-b565-f498-60f3-d0dd3ffef10d', 'fe8d629e-f27c-f678-4757-a306cd943270', '가스의 흐름방향은 지워지지 않도록 돌출 또는 각인하', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8f439e7-106a-4378-86bf-17bef2ead4cd', 'fe8d629e-f27c-f678-4757-a306cd943270', '소염소자는 금망, 소결금속, 스틸울(Steel Wool), 다공', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fe8d629e-f27c-f678-4757-a306cd943270', 'bfdd1fd3-ee54-85d8-f6d5-7a1dd5d8ec0c', '① 재사용 시 안전에 우려가 있으므로 역화방지 후 바로', '정답 ①. 성금속물 또는 이와 동등 이상의 소염성능을 갖는 것이 어야 한다. H3 아세틸렌 용접장치에서 역화방지기는 역화를 방지한 후 복원이 되어 계속 사용할 수 있는 구조이어야 한다', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '11111111-1111-1111-1111-111111111104', 'mcq', '보일러 압력방출장치의 종류에 해당하지 않는 것은?', 2, 586)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e475ab17-4ac9-118e-a098-4ef876142cc1', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '스프링식', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('68116f3d-841f-d267-bae2-15b3d0a9acaa', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '중추식', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('01cebf14-5fc7-2abc-f2b0-5272f0bf32a4', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '플런저식', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fe4af74b-7b93-8f4f-f427-86f80b03e0f9', '03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '지렛대식', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('03a7115b-5dd9-c00f-93f2-e135ba9dde7a', '01cebf14-5fc7-2abc-f2b0-5272f0bf32a4', '③ 플런저식', '정답 ③. 압력방출장치의 종류 중추식(추식), 지렛대식(레버식). 스프링식(가장 많이 사용)', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ad42eb0a-6a53-e142-febb-642404520e91', '11111111-1111-1111-1111-111111111104', 'mcq', '프레스 방호장치에서 수인식 방호장치를 사용하기에 가장 적합한기준은?', 2, 587)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d45cb626-b086-04a5-550a-6aefcb7b3add', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 100[mm] 이상, 슬라이드 행정수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6ac30333-eab8-5ec9-124e-fcaa43ee278a', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('630e9ef8-4586-05eb-9635-3690c2b99193', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 10이mm] 이상, 슬라이드 행정수', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fabf4a1-a085-1699-4a2e-115bf524e2ad', 'ad42eb0a-6a53-e142-febb-642404520e91', '슬라이드 행정길이가 5이mm] 이상, 슬라이드 행정수', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ad42eb0a-6a53-e142-febb-642404520e91', '6ac30333-eab8-5ec9-124e-fcaa43ee278a', '② 슬라이드 행정길이가 5이mm] 이상. 슬라이드 행정수', '정답 ②. 수인식 방호장치의 설치기준 슬라이드 행정수가 100[SPM] 이하, 행정길이가 50[ㅁㅁ1] 이상의 것에', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('2556e0dd-0831-e8e2-a811-ec1d324e28e4', '11111111-1111-1111-1111-111111111104', 'mcq', '다음의 설명에 해당하는 기계는? • 칩이 가늘고 예리하며 손을 잘 다치게 한다. • 주로 평면공작물을 절삭 가공하나. 더브테일 가공이나 나사 가공 등의 복잡한 가공도 가능하다. • 장갑은 착용을 금하고, 보안경을 착용해야 한다.', 2, 588)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('198e2e6d-d126-0292-a323-3d2c18d3ee07', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '선반', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f911bd6-a7e4-7e8d-171a-f8928717a219', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '밀링', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('913e0d13-8406-c563-4c9e-5a9619878e88', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '플레이너', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7b1c35bb-185d-ef27-3dd9-2dc238e8e00a', '2556e0dd-0831-e8e2-a811-ec1d324e28e4', '연삭기', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('2556e0dd-0831-e8e2-a811-ec1d324e28e4', '0f911bd6-a7e4-7e8d-171a-f8928717a219', '② 밀링', '정답 ②. 밀링작업 시 안전대책 • 밀링작업에서 생기는 칩은 가늘고 예리하며 부상을 입히기 쉬우므로 보 안경을 착용한다. • 칩은 기계를 정지시킨 후 브러시 등으로 제거한다. • 강력절삭을 할 때는 일감을 바이스에 깊게 물린다. • 손이 말려 들어갈 위험이 있는 장갑을 착용하지 않는다. E S1', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b6cad857-756a-02fa-3ca1-3d24f30f167a', '11111111-1111-1111-1111-111111111104', 'mcq', '인입개폐기를 개방하지 않고 전등용 변압기 1 차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 COS0II 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?', 2, 589)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8affa317-91c3-12e0-1fe2-9056093ac1af', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '안전장구 미사용', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2d0bafb1-e71f-88e1-3be3-448498d0a434', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '동력용 변압기 cos 미개방', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('153c1727-beb7-cf4c-ad26-661db91ea19c', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '전등용 변압기 2차 측 COS 미개방', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d9cf8f53-9e52-6abf-01f7-055c7efb5caa', 'b6cad857-756a-02fa-3ca1-3d24f30f167a', '인입구 개폐기 미개방한 상태에서 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b6cad857-756a-02fa-3ca1-3d24f30f167a', '153c1727-beb7-cf4c-ad26-661db91ea19c', '③ 전등용 변압기 2차 측 COS 미개방', '정답 ③. 전등용 변압기 1차 측 COS가 개방된 상태이므로 2차 측 개방은 감전사고와는 무관하다. WM8I', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '11111111-1111-1111-1111-111111111104', 'mcq', '금속제 외함을 가지는 기계 • 기구에 전기를 공급하는 전로 에 지락이 발생했을 때에 자동적으로 전로를 차단하는 누전 차단기 등을 설치하여야 한다. 누전차단기를 설치해야 되는 경우로 옳은 것은?', 2, 590)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c85da6e7-ba7b-c405-bd24-d04cae158a2f', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '기계 . 기구가 고무. 합성수지 기타 절연물로 피복된 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dec83e6c-9127-b453-9fed-509d765e2275', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '기계 • 기구가 유도전동기의 2차 측 전로에 접속되는 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('59cfcfd9-d731-e376-67a3-35bdefd8cfa1', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('afd74e93-4970-0428-0fab-88a034ca76bd', 'e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '「전기용품 및 생활용품 안전관리법」의 적용을 받는 이', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e0ba2951-b7f9-6ecd-f28c-02721a2f603a', '59cfcfd9-d731-e376-67a3-35bdefd8cfa1', '③ 대지전압이 150[V]를 초과하는 휴대형 전동기계 • 기구', '정답 ③. 중절연구조의 기계ㆍ기구를 시설하는 경우 대지전압이 150[\/|를 초과하는 이동형 또는 휴대형 전기기계ㆍ . 기구에 누전차단기를 설치하여야 한다', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7396aea2-db0c-2f9a-80c2-1b7360da18c1', '11111111-1111-1111-1111-111111111104', 'mcq', '정전유도를 받고 있는 접지되어 있지 않은 도전성 물체에 접촉한 경우 전격을 당하게 되는데, 이때 물체에 유도된 전 압［V］을 옳게 나타낸 것은?（단, E는 송전선의 대지전압, C, 은 송전선과 물체 사이의 정전용량, C2는 물체와 대지 사이 의 정전용량이며, 물체와 대지 사이의 저항은 무시한다.）', 2, 591)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', '스유 오', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f2678ddc-ce85-2713-cba5-e48181cb36c4', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'V=^^-E', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eeda511a-feb4-7260-3ed2-8335f9869f67', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', '」—', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12a36ca4-7e51-f7ba-d22b-3ec3525ba2b0', '7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'v=으스요. E', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7396aea2-db0c-2f9a-80c2-1b7360da18c1', 'dbec471d-d9b6-a7a8-ea64-bd79b7ce2f61', '① 스유 오', '정답 ①. 스유 오', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('9a043c9e-a1cd-58ab-0db4-f18a861e8f98', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 흡인 시 인체에 구내염과 혈뇨, 손떨림 등의 증상을 일으키며 신경계를 대표적인 표적기관으로 하는 물질은?', 2, 592)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3cc3b405-1a58-0836-a3f1-f98698e360ed', '9a043c9e-a1cd-58ab-0db4-f18a861e8f98', '백금', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f62cfae0-6a85-4425-d069-8cc68d35fe90', '9a043c9e-a1cd-58ab-0db4-f18a861e8f98', '석회석', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a5627fbc-e7c9-5c6e-1f1f-63d62b094dcd', '9a043c9e-a1cd-58ab-0db4-f18a861e8f98', '수은', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fff0a84f-fcb9-13d3-9462-b34c684e2c8d', '9a043c9e-a1cd-58ab-0db4-f18a861e8f98', '이산화탄소', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('9a043c9e-a1cd-58ab-0db4-f18a861e8f98', 'a5627fbc-e7c9-5c6e-1f1f-63d62b094dcd', '③ 수은', '정답 ③. 수은 중독 흡인 시 인체의 구내염과 혈뇨, 손떨림 등의 증상을 일으키며. 대표적인 신 경계 독성 물질이다. 수은 중독의 대표 사례로는 일본의 ‘ 미나마타 병’이 있다. 1', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '11111111-1111-1111-1111-111111111104', 'mcq', '헥산 1[vol%], 메탄 2[vol%], 에틸렌 2[vol%], 공기 95[vol%]로 된 혼합가스의 폭발하한계값[vol%]은 약 얼마 인가?（단, 헥산, 메탄, 에틸렌의 폭발하한계 값은 각각 1.1, 5.0, 2.7[vol%]이다.）', 2, 593)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '2.44', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6b8f5f86-7a37-1852-3d81-e1dd0410fa1c', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '12.89', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('255ed229-ae10-77e4-30b2-9bd8e30a8f4f', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '21.78', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8a5856c-ddc0-7ed6-96b0-b664cb9de2a9', '6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', '48.78', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6d9fe8ea-adeb-02dc-ce55-3099f0b100c0', 'c68b9ad9-3ea8-2f9c-aff1-db4b9673ece7', '① 2.44', '정답 ①. 2.44', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8b516047-7b2f-e923-b42c-d16cdfe09117', '11111111-1111-1111-1111-111111111104', 'mcq', '중대산업재해 대비를 위한 대응조치로 옳지 않은 것은?', 2, 594)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('32f249e3-86fd-b544-8ff5-566ba1bb926e', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 급박한 위험이 발생한 경우 근로자들이 스스', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4e5f7df-8965-cdcc-c171-80f6ee61f50c', '8b516047-7b2f-e923-b42c-d16cdfe09117', '근로자는 작업 진행 중 본인 또는 인근에서 수행되는', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0f4da638-a886-90fd-9c7d-4ee0c09d1d44', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 사업장의 특성을 반영하여 급박한 위험의 판', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('576009e6-5eb8-1d9b-6344-242c3e015a06', '8b516047-7b2f-e923-b42c-d16cdfe09117', '사업주는 급박한 위험 시 작업중지를 한 근로자에 대하', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8b516047-7b2f-e923-b42c-d16cdfe09117', 'e4e5f7df-8965-cdcc-c171-80f6ee61f50c', '② 근로자는 작업 진행 중 본인 또는 인근에서 수행되는', '정답 ②. 여 해고 등 불이익 조치를 할 수 없다. KUH 근로자는 작업 진행 중 본인 또는 인근에서 수행되는 작업에서 산업재해가 발생할 급박한 위험을 인식한 즉시 작업을 중지하고 대피하여 야한다. 1', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b1270f99-a65c-275a-37c6-3e55c5f72471', '11111111-1111-1111-1111-111111111104', 'mcq', '다음（ ）안에알맞은내용은? 동바리로 사용하는 파이프서포트의 높이가 （ ）[m]를 초과하는 경우에는 높이 2[m] 이내마다 수평연결재를 2개 방 향으로 만들고 수평연결재의 변위를 방지할 것', 2, 595)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be071793-b2ce-9a4f-9122-d3c4d05c6e78', 'b1270f99-a65c-275a-37c6-3e55c5f72471', '3', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('44f18d14-eb12-12e4-097c-105bdb26dc3e', 'b1270f99-a65c-275a-37c6-3e55c5f72471', '3.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2ba09e44-69c3-0744-f58a-1e413f9dfadc', 'b1270f99-a65c-275a-37c6-3e55c5f72471', '4', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08532cd1-4127-7b15-9445-bd9a0699ea53', 'b1270f99-a65c-275a-37c6-3e55c5f72471', '4.5', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b1270f99-a65c-275a-37c6-3e55c5f72471', '44f18d14-eb12-12e4-097c-105bdb26dc3e', '② 3.5', '정답 ②. 동바리로 사용하는 파이프서포트의 높이가 3.5[m]를 초과하는 경우에는 높이 2[m] 이내마다 수평연결재를 2개 방향으로 만들고 수평연 결재의 변위를 방지하여야 한다. 쎼테', array['산업안전기사','2025-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ef32cc9d-af4b-0750-942f-59db3b477067', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우(Maslow)의 욕구위계이론 중 2단계에 해당되는 것은?', 2, 596)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6512186a-d8c7-efd1-331b-581dbf9be09f', 'ef32cc9d-af4b-0750-942f-59db3b477067', '생리적 욕구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e', 'ef32cc9d-af4b-0750-942f-59db3b477067', '안전에 대한 욕구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('79d6e727-d8da-ff35-1c59-b7cf9192fe3c', 'ef32cc9d-af4b-0750-942f-59db3b477067', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('10fc0601-fc12-ab91-e8ed-31f6a32eaa83', 'ef32cc9d-af4b-0750-942f-59db3b477067', '존경과 긍지에 대한 욕구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ef32cc9d-af4b-0750-942f-59db3b477067', 'b8d728c4-ffb1-1edc-8342-3cd1cf7ba57e', '② 안전에 대한 욕구', '정답 ②. 안전에 대한 욕구', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('42f9ba30-59a6-8110-128c-0b6e8ad87300', '11111111-1111-1111-1111-111111111104', 'mcq', '안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은?', 2, 597)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d7c1977f-23f3-5677-b964-0e768bdf31d5', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '단기간의 교육시간 내에 비교적 많은 내용을 전달할 수', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5f377be0-d6b6-c8f1-6f87-62ff5ead3e5e', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '다수의 수강자를 대상으로 동시에 교육할 수 있다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('99cea04b-aaf2-c8d8-949b-30c75ffaa61f', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '다른 교육방법에 비해 수강자의 참여가 제약된다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a23843bb-3bf6-490b-e82d-6d9aa18fdbd3', '42f9ba30-59a6-8110-128c-0b6e8ad87300', '수강자 개개인의 학습진도를 조절할 수 있다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('42f9ba30-59a6-8110-128c-0b6e8ad87300', 'a23843bb-3bf6-490b-e82d-6d9aa18fdbd3', '④ 수강자 개개인의 학습진도를 조절할 수 있다.', '정답 ④. 강의법은 다수의 수강자를 대상으로 동시에 교육을 진행하기 때 문에 개개인의 학습진도를 조절할 수 없다', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '11111111-1111-1111-1111-111111111104', 'mcq', 'Rasmussen은 행동을 세 가지로 분류하였는데, 그 분류에 해당하지 않는 것은?', 2, 598)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('874f3b50-9740-1b07-b139-efb9289bdb05', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '숙련 기반 행동(skill—based behavior)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('63033634-0808-9dbc-73b0-2ebecf4b5ee1', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '지 식 기 반 행동(knowledge—based behavior)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b54a962b-18b3-932c-1511-b84d249120ea', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '경험 기반 행동(experience—based behavior)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38e666f0-1a53-7e88-c3ce-ce097e971462', 'fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', '규칙 기반 행동(rule—based behavior)', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fadd96f6-ab5b-b96f-4e3d-48a87f9862d3', 'b54a962b-18b3-932c-1511-b84d249120ea', '③ 경험 기반 행동(experience—based behavior)', '정답 ③. 라스무센(Rasmussen)의 인간 행동 분류 • 숙련 기반 행동: 반복적이고 자동화된 동작으로. 거의 무의식적으로 수 행되는 행동이다. • 규칙 기반 행동: 규칙. 절차, 지침에 따라 수행되는 행동이다. • 지식 기반 행동: 새로운 상황에서 문제 해결을 위해 지식을 활용하는 행 동이다. 1', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('37f14e75-22ef-70dd-c7ca-5ac182666bb3', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 위험성평가의 실시내용 및 결과의 기록. 보존에 관한 설명으로 옳지 않은 것은?', 2, 599)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('53bc7e02-33ba-80bf-5b13-1fd2447ad36e', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성평가 대상의 유해 ■ 위험요인이 포함되어야 한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14743531-9f74-7d16-5bf6-dbf29be05cef', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성 결정 및 결정에 따른 조치의 내용이 포함되어야', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef76651c-83d5-b7a1-54c6-a9f19e9db46a', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '위험성평가의 실시내용을 확인하기 위하여 필요한 사', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('130cdf7d-52d8-aabb-fbd0-8009cfd6fc76', '37f14e75-22ef-70dd-c7ca-5ac182666bb3', '사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('37f14e75-22ef-70dd-c7ca-5ac182666bb3', '130cdf7d-52d8-aabb-fbd0-8009cfd6fc76', '④ 사업주는 위험성평가 실시내용 및 결과의 기록 • 보존에', '정답 ④. 위험성평가 대상의 유해ㆍ위험요인이 포함되어야 한다. (3) 위험성 결정 및 결정에 따른 조치의 내용이 포함되어야 (9) 위험성평가의 실시내용을 확인하기 위하여 필요한 사 항으로서 고용노동부장관이 정하여 고시하는 사항이 (4) 사업주는 위험성평가 실시내용 및 결과의 기록ㆍ보존에 따른 자료를 5년간 보존하여야 한다. 위험성평가의 결과와 조치사항을 기록한 AE 3년간 보존하여', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('53f39d02-4c3e-7197-4514-c118afd6a8fe', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 지게차의 최대하중의 2배 값이 6톤 일 경우 헤드가드의 강도는 몇 톤의 등분포정하중에 견딜 수 있어야 하는가?', 2, 600)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47319227-3692-c8e6-32e8-3a9c27a4dd2b', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '4', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7d2a2e6e-588b-fd4c-5f4d-d3fefc30d126', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '6', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00e86f8d-f959-5f6f-eb12-28d231a31b72', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '8', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4736d371-5fda-1e80-ebb0-e2cd9d4bf530', '53f39d02-4c3e-7197-4514-c118afd6a8fe', '10', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('53f39d02-4c3e-7197-4514-c118afd6a8fe', '47319227-3692-c8e6-32e8-3a9c27a4dd2b', '① 4', '정답 ①. 헤드가드의 구비조건 • 강도는 지게차의 최대하중의 2배 값(4톤을 넘는 값에 대해서는 4톤)의 등분포정하중에 견딜 수 있을 것 • 상부틀의 각 개구의 폭 또는 길이가 16[cm] 미만일 것 • 운전자가 앉아서 조작하거나 서서 조작하는 지게차의 헤드가드는 한국 산업표준에서 정하는 높이 기준 이상일 것(입승식: 1.88[m] 이상. 좌승 식: 0.903[m] 이상)', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
