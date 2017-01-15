.class Lorg/hj201606/lib/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/d;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/d;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v0}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/hj201606/lib/PayActivity$moUrlThread;

    iget-object v2, p0, Lorg/hj201606/lib/d;->a:Lorg/hj201606/lib/PayActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/hj201606/lib/d;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v4}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/hj201606/lib/PayActivity$moUrlThread;-><init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/PayActivity$moUrlThread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/hj201606/lib/d;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    goto :goto_0
.end method
