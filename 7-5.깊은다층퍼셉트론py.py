# 7-2 퍼셉트론으로 MNST인식하기 SGD 옵티마이저 282page
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds
import matplotlib.pyplot as plt

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import Adam


#1단계 데이터를 준비한다
( x_train, y_train), (x_test, y_test) = ds.mnist.load_data()
x_train = x_train.reshape( 60000, 784)
x_test=x_test.reshape( 10000, 784)
x_train = x_train.astype(np.float32)/255.0
x_test = x_test.astype(np.float32) / 255.0
y_train = tf.keras.utils.to_categorical( y_train, 10)
y_test = tf.keras.utils.to_categorical( y_test, 10 )


#2단계 모델 선택, 신경망 구조 설계
dmlp = Sequential()
dmlp.add( Dense(units = 1024, activation='relu', input_shape = (784,)))
dmlp.add( Dense(units = 512, activation='relu'))
dmlp.add( Dense(units = 512, activation='relu'))
dmlp.add( Dense( units=10, activation='softmax'))


#3단계 학습한다
dmlp.compile( loss='categorical_crossentropy', optimizer=Adam(learning_rate = 0.01),
             metrics=['accuracy'])
hist=dmlp.fit( x_train, y_train, batch_size=128, epochs=50, 
         validation_data=(x_test, y_test), verbose=2)



print('Adam 정확률=', dmlp.evaluate(x_test, y_test, verbose=0) [1]*100)

dmlp.save('dmlp_trained.h5')


plt.plot(hist.history['accuracy'],'r--')
plt.plot(hist.history['val_accuracy'],'r--')


plt.title('Accuracy graph')

plt.xlabel('epoch')
plt.ylabel('accuracy')
plt.legend(['trained','test'])
plt.grid()
plt.show()

 

plt.plot(hist.history['Loss'],'r--')
plt.plot(hist.history['val_Loss'],'r--')


plt.title('Loss graph')

plt.xlabel('epoch')
plt.ylabel('Loss')
plt.legend(['trained','test'])
plt.grid()
plt.show()



