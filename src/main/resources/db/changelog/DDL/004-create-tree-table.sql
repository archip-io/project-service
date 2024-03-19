create table if not exists tree (
    id uuid primary key,
    file_name varchar(255) not null,
    file_uuid uuid,
    parent_id uuid references tree(id) on delete cascade
);

comment on table tree is 'Дерево проектов';
comment on column tree.file_name is 'Название узла / листа';
comment on column tree.file_uuid is 'id файла';
comment on column tree.parent_id is 'Ссылка на родителя';