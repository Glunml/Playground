from django.shortcuts import render
from django.http import HttpResponse


"""書籍の一覧"""
def book_list(request):
    return HttpResponse('書籍の一覧')


"""書籍の編集"""
def book_edit(request, book_id=None):
    return HttpResponse('書籍の編集')


"""書籍の削除"""
def book_del(request, book_id):
    return HttpResponse('書籍の削除')