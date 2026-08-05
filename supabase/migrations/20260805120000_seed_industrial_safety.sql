-- 산업안전기사 주제 + 2025년 1회 샘플 19문항 (001~019)
-- Supabase SQL Editor에서 실행하거나 supabase db push
-- 출처: 개인 학습용 import. 공개 재배포 금지.

insert into public.subjects (id, name, slug, sort_order)
values (
  '11111111-1111-1111-1111-111111111104',
  '산업안전기사',
  'industrial-safety',
  5
)
on conflict (slug) do update set
  name = excluded.name,
  sort_order = excluded.sort_order,
  is_active = true;

-- helper: insert one mcq
-- ids: question aaaa...NN, options bbbb...NN0-3

-- 001
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', '11111111-1111-1111-1111-111111111104', 'mcq',
   '방진마스크의 사용 조건 중 산소농도의 최소기준으로 옳은 것은?', 1, 1)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0010', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', '16[%]', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0011', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', '18[%]', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0012', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', '21[%]', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0013', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', '23.5[%]', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0001', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0011', '② 18[%]',
   '방진마스크는 산소농도 18[%] 이상인 장소에서 사용해야 합니다.',
   array['안전보호구', '방진마스크', '산소농도'])
on conflict (question_id) do nothing;

-- 002
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', '11111111-1111-1111-1111-111111111104', 'mcq',
   'Y-K(Yutaka–Kohate) 성격검사에 관한 사항으로 옳은 것은?', 2, 2)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0020', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', 'C, C''형은 적응이 빠르다.', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0021', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', 'M, M''형은 내구성, 집념이 부족하다.', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0022', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', 'S, S''형은 담력, 자신감이 강하다.', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0023', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', 'P, P''형은 운동, 결단이 빠르다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0002', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0020', '① C, C''형은 적응이 빠르다.',
   'C·C''형은 담즙질로 운동·결단·눈치가 빠르고 적응이 빠른 편입니다.',
   array['산업안전심리', 'Y-K 성격검사'])
on conflict (question_id) do nothing;

-- 003
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', '11111111-1111-1111-1111-111111111104', 'mcq',
   '「산업안전보건법령」에 따른 특정 행위의 지시 및 사실의 고지에 사용되는 안전보건표지의 색도기준으로 옳은 것은?', 2, 3)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0030', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', '2.5G 4/10', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0031', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', '2.5PB 4/10', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0032', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', '5Y 8.5/12', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0033', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', '7.5R 4/14', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0003', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0031', '② 2.5PB 4/10',
   '지시(특정 행위 지시·사실 고지)용 파란색 표지 색도기준은 2.5PB 4/10 입니다.',
   array['안전보건표지', '색도기준'])
on conflict (question_id) do nothing;

-- 004
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', '11111111-1111-1111-1111-111111111104', 'mcq',
   '인간관계의 메커니즘 중 다른 사람의 행동양식이나 태도를 투입시키거나 다른 사람 가운데서 자기와 비슷한 것을 발견하는 것은?', 2, 4)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0040', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', '동일화', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0041', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', '일체화', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0042', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', '투사', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0043', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', '공감', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0004', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0040', '① 동일화',
   '동일화(identification)는 타인의 행동양식·태도를 받아들이거나 유사점을 발견하는 과정입니다.',
   array['행동과학', '동일화'])
on conflict (question_id) do nothing;

-- 005
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', '11111111-1111-1111-1111-111111111104', 'mcq',
   '운동의 시지각(착각현상) 중 자동운동이 발생하기 쉬운 조건에 해당하지 않는 것은?', 2, 5)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0050', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', '광점이 작은 것', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0051', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', '대상이 단순한 것', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0052', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', '광의 강도가 큰 것', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0053', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', '시야의 다른 부분이 어두운 것', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0005', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0052', '③ 광의 강도가 큰 것',
   '자동운동은 광점이 작고 대상이 단순하며 광 강도가 작을 때 생기기 쉽습니다.',
   array['시지각', '자동운동'])
on conflict (question_id) do nothing;

-- 006
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', '11111111-1111-1111-1111-111111111104', 'mcq',
   '유기화합물용 방독마스크 시험가스의 종류가 아닌 것은?', 2, 6)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0060', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', '염소가스 또는 증기', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0061', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', '시클로헥산', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0062', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', '디메틸에테르', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0063', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', '이소부탄', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0006', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0060', '① 염소가스 또는 증기',
   '염소는 할로겐용 시험가스입니다. 유기화합물용은 시클로헥산·디메틸에테르·이소부탄 등입니다.',
   array['방독마스크', '시험가스'])
on conflict (question_id) do nothing;

-- 007
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', '11111111-1111-1111-1111-111111111104', 'mcq',
   '다음 중 헤드십(Headship)에 관한 설명과 가장 거리가 먼 것은?', 2, 7)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0070', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', '권한의 근거는 공식적이다.', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0071', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', '지휘의 형태는 민주주의적이다.', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0072', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', '상사와 부하와의 사회적 간격은 넓다.', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0073', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', '상사와 부하와의 관계는 지배적이다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0007', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0071', '② 지휘의 형태는 민주주의적이다.',
   '헤드십은 권위적 지휘가 특징입니다. 민주주의적 지휘는 해당하지 않습니다.',
   array['헤드십', '리더십'])
on conflict (question_id) do nothing;

-- 008
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', '11111111-1111-1111-1111-111111111104', 'mcq',
   'AE형 안전모에 있어 내전압성이란 최대 몇 [V] 이하의 전압에 견디는 것을 말하는가?', 1, 8)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0080', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', '750', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0081', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', '1,000', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0082', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', '3,000', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0083', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', '7,000', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0008', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0083', '④ 7,000',
   'AE형 안전모 내전압성은 7,000[V] 이하입니다.',
   array['안전모', '내전압성'])
on conflict (question_id) do nothing;

-- 009
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', '11111111-1111-1111-1111-111111111104', 'mcq',
   '대뇌의 Human Error로 인한 착오요인이 아닌 것은?', 2, 9)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0090', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', '인지과정 착오', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0091', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', '조치과정 착오', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0092', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', '판단과정 착오', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0093', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', '행동과정 착오', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0009', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0093', '④ 행동과정 착오',
   '인지·판단·조치 과정 착오가 해당합니다. 행동과정 착오는 아닙니다.',
   array['Human Error', '착오'])
on conflict (question_id) do nothing;

-- 010
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', '11111111-1111-1111-1111-111111111104', 'mcq',
   '안전보건교육계획에 포함하여야 할 사항이 아닌 것은?', 2, 10)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0100', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', '교육의 종류 및 대상', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0101', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', '교육의 과목 및 내용', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0102', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', '교육장소 및 방법', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0103', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', '교육지도안', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0010', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0103', '④ 교육지도안',
   '교육계획 포함 사항에 교육지도안은 없습니다.',
   array['안전보건교육', '교육계획'])
on conflict (question_id) do nothing;

-- 011
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', '11111111-1111-1111-1111-111111111104', 'mcq',
   '아담스(Edward Adams)의 사고연쇄반응 이론 중 관리자가 의사결정을 잘못하거나 감독자가 관리적 잘못을 하였을 때의 단계에 해당되는 것은?', 2, 11)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0110', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', '사고', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0111', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', '작전적 에러', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0112', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', '관리구조 결함', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0113', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', '전술적 에러', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0011', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0111', '② 작전적 에러',
   '2단계 작전적 에러 = 관리자 의사결정 잘못·감독자 관리적 잘못.',
   array['아담스', '사고연쇄'])
on conflict (question_id) do nothing;

-- 012
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', '11111111-1111-1111-1111-111111111104', 'mcq',
   '주의의 특성에 관한 설명 중 틀린 것은?', 2, 12)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0120', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', '한 지점에 주의를 집중하면 다른 곳의 주의는 약해진다.', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0121', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', '장시간 주의를 집중하려 해도 주기적으로 부주의의 리듬이 존재한다.', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0122', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', '의식이 과잉상태인 경우 최고의 주의집중이 가능해진다.', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0123', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', '여러 자극을 지각할 때 소수의 현란한 자극에 선택적 주의를 기울이는 경향이 있다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0012', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0122', '③ 의식이 과잉상태인 경우 최고의 주의집중이 가능해진다.',
   '의식 과잉은 부주의 원인이 되기 쉽습니다.',
   array['주의', '부주의'])
on conflict (question_id) do nothing;

-- 013
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', '11111111-1111-1111-1111-111111111104', 'mcq',
   '버드(Bird)의 재해분포에 따르면 20건의 경상(물적, 인적상해) 사고가 발생했을 때 무상해·무사고(위험순간) 고장 발생건수는?', 2, 13)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0130', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', '200', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0131', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', '600', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0132', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', '1,200', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0133', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', '12,000', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0013', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0132', '③ 1,200',
   '경상 : 무상해·무사고 = 10 : 600 → 20 × 60 = 1,200건.',
   array['버드', '재해구성비율'])
on conflict (question_id) do nothing;

-- 014
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', '11111111-1111-1111-1111-111111111104', 'mcq',
   '「산업안전보건법령」상 안전보건관리책임자 등에 대한 교육 시간 기준으로 틀린 것은?', 3, 14)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0140', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', '보건관리자, 보건관리전문기관의 종사자 보수교육: 24시간 이상', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0141', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', '안전관리자, 안전관리전문기관의 종사자 신규교육: 34시간 이상', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0142', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', '안전보건관리책임자 보수교육: 6시간 이상', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0143', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', '건설재해예방전문지도기관의 종사자 신규교육: 24시간 이상', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0014', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0143', '④ 건설재해예방전문지도기관의 종사자 신규교육: 24시간 이상',
   '건설재해예방전문지도기관 종사자는 신규 34시간 이상입니다.',
   array['교육시간', '법령'])
on conflict (question_id) do nothing;

-- 015
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', '11111111-1111-1111-1111-111111111104', 'mcq',
   '토의법의 유형 중 다음에서 설명하는 것은?

새로운 자료나 교재를 제시하고, 문제점을 피교육자로 하여금 제기하도록 하거나 피교육자의 의견을 여러 가지 방법으로 발표하게 하고 청중과 토론자 간 활발한 의견개진 과정을 통하여 합의를 도출해 내는 방법이다.', 2, 15)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0150', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', '포럼', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0151', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', '심포지엄', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0152', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', '자유토의', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0153', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', '패널 디스커션', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0015', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0150', '① 포럼',
   '포럼(Forum)은 자료 제시 후 문제 제기·의견 발표·합의 도출 방식입니다.',
   array['토의법', '포럼'])
on conflict (question_id) do nothing;

-- 016
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', '11111111-1111-1111-1111-111111111104', 'mcq',
   'Line-Staff형 안전보건관리조직에 관한 특징이 아닌 것은?', 2, 16)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0160', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', '조직원 전원을 자율적으로 안전활동에 참여시킬 수 있다.', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0161', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', '스태프가 월권행위할 경우가 있으며 라인스태프에 의존 또는 활용치 않는 경우가 있다.', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0162', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', '생산부문은 안전에 대한 책임과 권한이 없다.', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0163', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', '명령계통과 조언의 권고적 참여가 혼동되기 쉽다.', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0016', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0162', '③ 생산부문은 안전에 대한 책임과 권한이 없다.',
   '생산부문에 권한 없음은 스태프형 특징입니다.',
   array['Line-Staff', '안전조직'])
on conflict (question_id) do nothing;

-- 017
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', '11111111-1111-1111-1111-111111111104', 'mcq',
   '직무적성검사의 특징과 가장 거리가 먼 것은?', 2, 17)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0170', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', '재현성', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0171', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', '객관성', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0172', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', '타당성', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0173', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', '표준화', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0017', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0170', '① 재현성',
   '직무적성검사 특징: 신뢰성·객관성·표준화·타당성·실용성.',
   array['직무적성검사'])
on conflict (question_id) do nothing;

-- 018
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', '11111111-1111-1111-1111-111111111104', 'mcq',
   '매슬로우(Maslow)의 욕구위계이론 중 제2단계 욕구에 해당하는 것은?', 1, 18)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0180', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', '자아실현의 욕구', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0181', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', '안전에 대한 욕구', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0182', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', '사회적 욕구', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0183', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', '생리적 욕구', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0018', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0181', '② 안전에 대한 욕구',
   '1 생리 → 2 안전 → 3 사회 → 4 존경 → 5 자아실현.',
   array['매슬로우', '욕구위계'])
on conflict (question_id) do nothing;

-- 019
insert into public.questions (id, subject_id, type, body, difficulty, number) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', '11111111-1111-1111-1111-111111111104', 'mcq',
   '「산업안전보건법령」상 안전보건표지의 종류 중 보안경 착용이 표시된 안전보건표지는?', 1, 19)
on conflict (id) do nothing;
insert into public.question_options (id, question_id, body, sort_order) values
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0190', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', '안내표지', 0),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0191', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', '금지표지', 1),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0192', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', '경고표지', 2),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0193', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', '지시표지', 3)
on conflict (id) do nothing;
insert into public.question_answers (question_id, correct_option_id, answer_text, explanation, concepts) values
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaa0019', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbb0193', '④ 지시표지',
   '보안경 착용 등 보호구 착용 지시는 지시표지입니다.',
   array['안전보건표지', '지시표지'])
on conflict (question_id) do nothing;
