.class final Lcom/chukong/cocosplay/client/e;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chukong/cocosplay/client/d;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/d;->b()V

    goto :goto_0
.end method
