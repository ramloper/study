-- 13
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('906f230c-201f-12a8-ddc5-eea99e3735a4','11111111-1111-1111-1111-111111111104','mcq','다음 중 브레인스토밍(Brain-storming)의 4원칙을 올바르 게 나열한 것은?',2,481)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c07e6026-f4c5-a301-035c-fd0c802966a3','906f230c-201f-12a8-ddc5-eea99e3735a4','자유분방, 비판금지 , 대량발언, 수정발언',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fa4dd35f-dc63-dc28-e39d-0545238fa720','906f230c-201f-12a8-ddc5-eea99e3735a4','비판자유, 소량발언, 자유분방, 수정발언',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0b0d9c2d-4f12-3c72-106a-05c22dadb6d0','906f230c-201f-12a8-ddc5-eea99e3735a4','대량발언, 비판자유, 자유분방. 수정발언',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f28c7281-3fd4-131a-f9bc-a113a8ff3e4a','906f230c-201f-12a8-ddc5-eea99e3735a4','소량발언, 자유분방, 비판금지, 수정발언',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('906f230c-201f-12a8-ddc5-eea99e3735a4','c07e6026-f4c5-a301-035c-fd0c802966a3','① 자유분방, 비판금지 , 대량발언, 수정발언','정답 ①. 자유분방, 비판금지 , 대량발언, 수정발언',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','11111111-1111-1111-1111-111111111104','mcq','결함수분석의 기대효과와 가장 관계가 먼 것은?',2,482)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f45e0365-78ef-fd70-aa3f-8ebdfb0f59aa','f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','시스템의 결함 진단',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0e438e8d-de16-183c-d057-a14be39bc359','f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','시간에 따른 원인 분석',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9d41f3f6-b02c-cb90-0d44-4f53da95900c','f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','사고원인 규명의 간편화',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('201d3413-9d41-eae8-508d-2e640c1ff753','f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','사고원인 분석의 정량화',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f4e2c0e7-de61-5e9d-c9d2-be628bf97d5c','0e438e8d-de16-183c-d057-a14be39bc359','② 시간에 따른 원인 분석','정답 ②. 의 기대효과 • 사고원인 규명의 간편화 • 사고원인 분석의 일반화 • 사고원인 분석의 정량화 • 노력, 시간의 절감 • 시스템의 결함 진단 • 안전점검 체크리스트 작성',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('1eb28774-2793-58fe-6cea-6b8c66a57f3a','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 유해위험방지계획서의 제출대 상 사업은 해당 사업으로서 전기 계약용량이 얼마 이상인 사업인가?',2,483)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('811cfe43-cd6d-974d-380a-58eb32ccd953','1eb28774-2793-58fe-6cea-6b8c66a57f3a','150[kW]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ff1cfade-3630-9bd2-4f90-f1d51c5a8f96','1eb28774-2793-58fe-6cea-6b8c66a57f3a','200[kW]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c16a0361-d7a9-b99f-6e2c-497bca151e1e','1eb28774-2793-58fe-6cea-6b8c66a57f3a','3OO[kW]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1e5a87b1-b30c-0760-53f7-ee16da3412ca','1eb28774-2793-58fe-6cea-6b8c66a57f3a','500[kW]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('1eb28774-2793-58fe-6cea-6b8c66a57f3a','c16a0361-d7a9-b99f-6e2c-497bca151e1e','③ 3OO[kW]','정답 ③. 전기 계약용량이 300[kW] 이상인 사업의 사업주는 해당 제품의 생산 공정과 직접적으로 관련된 건설물 • 기계 • 기구 및 설비 등 전부를 설 치 • 이전하거나 그 주요 구조부분을 변경할 때는 유해위험방지계획서를 제출하여야 한다',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('fb2680cd-d035-95e3-fc28-723947f3b4e2','11111111-1111-1111-1111-111111111104','mcq','공정안전관리(Process Safety Management； PSM)의 적 용대상 사업장이 아닌 것은?',2,484)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('90427018-5b66-0d54-d26f-eeb7977e38f6','fb2680cd-d035-95e3-fc28-723947f3b4e2','복합비료 제조업',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1e9f2aab-4ae3-0f02-f5c2-bab5f15c7505','fb2680cd-d035-95e3-fc28-723947f3b4e2','농약 원제 제조업',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d','fb2680cd-d035-95e3-fc28-723947f3b4e2','차량 등의 운송설비업',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('19fbe98e-7913-a424-1192-7f5ab168b0f1','fb2680cd-d035-95e3-fc28-723947f3b4e2','합성수지 및 기타 플라스틱물질 제조업',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('fb2680cd-d035-95e3-fc28-723947f3b4e2','ac2bbd69-0b0e-09f7-3b7c-773544fe7d0d','③ 차량 등의 운송설비업','정답 ③. 차량 등의 운송설비업은 적용대상이 아니며, 차량 등의 운송설비 는 유해하거나 위험한 설비로 보지 않는다. 공정안전보고서의 제출 대상 • 원유 정제처리업 • 기타 석유정제물 재처리업 • 석유화학계 기초화학물질 제조업 또는 합성수지 및 기타 플라스틱물질 제조업 • 질소 화합물. 질소질 화학비료 제조업 • 복합비료 제조업 • 화학 살균 . 살충제 및 농업용 약제 제조업(농약 원제 제조만 해당) • 화약 및 불꽃제품 제조업 W11S1 SUBJECT 05 화학설비 안전관리',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8','11111111-1111-1111-1111-111111111104','mcq','다음 중 와이어로프의 꼬임에 관한 설명으로 틀린 것은?',2,485)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f7eb00c2-f4f2-b223-c78c-f28447298548','d8eeb243-3002-d235-f8d6-0ed917fa6aa8','보통 꼬임에는 s 꼬임이나 z 꼬임이 있다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7be599db-df21-4ef6-d539-e2d4cfeba9c6','d8eeb243-3002-d235-f8d6-0ed917fa6aa8','보통 꼬임은 스트랜드의 꼬임방향과 로프의 꼬임방향',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0f0b3da9-3423-a1d6-a69f-d8d0145fef28','d8eeb243-3002-d235-f8d6-0ed917fa6aa8','랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('af82c7f2-38e4-13af-7c26-22db7409de75','d8eeb243-3002-d235-f8d6-0ed917fa6aa8','랭 꼬임은 보통 꼬임에 비하여 마모에 대한 저항성이',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d8eeb243-3002-d235-f8d6-0ed917fa6aa8','0f0b3da9-3423-a1d6-a69f-d8d0145fef28','③ 랭 꼬임은 로프의 끝이 자유로이 회전하는 경우나 킹크','정답 ③. 우수하다. 3 킹크가 생기기 쉬운 곳에 사용되는 꼬임은 보통 꼬임(Regular Lay) 이다. 1',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5dcd700f-4d3c-2fed-ceae-9768939d3d87','11111111-1111-1111-1111-111111111104','mcq','가스용접에 이용되는 아세틸렌가스 용기의 색상으로 옳은 것은?',2,486)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('054849a3-9bce-9a91-6bdb-d9cd83621418','5dcd700f-4d3c-2fed-ceae-9768939d3d87','녹색',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cd7016b4-9abd-c3eb-5373-6a2777729259','5dcd700f-4d3c-2fed-ceae-9768939d3d87','회색',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3cca0448-b9db-dc15-e661-1cf84dadd244','5dcd700f-4d3c-2fed-ceae-9768939d3d87','황색',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d14b3fdd-5f3e-25b8-7734-ae755f0d345b','5dcd700f-4d3c-2fed-ceae-9768939d3d87','청색',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5dcd700f-4d3c-2fed-ceae-9768939d3d87','3cca0448-b9db-dc15-e661-1cf84dadd244','③ 황색','정답 ③. 고압가스용기의 도색 • 액화석유가스: 밝은 회색 • 수소: 주황색 • 아세틸렌: 황색 • 액화암모니아: 백색 • 액화염소: 갈색 •산소: 녹색 • 기타가스: 회색 SUBJECT 05 화학설비 안전관리',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('75c17314-bfad-bb95-3a0f-459af988d3c4','11111111-1111-1111-1111-111111111104','mcq','구내운반차의 제동장치 준수사항에 대한 설명으로 틀린 것 은?',2,487)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c3dc8c32-91ce-bbff-5af2-7769a62df29e','75c17314-bfad-bb95-3a0f-459af988d3c4','조명이 없는 장소에 작업 시 전조등과 후미등을 갖출 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e811575-12be-e42b-52c1-069893da2c3d','75c17314-bfad-bb95-3a0f-459af988d3c4','운전석이 차 실내에 있는 것은 좌우에 한 개씩 방향지',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4a68fa5a-ecbe-1574-a92e-5de804c627af','75c17314-bfad-bb95-3a0f-459af988d3c4','핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a746f64c-8176-73e2-e1b7-bb29b356cb5c','75c17314-bfad-bb95-3a0f-459af988d3c4','주행을 제동하거나 정지상태를 유지하기 위하여 유효',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('75c17314-bfad-bb95-3a0f-459af988d3c4','4a68fa5a-ecbe-1574-a92e-5de804c627af','③ 핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미','정답 ③. 핸들의 중심에서 차체 바깥 측까지의 거리가 70센티미',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('2dcb8f8b-e656-9957-674b-dfde22917c02','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건기준에 관한 규칙川I서 일반 작업장에 전기 위험 방지조치를 취하지 않아도 되는 전압은 몇 [v] 이하인 가?',2,488)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('188c4ffa-5bf3-3ab7-689c-604c82f5eb0a','2dcb8f8b-e656-9957-674b-dfde22917c02','24',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2168b839-ed31-a1c1-9250-4715fd3bf6d0','2dcb8f8b-e656-9957-674b-dfde22917c02','30',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('788a6fe5-8091-0a9e-0a66-d97182ccca3c','2dcb8f8b-e656-9957-674b-dfde22917c02','50',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('86507bbd-47e7-832e-0afa-951b0eae6efe','2dcb8f8b-e656-9957-674b-dfde22917c02','100',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('2dcb8f8b-e656-9957-674b-dfde22917c02','2168b839-ed31-a1c1-9250-4715fd3bf6d0','② 30','정답 ②. 30',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d5df664d-c606-9db9-a80e-fb5a0c25cf41','11111111-1111-1111-1111-111111111104','mcq','내압방폭구조에서 안전간극（Safe Gap｝을 작게 하는 이유 로 옳은 것은?',2,489)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('42fefda7-ae8f-f8f5-2825-db9b63b221ae','d5df664d-c606-9db9-a80e-fb5a0c25cf41','최소점화에너지를 높게 하기 위해',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7dcbed4f-5a07-45c7-a433-521da5743d96','d5df664d-c606-9db9-a80e-fb5a0c25cf41','폭발화염이 외부로 전파되지 않도록 하기 위해',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b003dcee-c3e5-e923-3b29-116d96909bea','d5df664d-c606-9db9-a80e-fb5a0c25cf41','폭발압력에 견디고 파손되지 않도록 하기 위해',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fe850a4d-2e14-b307-d83d-8b4216d01f1f','d5df664d-c606-9db9-a80e-fb5a0c25cf41','설치류가 전선 등을 훼손하지 않도록 하기 위해',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d5df664d-c606-9db9-a80e-fb5a0c25cf41','7dcbed4f-5a07-45c7-a433-521da5743d96','② 폭발화염이 외부로 전파되지 않도록 하기 위해','정답 ②. 폭발화염이 외부로 유출되지 않도록 하기 위해서 안전간극을 작 게 하여야 한다. 1',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a0de241b-e178-dd65-c73e-28bb59696586','11111111-1111-1111-1111-111111111104','mcq','전류가 흐르는 상태에서 단로기를 끊었을 때 여러 가지 파 괴작용을 일으킨다. 다음 그림에서 유입차단기의 차단순위 와 투입순위가 안전수칙에 가장 적합한 것은? D.S O.C.B D.S 전원-----스、-----1 |-------스、-----부히 ® ® @',2,490)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9d25b034-088c-8db9-b242-d569f5e0b1a4','a0de241b-e178-dd65-c73e-28bb59696586','차단: ® — @ — @, 투입 : ® — @ —» @',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a530a44d-b6ac-08bc-ac92-740cf6ac5166','a0de241b-e178-dd65-c73e-28bb59696586','차단: © — @ — ®, 투입: O — @—•©',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ecd5169-9814-c797-7a0e-148f726901ad','a0de241b-e178-dd65-c73e-28bb59696586','차단: ©—+@—®, 투입:@—®~-0',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5ae1537a-8f3e-662e-5ce6-076039682a01','a0de241b-e178-dd65-c73e-28bb59696586','차단: ® —- ©—®, 투입: ©—®—Q)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a0de241b-e178-dd65-c73e-28bb59696586','5ae1537a-8f3e-662e-5ce6-076039682a01','④ 차단: ® —- ©—®, 투입: ©—®—Q)','정답 ④. 차단: ® —- ©—®, 투입: ©—®—Q)',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('cd8cd90b-4013-a53f-e9c1-350656adbbbd','11111111-1111-1111-1111-111111111104','mcq','폭발위험 장소에서의 본질안전방폭구조에 대한 설명으로 틀 린 것은?',2,491)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf4b76c0-60bb-7758-369f-29111983ba5f','cd8cd90b-4013-a53f-e9c1-350656adbbbd','본질안전방폭구조의 기본적 개념은 점화능력의 본질적',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be9db727-4204-c1d9-aca1-1fa9d4b3211f','cd8cd90b-4013-a53f-e9c1-350656adbbbd','본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eed7f974-ffc8-3a00-e101-dc9e5eb7adfa','cd8cd90b-4013-a53f-e9c1-350656adbbbd','이론적으로는 모든 전기기기에 본질안전방폭구조를 적',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0522b313-85ad-65df-bacd-ca50a787806c','cd8cd90b-4013-a53f-e9c1-350656adbbbd','온도, 압력, 액면유량 등의 검출용 측정기는 대표적인',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('cd8cd90b-4013-a53f-e9c1-350656adbbbd','be9db727-4204-c1d9-aca1-1fa9d4b3211f','② 본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장','정답 ②. 본질안전방폭구조 Ex ib는 fault에 대한 2중 안전보장',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 화학설비와 화학설비의 부속설비를 구분할 때 화학설비에 해당하는 것은?',2,492)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d5b42cda-6fe7-07d5-8797-142b10385f12','b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5a9b7b59-5fac-144d-0127-b4950763f6d6','b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','사이클론 •백필터 • 전기 집진기 등 분진처리설비',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9f724480-346e-be38-0902-d3c841027218','b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','온도 •압력 •유량 등을 지시 • 기록 등을 하는 자동제어',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5536b9df-bd4e-4c14-9563-22b6bc8c1545','b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','안전밸브 • 안전판 • 긴급차단 또는 방출밸브 등 비상조',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b9e69e36-c256-1e09-46b0-cbc53ec4d6c8','d5b42cda-6fe7-07d5-8797-142b10385f12','① 응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류','정답 ①. 응축기 • 냉각기 - 가열기 • 증발기 등 열교환기류',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('74c2c845-0f13-f5f0-4aac-6325d2addd0e','11111111-1111-1111-1111-111111111104','mcq','가연성 가스 혼합물을 구성하는 각 성분의 조성과 연소범위 가 다음 [표]와 같을 때 혼합가스의 연소하한값은 약 몇 [vol%] 인가? 조성 연소하한값 연소상한값 구분 [vol%] [vol%] [vol%] 헥산 1 1.1 7.4 메탄 2.5 5.0 15.0 에틸렌 0.5 2.7 36.0 공기 96 - —',2,493)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('92a50a4e-efc5-3ad6-2d06-4cd9f00f4647','74c2c845-0f13-f5f0-4aac-6325d2addd0e','2.51',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b54f0252-91a2-ed40-5acb-d50802ee73db','74c2c845-0f13-f5f0-4aac-6325d2addd0e','7.51',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d1472650-37e1-cdb7-528c-8775cb3d44ea','74c2c845-0f13-f5f0-4aac-6325d2addd0e','12.07',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c618367c-1073-7fb7-b3d9-94a28b335c0b','74c2c845-0f13-f5f0-4aac-6325d2addd0e','15.01',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('74c2c845-0f13-f5f0-4aac-6325d2addd0e','92a50a4e-efc5-3ad6-2d06-4cd9f00f4647','① 2.51','정답 ①. 2.51',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('51997e93-fd8c-9458-d932-f0b27c0acdad','11111111-1111-1111-1111-111111111104','mcq','공정안전보고서에 포함하여야 할 세부내용 중 공정안전자 료의 세부내용이 아닌 것은?',2,494)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('570cf755-0a03-cc02-7ae1-c255ec42dfce','51997e93-fd8c-9458-d932-f0b27c0acdad','유해•위험설비의 목록 및 사양',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('27407ff5-a970-cb6c-414c-5a1db08fed91','51997e93-fd8c-9458-d932-f0b27c0acdad','폭발위험장소 구분도 및 전기단선도',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0e923104-e1a7-16d4-33b0-c72b541deacf','51997e93-fd8c-9458-d932-f0b27c0acdad','유해 • 위험물질에 대한 물질안전보건자료',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e83e1193-4319-51b6-b545-3daa79f4a9f4','51997e93-fd8c-9458-d932-f0b27c0acdad','설비점검 - 검사 및 보수계획, 유지계획 및 지침서',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('51997e93-fd8c-9458-d932-f0b27c0acdad','e83e1193-4319-51b6-b545-3daa79f4a9f4','④ 설비점검 - 검사 및 보수계획, 유지계획 및 지침서','정답 ④. 는 안전운전계획에 포함하여야 할 세부내용이다. 바',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ce479f27-4677-512a-6b16-c20f68719125','11111111-1111-1111-1111-111111111104','mcq','["C], 1 기압의 공기를 5기압으로 단열압축하면 공기의 온 도는 약 몇 [℃]가 되겠는가?（단, 공기의 비열비는 1.401 다.）',2,495)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ce2884d3-4f23-c64f-4a78-c4f8d3335284','ce479f27-4677-512a-6b16-c20f68719125','32',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a7958b93-11b1-3c99-e439-a470e59b3c89','ce479f27-4677-512a-6b16-c20f68719125','191',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('40cc8928-f314-49cf-e83b-52c4172fb63b','ce479f27-4677-512a-6b16-c20f68719125','305',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('971e9494-5021-bad4-d045-66ac90744208','ce479f27-4677-512a-6b16-c20f68719125','464',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ce479f27-4677-512a-6b16-c20f68719125','a7958b93-11b1-3c99-e439-a470e59b3c89','② 191','정답 ②. 191',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','11111111-1111-1111-1111-111111111104','mcq','부탄（C4Hl0）의 연소에 필요한 최소산소농도（MOC）를 추정 하여 계산하면 약 몇 [vol%]인가?（단, 부탄의 폭발하한계는 공기 중에서 1.6[vol%]이다.）',2,496)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('21c68167-e453-6361-e289-b1d2dddd898a','f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','5.6',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('251939d9-a5d7-3997-2ac3-96bd83c65a6b','f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','7.8',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9100c97f-0c0e-f0de-eae1-6286a0f4bfec','f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','10.4',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ec114bc9-1f8a-5728-3912-cd1f97c20b36','f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','14.1',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f9c64d7d-d75e-a113-8f40-e8b6375bb3e6','9100c97f-0c0e-f0de-eae1-6286a0f4bfec','③ 10.4','정답 ③. 10.4',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c','11111111-1111-1111-1111-111111111104','mcq','강관비계 조립 시의 준수사항으로 옳지 않은 것은?',2,497)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8d3ce6b4-003d-d0ac-c1f7-25230b1677d8','66fd9aaa-68a3-2759-fd8b-a6aad74d543c','비계기둥에는 미끄러지거나 침하하는 것을 방지하기',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fd21b38b-451b-09dd-a7f7-4dd39b452f5f','66fd9aaa-68a3-2759-fd8b-a6aad74d543c','지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7a2d4c9a-a01a-ae4d-c4a7-ebfd8a0e5bc3','66fd9aaa-68a3-2759-fd8b-a6aad74d543c','교차가새로 보강한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('59258a85-dbc8-72ae-d5c6-886513b6f5a3','66fd9aaa-68a3-2759-fd8b-a6aad74d543c','외줄비계 - 쌍줄비계 또는 돌출비계에 대해서는 벽이음',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('66fd9aaa-68a3-2759-fd8b-a6aad74d543c','fd21b38b-451b-09dd-a7f7-4dd39b452f5f','② 지상높이 4층 이하 또는 12[m] 이하인 건축물의 해체','정답 ②. 및 버팀을 설치한다. K찌 는 법령 개정 전 통나무비계의 구조에 대한 설명이다. EHE짜',array['산업안전기사','2019-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','11111111-1111-1111-1111-111111111104','mcq','안전교육방법 중 강의법에 대한 설명으로 옳지 않은 것은? .',2,498)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('47be40cd-081c-5a1d-b127-f8740700b800','e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','단기간의 교육시간 내에 비교적 많은 내용을 전달할 수',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('386e84d6-21fe-b3be-f7bc-f859fac2462f','e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','다수의 수강자를 대상으로 동시에 교육할 수 있다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6bc501b7-db9d-4ae5-c98f-ade672a31acd','e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','다른 교육방법에 비해 수강자의 참여가 제약된다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('25ebed85-62b5-aeeb-7388-56ae2d0e7669','e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','수강자 개개인의 학습진도를 조절할 수 있다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('e1a1dbf6-3e22-77b6-18d7-210a3ae9e424','25ebed85-62b5-aeeb-7388-56ae2d0e7669','④ 수강자 개개인의 학습진도를 조절할 수 있다.','정답 ④. 강의법은 다수의 수강자를 대상으로 동시에 교육을 진행하기 때 문에 개개인의 학습진도를 조절할 수 없다',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','11111111-1111-1111-1111-111111111104','mcq','안전보건교육의 단계에 해당하지 않는 것은?',2,499)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('16813f09-6fd6-ea48-befb-55d21e1acf70','d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','지식교육',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('32548549-a429-5994-8214-f95a78c204b0','d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','기초교육',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f6436e34-9aa4-28c7-14b3-f90a20145ed7','d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','태도교육',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ea93b17-80ca-6029-5cc1-65fdfa81217e','d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','기능교육',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d7b0bb0d-5f2c-fbb1-6fc3-2e6a813eb3e8','32548549-a429-5994-8214-f95a78c204b0','② 기초교육','정답 ②. 기초교육',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('9310f824-9ca5-ce7c-85e8-f84e01d04014','11111111-1111-1111-1111-111111111104','mcq','위험예지훈련의 문제해결 4라운드에 속하지 않는 것은?',2,500)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c410fb89-b7ad-0fbc-00dc-0e1c57ad0d1b','9310f824-9ca5-ce7c-85e8-f84e01d04014','현상파악',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f24573bd-deae-898d-9b5d-a99861081630','9310f824-9ca5-ce7c-85e8-f84e01d04014','본질추구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a80e8b69-98ba-ee58-43bf-b076d7a2c03c','9310f824-9ca5-ce7c-85e8-f84e01d04014','원인결정',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('23e9cb81-0bc2-0a4b-8961-5042ed5b44a4','9310f824-9ca5-ce7c-85e8-f84e01d04014','대책수립',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('9310f824-9ca5-ce7c-85e8-f84e01d04014','a80e8b69-98ba-ee58-43bf-b076d7a2c03c','③ 원인결정','정답 ③. 원인결정',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('efffb9d0-bf9f-9879-9ba6-c294787400f1','11111111-1111-1111-1111-111111111104','mcq','산업재해의 기본원인 중 “작업정보, 작업방법 및 작업환 경” 등이분류되는 항목은?',2,501)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('613779db-2c82-0479-aba7-83a4fc12e8c1','efffb9d0-bf9f-9879-9ba6-c294787400f1','Man',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ced69be3-3962-3f9d-a25e-1529cd40ab09','efffb9d0-bf9f-9879-9ba6-c294787400f1','Machine',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b86aa643-2ea9-591b-b0bd-f7fada1e4afe','efffb9d0-bf9f-9879-9ba6-c294787400f1','Media',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9a4ef640-9c56-f98e-a6c1-480007a62782','efffb9d0-bf9f-9879-9ba6-c294787400f1','Management',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('efffb9d0-bf9f-9879-9ba6-c294787400f1','b86aa643-2ea9-591b-b0bd-f7fada1e4afe','③ Media','정답 ③. Media',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('517330ef-d07e-de11-8559-873d321c86aa','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 관리감독자 대상 정기안전보건교육 의 교육내용으로 옳은 것은?',2,502)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fc5c27d9-6972-2343-3261-9532d8a497a7','517330ef-d07e-de11-8559-873d321c86aa','작업 개시 전 점검에 관한 사항',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c1db307a-488a-d48a-db7d-253558aed4e5','517330ef-d07e-de11-8559-873d321c86aa','정 리정돈 및 청소에 관한 사항',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('53af00d1-e36b-04aa-6dce-155d2383a01c','517330ef-d07e-de11-8559-873d321c86aa','작업공정의 유해 • 위험과 재해 예방대책에 관한 사항',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('88fc56d3-415b-25ed-36bc-7173e4953b78','517330ef-d07e-de11-8559-873d321c86aa','기계 . 기구의 위험성과작업의 순서 및 동선에 관한사항',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('517330ef-d07e-de11-8559-873d321c86aa','53af00d1-e36b-04aa-6dce-155d2383a01c','③ 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항','정답 ③. 작업공정의 유해 • 위험과 재해 예방대책에 관한 사항',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('661d837b-861f-5bf9-2fbb-3fbf8b75d434','11111111-1111-1111-1111-111111111104','mcq','라인（Une）형 안전관리조직에 대한 설명으로 옳은 것은?',2,503)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c33bf0e6-9442-d01f-a5bb-83c65467994d','661d837b-861f-5bf9-2fbb-3fbf8b75d434','명령계통과 조언이나 권고적 참여가 혼동되기 쉽다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('afc2bc52-31af-01c2-eb4f-6f41c14e5b20','661d837b-861f-5bf9-2fbb-3fbf8b75d434','생산부서와의 마찰이 일어나기 쉽다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e6924541-72b8-85ac-75c9-46517773f1de','661d837b-861f-5bf9-2fbb-3fbf8b75d434','명령계통이 간단명료하다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('07c8fa8d-0665-c0ae-93ff-8459c756ae57','661d837b-861f-5bf9-2fbb-3fbf8b75d434','생산부분에는 안전에 대한 책임과 권한이 없다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('661d837b-861f-5bf9-2fbb-3fbf8b75d434','e6924541-72b8-85ac-75c9-46517773f1de','③ 명령계통이 간단명료하다.','정답 ③. 명령계통이 간단명료하다.',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c3784e8b-f95d-0f51-013b-ee58460c2b51','11111111-1111-1111-1111-111111111104','mcq','r산업안전보건법령」상（ ）에 알맞은 기준은? 안전보건표지의 제작에 있어 안전보건표지 속의 그림 또는 부 호의 크기는 안전보건표지의 크기와 비례하여야 하며, 안전보 건표지 전체 규격의（ ）이상이 되어야 한다.',2,504)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('496dee5e-f155-ca6f-c502-0ed82983d8b6','c3784e8b-f95d-0f51-013b-ee58460c2b51','20[%]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1ed824ca-d9fa-7f80-8590-a7c5faf243bc','c3784e8b-f95d-0f51-013b-ee58460c2b51','30[%]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d11debe-5dd3-c414-d085-98a99ec6943b','c3784e8b-f95d-0f51-013b-ee58460c2b51','40[%]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('41cd25ab-a431-85e9-0b48-e63a0e0976e4','c3784e8b-f95d-0f51-013b-ee58460c2b51','50[%]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c3784e8b-f95d-0f51-013b-ee58460c2b51','1ed824ca-d9fa-7f80-8590-a7c5faf243bc','② 30[%]','정답 ②. 안전보건표지의 제작 • 표시내용을 근로 가 빠르고 쉽게 알아볼 수 있는 크기로 제작하여야 *E • 표지 속의 그림 또는 부호의 크기는 안전보건표지의 크기와 비례하여야 하며. 안전보건표지 전체 규격의 30[%] 이상이 되어야 한다. • 쉽게 파손되거나 변형되지 않는 재료로 제작하여야 핸다. • 야간에 필요한 안전보건표지는 야광물질을 사용하는 등 쉽게 알아볼 수 있도록 제작하여야 한다. 1',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b76857b7-3d16-f99d-7127-a5e27ab06aeb','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 주로 고음을 차음하고, 저음은 차음 하지 않는 방음보호구의 기호로 옳은 것은?',2,505)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7954f769-a4e8-c697-c716-824825b0064a','b76857b7-3d16-f99d-7127-a5e27ab06aeb','NRR',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4df2913f-fa42-c958-055d-ec4e750a71a9','b76857b7-3d16-f99d-7127-a5e27ab06aeb','EM',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7c2f4b21-a8c5-c503-c4e0-1cdcaf378761','b76857b7-3d16-f99d-7127-a5e27ab06aeb','EP—1',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c9ea03f4-8fdf-4225-9565-704ccacea49f','b76857b7-3d16-f99d-7127-a5e27ab06aeb','EP-2',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b76857b7-3d16-f99d-7127-a5e27ab06aeb','c9ea03f4-8fdf-4225-9565-704ccacea49f','④ EP-2','정답 ④. EP-2',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6efbbc52-51d7-89e7-a569-94cbc8105640','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 유해위험방지계획서 제출대상 공사 에 해당하는 것은?',2,506)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bf0092bb-c1db-9d80-877c-ae68f9df2682','6efbbc52-51d7-89e7-a569-94cbc8105640','깊이가 5[m] 이상인 굴착공사',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8aafb48f-815e-fb3b-8b68-30b01d12348b','6efbbc52-51d7-89e7-a569-94cbc8105640','최대 지간거리 3O[m] 이상인 교량건설 공사',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0426850e-838b-5f85-9acb-01b047ae8f13','6efbbc52-51d7-89e7-a569-94cbc8105640','지상높이 21[m] 이상인 건축물 공사',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3','6efbbc52-51d7-89e7-a569-94cbc8105640','터널 건설 공사',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6efbbc52-51d7-89e7-a569-94cbc8105640','b69b4033-ba15-b7ff-e24a-5cdbe22b7ea3','④ 터널 건설 공사','정답 ④. 깊이가 io[m] 이상인 굴착공사. 최대 지간거리가 50[m] 이상인 다리의 건설 등 공사. 지상높이 31[m] 이상인 건축물 건설 등 공사가 유해 위험방지계획서 제출대상 공사이다. t',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','11111111-1111-1111-1111-111111111104','mcq','다음 설명에 해당하는 설비보전방식의 유형은? 설비보전 정보와 신기술을 기초로 신뢰성, 조작성, 보전성, 안 전성, 경제성 등이 우수한 설비의 선정, 조달 또는 설계를 통 하여 궁극적으로 설비의 설계, 제작 단계에서 보전활동이 불 필요한 체제를 목표로 한 설비보전 방법을 말한다.',2,507)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4262129c-376f-7c37-3b2f-054aee74fe9e','02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','개량보전',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e0433f61-d44c-b0f4-b5d7-8020326c538c','02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','보전예방',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('538875dc-40f1-3df6-835a-c7249b11215e','02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','사후보전',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('27fcf1ea-9b3d-e406-c5b6-ed503b646a15','02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','일상보전',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('02ebfe1a-e3a0-fc0f-c3a3-09a73e848b55','e0433f61-d44c-b0f4-b5d7-8020326c538c','② 보전예방','정답 ②. 보전예방',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','11111111-1111-1111-1111-111111111104','mcq','온도와 습도 및 공기 유동이 인체에 미치는 열효과를 하나 의 수치로 통합한 경험적 감각지수로, 상대습도 100[%]일 때의 건구온도에서 느끼는 것과 동일한 온감을 의미하는 온 열조건의 용어는?',2,508)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('63464b61-8e19-f8eb-91d3-a666c5955f89','c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','Oxford 지수',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f82e2dd0-4e2f-dbc7-fcbd-ac50159e68a9','c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','발한율',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e5aede1b-31d5-28df-5971-df17d352ce0d','c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','실효온도',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aeb54c39-27f9-b8e1-d896-3cfcf3e87fda','c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','열압박지수',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c9c5b638-72b0-bc5e-e10c-3eb4b2b935c6','e5aede1b-31d5-28df-5971-df17d352ce0d','③ 실효온도','정답 ③. 실효온도',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('26f42b86-d194-7699-34fa-144c728f7830','11111111-1111-1111-1111-111111111104','mcq','시간 근무를 기준으로 남성작업자 A의 대사량을 측정한 결과, 산소소비량이 1.3[LVmin]으로 측정되었다. Murrell 방 법으로 계산 시, 8시간의 총 근로시간에 포함되어야 할 휴 식시간은?',2,509)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('39c8e039-ad7e-cf56-6dfe-73cf842f209f','26f42b86-d194-7699-34fa-144c728f7830','124[분]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0fb16026-eab1-065a-5918-c8a58f776a6e','26f42b86-d194-7699-34fa-144c728f7830','134[분]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6d458476-fdca-de3a-b31a-234d902a82b5','26f42b86-d194-7699-34fa-144c728f7830','144[분]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b10f0761-f00b-e7c0-7c35-f26043380f84','26f42b86-d194-7699-34fa-144c728f7830','154[분]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('26f42b86-d194-7699-34fa-144c728f7830','6d458476-fdca-de3a-b31a-234d902a82b5','③ 144[분]','정답 ③. 144[분]',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e','11111111-1111-1111-1111-111111111104','mcq','파에서 사용하는 수정게이트의 종류 중 3개의 입력현상 중 2개가 발생한 경우에 출력이 생기는 것은?',2,510)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('53fcbf2f-2ed7-b241-710b-0aeb776b5f38','bbf0f079-be09-0021-f3c1-c5f78cd41c9e','위험지속기호',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('990c6801-30a4-3c15-feca-8b882cc3ae51','bbf0f079-be09-0021-f3c1-c5f78cd41c9e','조합 AND 게이트',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('24f7a692-8e4d-5b8b-7666-d0e218e5e582','bbf0f079-be09-0021-f3c1-c5f78cd41c9e','배타적 OR 게이트',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('852b12a4-a363-3a5e-1f86-9781758f0683','bbf0f079-be09-0021-f3c1-c5f78cd41c9e','억제 게이트',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bbf0f079-be09-0021-f3c1-c5f78cd41c9e','990c6801-30a4-3c15-feca-8b882cc3ae51','② 조합 AND 게이트','정답 ②. 조합 AND 게이트',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b13c1505-21a3-6a84-cf3f-947b091ff14d','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따른 승강기의 종류에 해당하지 않 는것은?',2,511)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82','b13c1505-21a3-6a84-cf3f-947b091ff14d','리프트',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3c464118-01fc-aa91-c0b4-97b9ffe09995','b13c1505-21a3-6a84-cf3f-947b091ff14d','승객용 엘리베이터',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7f52d4c2-4252-1640-9e24-1370e6a503cd','b13c1505-21a3-6a84-cf3f-947b091ff14d','에스컬레이터',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f106850e-39e7-d838-7adb-4024248c78d6','b13c1505-21a3-6a84-cf3f-947b091ff14d','화물용 엘리베이터',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b13c1505-21a3-6a84-cf3f-947b091ff14d','3db0d9d2-bc6a-2b4d-0f35-35a230ec8c82','① 리프트','정답 ①. 승강기의 종류 승객용 엘리베이터. 승객화물용 엘리베이터, 화물용 엘리베이터, 소형화물 용 엘리베이터, 에스컬레이터 1',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('627e7076-a493-cb6b-28b1-b0bf8c4a270c','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 다음（ ）안에 들어갈 내용 으로 옳은 것은? 사업주는 바닥으로부터 짐 윗면까지의 높이가（ ）미터 이상인 화물자동차에 짐을 싣는 작업 또는 내리는 작업을 하 는 경우에는 근로자의 추가 위험을 방지하기 위하여 해당 작 업에 종사하는 근로자가 바닥과 적재함의 짐 윗면 간을 안전 하게 오르내리기 위한 설비를 설치하여야 한다.',2,512)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3f414b2d-f2f4-2578-51cb-85cf21903f6d','627e7076-a493-cb6b-28b1-b0bf8c4a270c','1.5',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5282fe22-26c4-8d1d-696a-ab2e8a930864','627e7076-a493-cb6b-28b1-b0bf8c4a270c','2',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('de782688-8580-c348-eb47-607d162f5d80','627e7076-a493-cb6b-28b1-b0bf8c4a270c','2.5',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('46360e06-f57e-e4a2-af29-b6838feb697a','627e7076-a493-cb6b-28b1-b0bf8c4a270c','3',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('627e7076-a493-cb6b-28b1-b0bf8c4a270c','5282fe22-26c4-8d1d-696a-ab2e8a930864','② 2','정답 ②. 사업주는 바닥으로부터 짐 윗면까지의 높이가 2[m] 이상인 화물 자동차에 짐을 싣는 작업 또는 내리는 작업을 하는 경우에는 근로자의 추 가 위험을 방지하기 위하여 해당 작업에 종사하는 근로자가 바닥과 적재함 의 짐 윗면 간을 안전하게 오르내리기 위한 설비를 설치하여야 한다. 1 SUBJECT 06 건설공사 안전관리',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bea7484e-d12c-46f2-613f-c86f605fdab0','11111111-1111-1111-1111-111111111104','mcq','전기화재 발생원인으로 틀린 것은?',2,513)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dc5fafda-2220-f82c-cb13-3132e3c0c45f','bea7484e-d12c-46f2-613f-c86f605fdab0','발화원',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4adecda5-9d8d-58d0-5963-cb7e9928e473','bea7484e-d12c-46f2-613f-c86f605fdab0','내화물',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aebc51ec-e5bf-36f7-050e-6b05bbf332f3','bea7484e-d12c-46f2-613f-c86f605fdab0','착화물',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('10416b82-8e41-bcf2-1736-bba8b57d1ea1','bea7484e-d12c-46f2-613f-c86f605fdab0','출화의 경과',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bea7484e-d12c-46f2-613f-c86f605fdab0','4adecda5-9d8d-58d0-5963-cb7e9928e473','② 내화물','정답 ②. 내화물',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ab916a27-9b91-712f-ba75-ed941f555e2e','11111111-1111-1111-1111-111111111104','mcq','누전차단기의 설치가 필요한 것은?',2,514)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('aa70df56-8d87-e12b-34a2-1d286188a036','ab916a27-9b91-712f-ba75-ed941f555e2e','이중절연구조의 전기기계 •기구',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('df326cf1-7a81-813f-f268-4a3c6f00c906','ab916a27-9b91-712f-ba75-ed941f555e2e','비접지식 전로의 전기기계 •기구',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b1256db2-9aea-097c-80cc-5a3a4a85b662','ab916a27-9b91-712f-ba75-ed941f555e2e','절연대 위에서 사용하는 전기기계 • 기구',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a80e04fd-0b73-48e3-c897-bc25ba8b0774','ab916a27-9b91-712f-ba75-ed941f555e2e','도전성이 높은 장소의 전기기 계 • 기구',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ab916a27-9b91-712f-ba75-ed941f555e2e','a80e04fd-0b73-48e3-c897-bc25ba8b0774','④ 도전성이 높은 장소의 전기기 계 • 기구','정답 ④. 누전차단기의 적용비대상 • r전기용품 및 생활용품 안전관리법」에 따른 이중절연 또는 이와 동등 이 상으로 보호되는 전기기계 • 기구 • 절연대 위 등과 같이 감전위험이 없는 장소에서 사용하는 전기기계 - 기구 • 비접지방식의 전로',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff','11111111-1111-1111-1111-111111111104','mcq','과전류에 의해 전선의 허용전류보다 큰 전류가 흐르는 경우 절연물이 화구가 없더라도 자연히 발화하고 심선이 용단되 는 발화단계의 전선 전류밀도［A/mm2］는?',2,515)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b68d0c3e-43a0-6d2c-9771-c2d885dce4a2','f5b78bf6-603a-c1ca-c649-d9ba822e3bff','10〜20',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('739f7f64-0acb-9f7b-5b12-7ffdccfdfe61','f5b78bf6-603a-c1ca-c649-d9ba822e3bff','30~50',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5316acee-e384-53aa-edab-f73a9df63e83','f5b78bf6-603a-c1ca-c649-d9ba822e3bff','60-120',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dd354f8f-9523-4d3f-560c-5fb121ed8c64','f5b78bf6-603a-c1ca-c649-d9ba822e3bff','130-200',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f5b78bf6-603a-c1ca-c649-d9ba822e3bff','5316acee-e384-53aa-edab-f73a9df63e83','③ 60-120','정답 ③. 나선으로 접속된 분기회로의 접속점 전선의 열화가 발생한 곳 부도체를 사용하여 이중절연이 되어 있는 곳 리드선과 단자와의 접속이 불량한 곳 a 부도체를 사용하여 이중절연이 되어 있는 곳은 누전사고 발생 취 약 개소로 보기 어렵다',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a41e7977-b1d5-6db6-a716-d0701a1da423','11111111-1111-1111-1111-111111111104','mcq','기중차단기의 기호로 옳은 것은?',2,516)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('351ea0df-7f9a-5347-d85c-fabce2df714b','a41e7977-b1d5-6db6-a716-d0701a1da423','VCB',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('025a33f5-b182-f4da-f31c-08064fb97846','a41e7977-b1d5-6db6-a716-d0701a1da423','MCCB',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bb0563e0-b68c-feb6-ac2b-c443a08e94b6','a41e7977-b1d5-6db6-a716-d0701a1da423','OCB',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a075ad2a-8fc4-5479-e000-809c912db43c','a41e7977-b1d5-6db6-a716-d0701a1da423','ACB',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a41e7977-b1d5-6db6-a716-d0701a1da423','a075ad2a-8fc4-5479-e000-809c912db43c','④ ACB','정답 ④. ACB',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('054abc01-a903-4263-c005-a0db01491072','11111111-1111-1111-1111-111111111104','mcq','공기 중에서 이황화탄소(cs2)의 폭발한계는 하한값이 1.25[v이%], 상한값이 44[v이%]이다. 이를 20[℃] 대기압 하에서 [mg/L]의 단위로 환산하면 하한값과 상한값은 각각 약 얼마인가?(단, 이황화탄소의 분자량은 76.1 이다.)',2,517)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2b9b926f-9c7e-8030-7ba1-c55c91b10c57','054abc01-a903-4263-c005-a0db01491072','하한값: 61, 상한값: 640',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7c4aeac8-7d69-aca7-a879-0fdb128a7812','054abc01-a903-4263-c005-a0db01491072','하한값: 39.6, 상한값: 1,395',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('db1f37b4-5fad-9526-4b35-37e52c814efc','054abc01-a903-4263-c005-a0db01491072','하한값: 146, 상한값: 860',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5eda28ef-6a86-63bb-d656-1a566a1cb724','054abc01-a903-4263-c005-a0db01491072','하한값: 55.4, 상한값: 1,642',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('054abc01-a903-4263-c005-a0db01491072','7c4aeac8-7d69-aca7-a879-0fdb128a7812','② 하한값: 39.6, 상한값: 1,395','정답 ②. 하한값: 39.6, 상한값: 1,395',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('18638906-2e39-9557-2b5e-7664034e5333','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 “부식성 산류”에 해당하지 않는 것은?',2,518)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0d49351b-0e0e-eecd-d63f-a9eb1f86896e','18638906-2e39-9557-2b5e-7664034e5333','농도 2이%]인 염산',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('71bff625-b99f-c99b-ab80-da6390943212','18638906-2e39-9557-2b5e-7664034e5333','농도 4이%]인 인산',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8f7a04bd-d498-786f-fbd6-897a16aa71bf','18638906-2e39-9557-2b5e-7664034e5333','농도 5이%]인 질산',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a19669e5-ea63-696e-e205-d88bd2937755','18638906-2e39-9557-2b5e-7664034e5333','농도 60[%]인 아세트산',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('18638906-2e39-9557-2b5e-7664034e5333','71bff625-b99f-c99b-ab80-da6390943212','② 농도 4이%]인 인산','정답 ②. 부식성 산류 • 농도가 20[%] 이상인 염산, 황산. 질산. 그 밖에 이와 같은 정도 이상의 부식성을 가지는 물질 • 농도가 60[%] 이상인 인산, 아세트산, 불산, 그 밖에 이와 같은 정도 이 상의 부식성을 가지는 물질',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('470abd0e-2399-90cc-2d91-ce3fcff124ae','11111111-1111-1111-1111-111111111104','mcq','Burgess-Wheeler의 법칙에 따르면 서로 유사한 탄화수소 계의 가스에서 폭발하한계의 농도[vol%]와 연소열[kcal/ mol]의 곱의 값은 약 얼마 정도인가?',2,519)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('46ae555e-d8f4-1302-f3b6-2b3dc3634651','470abd0e-2399-90cc-2d91-ce3fcff124ae','1,100',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9add3281-5b29-dcd8-a435-0c2e7423c81b','470abd0e-2399-90cc-2d91-ce3fcff124ae','2,800',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c80c4971-13a7-cad3-e635-8d474bf2d6a4','470abd0e-2399-90cc-2d91-ce3fcff124ae','3,200',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('72fc3ec3-3f24-8045-abd9-36035d059834','470abd0e-2399-90cc-2d91-ce3fcff124ae','3,800',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('470abd0e-2399-90cc-2d91-ce3fcff124ae','46ae555e-d8f4-1302-f3b6-2b3dc3634651','① 1,100','정답 ①. 1,100',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('9487b1e9-437d-8724-9575-2457dc1e6581','11111111-1111-1111-1111-111111111104','mcq','디에틸에테르와 에틸알코올이 3 ： 1로 혼합된 혼합증기의 몰비가 각각 0.75, 0.25이고, 디에틸에테르와 에틸알코올 의 폭발하한값이 각각 1.9[vol%], 4.3[vol%]일 때 혼합가스 의 폭발하한값은 약 몇 [vol%]인가?',2,520)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('44e81ec3-715f-82be-9b9f-ed19cfbab2e0','9487b1e9-437d-8724-9575-2457dc1e6581','2.2',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('362c288e-067b-a441-d33a-116c572d15a8','9487b1e9-437d-8724-9575-2457dc1e6581','3.5',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dea9b422-d8d0-51ae-125e-a72785a68528','9487b1e9-437d-8724-9575-2457dc1e6581','22.0',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3b8867b9-d47e-11f7-118f-95571a07109a','9487b1e9-437d-8724-9575-2457dc1e6581','34.7',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('9487b1e9-437d-8724-9575-2457dc1e6581','44e81ec3-715f-82be-9b9f-ed19cfbab2e0','① 2.2','정답 ①. 2.2',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
