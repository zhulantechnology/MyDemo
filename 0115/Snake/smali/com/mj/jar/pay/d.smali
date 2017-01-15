.class final Lcom/mj/jar/pay/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mj/jar/pay/c;


# direct methods
.method constructor <init>(Lcom/mj/jar/pay/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->a(Lcom/mj/jar/pay/c;)Lcom/mj/jar/pay/a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/mj/jar/pay/a;->onInitResult(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->b(Lcom/mj/jar/pay/c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->c(Lcom/mj/jar/pay/c;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->d(Lcom/mj/jar/pay/c;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/mj/jar/pay/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mj/jar/pay/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mj/jar/pay/b;->a()V

    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->e(Lcom/mj/jar/pay/c;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mj/jar/pay/d;->a:Lcom/mj/jar/pay/c;

    invoke-static {v0}, Lcom/mj/jar/pay/c;->a(Lcom/mj/jar/pay/c;)Lcom/mj/jar/pay/a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mj/jar/pay/a;->onBillingResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
