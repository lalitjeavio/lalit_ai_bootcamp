from sqlalchemy import MetaData, create_engine, insert, select, text

from sqlalchemy import Table, Column, Integer, String, ForeignKey
metadata = MetaData()

engine = create_engine("sqlite+pysqlite:///:memory:", echo=True)

user_table = Table(
        "user_table",
        metadata,
        Column("id", Integer, primary_key=True),
        Column("name", String(30)),
        Column("fullname", String)
    )

print(user_table.c.name)

print(user_table.c.keys())

print(user_table.primary_key)


address_table = Table(
    "address_table",
    metadata,
    Column("id", Integer, primary_key=True),
    Column("user_id", ForeignKey("user_table.id"), nullable=False),
    Column("email_address", String, nullable=False)
)

print(address_table.constraints)


metadata.create_all(engine)



stmt = insert(user_table)
print(stmt)

compiled = stmt.compile()
print(compiled.params)


with engine.connect() as conn:
    result = conn.execute(stmt, [dict(id=10, name="lalit", fullname="lalit vasoya"), dict(id=11, name="palak", fullname="palak parmar")])
    print(result.inserted_primary_key_rows)
    conn.commit()

    # stmt = select(user_table.c.name).where(user_table.c.id==11)
    stmt = select(text("'Hello'"), user_table.c["name", "fullname"])
    print(stmt)
    result = conn.execute(stmt)
    print(result.all())

