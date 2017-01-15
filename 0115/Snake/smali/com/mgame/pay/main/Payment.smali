.class public Lcom/mgame/pay/main/Payment;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/mgame/pay/main/Payment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mgame/pay/main/Payment;->instance:Lcom/mgame/pay/main/Payment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mgame/pay/main/Payment;
    .locals 1

    sget-object v0, Lcom/mgame/pay/main/Payment;->instance:Lcom/mgame/pay/main/Payment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgame/pay/main/Payment;

    invoke-direct {v0}, Lcom/mgame/pay/main/Payment;-><init>()V

    sput-object v0, Lcom/mgame/pay/main/Payment;->instance:Lcom/mgame/pay/main/Payment;

    :cond_0
    sget-object v0, Lcom/mgame/pay/main/Payment;->instance:Lcom/mgame/pay/main/Payment;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/mgame/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/mgame/pay/main/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->c()Lcom/mgame/pay/IPay;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mgame/pay/IPay;->init(Landroid/content/Context;Lcom/mgame/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->b()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/mgame/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/mgame/pay/main/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->c()Lcom/mgame/pay/IPay;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mgame/pay/IPay;->init(Landroid/content/Context;Lcom/mgame/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->b()V

    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->c()Lcom/mgame/pay/IPay;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/mgame/pay/main/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mgame/pay/main/g;-><init>(Lcom/mgame/pay/main/Payment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->c()Lcom/mgame/pay/IPay;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/mgame/pay/main/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mgame/pay/main/h;-><init>(Lcom/mgame/pay/main/Payment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
