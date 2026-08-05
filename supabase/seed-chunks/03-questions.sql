-- 3
insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7a5e21e8-3e70-0207-b47f-d9faee9edf4e','11111111-1111-1111-1111-111111111104','mcq','사업주는「산업안전보건법령」에서 정한 설비에 대해서는 과압에 따른 폭발을 방지하기 위하여 안전밸브 등을 설치하 여야 한다. 다음 중 이에 해당하는 설비가 아닌 것은?',2,81)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('105c27cd-7abf-7d91-ec2b-66123e3529b0','7a5e21e8-3e70-0207-b47f-d9faee9edf4e','원심펌프',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b45d7f8c-02e0-7a45-5d2b-02caab410250','7a5e21e8-3e70-0207-b47f-d9faee9edf4e','정변위 압축기',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e245fb96-67bd-1408-24a3-70ebc5941400','7a5e21e8-3e70-0207-b47f-d9faee9edf4e','정변위 펌프（토출 측에 차단밸브가 설치된 것만 해당함）',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bbc04116-015f-e32f-25d1-1e68ae40b62b','7a5e21e8-3e70-0207-b47f-d9faee9edf4e','배관（2개 이상의 밸브에 의하여 차단되어 대기온도에',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7a5e21e8-3e70-0207-b47f-d9faee9edf4e','105c27cd-7abf-7d91-ec2b-66123e3529b0','① 원심펌프','정답 ①. 원심펌프',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c7485d8f-19f9-3b82-4b23-8d467ec69052','11111111-1111-1111-1111-111111111104','mcq','곤돌라형 달비계에 사용이 불가한 와이어로프의 기준으로 옳지 않은 것은?',2,82)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b385120c-1f92-0ec4-3e20-0979f66d16a6','c7485d8f-19f9-3b82-4b23-8d467ec69052','이음매가 있는 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3294ddaf-3fee-3708-12e8-08d451c7f877','c7485d8f-19f9-3b82-4b23-8d467ec69052','와이어로프의 한 꼬임에서 끊어진 소선의 수가 1이%]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1062abde-7ae8-4808-81db-1f0cb75eb0db','c7485d8f-19f9-3b82-4b23-8d467ec69052','지름의 감소가 공칭지름의 5[%]를 초과하는 것',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('54989171-7854-362c-194f-8afd8f7fe582','c7485d8f-19f9-3b82-4b23-8d467ec69052','심하게 변형되거나 부식된 것',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c7485d8f-19f9-3b82-4b23-8d467ec69052','1062abde-7ae8-4808-81db-1f0cb75eb0db','③ 지름의 감소가 공칭지름의 5[%]를 초과하는 것','정답 ③. 달비계 와이어로프의 사용금지 조건 •이음매가있는 것 • 와이어로프의 한 꼬임(Strand)에서 끊어진 소선의 수가 10[%] 이상인 것 • 지름의 감소가 공칭지름의 7[%]를 초과하는 것 •꼬인것 • 심하게 변형되거나 부식된 것 • 열과 전기충격에 의해 손상된 것 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('63434760-db37-aa41-1087-baf9c0df68da','11111111-1111-1111-1111-111111111104','mcq','다음 중「산업안전보건법령」상 양중기에 해당되지 않는 것 은?',2,83)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a3bd9345-4ed1-6f8e-4560-e90bafdffcb6','63434760-db37-aa41-1087-baf9c0df68da','어스드릴',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c2509a6d-1a65-0dcf-cc0c-bb398ebf9f88','63434760-db37-aa41-1087-baf9c0df68da','크레인',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('447249b3-34d9-4f8e-adfa-3e786c7c6fbe','63434760-db37-aa41-1087-baf9c0df68da','리프트',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('648dae77-48f4-f757-6247-0e5a4348587b','63434760-db37-aa41-1087-baf9c0df68da','곤돌라',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('63434760-db37-aa41-1087-baf9c0df68da','a3bd9345-4ed1-6f8e-4560-e90bafdffcb6','① 어스드릴','정답 ①. 어스드릴은 차량계 건설기계에 해당한다. 양중기의 종류 • 크레인(호이스트(Hoist) 포함) • 이동식 크레인 • 리프트(이삿짐운반용 리프트의 경우에는 적재하중이 0.1 톤 이상인 것으 로한정) •곤돌라 •승강기',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7c00b11c-8a0d-82e0-abec-a042501e1f7c','11111111-1111-1111-1111-111111111104','mcq','건설현장에 설치하는 사다리식 통로의 설치기준으로 옳지 않은 것은?',2,84)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a133a7a9-377d-8740-d97d-83d948020c20','7c00b11c-8a0d-82e0-abec-a042501e1f7c','발판과 벽과의 사이는 15[cm] 이상의 간격을 유지할 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a8672c21-8b49-ff7f-9a61-1ca2654ec2e6','7c00b11c-8a0d-82e0-abec-a042501e1f7c','발판의 간격은 일정하게 할 것',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('921d0aa2-d981-5ea5-cdf6-c4f42b34f30d','7c00b11c-8a0d-82e0-abec-a042501e1f7c','사다리의 상단은 걸쳐놓은 지점으로부터 60[cm] 이상',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b0277562-99ec-e7d0-179e-6b32b28598b6','7c00b11c-8a0d-82e0-abec-a042501e1f7c','사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7c00b11c-8a0d-82e0-abec-a042501e1f7c','b0277562-99ec-e7d0-179e-6b32b28598b6','④ 사다리식 통로의 길이가 10[m] 이상인 경우에는 3[m]','정답 ④. 이내마다 계단참을 설치할 것 짜 사다리식 통로의 길이가 10[m] 이상인 경우에는 5[m] 이내마다 계단참을 설치하여야 한다. 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('ac804284-479b-2618-9100-d62badcd8954','11111111-1111-1111-1111-111111111104','mcq','건설업 산업안전보건관리비의 사용 내역에 대하여 도급인은 공사 시작 후 몇 개월마다 1 회 이상 발주자 또는 감리자의 확인을 받아야 하는가?',2,85)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9e8ba583-e476-0964-ca26-445934cc6436','ac804284-479b-2618-9100-d62badcd8954','3개월',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b9e1266f-0c45-a821-3740-96a68d0a13c0','ac804284-479b-2618-9100-d62badcd8954','4개월',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('75a8aa00-8f0d-f5c6-3b8a-d5097506b27e','ac804284-479b-2618-9100-d62badcd8954','5개월',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4bcaa3ad-a6cd-7385-52c6-6dfa8488c5d2','ac804284-479b-2618-9100-d62badcd8954','6개월',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('ac804284-479b-2618-9100-d62badcd8954','4bcaa3ad-a6cd-7385-52c6-6dfa8488c5d2','④ 6개월','정답 ④. 도급인은 산업안전보건관리비 사용내역에 대하여 공사 시작 후 6개월마다 1회 이상 발주자 또는 감리자의 확인을 받아야 한다. 다만. 6개월 이내에 공사가 종료되는 경우에는 종료 시 확인을 받아야 한다. E',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건기준에 관한 규칙」에 따르면 풍화암의 토사 붕괴를 예방하기 위한 기울기는 얼마인가?',2,86)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b3b5f627-239a-90a3-8200-81c7d2d28281','7f7a8d83-5174-9719-7a2a-f62e608c4ce5','1 ： 0.8',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b','7f7a8d83-5174-9719-7a2a-f62e608c4ce5','1 ： 1.0',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d98818c7-e144-455f-9c76-6b241ebb7f3d','7f7a8d83-5174-9719-7a2a-f62e608c4ce5','1 ： 0.5',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3d3279dd-dd14-358f-d187-ed8b4b9661e6','7f7a8d83-5174-9719-7a2a-f62e608c4ce5','1 ： 0.3',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7f7a8d83-5174-9719-7a2a-f62e608c4ce5','4d31ffc4-8c88-8ad8-935e-90d7b2d12d1b','② 1 ： 1.0','정답 ②. 1 ： 1.0',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('b5d417a0-0157-e365-f9d5-fd1bd86c21da','11111111-1111-1111-1111-111111111104','mcq','거푸집 해체작업 시 유의사항으로 옳지 않은 것은?',2,87)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a4bba70-ee8e-8582-9982-f4c6bb61bd89','b5d417a0-0157-e365-f9d5-fd1bd86c21da','일반적으로 수평부재의 거푸집은 연직부재의 거푸집보',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f0b4ffb1-696b-04a8-b571-724676ce1289','b5d417a0-0157-e365-f9d5-fd1bd86c21da','해체된 거푸집이나 각목 등에 박혀있는 못 또는 날카로',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('988df890-30e6-a870-e5f9-e0d2b0c5425d','b5d417a0-0157-e365-f9d5-fd1bd86c21da','상하 동시작업은 원칙적으로 금지하며 부득이한 경우',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ca6ad095-85f5-96e3-f004-2af923bfb863','b5d417a0-0157-e365-f9d5-fd1bd86c21da','거푸집 해체 작업장 주위에는 관계자를 제외하고는 출',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('b5d417a0-0157-e365-f9d5-fd1bd86c21da','3a4bba70-ee8e-8582-9982-f4c6bb61bd89','① 일반적으로 수평부재의 거푸집은 연직부재의 거푸집보','정답 ①. 입을 금지시켜야 한다. 일반적으로 연직부재의 거푸집은 수평부재의 거푸집보다 빨리 떼어낼 수 있다. 1',array['산업안전기사','2025-3'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('efcb7722-049d-426f-f792-7389fac70f02','11111111-1111-1111-1111-111111111104','mcq','r산업안전보건법령」상 안전보건표지의 색채와 용도의 연결 이 틀린 것은?',2,88)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('475e7e5f-4009-5866-1f77-d31364246eb9','efcb7722-049d-426f-f792-7389fac70f02','검은색-금지',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b0f34df2-2f5a-0731-28cb-16e238bb4c57','efcb7722-049d-426f-f792-7389fac70f02','파란색-지시',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('28088f1a-77bd-eea2-5b2a-21e38b3d7e2d','efcb7722-049d-426f-f792-7389fac70f02','녹색 - 안내',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('84d936b7-9b25-ea38-c661-2b15f72cb1f9','efcb7722-049d-426f-f792-7389fac70f02','노란색 - 경고',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('efcb7722-049d-426f-f792-7389fac70f02','475e7e5f-4009-5866-1f77-d31364246eb9','① 검은색-금지','정답 ①. 검은색-금지',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('4f44b3cd-2481-7730-f972-8f87843040d3','11111111-1111-1111-1111-111111111104','mcq','라인（Line）형 안전관리조직의 특징으로 옳은 것은?',2,89)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('49968414-16d2-c328-7224-902625ae6751','4f44b3cd-2481-7730-f972-8f87843040d3','안전에 관한 기술의 축적이 용이하다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('84742727-48f6-eb99-d127-e3dc1191e3e8','4f44b3cd-2481-7730-f972-8f87843040d3','안전에 관한 지시나 조치가 신속하다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4f8ff66d-6eb0-3c7b-ef2c-b3eda714b014','4f44b3cd-2481-7730-f972-8f87843040d3','조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eeafb5eb-f023-7fea-dfd4-89d5a28d6c07','4f44b3cd-2481-7730-f972-8f87843040d3','권한 다툼이나 조정 때문에 통제수속이 복잡해지며, 시',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('4f44b3cd-2481-7730-f972-8f87843040d3','84742727-48f6-eb99-d127-e3dc1191e3e8','② 안전에 관한 지시나 조치가 신속하다.','정답 ②. 안전에 관한 지시나 조치가 신속하다.',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d','11111111-1111-1111-1111-111111111104','mcq','아담스(Edward Adams)의 사고연쇄반응이론 5단계에서 불안전 행동 및 불안전 상태는 어느 단계에 해당되는가?',2,90)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eabbdbec-7f9f-96f5-dce5-5b22c3803b75','7c9155fa-d09a-1c21-2bfb-049d0a63f82d','제1단계: 관리구조',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('657d29db-8dc8-10cf-9c94-035cad787510','7c9155fa-d09a-1c21-2bfb-049d0a63f82d','제2단계: 작전적 에러',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a85efff-c4db-0e32-9829-51206188342a','7c9155fa-d09a-1c21-2bfb-049d0a63f82d','제 3단계: 전술적 에러',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('04d89d7e-00cd-cf5b-f1fb-1862a8422c95','7c9155fa-d09a-1c21-2bfb-049d0a63f82d','제4단계: 사고',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7c9155fa-d09a-1c21-2bfb-049d0a63f82d','3a85efff-c4db-0e32-9829-51206188342a','③ 제 3단계: 전술적 에러','정답 ③. 제 3단계: 전술적 에러',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a0132c58-5a47-3871-7236-ebd82ff6b87d','11111111-1111-1111-1111-111111111104','mcq','파블로프(Pavlov)의 조건반사설에 의한 학습이론의 원리가 아닌 것은?',2,91)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8cf42f09-1d86-0ecc-3d83-01e1c2221657','a0132c58-5a47-3871-7236-ebd82ff6b87d','일관성의 원리',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c833bccf-1fbc-dde8-cb18-eae34a2f7f4e','a0132c58-5a47-3871-7236-ebd82ff6b87d','계속성의 원리',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2379c5af-09aa-9f1a-a3ab-b1f38d2711fa','a0132c58-5a47-3871-7236-ebd82ff6b87d','준비성의 원리',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e0becc93-7b17-3a94-3b60-64226d30449e','a0132c58-5a47-3871-7236-ebd82ff6b87d','강도의 원리',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a0132c58-5a47-3871-7236-ebd82ff6b87d','2379c5af-09aa-9f1a-a3ab-b1f38d2711fa','③ 준비성의 원리','정답 ③. 준비성의 원리',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('6f3182f8-0021-0a85-d9f2-6e61c5317646','11111111-1111-1111-1111-111111111104','mcq','「산업재해통계업무처리규정」상 사망만인율 계산 시 적용하 는 사망자 수에 대한 설명으로 옳지 않은 것은?',2,92)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9bd0b4c1-9b80-16c8-cef3-d97276d5b56c','6f3182f8-0021-0a85-d9f2-6e61c5317646','사고발생일로부터 1년을 경과하여 사망한 경우는 제외',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('db6f0890-bab8-fde3-2cb0-34a0b10cd834','6f3182f8-0021-0a85-d9f2-6e61c5317646','통상의 출퇴근에 의한 사망자는 제외한다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c6336223-6bf2-e6c4-4388-3c053b3777c5','6f3182f8-0021-0a85-d9f2-6e61c5317646','체육행사에 의한 사망자는 제외한다.',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1375002e-e12f-d2a7-2b7e-bf60b9090880','6f3182f8-0021-0a85-d9f2-6e61c5317646','근로복지공단의 유족급여가 지급된 사망자(지방고용노',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('6f3182f8-0021-0a85-d9f2-6e61c5317646','1375002e-e12f-d2a7-2b7e-bf60b9090880','④ 근로복지공단의 유족급여가 지급된 사망자(지방고용노','정답 ④. 근로복지공단의 유족급여가 지급된 사망자(지방고용노',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','11111111-1111-1111-1111-111111111104','mcq','기술지원규정(KOSHA GUIDE)에 대한 설명으로 옳지 않은 것은?',2,93)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e92bbe28-f755-22e4-f970-5c5ec5106326','30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','가이드 표시, 분야별 분류기호, 세부분야별 분류기호,',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c5f7cdd1-ce13-2a8d-c912-8dba9d1d0dc8','30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','법적 기준이 아닌 사업장의 이해를 돕기 위해 작성된',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('68b047cf-be23-d0c4-648f-bd7b6e3cfbb1','30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','안전보건 향상을 위해 참고할 수 있는 기술적 내용을',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4b38de69-74e8-82a1-ad6b-5baad7881efd','30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','한국산업안전보건공단에 의해 제 - 개정되고 있다.',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('30b6e1bc-7870-1c98-8e2f-ae449abeb8e9','68b047cf-be23-d0c4-648f-bd7b6e3cfbb1','③ 안전보건 향상을 위해 참고할 수 있는 기술적 내용을','정답 ③. 기술지원규정(KOSHA GUIDE) '' 산업안전보건법령」에서 정한 최소한의 수준이 아니라. 사업장의 자기규율 예방체계 확립을 지원하고. 좀 더 높은 수준의 안전보건 향상을 위해 참고 할 수 있는 기술적 내용을 기술한 자율적 안전보건가이드이다. 풰릐',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('7914f468-0350-876a-9fb2-af76dc5c31b7','11111111-1111-1111-1111-111111111104','mcq','교육심리학의 기본이론 중 학습지도의 원리가 아닌 것은?',2,94)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('089575ec-de7c-9a56-1dbb-60f9627e2270','7914f468-0350-876a-9fb2-af76dc5c31b7','직관의 원리',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eac63686-f2c6-2ad0-721c-64a63ad53bfc','7914f468-0350-876a-9fb2-af76dc5c31b7','개별화의 원리',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('317f7e6d-3e18-4ae2-b82a-3d2586a35d4c','7914f468-0350-876a-9fb2-af76dc5c31b7','계속성의 원리',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5801cfee-8b75-24f1-d559-47641cadcbd1','7914f468-0350-876a-9fb2-af76dc5c31b7','사회화의 원리',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('7914f468-0350-876a-9fb2-af76dc5c31b7','317f7e6d-3e18-4ae2-b82a-3d2586a35d4c','③ 계속성의 원리','정답 ③. 9I 계속성의 원리는 학습지도의 원리가 아닌 파블로프의 조건반사 설에 해당한다. 학습지도 이론 개별화의 원리, 통합의 원리. 사회화의 원리. 자발성의 원리, 직관의 원리 1',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d','11111111-1111-1111-1111-111111111104','mcq','NIOSH Ufting Guideline에서 권장무게한계(RWL) 산출에 사용되는 계수가 아닌 것은?',2,95)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7355aea3-3656-cefa-60f7-4849e628ecc6','bb9f89c5-1809-e63b-d3f0-baed3d817c8d','휴식계수',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('18415fac-0c2d-516c-f931-663a3859209d','bb9f89c5-1809-e63b-d3f0-baed3d817c8d','수평계수',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d910441e-2dbf-fa4d-aec1-7b46a3950973','bb9f89c5-1809-e63b-d3f0-baed3d817c8d','수직계수',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e4596db-ece1-6544-6482-05ed17703d9d','bb9f89c5-1809-e63b-d3f0-baed3d817c8d','비대칭계수',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bb9f89c5-1809-e63b-d3f0-baed3d817c8d','7355aea3-3656-cefa-60f7-4849e628ecc6','① 휴식계수','정답 ①. 휴식계수',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bd7e5a95-40d0-4423-df53-dec4f07df33f','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따른 아세틸렌 용접장치 발생기실의 구조에 관한 설명으로 옳지 않은 것은?',2,96)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5588d641-b3cb-5d41-c0df-5dad18cd9aea','bd7e5a95-40d0-4423-df53-dec4f07df33f','벽은불연성 재료로 할 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('93a05f81-0dbf-896a-0722-1e62247be665','bd7e5a95-40d0-4423-df53-dec4f07df33f','지붕과 천장에는 얇은 철판과 같은 가벼운 불연성 재료',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4235d5b6-014e-e043-b0af-d0c0767d5a9f','bd7e5a95-40d0-4423-df53-dec4f07df33f','벽과 발생기 사이에는 작업에 필요한 공간을 확보할 것',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0809281d-ca64-a459-6c7f-5ffbdeff2a55','bd7e5a95-40d0-4423-df53-dec4f07df33f','배기통을 옥상으로 돌출시키고 그 개구부를 출입구로',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bd7e5a95-40d0-4423-df53-dec4f07df33f','0809281d-ca64-a459-6c7f-5ffbdeff2a55','④ 배기통을 옥상으로 돌출시키고 그 개구부를 출입구로','정답 ④. 부터 1.5[m] 거 리 이내에 설치할 것 발생기실의 구조 벽은 불연성 재료로 하고 철근 콘크리트 또는 그 밖에 이와 같은 수준이 거나 그 이상의 강도를 가진 구조로 할 것 • 지붕과 천장에는 얇은 철판이나 가벼운 불연성 재료를 사용할 것 • 바닥면적의 스 이상의 단면적을 가진 배기통을 옥상으로 돌출시키고 그 개구부를 창이나 출입구로부터 1.5[m] 이상 떨어지도록 할 것 • 출입구의 문은 불연성 재료로 하고 두께 1.5[mm] 이상의 철판이나 그 밖에 그 이상의 강도를 가진 구조로 할 것 • 벽과 발생기 사이에는 발생기의 조정 또는 카바이드 공급 등의 작업을 방해하지 않도록 간격을 확보할 것 5B1',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('827910d7-a2b4-f4f3-e48d-3cb82eb986cf','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 보일러 방호장치로 거리가 가장 먼 것은?',2,97)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4b5346f4-e471-c273-1a00-6977d6ccaf5f','827910d7-a2b4-f4f3-e48d-3cb82eb986cf','고저수위 조절장치',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dee22a87-9995-3509-69bc-0afb5f15cfd6','827910d7-a2b4-f4f3-e48d-3cb82eb986cf','아웃트리거',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('50935b11-86f4-14b6-ab60-d2ce062278f9','827910d7-a2b4-f4f3-e48d-3cb82eb986cf','압력방출장치',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('01ccb652-517f-c18d-4a2c-ee2f0263c701','827910d7-a2b4-f4f3-e48d-3cb82eb986cf','압력제한스위치',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('827910d7-a2b4-f4f3-e48d-3cb82eb986cf','dee22a87-9995-3509-69bc-0afb5f15cfd6','② 아웃트리거','정답 ②. 보일러의 폭발사고를 예방하기 위하여 압력방출장치. 압력제한 스위치. 고저수위 조절장치, 화염검출기 등의 기능이 정상적으로 작동될 수 있도록 유지 • 관리하여야 한다',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('3246dc1b-d72b-feaf-ea66-52d26de168fb','11111111-1111-1111-1111-111111111104','mcq','프레스기의 비상정지스위치 작동 후 슬라이드가 하사점까 지 도달시간이 0.15초 걸렸다면 양수기동식 방호장치의 안 전거리는 최소 몇 [cm] 이상이어야 하는가?',2,98)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('975d15cd-4b42-2156-02bb-20f8f1e3e274','3246dc1b-d72b-feaf-ea66-52d26de168fb','24',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('907ca052-7cf3-7e46-65d2-077b6e081291','3246dc1b-d72b-feaf-ea66-52d26de168fb','240',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ee27e3a1-3818-318b-2657-f97769c88464','3246dc1b-d72b-feaf-ea66-52d26de168fb','15',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0758c5e8-fbe8-56ce-0f8d-3a04b16095e1','3246dc1b-d72b-feaf-ea66-52d26de168fb','150',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('3246dc1b-d72b-feaf-ea66-52d26de168fb','975d15cd-4b42-2156-02bb-20f8f1e3e274','① 24','정답 ①. 24',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('bccb04d0-9aa4-d751-44a9-0a015472a874','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 유해 • 위험 방지를 위한 방호조치가 필요한 기계 기구가 아닌 것은?',2,99)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('dda744a7-2b46-f71a-f917-25437db33e4d','bccb04d0-9aa4-d751-44a9-0a015472a874','예초기',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6503b31d-dd27-a0ce-2334-23aeb6daaeb3','bccb04d0-9aa4-d751-44a9-0a015472a874','지게차',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ed2e8c47-6c4a-e50a-c71e-df82a6dc690c','bccb04d0-9aa4-d751-44a9-0a015472a874','금속절단기',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d8971418-4bcd-590b-c2ff-fbe773b1d755','bccb04d0-9aa4-d751-44a9-0a015472a874','금속탐지기',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('bccb04d0-9aa4-d751-44a9-0a015472a874','d8971418-4bcd-590b-c2ff-fbe773b1d755','④ 금속탐지기','정답 ④. 금속탐지기',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c26639c0-72b0-36b4-2fdf-ebdb477bc30a','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 금속의 용접, 용단에 사용하는 가스 용기를 취급할 때 유의사항으로 틀린 것은?',2,100)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a885c9f1-42d8-4be1-f882-8544b1919c8b','c26639c0-72b0-36b4-2fdf-ebdb477bc30a','밸브의 개폐는 서서히 할 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9cb9dd9e-cb66-b5ef-4bc0-7d7226e77ed1','c26639c0-72b0-36b4-2fdf-ebdb477bc30a','운반하는 경우에는 캡을 벗길 것',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4334053d-1641-9596-62a3-b107718cf260','c26639c0-72b0-36b4-2fdf-ebdb477bc30a','용기의 온도는 4이0C] 이하로 유지할 것',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fad6d6e8-090f-8372-22ec-c0ba1d41e2ad','c26639c0-72b0-36b4-2fdf-ebdb477bc30a','통풍이나 환기가 불충분한 장소에는 설치하지 말 것',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c26639c0-72b0-36b4-2fdf-ebdb477bc30a','9cb9dd9e-cb66-b5ef-4bc0-7d7226e77ed1','② 운반하는 경우에는 캡을 벗길 것','정답 ②. 금속의 용접 • 용단 또는 가열에 사용되는 가스 등의 용기를 운반 하는 경우에는 캡을 씌워야 한다',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5cd09b83-4a1d-be2c-8089-048b783de7fd','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 산업용 로봇의 작동범위에서 교시 등의 작업을 하는 경우에 로봇에 의한 위험을 방지하 기 위한 조치사항으로 틀린 것은?',2,101)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f09a0e06-1eb6-a7fb-2e08-bfa51dd3f729','5cd09b83-4a1d-be2c-8089-048b783de7fd','2명 이상의 근로자에게 작업을 시킬 경우의 신호방법',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d18eebd6-cd9a-3c0c-8b46-ecb6545a7ebb','5cd09b83-4a1d-be2c-8089-048b783de7fd','작업 중의 매니퓰레이터 속도에 관한 지침을 정하고 그',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d294f088-c5fc-6bab-8249-4e05bbcf9094','5cd09b83-4a1d-be2c-8089-048b783de7fd','작업을 하는 동안 다른 작업자가 작동시킬 수 없도록',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ebcca066-dedc-f4be-5ce5-a0c0093a997f','5cd09b83-4a1d-be2c-8089-048b783de7fd','작업에 종사하고 있는 근로자가 이상을 발견하면 즉시',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5cd09b83-4a1d-be2c-8089-048b783de7fd','ebcca066-dedc-f4be-5ce5-a0c0093a997f','④ 작업에 종사하고 있는 근로자가 이상을 발견하면 즉시','정답 ④. 안전담당자에 게 보고하고 계속해서 로봇을 운전한다. 9 산업용 로봇의 작업 시 작업에 종사하고 있는 근로자 또는 그 근 로자를 감시하는 사람은 이상을 발견하면 즉시 로봇의 운전을 정지시키기 위한 조치를 하여야 한다',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c64d2a10-e571-5674-c1c1-2561b85871e9','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 안전인증대상 기계 • 기구 및 설비가 아닌 것은?',2,102)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1fe67c91-bde1-dbe3-c5f1-5150693eaa89','c64d2a10-e571-5674-c1c1-2561b85871e9','연삭기',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('977300bd-dfd9-8092-c9f7-21250de292ef','c64d2a10-e571-5674-c1c1-2561b85871e9','롤러기',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8d27eb90-9db9-8ae4-89cb-854d2302b8c4','c64d2a10-e571-5674-c1c1-2561b85871e9','압력용기',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2491c915-cd09-e7fd-ea68-32382f03fae7','c64d2a10-e571-5674-c1c1-2561b85871e9','고소（高所）작업대',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c64d2a10-e571-5674-c1c1-2561b85871e9','1fe67c91-bde1-dbe3-c5f1-5150693eaa89','① 연삭기','정답 ①. 연삭기는 안전인증대상이 아닌 자율안전확인대상 기계 • 기구이다. 안전인증대상 기계 • 기구 및 설비 프레스. 전단기 및 절곡기. 크레인. 리프트, 압력용기. 롤러기. 사출성형기. 고소작업대. 곤돌라',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c7176a29-e5d4-f1c4-727d-7174381d7d30','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 로봇을 운전하는 경우 근로자가 로 봇에 부딪힐 위험이 있을 때 높이는 최소 얼마 이상의 울타 리를 설치하여야 하는가?（단, 로봇의 가동범위 등을 고려하 여 높이로 인한 위험성이 없는 경우는 제외한다.）',2,103)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f6b07845-8083-d043-048b-c41e00de1767','c7176a29-e5d4-f1c4-727d-7174381d7d30','0.9[m]',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ee6858a2-352f-e245-478f-1719d8ff0495','c7176a29-e5d4-f1c4-727d-7174381d7d30','1.2[m]',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('40398449-35c4-cea7-6949-4e5395d697da','c7176a29-e5d4-f1c4-727d-7174381d7d30','1.5[m]',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('06880989-3283-e7cc-fd53-33de4553d5f5','c7176a29-e5d4-f1c4-727d-7174381d7d30','1.8[m]',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c7176a29-e5d4-f1c4-727d-7174381d7d30','06880989-3283-e7cc-fd53-33de4553d5f5','④ 1.8[m]','정답 ④. 로봇의 운전으로 인하여 근로자에게 발생할 수 있는 부상 등의 위험을 방지하기 위하여 높이 1.8[m] 이상의 울타리를 설치하여야 한다. 1',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('30ab0ba9-99aa-7555-f316-31717da856ad','11111111-1111-1111-1111-111111111104','mcq','어느 변전소에서 고장전류가 유입되었을 때 도전성 구조물 과 그 부근 지표상의 점과의 사이（약 1[m｝）의 허용접촉전압 씌으 은 약 몇 [V]인가?（단, 심실세동전류: 4 [A], 인체 의 저항: 1,OOO[Q], 지표면의 저항률: 150[Q • m], 통전시 간을 1초로 한다.）',2,104)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9739b2d5-3808-a955-204a-bcfc0b20a994','30ab0ba9-99aa-7555-f316-31717da856ad','164',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('851c6203-5d04-db0a-26a9-c1303142619d','30ab0ba9-99aa-7555-f316-31717da856ad','186',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('eadb6be3-316c-325c-923f-9e55c7b7d091','30ab0ba9-99aa-7555-f316-31717da856ad','202',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('51ef42ae-fed4-fbfb-d370-7785f86bbd18','30ab0ba9-99aa-7555-f316-31717da856ad','228',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('30ab0ba9-99aa-7555-f316-31717da856ad','eadb6be3-316c-325c-923f-9e55c7b7d091','③ 202','정답 ③. 202',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('420ff15c-6112-daab-a554-3d33e82790de','11111111-1111-1111-1111-111111111104','mcq','유입차단기의 약어로 옳은 것은?',2,105)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('09cc6ab9-6175-ff87-6bb0-378e7cbfa33a','420ff15c-6112-daab-a554-3d33e82790de','OCB',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('be0e7272-a4b0-f870-756d-b69c93698c09','420ff15c-6112-daab-a554-3d33e82790de','ELB',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4c779285-4ade-4e79-bce8-3efa3f867c9b','420ff15c-6112-daab-a554-3d33e82790de','VCB',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6927992e-3ed7-92fb-e125-e268f5fdb8c1','420ff15c-6112-daab-a554-3d33e82790de','MCCB',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('420ff15c-6112-daab-a554-3d33e82790de','09cc6ab9-6175-ff87-6bb0-378e7cbfa33a','① OCB','정답 ①. OCB',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('a1d28050-0526-0ec2-9095-160e42d83f53','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건기준에 관한 규칙」제319조에 따라 감전될 우려가 있는 장소에서 작업을 하기 위해서는 전로를 차단하 여야 한다. 전로 차단을 위한 시행 절차 중 틀린 것은?',2,106)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8d5aa150-896c-ac34-5f52-9ddeb5c6428e','a1d28050-0526-0ec2-9095-160e42d83f53','전기기기 등에 공급되는 모든 전원을 관련 도면, 배선',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('79a6b325-1a98-f54a-8151-3b2ae4363d1d','a1d28050-0526-0ec2-9095-160e42d83f53','각 단로기를 개방한 후 전원 차단',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('49b6fc4a-1c95-530b-8986-38ab4552b6f8','a1d28050-0526-0ec2-9095-160e42d83f53','단로기 개방 후 차단장치나 단로기 등에 잠금장치 및',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('622a2c3e-abb2-27f2-e413-a2578f3251d6','a1d28050-0526-0ec2-9095-160e42d83f53','잔류전하 방전 후 검전기를 이용하여 작업 대상 기기가',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('a1d28050-0526-0ec2-9095-160e42d83f53','79a6b325-1a98-f54a-8151-3b2ae4363d1d','② 각 단로기를 개방한 후 전원 차단','정답 ②. 충전되어 있는지 확인 K9 전원을 차단한 후 각 단로기 등을 개방하고 확인하여야 한다',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('9d09ea62-e5d0-0de9-1089-93dee82655d2','11111111-1111-1111-1111-111111111104','mcq','다음 중「산업안전보건법령」상 위험물질의 종류와 해당 물 질이 올바르게 연결된 것은?',2,107)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f32f372d-3927-d982-44df-20c17f0afc57','9d09ea62-e5d0-0de9-1089-93dee82655d2','부식성 산류-아세트산（농도 90[%]）',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1b0f01e0-979d-22b8-67a1-0f18269228ec','9d09ea62-e5d0-0de9-1089-93dee82655d2','부식성 염기류—아세톤（농도 90[%]）',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fc91ab85-f702-b78e-fe30-fea387545ca0','9d09ea62-e5d0-0de9-1089-93dee82655d2','인화성 가스-이황화탄소',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d8d4a288-e2c8-ed07-539c-d46f7ba6d22e','9d09ea62-e5d0-0de9-1089-93dee82655d2','인화성 가스-수산화칼륨',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('9d09ea62-e5d0-0de9-1089-93dee82655d2','f32f372d-3927-d982-44df-20c17f0afc57','① 부식성 산류-아세트산（농도 90[%]）','정답 ①. 부식성 산류-아세트산（농도 90[%]）',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('c33c0b92-9556-d4cf-e192-3663e062534d','11111111-1111-1111-1111-111111111104','mcq','할론소화약제 중 H기on 2402의 화학식으로 옳은 것은?',2,108)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a5db05d-2d46-161b-6e0b-58742a8ae33f','c33c0b92-9556-d4cf-e192-3663e062534d','C2F4Br2',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('40933588-bdbe-773e-f416-bc1869416533','c33c0b92-9556-d4cf-e192-3663e062534d','C2H4Br2',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('614fd856-9ce6-88e4-9ca8-d66992ebd26a','c33c0b92-9556-d4cf-e192-3663e062534d','C2Br4H2',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('50a0dbb9-e568-70f0-0562-93f3ddb62320','c33c0b92-9556-d4cf-e192-3663e062534d','C2Br4F2',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('c33c0b92-9556-d4cf-e192-3663e062534d','3a5db05d-2d46-161b-6e0b-58742a8ae33f','① C2F4Br2','정답 ①. C2F4Br2',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('09fb702f-b409-d829-397a-96be2a089dae','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 인화성 가스가 발생할 우려가 있는 지하작업장에서 작업하는 경우 조치사항으로 적절하 지 않은 것은?',2,109)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('ddac6da0-066b-5172-bb42-064995110efb','09fb702f-b409-d829-397a-96be2a089dae','매일 작업을 시작하기 전 해당 가스의 농도를측정한다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a940feb0-6e5b-87be-6677-f5881955e0a1','09fb702f-b409-d829-397a-96be2a089dae','가스의 누출이 의심되는 경우 해당 가스의 농도를 측정',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0bde3af5-1a26-57f0-2eb5-68bcaa2d092b','09fb702f-b409-d829-397a-96be2a089dae','장시간 작업을 계속하는 경우 6시간마다 해당 가스의',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6340d6a7-2ecd-ba53-d8cb-bcb04c9d193d','09fb702f-b409-d829-397a-96be2a089dae','가스의 농도가 인화하한계 값의 25[%] 이상으로 밝혀',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('09fb702f-b409-d829-397a-96be2a089dae','0bde3af5-1a26-57f0-2eb5-68bcaa2d092b','③ 장시간 작업을 계속하는 경우 6시간마다 해당 가스의','정답 ③. 장시간 작업을 계속하는 경우 6시간마다 해당 가스의',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('f9e983ec-94f3-5c37-a4ff-390465589512','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 지반의 종류에 따른 굴착면의 기울 기 기준으로 옳지 않은 것은?',2,110)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8f7b277f-88dd-e3a2-42a2-288150626278','f9e983ec-94f3-5c37-a4ff-390465589512','경암一 1 ： 1.0',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('19243dc4-f750-cd49-ae6d-f29385e91b17','f9e983ec-94f3-5c37-a4ff-390465589512','연암 및 풍화암 -i：i.o',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('55d686e9-a293-ef07-1f12-32e6f8612e01','f9e983ec-94f3-5c37-a4ff-390465589512','모래 — 1 ： 1.8',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('3a12928c-3132-d15b-b9db-38366c42b957','f9e983ec-94f3-5c37-a4ff-390465589512','그 밖의 흙 - 1 : 1.2',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('f9e983ec-94f3-5c37-a4ff-390465589512','8f7b277f-88dd-e3a2-42a2-288150626278','① 경암一 1 ： 1.0','정답 ①. 경암一 1 ： 1.0',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('d34e2e22-dbf0-eb44-7459-cd756c817cc7','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 타워크레인을 와이어로프로 지 지하는 경우, 와이어로프의 설치각도는 수평면에서 몇 도 이내로 해야 하는가?',2,111)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b1b2f231-7fae-c254-6785-20cb755b8cb3','d34e2e22-dbf0-eb44-7459-cd756c817cc7','30°',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('9d01bd87-df77-99e5-cb9e-d8174c466290','d34e2e22-dbf0-eb44-7459-cd756c817cc7','45°',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8ed00d5f-d4e7-1274-4c56-62fe974c8e8e','d34e2e22-dbf0-eb44-7459-cd756c817cc7','60°',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8c9d45b1-7abf-2e9d-fa90-1161241433f5','d34e2e22-dbf0-eb44-7459-cd756c817cc7','75。',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('d34e2e22-dbf0-eb44-7459-cd756c817cc7','8ed00d5f-d4e7-1274-4c56-62fe974c8e8e','③ 60°','정답 ③. 타워크레인을 와이어로프로 지지하는 경우 와이어로프 설치각도 는 수평면에서 60° 이내로 하되, 지지점은 4개소 이상으로 하고. 같은 각도 로 설치하여야 한다. 폐SI',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('0c84e609-0e5d-05e7-5fb7-66fe52bb8281','11111111-1111-1111-1111-111111111104','mcq','화물을 적재하는 경우의 준수사항으로 옳지 않은 것은?',2,112)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2c4822ee-0587-c3aa-4475-618f92c1baf9','0c84e609-0e5d-05e7-5fb7-66fe52bb8281','침하 우려가 없는 튼튼한 기반 위에 적재할 것',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bdf5086f-e0c0-98f6-9784-2f7b232a4ae9','0c84e609-0e5d-05e7-5fb7-66fe52bb8281','건물의 칸막이나 벽 등이 화물의 압력에 견딜 만큼의',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('898fbcf3-f6e7-d615-44a9-53be483c26cb','0c84e609-0e5d-05e7-5fb7-66fe52bb8281','불안정할 정도로 높이 쌓아 올리지 말 것',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f814b897-d4e6-0730-4e17-d62ce536b028','0c84e609-0e5d-05e7-5fb7-66fe52bb8281','하중이 한쪽으로 치우치더라도 화물을 최대한 효율적',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('0c84e609-0e5d-05e7-5fb7-66fe52bb8281','f814b897-d4e6-0730-4e17-d62ce536b028','④ 하중이 한쪽으로 치우치더라도 화물을 최대한 효율적','정답 ④. 으로적재할 것 화물의 적재 시 준수사항 • 침하 우려가 없는 튼튼한 기반 위에 적재할 것 • 건물의 칸막이나 벽 등이 화물의 압력에 견딜 만큼의 강도를 지니지 아 니한 경우에는 칸막이나 벽에 기대어 적재하지 않도록 할 것 • 불안정할 정도로 높이 쌓아 올리지 말 것 • 하중이 한쪽으로 치우치지 않도록 쌓을 것',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('241aec3e-c679-1dae-6102-71576b554b4b','11111111-1111-1111-1111-111111111104','mcq','사업주가 유해위험방지계획서 제출 후 건설공사 중 6개월 이내마다 안전보건공단의 확인을 받아야 할 내용이 아닌 것은?',2,113)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c60a01ec-f79a-febd-e2c3-c700d31007d0','241aec3e-c679-1dae-6102-71576b554b4b','유해위험방지계획서의 내용과 실제공사 내용이 부합하',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('798bfe85-8f09-4ba2-bbd4-4defa11815b4','241aec3e-c679-1dae-6102-71576b554b4b','유해위험방지계획서 변경내용의 적정성',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0d9a11f1-0414-0329-3af2-b3c2ee0d5191','241aec3e-c679-1dae-6102-71576b554b4b','자율안전관리업체 유해위험방지계획서 제출 - 심사 면제',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('7d511ffe-c55e-9a6a-b6a6-f41f5d7e18b7','241aec3e-c679-1dae-6102-71576b554b4b','추가적인 유해 • 위험요인의 존재 여부',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('241aec3e-c679-1dae-6102-71576b554b4b','0d9a11f1-0414-0329-3af2-b3c2ee0d5191','③ 자율안전관리업체 유해위험방지계획서 제출 - 심사 면제','정답 ③. 유해위험방지계획서 확인사항 • 유해위험방지계획서의 내용과 실제공사 내용이 부합하는지 여부 • 유해위험방지계획서 변경내용의 적정성 • 추가적인 유해 - 위험요인의 존재 여부 E ?l',array['산업안전기사','2024-1'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('90337d61-eee8-5bfd-2c22-8e14d9fde183','11111111-1111-1111-1111-111111111104','mcq','「보호구 안전인증 고시」상 안전인증 방독마스크의 정화통 외부 측면의 표시색이 회색이 아닌 것은?',2,114)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('a1575ab4-3346-0e77-4746-c37e3c555e2d','90337d61-eee8-5bfd-2c22-8e14d9fde183','할로겐용 정화통',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('f01b8338-ac47-1c9d-677b-4c7e1cf86a10','90337d61-eee8-5bfd-2c22-8e14d9fde183','황화수소용 정화통',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fab0f04f-8ecd-f266-f474-19f1548de08f','90337d61-eee8-5bfd-2c22-8e14d9fde183','시안화수소용 정화통',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('013e9013-5835-6392-09c8-bf7f65fbb67b','90337d61-eee8-5bfd-2c22-8e14d9fde183','암모니아용정화통',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('90337d61-eee8-5bfd-2c22-8e14d9fde183','013e9013-5835-6392-09c8-bf7f65fbb67b','④ 암모니아용정화통','정답 ④. 암모니아용정화통',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('1e445429-a7fe-306d-6a71-45149903f73b','11111111-1111-1111-1111-111111111104','mcq','길포드의 Y-G 성격검사에서 정서불안적, 활동적, 외향적 성향에 해당하는 형의 종류는?',2,115)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b7c652fa-8040-7795-3b93-9c4779d76c16','1e445429-a7fe-306d-6a71-45149903f73b','A형',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('89757dab-830a-c79a-5475-0b91a8ae757e','1e445429-a7fe-306d-6a71-45149903f73b','B형',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('673435de-259a-5764-103c-22d4404d8c2a','1e445429-a7fe-306d-6a71-45149903f73b','C형',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('45166fa4-b4e9-837a-0cf0-a0bdd5751e69','1e445429-a7fe-306d-6a71-45149903f73b','D형',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('1e445429-a7fe-306d-6a71-45149903f73b','89757dab-830a-c79a-5475-0b91a8ae757e','② B형','정답 ②. B형',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5e9ce289-3b12-52e7-60ad-503c0062763f','11111111-1111-1111-1111-111111111104','mcq','다음 중「산업안전보건법령」상 중대재해에 해당되지 않는 것은?',2,116)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('6080d178-7c71-95c2-68fc-4c9fa8486751','5e9ce289-3b12-52e7-60ad-503c0062763f','3개월 이상의 요양을 요하는 부상자가 동시에 2명 이',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2','5e9ce289-3b12-52e7-60ad-503c0062763f','직업성 질병자가동시에 5명 이상 발생한 재해',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('d30e1bb6-3c59-8a59-f847-199036c66373','5e9ce289-3b12-52e7-60ad-503c0062763f','부상자가 동시에 10명 이상 발생한 재해',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('59072d8b-252a-878e-5b5f-a2d3cff5cd2b','5e9ce289-3b12-52e7-60ad-503c0062763f','사망자가 1명 이상 발생한 재해',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5e9ce289-3b12-52e7-60ad-503c0062763f','bc6c4faf-2b93-d8b6-9e4c-09b370bf9fa2','② 직업성 질병자가동시에 5명 이상 발생한 재해','정답 ②. 중대재해의 범위 • 사망자가 1명 이상 발생한 재해 • 3개월 이상의 요양이 필요한 부상자가 동시에 2명 이상 발생한 재해 • 부상자 또는 직업성 질병자가 동시에 10명 이상 발생한 재해 W',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b','11111111-1111-1111-1111-111111111104','mcq','결함수분석법(FTA)에서의 미니멀 컷셋과 미니멀 패스셋에 관한 설명으로 맞는 것은?',2,117)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('cb6fa231-5f0e-e93c-b215-5d6f2afa475b','5ef85f62-f54b-7637-fddb-ed2b4cfa657b','미니멀 컷셋은 시스템의 신뢰성을 표시하는 것이다.',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('1bce5a9f-9f25-8f77-f01c-581a9527cdf3','5ef85f62-f54b-7637-fddb-ed2b4cfa657b','미니멀 패스셋은 시스템의 위험성을 표시하는 것이다.',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('e7712bd4-9fa5-c360-bc04-da3d75d4191a','5ef85f62-f54b-7637-fddb-ed2b4cfa657b','미니멀 패스셋은 시스템의 고장을 발생시키는 최소의',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('fbb99be9-d385-cee2-33c8-9f6c437fbba2','5ef85f62-f54b-7637-fddb-ed2b4cfa657b','미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('5ef85f62-f54b-7637-fddb-ed2b4cfa657b','fbb99be9-d385-cee2-33c8-9f6c437fbba2','④ 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한','정답 ④. 미니멀 컷셋은 정상사상(Top Event)을 일으키기 위한',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('516bcc9d-b621-a87b-08a9-73314143d8aa','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」에 따라 제조업 등 유해위험방지계획서 를 작성하고자 할 때 관련 규정에 따라 1 명 이상 포함시켜 야 하는 사람의 자격으로 적합하지 않은 것은?',2,118)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d65e62d-da66-f05b-a424-66d91e9f8f94','516bcc9d-b621-a87b-08a9-73314143d8aa','한국산업안전보건공단이 실시하는 관련교육을 8시간',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('68f1a6fb-a3e4-6c15-7e4f-c41b17476159','516bcc9d-b621-a87b-08a9-73314143d8aa','기계, 재료, 화학, 전기, 전자, 안전관리 또는 환경분야',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('0d10601f-ef20-12d4-e8b9-c3cd0050dc77','516bcc9d-b621-a87b-08a9-73314143d8aa','관련분야 기사 자격을 취득한 사람으로서 해당 분야에',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('b2e89a0d-84b2-79b8-2d8f-f485c5509e12','516bcc9d-b621-a87b-08a9-73314143d8aa','기계안전, 전기안전, 화공안전분야의 산업안전지도사',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('516bcc9d-b621-a87b-08a9-73314143d8aa','5d65e62d-da66-f05b-a424-66d91e9f8f94','① 한국산업안전보건공단이 실시하는 관련교육을 8시간','정답 ①. 또는 산업보건지도사 자격을 취득한 사람 K9 제조업 등 유해위험방지계획서 작성자 계획서를 작성할 때 다음의 자격을 갖춘 사람 또는 공단이 실시하는 관련 교육을 20시간 이상 이수한 사람 중 1명 이상을 포함시켜야 한다. • 기계, 재료. 화학. 전기 전자. 안전관리 또는 환경분야 기술사 자격을 취 득한 사람 • 기계안전 - 전기안전 화공안전분야의 산업안전지도사 또는 산업보건지 도사 자격을 취득한 사람 • 관련분야 기사 • 산업기사 자격을 취득한 사람으로서 해당 분야에서 3년 (산업기사는 5년) 이상 근무한 경력이 있는 사람 E S1',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('aac70f7b-6567-0969-9468-b9cf52a80531','11111111-1111-1111-1111-111111111104','mcq','예비위험분석(PHA)에서 식별된 사고의 범주가 아닌 것은?',2,119)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8cd926f4-7cd6-b961-948a-3a023805e01a','aac70f7b-6567-0969-9468-b9cf52a80531','중대 (Critical)',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('c1b0211d-a789-ab0c-fc66-f7643eb1e678','aac70f7b-6567-0969-9468-b9cf52a80531','한계 적 (Marginal)',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('8749539e-144f-93c7-f66e-8e8d341c8813','aac70f7b-6567-0969-9468-b9cf52a80531','파국적 (Catastrophic)',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2939dedd-3e40-0f58-b0f2-056560e50ea6','aac70f7b-6567-0969-9468-b9cf52a80531','수용가능(Acceptable)',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('aac70f7b-6567-0969-9468-b9cf52a80531','2939dedd-3e40-0f58-b0f2-056560e50ea6','④ 수용가능(Acceptable)','정답 ④. 수용가능(Acceptable)',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;

insert into public.questions (id,subject_id,type,body,difficulty,number) values
 ('abc36319-c16f-0171-493c-71eda1f117cb','11111111-1111-1111-1111-111111111104','mcq','「산업안전보건법령」상 프레스 및 전단기에서 안전블록을 사용해야 하는 작업으로 가장 거리가 먼 것은?',2,120)
on conflict (id) do update set body=excluded.body, number=excluded.number;
insert into public.question_options (id,question_id,body,sort_order) values
 ('2850fbe6-393a-db22-a154-0e8e5965c67c','abc36319-c16f-0171-493c-71eda1f117cb','금형 가공작업',0)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('4e0e0f01-2d99-7fac-5ee2-2765c22a69cc','abc36319-c16f-0171-493c-71eda1f117cb','금형 해체작업',1)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('5d4c7a83-f573-6e4f-3f39-8a8af234720e','abc36319-c16f-0171-493c-71eda1f117cb','금형 부착작업',2)
on conflict (id) do update set body=excluded.body;
insert into public.question_options (id,question_id,body,sort_order) values
 ('786c99bb-d553-a726-4250-0e4686896548','abc36319-c16f-0171-493c-71eda1f117cb','금형 조정작업',3)
on conflict (id) do update set body=excluded.body;
insert into public.question_answers (question_id,correct_option_id,answer_text,explanation,concepts) values
 ('abc36319-c16f-0171-493c-71eda1f117cb','2850fbe6-393a-db22-a154-0e8e5965c67c','① 금형 가공작업','정답 ①. 프레스 등의 금형을 부착 • 해체 또는 조정하는 작업을 할 때에 해당 작업에 종사하는 근로자의 신체가 위험한계 내에 있는 경우 슬라이드 가 갑자기 작동함으로써 근로자에게 발생할 우려가 있는 위험을 방지하기 위하여 안전블록을 사용하는 등 필요한 조치를 하여야 한다. 1',array['산업안전기사','2024-2'])
on conflict (question_id) do update set correct_option_id=excluded.correct_option_id, answer_text=excluded.answer_text, explanation=excluded.explanation, concepts=excluded.concepts;
