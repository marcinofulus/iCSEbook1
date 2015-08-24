Gramy Funkcje!
++++++++++++++



Czym jest dźwięk?
=================


Według Wikipedii dźwięk to wrażenie słuchowe, spowodowane falą
akustyczną rozchodzącą się w ośrodku sprężystym (ciele stałym, cieczy,
gazie). Częstotliwości fal, które są słyszalne dla człowieka, zawarte
są w paśmie między wartościami granicznymi od ok. 16 Hz do ok. 20 kHz.

Jeden Hertz (Hz) oznacza, że dokonuje się jedna oscylacja na sekundę. 


Dźwięk w komputerze
===================

Komputer jest urządzeniem cyfrowym, dlatego dźwięk musimy zapisać w
jakims cyfrowym formacie. Jednym z nich, i chyba najprostszym jest
`WAV <http://pl.wikipedia.org/wiki/WAV>`_




.. sagecellserver::

    from  scipy.io.wavfile import write
    import numpy as np 
    def player(data): 
        import tempfile
        wav = tempfile.mktemp(suffix='.wav',dir='.')
        write(wav,int(44100), np.int16(data/np.max(np.abs(data)) * 32767))
        html('<audio src="cell://%s" controls="controls"></audio>'%wav)



Gramy!

.. sagecellserver::

    time_points = np.linspace(0, 1/2, 1/2*44100)
    data = 0.5*np.sin(2*np.pi*(196)*time_points)
    player(data)
    line(zip(time_points[:],data[:]),figsize=(20,2))


.. sagecellserver::

    time_points = np.linspace(0, 1/2, 1/2*44100)
    data = 0.5*np.sign(np.sin(2*np.pi*(196)*time_points))
    player(data)
    line(zip(time_points[:],data[:]),figsize=(20,2))
   

.. sagecellserver::

    time_points =np.linspace(0, 1, 1*44100)
    data = 0.3*np.sin(2*np.pi*(196)*time_points) +\
     0.3*np.sin(2*np.pi*(196+5)*time_points)
    player(data)
    line(zip(time_points[:],data[:]),figsize=(10,2),thickness=0.15)

.. sagecellserver::
   x = data
   Fx = np.fft.fft(x)

   line(zip(np.fft.fftshift(np.fft.fftfreq(x.size,d=1.0/44100)), np.abs( np.fft.fftshift(Fx))), xmin=-3250,xmax=3250,figsize=(12,3),thickness=0.05 )





