from django.http import HttpResponse
from django.template import loader, RequestContext
 
def home(req):
    contexts = RequestContext(req, {
        'title' : 'hello django!',
        'data' : ('Hello', 'django', 'world'),
    })
    template = loader.get_template('test_app/home.html')
    return HttpResponse(template.render(contexts))