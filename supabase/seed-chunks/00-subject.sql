-- subject
insert into public.subjects (id, name, slug, sort_order) values
  ('11111111-1111-1111-1111-111111111104', '산업안전기사', 'industrial-safety', 5)
on conflict (slug) do update set name = excluded.name, is_active = true;
