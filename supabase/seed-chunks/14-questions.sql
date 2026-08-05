-- 14
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ba666b73-8998-5f9e-58a1-7093f47f5dba','11111111-1111-1111-1111-111111111104','mcq','일산화탄소에 대한 설명으로 틀린 것은?',2,521)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7bfdddd7-6485-dec2-e436-78aac5c5d211','ba666b73-8998-5f9e-58a1-7093f47f5dba','무색-무취의 기체이다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7f6ec23f-b1a6-c4e9-07d8-cb1bb6071b99','ba666b73-8998-5f9e-58a1-7093f47f5dba','염소와 촉매 존재하에 반응하여 포스겐이 된다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b5d6b578-4d5b-f1c2-aca9-d9c044c1e2e3','ba666b73-8998-5f9e-58a1-7093f47f5dba','인체 내의 헤모글로빈과 결합하여 산소운반기능을 저',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('69a863a6-dd9e-069a-c515-6f24a4028061','ba666b73-8998-5f9e-58a1-7093f47f5dba','불연성 가스로서, 허용농도가 10[ppm]이다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ba666b73-8998-5f9e-58a1-7093f47f5dba','69a863a6-dd9e-069a-c515-6f24a4028061','④ 불연성 가스로서, 허용농도가 10[ppm]이다.','정답 ④. 일산화탄소는 허용농도가 30[ppm]인 독성 가스이자. 공기 중 연 소범위가 12.5 [vol%]인 가연성 가스이다. Wil리',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ef841e56-905e-5bb4-cd53-0c54b62c01d6','11111111-1111-1111-1111-111111111104','mcq','금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 취급할 때의 준수사항으로 틀린 것은?',2,522)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6acb5ba4-7dcd-15fc-25e9-c2d301a83bb5','ef841e56-905e-5bb4-cd53-0c54b62c01d6','전도의 위험이 없도록 한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4bb54cc6-26cd-59d0-5230-753350ed0196','ef841e56-905e-5bb4-cd53-0c54b62c01d6','밸브를 서서히 개폐한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('83d78ce6-2403-b4fe-3fa2-1f4dd94faaab','ef841e56-905e-5bb4-cd53-0c54b62c01d6','용해아세틸렌의 용기는 세워서 보관한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2263699f-1b48-f7a3-c75a-77bf58aec755','ef841e56-905e-5bb4-cd53-0c54b62c01d6','용기의 온도를 65도 이하로 유지한다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ef841e56-905e-5bb4-cd53-0c54b62c01d6','2263699f-1b48-f7a3-c75a-77bf58aec755','④ 용기의 온도를 65도 이하로 유지한다.','정답 ④. 용기의 온도를 65도 이하로 유지한다.',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('816d73b6-6caa-8481-cd81-c4dd3e05fc26','11111111-1111-1111-1111-111111111104','mcq','다음은 동바리 로 사용하는 파이프서 포트의 설치기 준이다. （ ） 안에 들어갈 내용으로 옳은 것은? 파이프서포트를（ ）이상 이어서 사용하지 않도록 할것',2,523)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('22f62b36-c01a-e3a0-fae4-c789f1ccb38d','816d73b6-6caa-8481-cd81-c4dd3e05fc26','2개',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b689d04a-28a0-b578-911e-1a97f215e8ae','816d73b6-6caa-8481-cd81-c4dd3e05fc26','3개',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d9aa4db2-e3dc-f55a-96e2-953c423c3e42','816d73b6-6caa-8481-cd81-c4dd3e05fc26','4개',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('68c22778-131d-4ae5-dc81-d87b2a0d6f15','816d73b6-6caa-8481-cd81-c4dd3e05fc26','5개',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('816d73b6-6caa-8481-cd81-c4dd3e05fc26','b689d04a-28a0-b578-911e-1a97f215e8ae','② 3개','정답 ②. 동바리로 사용하는 파이프서포트를 3개 이상 이어서 사용하지 않아야 한다',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('be2a3e14-e434-f4d2-0c64-def2739fae24','11111111-1111-1111-1111-111111111104','mcq','굴착기계의 운행 시 안전대책으로 옳지 않은 것은?',2,524)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('16a468e0-35a2-5e8c-b88b-5ef930e57c0c','be2a3e14-e434-f4d2-0c64-def2739fae24','버킷에 사람의 탑승을 허용해서는 안 된다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dcb608c6-2c62-34e0-1c98-769180417fb5','be2a3e14-e434-f4d2-0c64-def2739fae24','운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ff8fd43e-d7da-8676-a946-141a168ba742','be2a3e14-e434-f4d2-0c64-def2739fae24','장비의 주차 시 경사지나 굴착작업장으로부터 충분히',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9df1a5f1-f837-f030-20a8-066dc0da3dd1','be2a3e14-e434-f4d2-0c64-def2739fae24','전선이나 구조물 등에 인접하여 붐을 선회해야 할 작업에',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('be2a3e14-e434-f4d2-0c64-def2739fae24','dcb608c6-2c62-34e0-1c98-769180417fb5','② 운전반경 내에 사람이 있을 때 회전은 10[rpm] 정도의','정답 ②. 는 사전에 회전반경, 높이제한 등 방호조치를 강구한다. 굴착기계 운행 시 운전반경 내에 사람이 있어서는 안 된다. WE',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a9932be4-7d43-a04c-3cc2-079c84062bc6','11111111-1111-1111-1111-111111111104','mcq','유해위험방지계획서를 제출해야 할 건설공사 대상 사업장 기준으로 옳지 않은 것은?',2,525)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('48781051-3178-997a-2383-7bd1a8b5ac70','a9932be4-7d43-a04c-3cc2-079c84062bc6','최대 지간길이가 5이m] 이상인 교량건설 등의 공사',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0b73870c-4b1d-a88b-fa0a-0e7159e6dc99','a9932be4-7d43-a04c-3cc2-079c84062bc6','지상높이가 31[m] 이상인 건축물',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b62a0754-bd0f-93d3-9e5e-14bed042124d','a9932be4-7d43-a04c-3cc2-079c84062bc6','터널 건설 등의 공사',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a7566fb0-84f2-7105-4076-711f2b90826c','a9932be4-7d43-a04c-3cc2-079c84062bc6','깊이 9[m]인 굴착공사',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a9932be4-7d43-a04c-3cc2-079c84062bc6','48781051-3178-997a-2383-7bd1a8b5ac70','① 최대 지간길이가 5이m] 이상인 교량건설 등의 공사','정답 ①. 최대 지간길이가 5이m] 이상인 교량건설 등의 공사',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d39438a4-8198-053b-f3aa-d0931339392e','11111111-1111-1111-1111-111111111104','mcq','강관틀비계를 조립하여 사용하는 경우 준수해야 할 기준으 로 옳지 않은 것은?',2,526)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7b60c20c-3deb-ef87-a1ea-6eee158150f2','d39438a4-8198-053b-f3aa-d0931339392e','높이가 20[m]를 초과하거나 중량물의 적재를 수반하는',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c0f9eeef-edc6-8843-c762-e6b046f8a4aa','d39438a4-8198-053b-f3aa-d0931339392e','수직방향으로 6[m], 수평방향으로 8[m] 이내마다 벽이',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c78baf1e-9e50-38c6-e933-c7ccdac97db6','d39438a4-8198-053b-f3aa-d0931339392e','길이가 띠장 방향으로 4[m] 이하이고 높이가 10[m]를',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9d3899f0-0494-9db2-770e-b9cc30234014','d39438a4-8198-053b-f3aa-d0931339392e','주틀 간에 교차가새를 설치하고 최상층 및 5층 이내마',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d39438a4-8198-053b-f3aa-d0931339392e','7b60c20c-3deb-ef87-a1ea-6eee158150f2','① 높이가 20[m]를 초과하거나 중량물의 적재를 수반하는','정답 ①. 높이가 20[m]를 초과하거나 중량물의 적재를 수반하는',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('03568d74-38ad-77ba-d1a4-2af192f9ad61','11111111-1111-1111-1111-111111111104','mcq','차량계 하역운반기계를 사용하여 작업할 때에 그 기계가 넘 어지거나 굴러 떨어짐으로써 근로자가 위험해질 우려가 있. 는 경우에 조치하여야 할 사항과 거리가 먼 것은?',2,527)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9708f4bd-4dab-3353-b1ff-91fcb40a137b','03568d74-38ad-77ba-d1a4-2af192f9ad61','해당 기계에 대한유도자 배치',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c1a176b6-d7af-c658-4590-9f21e63763c2','03568d74-38ad-77ba-d1a4-2af192f9ad61','경보장치 설치',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('99abd836-4b6b-3b1c-ae9a-a3be8acb4942','03568d74-38ad-77ba-d1a4-2af192f9ad61','지반의 부동침하 방지',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('85d2340a-17a8-623d-c658-d3cab2cc6e30','03568d74-38ad-77ba-d1a4-2af192f9ad61','갓길의 붕괴 방지조치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('03568d74-38ad-77ba-d1a4-2af192f9ad61','c1a176b6-d7af-c658-4590-9f21e63763c2','② 경보장치 설치','정답 ②. 1H 차량계 하역운반기계 전도 등의 방지 • 유도자 배치 • 지반의 부동침하 방지 • 갓길의 붕괴 방지',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','11111111-1111-1111-1111-111111111104','mcq','건설공사 유해 위험방지계획서를 제출해야 할 대상공사에 해당하지 않는 것은?',2,528)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1787ea3e-507f-2a75-b397-c331e4ad1b8f','3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','깊이 10[m]인 굴착공사',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7ab761ae-567f-482e-36f9-d3108f5b5748','3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','다목적댐 건설공사',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fac7fb33-0b5e-fd32-1275-943d83ccadcd','3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','최대 지간길이가 40[m]인 교량건설 공사',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9755da9c-5bee-a50a-6a56-482def0b53d4','3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','연면적 5,00이m2]인 냉동 • 냉장 창고시설의 설비공사',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('3a97217a-1685-b8e0-bef1-d1ee5a5a3c10','fac7fb33-0b5e-fd32-1275-943d83ccadcd','③ 최대 지간길이가 40[m]인 교량건설 공사','정답 ③. 최대 지간길이가 40[m]인 교량건설 공사',array['산업안전기사','2019-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
