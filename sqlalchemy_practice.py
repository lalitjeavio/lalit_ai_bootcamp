from sqlalchemy import create_engine, text
from sqlalchemy.orm import Session


engine =  create_engine("sqlite+pysqlite:///:memory:", echo=True)


with engine.connect() as conn:
    conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
    conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}, {"x": 10, "y": 10}])
    conn.commit()



# Connection using context manager
# with engine.connect() as conn:
#     conn.execute(text("Select 'Hello'"))


# Commit the data
# with engine.connect() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 10, "y": 20}])
#     conn.commit()


# with engine.begin() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}])



# select data 
# with engine.connect() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}, {"x": 10, "y": 10}])
#     conn.commit()

#     result = conn.execute(text("select * from temp"))
#     print(result.all())

# with engine.connect() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}, {"x": 10, "y": 10}])
#     conn.commit()

#     result = conn.execute(text("SELECT x, y FROM temp"))
#     for x, y in result:
#         print(x, y)


# with engine.connect() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}, {"x": 10, "y": 10}])
#     conn.commit()

#     result = conn.execute(text("SELECT x, y FROM temp"))
#     for dict_row in result.mappings():
#         print(dict_row["x"], dict_row["y"])


# with engine.connect() as conn:
#     conn.execute(text("CREATE TABLE IF NOT EXISTS temp(x int, y int)"))
#     conn.execute(text("INSERT INTO temp VALUES(:x, :y)"), [{"x": 100, "y": 100}, {"x": 10, "y": 10}])
#     conn.commit()

#     results = conn.execute(text("SELECT x, y FROM temp WHERE y > :y"), {"y": 1})

#     for result in results:
#         print(result.x, result.y)


statement = text("SELECT x, y FROM temp WHERE y > :y ORDER BY x, y")
with Session(engine) as session:
    result = session.execute(statement, {"y": 10})
    for row in result:
        print(f"x: {row.x}, y: {row.y}")

