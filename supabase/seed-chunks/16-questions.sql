-- chunk 16
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('de0213e1-ba4d-6e20-4f4e-228890a03f80', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?(단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.)', 2, 601)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7ec826de-9565-3609-94ab-bd058bf9e54a', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '0.9[m]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aa933f51-6e9f-9229-6cf8-ccb6361abf73', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.2[m]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('17e32b97-349d-3b28-7fb9-9be8bb4cdce3', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.5[m]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f135a2c8-cb15-9c63-3987-8899979c53bb', 'de0213e1-ba4d-6e20-4f4e-228890a03f80', '1.8[m]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('de0213e1-ba4d-6e20-4f4e-228890a03f80', 'f135a2c8-cb15-9c63-3987-8899979c53bb', '④ 1.8[m]', '정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. E 3', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '11111111-1111-1111-1111-111111111104', 'mcq', '대형기계의 회전체가 있는 위험점으로부터 900[mm] 거리 에 고정가드를 설치하고자 한다. 가드의 개구부에 최적간격 은 얼마로 하여야 하는가?', 2, 602)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b7a8c664-8c24-9546-c4d8-5e55d3527236', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '141[mm]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b26d2568-f15f-8e70-6d72-ad4415f1e737', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '106[mm]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31d4c176-445c-8c56-6bb7-0563f57bae8c', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '96[mm]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('441f3ab8-85ca-e10d-afc7-5fbe6f99d882', '770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '91 [mm]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('770cf0b3-c18f-0148-1261-1c2a0c16fc7e', '31d4c176-445c-8c56-6bb7-0563f57bae8c', '③ 96[mm]', '정답 ③. 96[mm]', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '11111111-1111-1111-1111-111111111104', 'mcq', '광전자식 방호장치의 광선에 신체의 일부가 감지된 후로부 터 급정지기구가 작동 개시하기까지의 시간이 4O[ms]이고, 광축의 최소 설치거리（안전거리）가 200[mm]일 때 급정지 기구가 작동 개시한 때로부터 프레스기의 슬라이드가 정지 될 때까지의 시간은 약 몇 [ms]인가?', 2, 603)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3512d1f2-6084-9563-ac56-315d273f2235', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '60[ms]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('61fbb522-fd6e-9057-7fb7-fd18bb104be6', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '85[ms]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('179fc9a4-f8ae-6a80-9ccb-71fc6fe18fa1', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '105[ms]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('76c7591b-7c48-37e6-8f62-ba08d9988035', 'eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '13이ms]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eee6d358-7d1e-350f-d9f6-424b11f6bdbc', '61fbb522-fd6e-9057-7fb7-fd18bb104be6', '② 85[ms]', '정답 ②. 85[ms]', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c42da96a-94c9-185f-7dc6-98e5fbed82b6', '11111111-1111-1111-1111-111111111104', 'mcq', '설비의 고장형태를 크게 초기고장, 우발고장, 마모고장으로 구분할 때 다음 중 마모고장과 가장 거리가 먼 것은?', 2, 604)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a6e74fb0-7450-425d-8431-b952bab5c202', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '부품, 부재의 마모', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0eda330-4fd1-42b4-fbf1-b2e50b4641d1', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '열화에 생기는 고장', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cab8b36-75d6-fd45-346b-cbb45817697d', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '부품, 부재의 반복피로', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b245266-9997-fbb4-bfab-53944a92b070', 'c42da96a-94c9-185f-7dc6-98e5fbed82b6', '순간적 외력에 의한 파손', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c42da96a-94c9-185f-7dc6-98e5fbed82b6', '3b245266-9997-fbb4-bfab-53944a92b070', '④ 순간적 외력에 의한 파손', '정답 ④. 순간적 외력에 의한 파손은 우발고장에 해당한다. 마모고장（증가형） 설비 또는 장치가 수명을 다하여 생기는 고장이다. 1', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '11111111-1111-1111-1111-111111111104', 'mcq', '밀링작업에서 주의해야 할 사항으로 옳지 않은 것은?', 2, 605)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3aeb27-5fc2-2f24-e9c8-811659fb796e', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '보안경을 쓴다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6c7f819e-d63e-046b-d9a3-5a63e55773b7', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '일감 절삭 중 치수를 측정한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e7329471-8932-3122-094e-ad35283b0e25', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '커터에 옷이 감기지 않게 한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('555fdcb7-eda7-ba6b-161a-26bd5d2952ae', '4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '커터는 될 수 있는 한 컬럼에 가깝게 설치한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4ddf9f0a-c9b0-e253-3a5e-3a15c9588f2f', '6c7f819e-d63e-046b-d9a3-5a63e55773b7', '② 일감 절삭 중 치수를 측정한다.', '정답 ②. 밀링작업 시 일감 또는 부속장치 등을 설치하거나 제거할 때 또 는 일감을 측정할 때에는 반드시 정지시킨 다음에 작업한다. E IE1 아MPTER 03 공작기계의 안전 06', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('104187d2-bb05-3a36-15d8-9d24ad3eedf1', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 저항을 1,OOO[Q]으로 볼 때 심실세동을 일으키는 전류에서의 전기에너지는 약 몇 [J]인가?(단, 심실세동전류 는 쯔[mA]이며, 통전시간 7는 1초, 전원은 정현파 교류 이다.)', 2, 606)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9fc51208-7ef0-ace5-4479-aea0166adc39', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '13.6', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('12ca526f-d8ef-63b1-f2a3-60822527bc50', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '27.2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6caec001-a791-894c-190d-cbddec5523f9', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '136.6', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4469871f-6ee3-a6cd-f00a-13fdee6aa3d4', '104187d2-bb05-3a36-15d8-9d24ad3eedf1', '272.2', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('104187d2-bb05-3a36-15d8-9d24ad3eedf1', '12ca526f-d8ef-63b1-f2a3-60822527bc50', '② 27.2', '정답 ②. 27.2', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('39dd0e98-ff1e-18fc-a72d-f39c879792b6', '11111111-1111-1111-1111-111111111104', 'mcq', '역률개선용 커패시터(Capacitor)가 접속되어 있는 전로에 서 정전작업을 할 경우 다른 정전작업과는 달리 주의 깊게 취해야 할 조치사항으로 옳은 것은?', 2, 607)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d793d559-b563-41a9-c886-483dd220fd63', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '안전표지 부착', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0fbe81c1-eae6-65dc-17fa-041c8dc3963f', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '개폐기 전원투입 금지', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8901265c-a97f-d2fc-2ad8-ecf7a301a924', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '잔류전하 방전', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('13f6cc1a-bdd6-2b95-f0a1-9fd8f5efe01b', '39dd0e98-ff1e-18fc-a72d-f39c879792b6', '활선 근접작업에 대한 방호', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('39dd0e98-ff1e-18fc-a72d-f39c879792b6', '8901265c-a97f-d2fc-2ad8-ecf7a301a924', '③ 잔류전하 방전', '정답 ③. 커패시터는 전기를 저장하는 장치이므로 방전코일이나 방전기구 등을 이용하여 잔류전하의 방전을 주의 깊게 조치하여야 한다', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '11111111-1111-1111-1111-111111111104', 'mcq', '중대산업재해 발생 시 응급조치 환자 신고요령으로 옳지 않 은 것은?', 2, 608)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b2bb6a21-edac-69e8-ed17-4e241f7a1fc4', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '심각한 응급환자 발생 시 신속히 응급처치 후 119 등에', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3926587e-50dd-4d93-262d-052610e4b9b8', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '119 연결 시 환자의 상황을 침착하고 정확하게 전달한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('db001190-74de-eeda-1ec5-93a25f778bc8', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '환자를 제대로 고정하지 않고 이송하는 것은 상태를 악', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ea2f6bc8-b5dc-2697-f506-89bb4df86846', '45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', '환자의 몸을 조이는 옷과 장신구 등을 느슨하게 풀어주', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('45fb007a-e166-0e6d-a4f0-95bc0bc9cf21', 'b2bb6a21-edac-69e8-ed17-4e241f7a1fc4', '① 심각한 응급환자 발생 시 신속히 응급처치 후 119 등에', '정답 ①. 심각한 응급환자 발생 시 신속히 응급처치 후 119 등에', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은「산업안전보건법령」에 따른 위험물질의 종류 중 부 식성 염기류에 관한 내용이다.（ ）안에 알맞은 수치는? 농도가（ ）[%] 이상인 수산화나트륨, 수산화칼륨, 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류', 2, 609)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c2528320-5d68-ea40-48cd-e5629e09aca1', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '20', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce2a6243-69e7-fbb3-9492-50cfa6ebee9f', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '40', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0b1b1e01-7fdf-daa7-2d7c-3589cebcff4f', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '60', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66e13043-6639-5efc-9806-eaaf38b8129a', '4b1b127e-b887-13b8-d7d2-a7c948ecfabc', '80', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4b1b127e-b887-13b8-d7d2-a7c948ecfabc', 'ce2a6243-69e7-fbb3-9492-50cfa6ebee9f', '② 40', '정답 ②. 삐 부식성 염기류 농도가 40[%] 이상인 수산화나트륨, 수산화칼륨. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 염기류이다. 1', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d6a23d17-f883-c911-4883-728b88c29ab4', '11111111-1111-1111-1111-111111111104', 'mcq', '펌프의 사용 시 공동현상（Cavitation）을 방지하고자 할 때의 조치사항으로 틀린 것은?', 2, 610)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 회전수를 높인다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b75fd477-2e81-7232-18b0-ffdd3207bb26', 'd6a23d17-f883-c911-4883-728b88c29ab4', '흡입 비 속도를 작게 한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a520c3b2-c882-5837-a8c5-dc6150c7f49c', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 흡입관의 두（Head） 손실을 줄인다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5fc9114-e9b9-24a9-7e8f-bde91124900d', 'd6a23d17-f883-c911-4883-728b88c29ab4', '펌프의 설치높이를 낮추어 흡입양정을 짧게 한다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d6a23d17-f883-c911-4883-728b88c29ab4', '24bf0e9b-4ecc-fd00-9e0e-4d3082fe3dbd', '① 펌프의 회전수를 높인다.', '정답 ①. 공동현상은 유속이 빠를 경우 발생할 수 있으므로 공동현상을 예 방하려면 펌프의 회전수를 낮춰야 한다. EMS1 아1APTER 04 화공 안전운전 - 점검 09', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7c00b11c-8a0d-82e0-abec-a042501e1f7c', '11111111-1111-1111-1111-111111111104', 'mcq', '건설현장에 설치하는 사다리식 통로의 설치기준으로 옳지 않은 것은?', 2, 611)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a133a7a9-377d-8740-d97d-83d948020c20', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '발판과 벽과의 사이는 15[cm] 이상의 간격을 유지할 것', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8672c21-8b49-ff7f-9a61-1ca2654ec2e6', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '발판의 간격은 일정하게 할 것', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('921d0aa2-d981-5ea5-cdf6-c4f42b34f30d', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '사다리의 상단은 걸쳐놓은 지점으로부터 60[cm] 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b0277562-99ec-e7d0-179e-6b32b28598b6', '7c00b11c-8a0d-82e0-abec-a042501e1f7c', '사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7c00b11c-8a0d-82e0-abec-a042501e1f7c', 'b0277562-99ec-e7d0-179e-6b32b28598b6', '④ 사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]', '정답 ④. 이내마다 계단참을 설치할 것 짜 사다리식 통로의 길이가 10[m] 이상인 경우에는 5[m] 이내마다 계단참을 설치하여야 한다. 1', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건기준에 관한 규칙」에 따르면 풍화암의 토사 붕괴를 예방하기 위한 기울기는 얼마인가?', 2, 612)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b3b5f627-239a-90a3-8200-81c7d2d28281', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.8', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 1.0', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d98818c7-e144-455f-9c76-6b241ebb7f3d', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3d3279dd-dd14-358f-d187-ed8b4b9661e6', '7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '1 ： 0.3', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5', '4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b', '② 1 ： 1.0', '정답 ②. 1 ： 1.0', array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
