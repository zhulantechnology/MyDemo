.class Lorg/hj201606/lib/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/HejuInstance;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/HejuInstance;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_TimeOut:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    iget-object v1, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-static {v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "step5"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "heju"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-static {v0}, Lorg/hj201606/lib/HejuInstance;->b(Lorg/hj201606/lib/HejuInstance;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v1, "timeout"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_TimeOut:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;I)V

    goto :goto_0

    :cond_2
    const-string v1, "Err_No_NetWayNum"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_NetWayNum:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;I)V

    goto :goto_0

    :cond_3
    const-string v1, "Err_No_HKey"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/b;->a:Lorg/hj201606/lib/HejuInstance;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_No_HKey:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->a(Lorg/hj201606/lib/HejuInstance;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
