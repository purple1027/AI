price=20000
discount=10
delivery=3000
pay=price-(price*discount/100)+delivery

print(f"책값은{price},할인율{discount}%")
print(f"배송료{delivery}, 결제금액은{pay}")

if delivery>=2000:
  print("비싸다")

else:
  print("저렴하다")

  