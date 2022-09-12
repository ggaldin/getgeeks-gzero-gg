from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf 8'), bcrypt.gensalt(8))
    return hashed
    
def factory_user():
    
    #user = {
    return {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': fake.free_email(),
        'password': 'pwd123'

        # 'name': 'Tony',
        # 'lastname': 'Stark',
        # 'email': 'tony@stark.com',
        # 'password': 'pwd123'
    }
    #return user

def factory_wrong_email():

    first_name = fake.first_name()

    #user = {
    return {    
        'name': first_name,
        'lastname': fake.last_name(),
        'email': first_name.lower() + '&gmail.com',
        'password': 'pwd123'
    }
    #return user

def factory_user_login():
    return{
        'name': 'Gustavo',
        'lastname': 'Galdin',
        'email':    'gustavo@hotmail.com',
        'password': 'pwd123'
    }