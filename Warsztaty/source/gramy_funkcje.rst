Gramy Funkcje!
++++++++++++++



Czym jest dźwięk?
=================


Według Wikipeddi dźwięk to słuchowe, spowodowane falą akustyczną
rozchodzącą się w ośrodku sprężystym (ciele stałym, cieczy,
gazie). Częstotliwości fal, które są słyszalne dla człowieka, zawarte
są w paśmie między wartościami granicznymi od ok. 16 Hz do ok. 20 kHz.

Jeden Hertz (Hz) oznacza, że dokonuje się jedna oscylacja na sekundę. 




.. sagecellserver::


    import numpy as np
    import wave


    def sound_data(frequency, length, amplitude=1, sample_rate=44100):
        time_points = np.linspace(0, length, length*sample_rate)
        data = np.sin(2*np.pi*frequency*time_points)
        data = amplitude*data
        return data

    def convert_sound_data(data):
        max_amplitude = 2**15-1
        data = max_amplitude*data
        data = data.astype(np.int16).tostring()
        return data

    def write_sound(data, filename):
        file = wave.open(filename, 'w')
        file.setnchannels(1)
        file.setsampwidth(2)
        file.setframerate(44100)
        file.writeframesraw(convert_sound_data(data))
        file.close()


Gramy!

.. sagecellserver::

    time_points = np.linspace(0, 5, 5*44100)
    data = 0.5*np.sin(2*np.pi*(196)*time_points)
    write_sound(data, 'test1.wav')

    html('<audio src="cell://test1.wav" controls="controls"></audio>')
    line(zip(time_points[:1100],data[:1100]),figsize=(10,2))


.. sagecellserver::

    time_points =numpy.linspace(0, 5, 5*44100)
    data = 0.3*numpy.sin(2*np.pi*(196)*time_points)
    data1 = 0.3*numpy.sin(2*np.pi*(196+.52)*time_points)
    write_sound(data+data1, 'test2.wav')
    html('<audio src="cell://test2.wav" controls="controls"></audio>')
    line(zip(time_points[:1100],data[:1100]),figsize=(10,2))


.. sagecellserver::

   line(zip(np.fft.fftshift(np.fft.fftfreq(x.size,d=1.0/44100)), np.abs( np.fft.fftshift(Fx))), xmin=-3250,xmax=3250,figsize=(12,3),thickness=0.05 )
