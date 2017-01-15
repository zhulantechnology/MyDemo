.class public Lorg/zzf/core/ZhangPaySdk;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lorg/zzf/core/ZhangPaySdk;

.field private static zhangPaySdk:Lorg/zzf/core/a;


# instance fields
.field public eCallBack:Lorg/zzf/core/ZhangPayCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enterLoadingActivity(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "map"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lorg/zzf/core/ZhangPaySdk;
    .locals 2

    const-class v0, Lorg/zzf/core/ZhangPaySdk;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/ZhangPaySdk;

    invoke-direct {v0}, Lorg/zzf/core/ZhangPaySdk;-><init>()V

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    :cond_0
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    :cond_1
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lorg/zzf/core/ZhangPaySdk;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lorg/zzf/core/ZhangPaySdk;

    monitor-exit v1

    throw v0
.end method

.method private pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;)V
    .locals 1

    iput-object p3, p0, Lorg/zzf/core/ZhangPaySdk;->eCallBack:Lorg/zzf/core/ZhangPayCallback;

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/HashMap;Lorg/zzf/core/ZhangPayCallback;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/zzf/core/o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/zzf/core/o;-><init>(Lorg/zzf/core/ZhangPaySdk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const/16 v0, 0x3e8

    return v0
.end method

.method public initLocation(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;Z)V
    .locals 0

    iput-object p3, p0, Lorg/zzf/core/ZhangPaySdk;->eCallBack:Lorg/zzf/core/ZhangPayCallback;

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/ZhangPaySdk;->enterLoadingActivity(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/zzf/core/ZhangPaySdk;->pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;)V

    goto :goto_0
.end method
