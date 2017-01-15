.class public Lorg/hj201606/lib/sms/HuafeiProgressDialog;
.super Landroid/app/ProgressDialog;


# static fields
.field private static b:Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;

.field private static e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;


# instance fields
.field private a:J

.field private c:Ljava/util/Timer;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    new-instance v0, Lorg/hj201606/lib/sms/a;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/sms/a;-><init>(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)V

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;
    .locals 1

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;

    return-object v0
.end method

.method public static createProgressDialog(Landroid/content/Context;JLorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;)Landroid/app/ProgressDialog;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-virtual {v0, p1, p2, p3}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->setTimeOut(JLorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    const-class v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->e:Lorg/hj201606/lib/sms/HuafeiProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v1, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    iget-wide v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    new-instance v0, Lorg/hj201606/lib/sms/b;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/sms/b;-><init>(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)V

    iget-object v1, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    iget-wide v2, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->c:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public setTimeOut(JLorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;)V
    .locals 1

    iput-wide p1, p0, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a:J

    if-eqz p3, :cond_0

    sput-object p3, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->b:Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;

    :cond_0
    return-void
.end method
