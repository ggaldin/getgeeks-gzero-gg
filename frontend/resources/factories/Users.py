from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf 8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek')
    ]

def factory_user(target):
    
    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'De Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'abc123'
        },
        'login': {
             'name': 'Gustavo',
             'lastname': 'Galdin',
             'email':    'gustavo@hotmail.com',
             'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email':    'kim@dot.com',
            'password': 'pwd123',
                'geek_profile': {
                   'whats': '11999999999',
                   'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente fisíco e porque não remover o baidu ou qualquer outro malware',
                   'printer_repair': 'Sim',
                   'work': 'Remoto',
                   'cost': '100'
                 }
        },
        # 'short_desc': {
        #     'name': 'Peter',
        #     'lastname': 'Jordan',
        #     'email':    'peter@einerd.com',
        #     'password': 'pwd123',
        #         'geek_profile': {
        #            'whats': '21999999999',
        #            'desc': 'Seu  Dinheiro vou tomar',
        #            'printer_repair': 'Não',
        #            'work': 'Ambos',
        #            'cost': '200'
        #          }
        # },
        'attempt_be_geek': {
            'name': 'Dio',
            'lastname': 'Linux',
            'email':    'dio@linux.com',
            'password': 'pwd123',
                'geek_profile': {
                   'whats': '11999999999',
                   'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente fisíco e porque não remover o baidu ou qualquer outro malware',
                   'printer_repair': 'Não',
                   'work': 'Remoto',
                   'cost': '150'
                 }
        }
        #  'empty_desc': {
        #     'name': 'Dio',
        #     'lastname': 'Linux',
        #     'email':    'dio@linux.com',
        #     'password': 'pwd123',
        #         'geek_profile': {
        #            'whats': '11999999999',
        #            'desc': '',
        #            'printer_repair': 'Não',
        #            'work': 'Remoto',
        #            'cost': '150'
        #          }
        # },
        #  'empty_whats': {
        #     'name': 'Dio',
        #     'lastname': 'Linux',
        #     'email':    'dio@linux.com',
        #     'password': 'pwd123',
        #         'geek_profile': {
        #            'whats': '',
        #            'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente fisíco e porque não remover o baidu ou qualquer outro malware',
        #            'printer_repair': 'Não',
        #            'work': 'Remoto',
        #            'cost': '150'
        #          }
        # }
    }

    return data[target]

# def factory_user():
    
#     #user = {
#     return {
#         'name': fake.first_name(),
#         'lastname': fake.last_name(),
#         'email': fake.free_email(),
#         'password': 'pwd123'

#         # 'name': 'Tony',
#         # 'lastname': 'Stark',
#         # 'email': 'tony@stark.com',
#         # 'password': 'pwd123'
#     }
#     #return user

# def factory_wrong_email():

#     first_name = fake.first_name()

#     #user = {
#     return {    
#         'name': first_name,
#         'lastname': fake.last_name(),
#         'email': first_name.lower() + '&gmail.com',
#         'password': 'pwd123'
#     }
#     #return user

# def factory_user_login():
#     return{
#         'name': 'Gustavo',
#         'lastname': 'Galdin',
#         'email':    'gustavo@hotmail.com',
#         'password': 'pwd123'
#     }

# def factory_user_be_geek():
#     return {
#         'name': 'Kim',
#         'lastname': 'Dotcom',
#         'email':    'kim@dot.com',
#         'password': 'pwd123',
#         'geek_profile': {
#             'whats': '11999999999',
#             'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente fisíco e porque não remover o baidu ou qualquer outro malware',
#             'printer_repair': 'Sim',
#             'work': 'Remoto',
#             'cost': '100'
#         }

#     }
