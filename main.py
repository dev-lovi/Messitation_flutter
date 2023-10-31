#Starting from zero
from kivy.lang import Builder
from kivymd.app import MDApp
from kivy.uix.widget import Widget
from kivymd.uix.card import MDCard
from kivymd.uix.screen import MDScreen
from kivy.uix.screenmanager import ScreenManager
from kivy.config import Config
from kivy.core.window import Window
from kivy.core.text import LabelBase
from kivy.clock import Clock
from kivy.core.audio import SoundLoader



LabelBase.register(name="Poppins", fn_regular="assets/Poppins-Bold.ttf")
Window.size = (360, 640)

Config.set('graphics', 'width', '360')
Config.set('graphics', 'height', '740')

class cls(MDApp):
    def build(self):
        self.theme_cls.theme_style = 'Dark'
        self.theme_cls.primary_palette = 'Teal'
        kv = Builder.load_file('cls.kv')
        return kv
    


#define our different screens
class FirstScreen(MDScreen):
    name = 'first_screen'
    pass



#PANTALLA SENTIDOS
class SentidosScreen(MDScreen):
    sound = None  # Define a class variable to hold the sound instance

    def music(self):
        if not SentidosScreen.sound:  # If sound is not loaded yet
            SentidosScreen.sound = SoundLoader.load('assets/audio/sentidos.mp3')
        if SentidosScreen.sound:
            SentidosScreen.sound.play()
    
    def stop_music(self):
        if SentidosScreen.sound:
            SentidosScreen.sound.stop()

#PANTALLA CARTA 1 - DE MEDITACION RESPIRACIÓN
class RespiracionScreen(MDScreen):
    sound_1 = None  # Define a class variable to hold the sound instance

    def music(self):
        if not RespiracionScreen.sound_1:  # If sound is not loaded yet
            RespiracionScreen.sound_1 = SoundLoader.load('test.wav')
        if RespiracionScreen.sound_1:
            RespiracionScreen.sound_1.play()
    
    def stop_music(self):
        if RespiracionScreen.sound_1:
            RespiracionScreen.sound_1.stop()

#day for testing

#PANTALLA CARTA 2 - DE MEDITACION EL TIEMPO
class ElTiempoScreen(MDScreen):
    sound_2 = None  # Define a class variable to hold the sound instance

    def music(self):
        if not ElTiempoScreen.sound_2:  # If sound is not loaded yet
            ElTiempoScreen.sound_2 = SoundLoader.load('example2.wav')
        if ElTiempoScreen.sound_2:
            ElTiempoScreen.sound_2.play()
    
    def stop_music(self):
        if ElTiempoScreen.sound_2:
            ElTiempoScreen.sound_2.stop()



#PANTALLA CARTA 3 - DE MEDITACION DOLOR
class DolorScreen(MDScreen):
    sound_3 = None  # Define a class variable to hold the sound instance

    def music(self):
        if not DolorScreen.sound_3:  # If sound is not loaded yet
            DolorScreen.sound_3 = SoundLoader.load('example2.wav')
        if DolorScreen.sound_3:
            DolorScreen.sound_3.play()
    
    def stop_music(self):
        if DolorScreen.sound_3:
            DolorScreen.sound_3.stop()



#PANTALLA CARTA 4 - DE MEDITACION PENSAMIENTOS
class PensamientosScreen(MDScreen):
    sound_4 = None  # Define a class variable to hold the sound instance

    def music(self):
        if not PensamientosScreen.sound_4:  # If sound is not loaded yet
            PensamientosScreen.sound_4 = SoundLoader.load('example2.wav')
        if PensamientosScreen.sound_4:
            PensamientosScreen.sound_4.play()
    
    def stop_music(self):
        if PensamientosScreen.sound_4:
            PensamientosScreen.sound_4.stop()




class WindowManager(ScreenManager):
    pass



        
    
if __name__ == '__main__':
    cls().run()
