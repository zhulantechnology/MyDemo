.class final Lcom/chukong/cocosplay/client/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->a(Z)V

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->a(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->a(Z)V

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->e()V

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->f()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Lcom/chukong/cocosplay/client/d;->a(Z)V

    goto :goto_0
.end method
