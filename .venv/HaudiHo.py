import telebot
import config
import random
 
from telebot import types

bot = telebot.TeleBot(config.TOKEN)


@bot.message_handler(commands=['start'])
def welcome(message):
    # keyboard
    markup = types.ReplyKeyboardMarkup(resize_keyboard=True)
    # кнопки которые посылают на сервер текст
    item1 = types.KeyboardButton('Рандомное число')
    item2 = types.KeyboardButton('☺ Как дела?')

    markup.add(item1, item2)
# приветственное сообщение:
    bot.send_message(message.chat.id,
                     'Добро пожаловать, {0.first_name}!\nЯ - <b>{1.first_name}</b>, бот созданный чтобы быть подопотным кроликом.'
                     .format(message.from_user, bot.get_me()), parse_mode='html', reply_markup=markup)


@bot.message_handler(content_types=['text'])
def egg(message):
    if message.chat.type == 'private':
        # текст на который бот может отреагировать:
        if message.text == 'Рандомное число':
            bot.send_message(message.chat.id, str(random.randint(0, 100)))
        elif message.text == '☺ Как дела?':

            markup = types.InlineKeyboardMarkup(row_width=2)
            # кнопка - ответ на текст, callback_data - то, что вернётся на сервер при нажатии
            item1 = types.InlineKeyboardButton('Хорошо', callback_data='good')
            item2 = types.InlineKeyboardButton('Не очень', callback_data='bad')

            markup.add(item1, item2)
# то что отвечает бот:
            bot.send_message(
                message.chat.id, 'Отлично, сам как?', reply_markup=markup)
        else:
            bot.send_message(message.chat.id, 'Я не знаю что ответить')


@bot.callback_query_handler(func=lambda call: True)
def callback_inlite(call):
    try:
        if call.message:
            if call.data == 'good':  # callback_data
                bot.send_message(call.message.chat.id, 'Отлично!')
            elif call.data == 'bad':
                bot.send_message(call.message.chat.id, 'Бывает')

            # remove inline buttons
            bot.edit_message_text(chat_id=call.message.chat.id, message_id=call.message.message_id, text='Как дела?',
                                  reply_markup=None)  # удаление кнопкок после нажатия

    except Exception as e:
        print(repr(e))


# RUN
bot.polling(none_stop=True)
