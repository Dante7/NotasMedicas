#encoding:utf-8
import json
from dajaxice.decorators import dajaxice_register

@dajaxice_register
def sayhello(request):
    return json.dumps({'message':'Hello World'})