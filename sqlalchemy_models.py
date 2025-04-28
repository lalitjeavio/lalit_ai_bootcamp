from typing import List, Optional

from sqlalchemy import String, create_engine, ForeignKey
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship, Session

engine =  create_engine("sqlite+pysqlite:///:memory:", echo=True)


class Base(DeclarativeBase):
    pass



class User(Base):
    __tablename__ = "user_account"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(30))
    fullname: Mapped[Optional[str]]

    addresses: Mapped[List["Address"]] = relationship(back_populates="user")


    def __repr__(self):
        return f"User(id={self.id}, name={self.name}, fullname={self.fullname})"


class  Address(Base):
    __tablename__ = "address"

    id: Mapped[int] = mapped_column(primary_key=True)
    email_address: Mapped[str] = mapped_column(String(30))
    user_id: Mapped[int] = mapped_column(ForeignKey("user_account.id"))
    
    
    user: Mapped["User"] = relationship(back_populates="addresses")


    def __repr__(self):
        return f"Address(id={self.id}, email_address={self.email_address})"
    

Base.metadata.create_all(engine)



# user = User(name="lalit", fullname="vasoya")
# print(user.addresses)

# address = Address(email_address='lalit.vasoya@gmail.com')
# user.addresses.append(address)

# print(address)
# print(address.user)


session = Session(engine)

u1 = User(name="Lalit", fullname="Lalit Vasoya")
u2 = User(name="Palak", fullname="Palak Parmar")
a1 = Address(email_address="lalit1@gmail.com")
a2 = Address(email_address="lalit2@gmail.com")
a3 = Address(email_address="palak1@gmail.com")
a4 = Address(email_address="palak2@gmail.com")

u1.addresses.append(a1)
u1.addresses.append(a2)
u2.addresses.append(a3)
u2.addresses.append(a4)

session.add(u1)
session.add(u2)
session.commit()


# select N+1
# users = session.query(User).all()
# for user in users:
#     print("------", user)
#     print("------", user.addresses)


from sqlalchemy.orm import selectinload
# selectinload 2 sepearate query
# print("----")
# users = session.query(User).options(selectinload(User.addresses)).all()
# for user in users:
#     print("----", user.addresses)


from sqlalchemy.orm import joinedload
# joinedload single query
# print("----")
# users = session.query(User).options(joinedload(User.addresses)).all()
# for user in users:
#     print("----", user.addresses)


from sqlalchemy.orm import noload
# noload: no query on releation
# users = session.query(User).options(noload(User.addresses)).all()
# for user in users:
#     print("----", user.addresses)


