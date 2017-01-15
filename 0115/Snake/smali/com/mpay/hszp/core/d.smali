.class public final Lcom/mpay/hszp/core/d;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/mpay/hszp/core/g;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mpay/hszp/core/d;->d:Landroid/os/Handler;

    new-instance v0, Lcom/mpay/hszp/core/e;

    invoke-direct {v0, p0}, Lcom/mpay/hszp/core/e;-><init>(Lcom/mpay/hszp/core/d;)V

    iput-object v0, p0, Lcom/mpay/hszp/core/d;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mpay/hszp/core/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/mpay/hszp/core/d;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/core/d;->e:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpay/hszp/core/d;->c:Lcom/mpay/hszp/core/g;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mpay/hszp/core/f;

    invoke-direct {v1, p0, p2, p1}, Lcom/mpay/hszp/core/f;-><init>(Lcom/mpay/hszp/core/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
