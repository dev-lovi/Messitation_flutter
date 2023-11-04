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



LabelBase.register(name="Poppins", fn_regular="Poppins-Bold.ttf")
Window.size = (360, 640)

Config.set('graphics', 'width', '360')
Config.set('graphics', 'height', '740')

class cls(MDApp):
    def build(self):
        self.theme_cls.theme_style = 'Dark'
        self.theme_cls.primary_palette = 'Teal'
        kv = Builder.load_file('cls.kv')
        return kv


class WindowManager(ScreenManager):
    pass



    
    
if __name__ == '__main__':
    cls().run()
