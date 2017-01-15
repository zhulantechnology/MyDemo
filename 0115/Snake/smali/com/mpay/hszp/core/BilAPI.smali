.class public Lcom/mpay/hszp/core/BilAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mpay/hszp/a/c;->a()Lcom/mpay/hszp/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpay/hszp/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mpay/hszp/core/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static postSendSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mpay/hszp/core/a;

    invoke-direct {v1, p0, p1}, Lcom/mpay/hszp/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide v2, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x40a7700000000000L    # 3000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static preSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Lcom/mm/hszp/a/a;

    invoke-direct {v0, p0}, Lcom/mm/hszp/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/mm/hszp/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/mpay/hszp/core/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    invoke-static {p0, p3}, Lcom/mpay/hszp/core/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    invoke-static {p0, p2}, Lcom/mpay/hszp/core/b;->d(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1}, Lcom/mm/hszp/log/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mpay/hszp/core/b;->a()Lcom/mpay/hszp/core/b;

    move-result-object v1

    invoke-virtual {v1, p0, p4}, Lcom/mpay/hszp/core/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
