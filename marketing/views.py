from django.shortcuts import render
import time

from .tasks import send_emails

def send_campaign_emails(request):
    
 
    # call celery task 
    send_emails.delay()

    
    return render(request,'campaign.html',{})