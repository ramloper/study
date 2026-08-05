-- chunk 14
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b8fa343a-36fd-25ff-f979-4d70e797ea64', '11111111-1111-1111-1111-111111111104', 'mcq', '방폭전기기기의 성능을 나타내는 기호표시 EX P II A T5 를 나타내었을 때 관계가 없는 표시 내용은?', 2, 521)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e649aa30-0c79-a856-4a90-13886b5b81b0', 'b8fa343a-36fd-25ff-f979-4d70e797ea64', '온도등급', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8bc31c0c-5a06-fee4-ea2f-3c1f5e923583', 'b8fa343a-36fd-25ff-f979-4d70e797ea64', '폭발성능', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d3a37c38-1f4c-a08a-a1af-13473a0afbd7', 'b8fa343a-36fd-25ff-f979-4d70e797ea64', '방폭구조', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fca4ce62-53f2-6094-922f-20601d7ae7e2', 'b8fa343a-36fd-25ff-f979-4d70e797ea64', '폭발등급', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b8fa343a-36fd-25ff-f979-4d70e797ea64', '8bc31c0c-5a06-fee4-ea2f-3c1f5e923583', '② 폭발성능', '정답 ②. 폭발성능', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '11111111-1111-1111-1111-111111111104', 'mcq', '정전작업 시 전원개폐기를 개방하고 검전기로 전선로를 검 전하였더 니 네온램프에 불이 점등되었다. 그 원인으로 옳은 것은?', 2, 522)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7cf394dd-48af-284e-7683-1df08c5ad8a9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '유도전압이 발생되었다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f6ff370-b579-1f9a-d34d-8eb5077e4850', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '검전기가고장이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('47630aa7-c2c1-77a1-42d8-a9239b8866f9', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '단락접지를 하였다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c0983a3-622e-fe51-0df3-f00d5b91e01d', 'bafc897a-9a1e-64d3-a549-4b7469dc3053', '작업지휘자가 없었다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('bafc897a-9a1e-64d3-a549-4b7469dc3053', '7cf394dd-48af-284e-7683-1df08c5ad8a9', '① 유도전압이 발생되었다.', '정답 ①. 유도전압이 발생되었다.', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따라 유해하거나 위험한 설비의 설 치 이전 또는 주요 구조부분의 변경공사 시 공정안전보고 서의 제출시기는 착공일 며칠 전까지 관련기관에 제출하여 야하는가?', 2, 523)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1a3452c7-0259-474e-9fd4-4891668646b8', '92c8220c-46fa-c990-6086-ad7df704f1b9', '15일', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('5c2dbfa2-1e89-3b36-15df-11a0648febf2', '92c8220c-46fa-c990-6086-ad7df704f1b9', '30일', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('94533cd7-b53c-1e32-bc80-4b7397d97f91', '92c8220c-46fa-c990-6086-ad7df704f1b9', '60일', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9465bd58-ff21-fca2-15de-5f1217c1c671', '92c8220c-46fa-c990-6086-ad7df704f1b9', '90일', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('92c8220c-46fa-c990-6086-ad7df704f1b9', '5c2dbfa2-1e89-3b36-15df-11a0648febf2', '② 30일', '정답 ②. 유해하거나 위험한 설비의 설치 이전 또는 주요 구조부분의 변 경공사의 착공일 30일 전까지 공정안전보고서를 2부 작성하여 한국산업안 전보건공단에 제출하여야 한다. 1WM', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', '11111111-1111-1111-1111-111111111104', 'mcq', '특수화학설비를 설치할 때 내부의 이상 상태를 조기에 파악 하기 위하여 필요한 계측장치로 가장 거리가 먼 것은?', 2, 524)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('85d1f266-4c75-9f02-99d8-838e9b7e2011', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '압력계', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6800a912-de9b-8dd4-7659-674ed9a32e7b', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '유량계', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('957b0ffd-1163-892f-7693-6d076c001c51', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '온도계', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', 'b67d870f-60ea-2391-25f4-05e40f77e0a1', '비중계', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b67d870f-60ea-2391-25f4-05e40f77e0a1', 'ee5c4ece-f3c2-3bc7-74d8-22dc99a3bc76', '④ 비중계', '정답 ④. 비중계', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', '11111111-1111-1111-1111-111111111104', 'mcq', '물질안전보건자료를 작성할 때에 혼합물인 제품들이 해당 제품들을 대표하여 하나의 물질안전보건자료를 작성할 수 있는 충족요건 중 각 구성성분의 함유량 변화는 얼마 이하 이어야 하는가?', 2, 525)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1ac9dc7f-ebdf-9285-e1b0-d4fe600bdd55', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '5[%p]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef2cbecc-0712-250c-ef54-a0124834d9cc', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '10[%p]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3057381-4ec3-3d8a-2f19-5418e012050c', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '15[%p]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3b311d29-d0d1-cb18-1f0a-08bbf7f555b4', 'f5ddab3c-23b6-ec74-92b0-bd141627c94f', '30[%p]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f5ddab3c-23b6-ec74-92b0-bd141627c94f', 'ef2cbecc-0712-250c-ef54-a0124834d9cc', '② 10[%p]', '정답 ②. 페 혼합물인 제품들이 다음의 각 요건을 충족하는 경우에는 해당 제 품들을 대표하여 하나의 물질안전보건자료를 작성할 수 있다. • 혼합물인 제품들의 구성성분이 같을 것 • 각 구성성분의 함유량 변화가 10[%p] 이하일 것 • 유사한 유해성을 가질 것 E 3', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', '11111111-1111-1111-1111-111111111104', 'mcq', '제2종 분말소화약제의 주성분에 해당하는 것은?', 2, 526)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('411ce014-b905-58a9-110c-0368a2e06be8', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소나트륨', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '탄산수소칼륨', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2129aa81-e767-11ed-ae85-de5ed2ab98d9', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '인산암모늄', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('277f23c6-4875-bc33-4506-6a902b5477e3', 'ce340aa6-b8a3-189f-b307-94b6a448d376', '수산화암모늄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('ce340aa6-b8a3-189f-b307-94b6a448d376', 'dd0edb05-61e4-ed77-3c2a-f2c077ddafa0', '② 탄산수소칼륨', '정답 ②. 탄산수소칼륨', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', '11111111-1111-1111-1111-111111111104', 'mcq', '할론소화약제 중 Halon 2402의 화학식으로 옳은 것은?', 2, 527)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c739dcd6-9e18-46a2-44f5-d282243f2060', 'c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', '02日4及2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad2fe1f6-5e69-87f3-4a41-c1b36b25412b', 'c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', 'C2H4女2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('631e35b3-31ef-07b1-3616-7769da68ebe7', 'c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', 'CrBp4H2', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b8d4adfb-de59-3897-46d8-577f3915e55d', 'c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', 'CrB^F', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c03c00ef-71e9-ee6c-4456-cdb127e6ea7f', 'c739dcd6-9e18-46a2-44f5-d282243f2060', '① 02日4及2', '정답 ①. 02日4及2', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('40c0ceb2-f48e-474a-dfa6-4fa5509691e6', '11111111-1111-1111-1111-111111111104', 'mcq', '작업장으로 통하는 장소 또는 작업장 내에 근로자가 사용할 통로설치에 대한 준수사항 중 다음( )안에 알맞은 내용 은? 통로의 주요 부분에는 통로표시를 하고, 근로자가 안전하게 통행할 수 있도록 하여야 한다. 통로면으로부터 높이 ( )[m] 이내에는 장애물이 없 도록 하여야 한다.', 2, 528)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9d5f3253-4d31-bfc0-6297-534424598a5c', '40c0ceb2-f48e-474a-dfa6-4fa5509691e6', '1', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('917684b4-eefc-bdeb-aa23-bb2e9359cc8d', '40c0ceb2-f48e-474a-dfa6-4fa5509691e6', '1.5', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e4b6821e-4fa1-e3b1-1103-bedafe92d2f7', '40c0ceb2-f48e-474a-dfa6-4fa5509691e6', '2', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('95dea1bc-c87d-8675-d0c8-2fa215094620', '40c0ceb2-f48e-474a-dfa6-4fa5509691e6', '3', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('40c0ceb2-f48e-474a-dfa6-4fa5509691e6', 'e4b6821e-4fa1-e3b1-1103-bedafe92d2f7', '③ 2', '정답 ③. 2', array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우(Maslow)의 욕구단계이론 중 자기의 잠재력을 최 대한 살리고 자기가 하고 싶었던 일을 실현하려는 인간의 욕구에 해당하는 것은?', 2, 529)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f4119880-fe9f-6853-937e-a41fca33802f', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '생리적욕구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4fe75974-990b-f348-b7b0-10409f7620bd', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '사회적욕구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '자아실현의 욕구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ee4b3a75-4ead-79b3-9acc-b95b9b77dcc7', '7ca2596f-d373-4fee-dd91-35bcc9ce5058', '안전의 욕구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7ca2596f-d373-4fee-dd91-35bcc9ce5058', '1f2c65ba-2cc2-ad03-d5ba-367415f980ab', '③ 자아실현의 욕구', '정답 ③. 즈 자아실현의 욕구(제5단계)는 잠재적인 능력을 실현하고자 하는 욕구(성취욕구)이다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」상 사업 내 안전보건교육의 교육시간에 관한 설명으로 옳은 것은?', 2, 530)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9f265969-cdc7-75ec-1433-6c71b0b42b4c', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자의 작업내용 변경 시의 교육은 2시간 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2373fb2f-e258-49a4-73d8-554f02cd609d', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '사무직에 종사하는 근로자의 정기교육은 매반기 6시간', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('06fa6235-0e76-05f0-c9c0-273594dd65c8', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '일용근로자 및 근로계약기간이 1개월 이하인 기간제근로', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('fc519020-c951-271d-60ca-a6041c5fde32', '49f9614c-8dcf-08a8-2df5-7a57511b724e', '관리감독자의 지위에 있는 사람의 정기교육은 연간 8', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('49f9614c-8dcf-08a8-2df5-7a57511b724e', '2373fb2f-e258-49a4-73d8-554f02cd609d', '② 사무직에 종사하는 근로자의 정기교육은 매반기 6시간', '정답 ②. 시간이상이다. «!EM 근로자 안전보건교육 교육과정별 교육시간 교육과정 교육대상 교육시간 사무직 종사 근로자 매반기 6시간 이상 판매업무에 직접 종사하는 매반기 6시간 이상 그 밖의 근로자 정기교육 근로자 판매업무에 직접 종사하는 매반기 12시간이상 근로자 외의 근로자 관리감독자의 지위에 있는 사람 연간 16시간이상 일용근로자 및 근로계약기간이 1주일 1시간이상 이하인 기간제근로자 채용 시 교육 근로계약기간이 1주일 초과 1개월이 4시간이상 하인 기간제근로자 그 밖의 근로자 8시간이상 일용근로자 및 근로계약기간이 1주일 작업내용 1시간이상 이하인 기간제근로자 변경 시 교육 그 밖의 근로자 2시간이상 오답해설 관리감독자의 정기교육시간은 연간 16시간 이상이다. tWIIl', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법」상 산업안전보건위원회의 사용자위원 구 성원이 아닌 것은?（단, 각 사업장은 해당하는 사람을 선임 하여야 하는 대상 사업장으로 한다.）', 2, 531)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a11e149a-648e-b329-cbcc-f2a094811cbd', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '안전관리자', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b5d1eb7f-51b8-e3b9-24f6-f2f6e899ba3b', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '보건관리자', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bdbed70e-fe43-672a-19c1-a2c6fdba1cda', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '산업보건의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e015094-c6f1-a73e-2a8c-a89726aa6ef8', 'a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '명예산업안전감독관', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('a7bc55a1-d977-d1c5-31a2-adc0abe5c0da', '6e015094-c6f1-a73e-2a8c-a89726aa6ef8', '④ 명예산업안전감독관', '정답 ④. 명예산업 안전감독관은 근로자위원에 해당한다. 산업안전보건위원회 사용자 위원 • 해당사업의 대표자 • 안전관리자 • 보건관리자 • 산업보건의 • 해당 사업의 대표자가 지명하는 9명 이내의 해당 사업장 부서의 장 1', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '11111111-1111-1111-1111-111111111104', 'mcq', '위험예지훈련 중 작업현장에서 그때 그 장소의 상황에 즉응 하여 실시하는 것은?', 2, 532)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('262c7b77-11b4-5e98-10bd-717c67e085bd', 'f2cd2586-cda8-f684-6403-78aef825c58e', '자문자답 위험예지훈련', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1c81f494-af30-1177-9c67-278e5e9a06f2', 'f2cd2586-cda8-f684-6403-78aef825c58e', 'TBM 위험예지훈련', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2756a7ca-5f96-5409-cc3d-ca0bcf404872', 'f2cd2586-cda8-f684-6403-78aef825c58e', '시나리오 역할연기훈련', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ae73019-7d5d-29d4-680c-9e72e6c4fb41', 'f2cd2586-cda8-f684-6403-78aef825c58e', '1인 위험예지훈련', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f2cd2586-cda8-f684-6403-78aef825c58e', '1c81f494-af30-1177-9c67-278e5e9a06f2', '② TBM 위험예지훈련', '정답 ②. 뼤i TBM（Tool Box Meeting） 위험예지훈련 작업 개시 전 또는 종료 후, 10명 이하의 작업원이 리더를 중심으로 둘러 앉아（또는 서서） 10분 내외에 걸쳐 작업 중 발생할 수 있는 위험을 예측하 고 사전에 점검하여 대책을 수립하는 등 단시간 내에 의논하는 문제해결 기법이다. 작업 현장에서 상황에 맞추어 실시할 수 있는 장점이 있다. tWl리', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', '11111111-1111-1111-1111-111111111104', 'mcq', '손이나 특정 신체부위에 발생하는 누적손상장애(CTDs)의 발생인자와 가장 거리가 먼 것은?', 2, 533)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e366cea6-af39-2870-550e-57d40503376a', '5d53167a-3489-ef42-1329-d9e679c4366a', '무리한 힘', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ebf12b59-a677-be67-2903-e3e5fc201dcd', '5d53167a-3489-ef42-1329-d9e679c4366a', '다습한 환경', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e678bda2-4408-bbbc-e1d0-f2cd6d137d5e', '5d53167a-3489-ef42-1329-d9e679c4366a', '장시 간의 진동', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ef399b72-ea46-6f96-6066-f5bed542828d', '5d53167a-3489-ef42-1329-d9e679c4366a', '반복도가 높은 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5d53167a-3489-ef42-1329-d9e679c4366a', 'ebf12b59-a677-be67-2903-e3e5fc201dcd', '② 다습한 환경', '정답 ②. 누적손상장애(CTDs) 발생원인 과도한 힘의 요구, 부적절한 작업자세, 장시간의 진동, 반복적인 동작 등 tWB', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '11111111-1111-1111-1111-111111111104', 'mcq', '철강업 등에서 10일 간격으로 10시간 정도의 정기 수리일 을 마련하여 대대적인 수리, 수선을 하게 되는데 이와 같이 일정기간마다 설비보전활동을 하는 것을 무엇이라 하는가?', 2, 534)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('055426c6-318b-5c10-1270-2f50f90bb068', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '사후보전 (Break down Maintenance, BM)', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('937ad240-a8a2-896e-61c7-1a89c843af83', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '시간기준보전 (Time Based Maintenance, TBM)', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3ee87787-882b-af8d-8574-8ebcd60c321c', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '개량보전(Concentration Maintenance, CM)', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('33ea9d63-5ab0-5e4a-9ee3-14cb63938276', 'e9b4c062-4410-98a4-e48b-e31466eae8e2', '상태기준보전(Condition Based Maintenance,', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e9b4c062-4410-98a4-e48b-e31466eae8e2', '937ad240-a8a2-896e-61c7-1a89c843af83', '② 시간기준보전 (Time Based Maintenance, TBM)', '정답 ②. 시간기준보전(『8&0)은 일정기간마다 수리, 수선 등 보수를 하는', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('3c785b94-946a-9a3e-fa8c-06f1cedab334', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 중 활선근접작업 시의 안전조치로 적절하지 않은 것은?', 2, 535)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('20ecdef0-50be-15c5-06f4-a0e0a73750c0', '3c785b94-946a-9a3e-fa8c-06f1cedab334', '근로자가 절연용 방호구의 설치 • 해체작업을 하는 경우', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c350612d-2d4b-1917-bb8e-a13241b1684b', '3c785b94-946a-9a3e-fa8c-06f1cedab334', '저압인 경우에는 해당 전기작업자가 절연용 보호구를', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9913293b-1e38-14eb-ef9a-7c1c0f2e1fea', '3c785b94-946a-9a3e-fa8c-06f1cedab334', '유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e80e64e3-6864-9641-cd38-4169252db699', '3c785b94-946a-9a3e-fa8c-06f1cedab334', '고압 및 특별고압의 전로에서 전기작업을 하는 근로자', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('3c785b94-946a-9a3e-fa8c-06f1cedab334', '9913293b-1e38-14eb-ef9a-7c1c0f2e1fea', '③ 유자격자가 아닌 근로자가 근로자의 몸 또는 긴 도전성', '정답 ③. 에게 활선작업용 기구 및 장치를 사용하여야 한다. HBI 충전전로에서의 전기작업 유자격자가 아닌 근로자가 충전전로 인근의 높은 곳에서 작업할 때에 근로 자의 몸 또는 긴 도전성 물체가 방호되지 않은 충전전로에서 대지전압이 50[kV] 이하인 경우에는 300[cm] 이내로. 대지전압이 50[kV｝를 넘는 경 우에는 10[kV]당 10[cm]씩 더한 거리 이내로 각각 접근할 수 없도록 하 여야 한다. E gl 아1APTER 02 감전재해 및 방지대책', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '11111111-1111-1111-1111-111111111104', 'mcq', '다음 그림은 심장맥동주기를 나타낸 것이다. ■「파는 어떤 경 우인가?', 2, 536)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0efbdfe2-e9f5-51d7-4292-8c0ab7b4f7b5', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 수축에 따른 파형', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('89a2b779-5bc5-f6b8-f056-1c7405e7f072', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 수축에 따른 파형', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4c076624-8a20-7050-c81b-e8e9c0bc1231', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심실의 휴식 시 발생하는 파형', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8d413fb9-4237-290d-03b3-5b91a9fc4301', 'e01ba732-1658-348f-ba82-5ae10efe164a', '심방의 휴식 시 발생하는 파형', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e01ba732-1658-348f-ba82-5ae10efe164a', '4c076624-8a20-7050-c81b-e8e9c0bc1231', '③ 심실의 휴식 시 발생하는 파형', '정답 ③. 심실의 휴식 시 발생하는 파형', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '11111111-1111-1111-1111-111111111104', 'mcq', '교류아크용접기의 자동전격 장치는 전격의 위험을 방지하기 위하여 아크 발생이 중단된 후 약 1초 이내에 출력 측 무부 하 전압을 자동적으로 몇 [v] 이하로 저하시켜야 하는가?', 2, 537)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c34e456-479c-48e1-f9a2-ebb008f550d8', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '85', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a2a3aed7-c784-c97e-a294-956d5446b0f2', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '70', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('264b7e1d-a733-9782-02af-222dbf26fea9', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '50', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '84329458-9f5d-5010-f5a6-029c7e3c6c20', '25', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('84329458-9f5d-5010-f5a6-029c7e3c6c20', '7c09ceb2-ef9d-99e0-33f7-9a94eafb9d78', '④ 25', '정답 ④. 자동전격방지장치 용접봉의 조작에 따라 용접을 할 때에만 용접기의 주회로를 폐로(ON)시키 고, 용접을 행하지 않을 때에는 용접기 주회로를 개로(OFF)시켜 용접기 출력 측의 무부하 전압을 25[V] 이하로 저하시켜 작업자가 용접봉과 모재 사이에 접촉함으로써 발생하는 감전의 위험을 방지하는 장치이다. E@gl', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', '11111111-1111-1111-1111-111111111104', 'mcq', '활선작업 및 활선근접 작업 시 반드시 작업지휘자를 정하여 야 한다. 작업지휘자의 임무 중 가장 중요한 것은?', 2, 538)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('062626d6-d406-cc2e-46b2-d0b2093b57ed', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '설계의 계획에 의한 시공의 관리, 감독', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '활선에 접근 시 즉시 경고', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4e3bfb39-fbdf-fa79-81a0-18b523f8147f', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '필요한 전기 기자재의 보급', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b4cac4ce-974a-d1d2-3a37-a9378da4cecf', '245d85a2-d236-d792-5c33-e14c1faa1c4c', '작업의 신속한 처리', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('245d85a2-d236-d792-5c33-e14c1faa1c4c', 'bc0af43b-21f0-e3e8-1a0f-0b3cf33cbc25', '② 활선에 접근 시 즉시 경고', '정답 ②. 작업지휘자는 기계설비. 취급하는 재료. 용구. 작업방법 등에 대 한 불안전한 상태 및 행동의 유무를 직접 점검 • 감시 및 통제하는 임무를 가진다. tWm', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '11111111-1111-1111-1111-111111111104', 'mcq', '피뢰침의 제한전압이 800[kV], 충격 절연강도가 1,OOO[kV] 라 할 때, 보호여유도는 몇 [%]인가?', 2, 539)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1471c895-0fc1-0634-6084-00bd76b40725', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '25', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3a57ba95-5eaa-5b74-eb2a-ccb3101bbd90', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '33', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d7e1bfb-ea87-6d28-7d27-0d575e3af4cf', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '47', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2611947f-b59e-57e3-26da-b634842cadf2', 'eee79b37-6d81-1959-a1c0-bfe6c71b626a', '63', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('eee79b37-6d81-1959-a1c0-bfe6c71b626a', '1471c895-0fc1-0634-6084-00bd76b40725', '① 25', '정답 ①. 25', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', '11111111-1111-1111-1111-111111111104', 'mcq', '우리나라의 안전전압으로 볼 수 있는 것은 약 몇 [v] 이하 인가?', 2, 540)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f9055b9a-2705-57e0-5aa6-21a634ba2606', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '30[V]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5902163-8102-16b1-2e63-ff9e69525fb1', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '50[V]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9a4624fb-c0a2-d5c8-6963-81bd2cb0b467', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '60[V]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d041b3dd-7a6e-e9a3-e96a-52d16f4854b9', 'f6378f7d-3ccc-2c29-f9e7-f637db599f63', '70[V]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('f6378f7d-3ccc-2c29-f9e7-f637db599f63', 'f9055b9a-2705-57e0-5aa6-21a634ba2606', '① 30[V]', '정답 ①. 안전전압 회로의 정격전압이 일정 수준 이하의 낮은 전압으로 절연파괴 등의 사고 시에도 인체에 위험을 주지 않는 전압을 말하며,「산업안전보건법령」에서 30[V]로 규정하고 있다. E €l', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', '11111111-1111-1111-1111-111111111104', 'mcq', '인체의 최소감지전류에 대한 설명으로 알맞은 것은?', 2, 541)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bb88edca-2e79-bd8a-65f3-9cc882a8f697', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '인체가 고통을 느끼는 전류이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('39564a15-59a0-75c0-1639-a598227be9f4', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 한 값이며, 성인 남자의 경우 약 l[mA]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bfc46282-01bb-79a1-e821-6dfa5bb022dc', 'b48d8e14-a394-a336-6f0c-84a339bc9c3a', '직류를 기준으로 여자의 경우 성인 남자의 7이%]인', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b48d8e14-a394-a336-6f0c-84a339bc9c3a', 'f41e18f2-33af-f78f-fcdd-7f3e2ff6013e', '② 성인 남자의 경우 상용주파수 60[Hz] 교류에서 약', '정답 ②. 7[mA]에서 느낄 수 있는 전류의 크기를 말한다. KS 최소감지전류 • 고통을 느끼지 않으면서 짜릿하게 전기가 흐르는 것을 감지할 수 있는 최소전류이다. • 상용주파수 60[Hz]에서 성인남자의 경우 l[mA]（교류）이다. E 51', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('7f46fd04-349f-42c4-9dbf-02cfa34572a2', '11111111-1111-1111-1111-111111111104', 'mcq', '정격사용률 30[%], 정격 2차 전류 300[A]인 교류아크 용접 기를 200[A]로 사용하는 경우의 허용사용률은?', 2, 542)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f5007242-70f6-70ef-4f13-f9aa6178d76a', '7f46fd04-349f-42c4-9dbf-02cfa34572a2', '67.5[%]', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a9a8946b-1dbd-dedc-348b-1fcd7b744a03', '7f46fd04-349f-42c4-9dbf-02cfa34572a2', '91. 6[%]', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('7eb44469-3f1b-12d2-2547-8c1785637af8', '7f46fd04-349f-42c4-9dbf-02cfa34572a2', '110.3[%]', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c8dcb6e-4649-8a9b-36d4-61172deb5373', '7f46fd04-349f-42c4-9dbf-02cfa34572a2', '130.5[%]', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('7f46fd04-349f-42c4-9dbf-02cfa34572a2', 'f5007242-70f6-70ef-4f13-f9aa6178d76a', '① 67.5[%]', '정답 ①. 67.5[%]', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '11111111-1111-1111-1111-111111111104', 'mcq', '인입개폐기를 개방하지 않고 전등용 변압기 1차 측 cos만 개방 후 전등용 변압기 접속용 볼트 작업 중 동력용 cos에 접촉, 사망한 사고에 대한 원인으로 가장 거리가 먼 것은?', 2, 543)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0be931c4-939c-c42e-9ef3-d1e1d91bc5c7', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '안전장구 미사용', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('846102ac-685e-3b56-5777-a18c24f9e594', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '동력용 변압기 cos 미개방', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('837ffaad-0dd2-c26d-a032-5e0e387a5664', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '전등용 변압기 2차 측 COS 미 개방', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('31be3915-6372-8ed7-f607-4a4cdda6d1f8', '6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '인입구 개폐기 미개방한 상태에서 작업', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('6a1ec42e-b5d4-ace1-5d50-b0b6d167e65a', '837ffaad-0dd2-c26d-a032-5e0e387a5664', '③ 전등용 변압기 2차 측 COS 미 개방', '정답 ③. 전등용 변압기 1차 측 COS가 개방된 상태이므로 2차 측 개방은 감전사고와는 무관하다. EWWI', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '11111111-1111-1111-1111-111111111104', 'mcq', '전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----cT''o--------1 |--------（스、-----부히 ⑭ @ @', 2, 544)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('aab78a85-89f9-061c-d79d-0710f1ab948c', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: ®-+@ — ©, 투입:®—*g）— @', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ddc2c23c-8f5c-da7d-0f67-3133b784f40e', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: Q）—- @ —■ ®, 투입: Q） —> @ —* ®', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1188d5c1-798c-033b-c4d8-e62a89c6ee60', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: （타）一© — ®, 투입:© — ® — ©', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('97929bf2-a4c8-5578-e6ac-73a03daf7d8d', 'd22713e4-0cd1-644b-3afe-0550f1636ad3', '차단: © — @으®, 투입: ©--（가）一®', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('d22713e4-0cd1-644b-3afe-0550f1636ad3', '97929bf2-a4c8-5578-e6ac-73a03daf7d8d', '④ 차단: © — @으®, 투입: ©--（가）一®', '정답 ④. 차단: © — @으®, 투입: ©--（가）一®', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('722e1bc9-7c50-ca5d-475a-6194863060d1', '11111111-1111-1111-1111-111111111104', 'mcq', '폭발의 위험성을 고려하기 위해 정전에너지 값을 구하고자 한다. 다음 중 정전에너지를 구하는 식은?（단, 5는 정전에 너지, C는 정전용량, U는 전압을 의미한다.）', 2, 545)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('235ca6c7-59d8-2f11-0c62-c3b0460f8707', '722e1bc9-7c50-ca5d-475a-6194863060d1', '四=느#2', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f92c4349-d8b4-e83b-5f87-09cde3eaffdf', '722e1bc9-7c50-ca5d-475a-6194863060d1', '日=；"2', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('293518fb-dc48-2fab-72b8-b7f6f0d59f4b', '722e1bc9-7c50-ca5d-475a-6194863060d1', '☆VC''》', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('4a45a52b-6e43-9cfb-6fbb-3112d16b8b2e', '722e1bc9-7c50-ca5d-475a-6194863060d1', 'sa', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('722e1bc9-7c50-ca5d-475a-6194863060d1', '235ca6c7-59d8-2f11-0c62-c3b0460f8707', '① 四=느#2', '정답 ①. 정전에너지 E -^CV2 여기서. C： 도체의 정전용량 V： 대전전위 wmn', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '11111111-1111-1111-1111-111111111104', 'mcq', '인화성 가스가 발생할 우려가 있는 지하작업장에서 작업을 할 경우 폭발이나 화재를 방지하기 위한 조치사항 중 가스 의 농도를 측정하는 기준으로 적절하지 않은 것은?', 2, 546)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a7bc2867-3835-9232-87ff-52d7360fa966', '393530b5-e003-0eba-e6fa-d6038b424b21', '매일 작업을 시작하기 전에 측정한다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a70d42fd-2da1-9000-1aef-0255d3eeb09f', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스의 누출이 의심되는 경우 측정한다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('08cbd857-2d25-3907-ee35-c20cefac2722', '393530b5-e003-0eba-e6fa-d6038b424b21', '장시간 작업할 때에는 매 8시간마다 측정한다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('723547b0-1c27-d459-23a2-65020787b1c4', '393530b5-e003-0eba-e6fa-d6038b424b21', '가스가 발생하거나 정체할 위험이 있는 장소에 대하여', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('393530b5-e003-0eba-e6fa-d6038b424b21', '08cbd857-2d25-3907-ee35-c20cefac2722', '③ 장시간 작업할 때에는 매 8시간마다 측정한다.', '정답 ③. 장시간 작업할 때에는 매 8시간마다 측정한다.', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '11111111-1111-1111-1111-111111111104', 'mcq', '하인리히(Heinrich)의 재해구성비율에 따른 58건의 경상이 발생한 경우 무상해사고는 몇 건이 발생하겠는가?', 2, 547)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f8c6e621-d7e3-e3cf-7eae-02eac69ebced', '31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '58건', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24a8b313-42e2-f8d2-a2c0-c20442e69498', '31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '116건', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('1d7aedc1-54cb-89d9-7f54-07be2f2f7a68', '31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '600건', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c41a708c-a0e5-36bd-9a8a-54dc6759483b', '31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '900건', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('31362f30-5b1b-9b1b-007a-2f9c3cc1d717', '1d7aedc1-54cb-89d9-7f54-07be2f2f7a68', '③ 600건', '정답 ③. 600건', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '11111111-1111-1111-1111-111111111104', 'mcq', '소화설비와 주된 소화적용방법의 연결이 옳은 것은?', 2, 548)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a185ba76-042c-29fb-d348-635f82f2e9c0', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '포소화설비 - 질식효과', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c4463185-0bc9-b7b8-39a7-356c239781ef', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '스프링클러설비 - 억제효과', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('9546555a-e54e-8ba3-253c-1f5db37b69f6', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '이산화탄소소화설비 - 제거소화', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('dbca6990-2d2c-342a-afb0-d4457d9dba06', 'b7d7472d-ad2a-bce5-56df-23bd98b4e61c', '할로겐화합물소화설비 - 냉각소화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('b7d7472d-ad2a-bce5-56df-23bd98b4e61c', 'a185ba76-042c-29fb-d348-635f82f2e9c0', '① 포소화설비 - 질식효과', '정답 ①. 질식소화를 이용한 소화기 종류 포소화기, 분말소화기, 이산화탄소소화기. 마른모래, 팽창질석, 팽창진주암 오閉 H 설 스프링클러소화설비: 냉각소화 이산화탄소소화설비 : 질식소화 할로겐화합물소화설비 : 억제소화 E EI', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '11111111-1111-1111-1111-111111111104', 'mcq', '후압이 존재하고 증기압 변화량을 제어할 목적의 경우 어떠 한 안전방출장치를 사용해야 하는가?', 2, 549)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('c5d7e41a-d6d3-b5a5-5c5c-e88863a220cc', '8f32052f-6024-18cf-a151-776d0f1f044f', '스프링식 안전방출장치', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0c165eee-5d8c-ac30-64f1-63540a95ac6b', '8f32052f-6024-18cf-a151-776d0f1f044f', '파열판식 안전방출장치', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('46e54b1d-4dec-4fe3-4a87-a2699f4589b3', '8f32052f-6024-18cf-a151-776d0f1f044f', '릴리프식 안전방출장치', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('2963b56b-0939-8680-7b05-0757a19831b9', '8f32052f-6024-18cf-a151-776d0f1f044f', '벨로스(Bellows)식 안전방출장치', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8f32052f-6024-18cf-a151-776d0f1f044f', '2963b56b-0939-8680-7b05-0757a19831b9', '④ 벨로스(Bellows)식 안전방출장치', '정답 ④. 벨로스(Bellows)식 안전방출장치', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '11111111-1111-1111-1111-111111111104', 'mcq', '타워크레인을 와이어로프로 지지하는 경우에 준수해야 할 사항으로 옳지 않은 것은?', 2, 550)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('38333dc8-b20c-a669-f421-88eee08932ee', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프를 고정하기 위한 전용 지지프레임을 사용', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('66b4850c-ac95-d604-36b7-b53c264ee5b1', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프 설치각도는 수평면에서 60° 이상으로 하', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('be5435f7-45e4-22d0-4289-61902b6f0398', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프와 그 고정부위는 충분한 강도와 장력을 갖', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a394d3a-aff8-753c-3a11-ee3c68a34f2b', 'e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '와이어로프가 가공전선에 근접하지 않도록 할 것', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('e5970a57-bf52-cdf5-f9ce-f7ae679778b9', '66b4850c-ac95-d604-36b7-b53c264ee5b1', '② 와이어로프 설치각도는 수평면에서 60° 이상으로 하', '정답 ②. 와이어로프 설치각도는 수평면에서 60° 이상으로 하', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('196fc5e2-befd-b2a9-3eab-b90dafb8300e', '11111111-1111-1111-1111-111111111104', 'mcq', '다음은 가설통로를 설치하는 경우의 준수사항이다. ( )에 알맞은 수치를 고르면? 건설공사에 사용하는 높이 8[m] 이상인 비계다리에는 ( )[m] 이내마다계단참을설치할 것', 2, 551)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('b809a29c-a3f3-4800-2ef4-c52517d6d6ba', '196fc5e2-befd-b2a9-3eab-b90dafb8300e', '7', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6139e1cc-b9a0-dc3f-680e-7e70809d3032', '196fc5e2-befd-b2a9-3eab-b90dafb8300e', '6', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25b98708-05c8-9dcf-a4a5-885195b872e7', '196fc5e2-befd-b2a9-3eab-b90dafb8300e', '5', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e059ea45-d16a-31fd-f5fe-a28f21b8ba8b', '196fc5e2-befd-b2a9-3eab-b90dafb8300e', '4', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('196fc5e2-befd-b2a9-3eab-b90dafb8300e', 'b809a29c-a3f3-4800-2ef4-c52517d6d6ba', '① 7', '정답 ①. 다리에는 7m] 이내마다 계단참을 설치하여야 한다', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '11111111-1111-1111-1111-111111111104', 'mcq', '부두 등의 하역작업장에서 부두 또는 안벽의 선을 따라 통 로를 설치하는 경우, 최소 폭 기준은?', 2, 552)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('56db5eb0-0083-7827-d3e3-570d72cf6c53', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '90[cm] 이상', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('feac5b12-b38c-65eb-2485-3a18d0011ac5', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '75[cm] 이상', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('19753cda-e31b-cb18-e0dc-2d6038238423', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '60[cm] 이상', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('25a9a383-604e-1fc2-7717-0e9766e6b135', 'fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '45[cm] 이상', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('fe60a5f4-2a2a-57fb-fe5d-743c5d8e0564', '56db5eb0-0083-7827-d3e3-570d72cf6c53', '① 90[cm] 이상', '정답 ①. 부두 • 안벽 등 하역작업을 하는 장소에 부두 또는 안벽의 선을 따라 통로를 설치하는 경우에는 폭을 90[cm] 이상으로 하여야 한다. EWil', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '11111111-1111-1111-1111-111111111104', 'mcq', '항타기 또는 항발기의 권상장치 드럼축과 권상장치로부터 첫 번째 도르래의 축 간의 거리는 권상장치 드럼폭의 몇 배 이상으로 하여야 하는가?', 2, 553)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ce5b256f-bc71-1c05-140a-35b78b8c97cf', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '5배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6be539d7-c853-50bb-219f-50fcf389fa86', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '8배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a0f123b1-0296-268e-1ef7-5b61bfd350c9', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '10배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('84b1b16b-135f-3185-d194-2d601281d60e', 'db5e7cb8-febb-45f1-0979-509438ade0c0', '15배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('db5e7cb8-febb-45f1-0979-509438ade0c0', '84b1b16b-135f-3185-d194-2d601281d60e', '④ 15배', '정답 ④. 항타기 또는 항발기의 권상장치의 드럼축과 권상장치로부터 첫 번째 도르래의 축 간의 거리를 권상장치 드럼폭의 15배 이상으로 하여야 한다. k◎順', array['산업안전기사','2024-3'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '11111111-1111-1111-1111-111111111104', 'mcq', '「산업안전보건법령」에 따른 특정 행위의 지시 및 사실의 고 지에 사용되는 안전보건표지의 색도기준으로 옳은 것은?', 2, 554)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a8b79e9c-86ac-d0ee-5976-e604fb6b3079', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '2.5G 4/10', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('139d7ab8-75cf-ae67-7293-bc4dcc3c4c79', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '2.5PB4/10', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d6be4a89-ffe8-4a6b-0739-cb824fe7fada', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '5Y 8.5/12', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('f1176253-0663-b043-f109-e3996e2cca80', '5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '7.5R 4/14', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5ecbe55e-c2e1-9c52-0a5e-109805ebaf00', '139d7ab8-75cf-ae67-7293-bc4dcc3c4c79', '② 2.5PB4/10', '정답 ②. 안전보건표지의 색도기준 및 용도 색채 색도기준 용도 사용예 파란색 a5pB 4/10 지시 특정 행위의 지시 및 사실의 고지 비상구 및 피난소, 사람 또는 차량 녹색 Z5G4/10 안내 의 통행표지 흰색 N9.5 파란색 또는 녹색에 대한 보조색 唱1', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4e3a3d94-6364-3444-1a30-ddb15b481dc8', '11111111-1111-1111-1111-111111111104', 'mcq', '유기화합물용 방독마스크 시험가스의 종류가 아닌 것은?', 2, 555)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('14284ba5-d12c-cf3e-f94e-33f779b7a95d', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '염소가스 또는 증기', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('a1bc438a-a198-5f12-7882-a7617a1c5708', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '시클로헥산', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('24f3d31b-eb55-0dd4-2e20-f09f42fc8a15', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '디메틸에테르', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6f1c1783-5340-9adb-99f8-2880b509321e', '4e3a3d94-6364-3444-1a30-ddb15b481dc8', '이소부탄', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4e3a3d94-6364-3444-1a30-ddb15b481dc8', '14284ba5-d12c-cf3e-f94e-33f779b7a95d', '① 염소가스 또는 증기', '정답 ①. 방독마스크의 종류 및 시험가스 정화통 흡수제 종류 시험가스 (정화제) 시클로헥산(앙|12) 유기화합물용 디메틸에테르(CH30cH3) 활성탄 이소부탄(C4Hlo) 할로겐용 염소가스 또는 증기(Cl2) 소다라임. 활성탄 EH@I', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('8763138a-89b8-e83e-65bf-6ffc610e9c63', '11111111-1111-1111-1111-111111111104', 'mcq', 'Line-Staff형 안전보건관리조직에 관한 특징이 아닌 것은?', 2, 556)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('86828604-bd34-b233-e42e-603c6a6edbc5', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ad921ac8-b998-347e-6c1f-8b9a2cc5f293', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '스태프가 월권행위할 경우가 있으며 라인스태프에 의', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('ba3eb5bb-dd41-61ac-6868-36a8beb783c2', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '생산부문은 안전에 대한 책임과 권한이 없다.', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6e6a4e4d-f938-7030-0491-2510ecdb7939', '8763138a-89b8-e83e-65bf-6ffc610e9c63', '명령계통과 조언의 권고적 참여가 혼동되기 쉽다.', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('8763138a-89b8-e83e-65bf-6ffc610e9c63', 'ba3eb5bb-dd41-61ac-6868-36a8beb783c2', '③ 생산부문은 안전에 대한 책임과 권한이 없다.', '정답 ③. 생산부문에 안전에 대한 책임과 권한이 없는 것은 스태프 （STAFF）형 조직（참모형 조직）의 특징이다. 1', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('af702af6-e205-9e10-65b6-db87cef86dd4', '11111111-1111-1111-1111-111111111104', 'mcq', '직무적성검사의 특징과 가장 거리가 먼 것은?', 2, 557)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8026384f-de36-ec9d-4e2b-3596de1861b4', 'af702af6-e205-9e10-65b6-db87cef86dd4', '재현성', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('3fd5cf4d-a15f-f6e8-aef5-80138019bfcd', 'af702af6-e205-9e10-65b6-db87cef86dd4', '객관성', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('00951d12-464a-c36b-4b8d-1e8db2babc15', 'af702af6-e205-9e10-65b6-db87cef86dd4', '타당성', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('73d88475-5e34-e14a-d8cb-6be949efb21b', 'af702af6-e205-9e10-65b6-db87cef86dd4', '표준화', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('af702af6-e205-9e10-65b6-db87cef86dd4', '8026384f-de36-ec9d-4e2b-3596de1861b4', '① 재현성', '정답 ①. 재현성', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('5f50b6aa-5899-ee15-b213-69e5f13619f1', '11111111-1111-1111-1111-111111111104', 'mcq', '매슬로우（Maslow）의 욕구위계이론 중 제2단계 욕구에 해 당하는 것은?', 2, 558)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('6a317661-2dd6-6b04-c778-1cc66b72263e', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '자아실현의 욕구', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bce903af-efad-021e-9496-d8dfdfc5b1b7', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '안전에 대한 욕구', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('8c52a4dc-8eca-95b0-fc84-dee4c5b7fcad', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '사회적욕구', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0cbf5faf-9746-1b2b-1c00-9a639527faf3', '5f50b6aa-5899-ee15-b213-69e5f13619f1', '생리적욕구', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('5f50b6aa-5899-ee15-b213-69e5f13619f1', 'bce903af-efad-021e-9496-d8dfdfc5b1b7', '② 안전에 대한 욕구', '정답 ②. 안전에 대한 욕구', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('4a56d7e9-c594-a426-a9f5-3267021847c5', '11111111-1111-1111-1111-111111111104', 'mcq', '결함수분석법(FTA)에서의 미니멀 컷섯।과 미니멀 패스셋에 관한 설명으로 맞는 것은?', 2, 559)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('629cd9c8-7dd9-3c9b-7b42-1fc7d9b24992', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('36f4024d-58a9-5868-980c-28e0bfcfd4a2', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('0a5da199-c1d1-5f6f-f302-6d9bac771f20', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 패스셋은 시스템의 고장을 발생시키는 최소의', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('cf7ac815-825a-2beb-2762-65c19f77af73', '4a56d7e9-c594-a426-a9f5-3267021847c5', '미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('4a56d7e9-c594-a426-a9f5-3267021847c5', 'cf7ac815-825a-2beb-2762-65c19f77af73', '④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한', '정답 ④. 최소한의 컷셋이다. KBI 미니멀 컷셋은 시스템의 위험성을 표시하는 것이다. 미니멀 패스셋은 시스템의 신뢰성을 표시하는 것이다. 미니멀 패스셋은 정상사상(고장)이 일어나지 않는 최소한의 패스셋이다. 바劍II', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;

insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('c72c4b96-c0e3-ac07-bb54-591a92c2a544', '11111111-1111-1111-1111-111111111104', 'mcq', 'NIOSH 지침에서 최대허용한계(MPL)는 활동한계(AL)의 몇 배인가?', 2, 560)
on conflict (id) do update set body = excluded.body, number = excluded.number;
insert into public.question_options (id, question_id, body, sort_order) values
  ('e3c4220f-da0d-a1bd-9f59-fa2db420edfe', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '1배', 0)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('57aba7e8-75aa-65fe-20af-a57ef8f76ba3', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '3배', 1)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('d8e5f6f8-8b22-9c99-b702-823dfecdcee8', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '5배', 2)
on conflict (id) do update set body = excluded.body;
insert into public.question_options (id, question_id, body, sort_order) values
  ('eef7b9fa-786c-fbec-e025-44e62a3c1367', 'c72c4b96-c0e3-ac07-bb54-591a92c2a544', '9배', 3)
on conflict (id) do update set body = excluded.body;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('c72c4b96-c0e3-ac07-bb54-591a92c2a544', '57aba7e8-75aa-65fe-20af-a57ef8f76ba3', '② 3배', '정답 ②. 3배', array['산업안전기사','2025-1'])
on conflict (question_id) do update set correct_option_id = excluded.correct_option_id, answer_text = excluded.answer_text, explanation = excluded.explanation, concepts = excluded.concepts;
