.class Lorg/hj201606/lib/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/HejuInstance;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/HejuInstance;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/c;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "step1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v1, p0, Lorg/hj201606/lib/c;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-static {v1}, Lorg/hj201606/lib/HejuInstance;->c(Lorg/hj201606/lib/HejuInstance;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/hj201606/lib/utils/HuafeiLBS;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/utils/HuafeiLBS;->getCellInfo()Lorg/hj201606/lib/utils/HuafeiCell;

    move-result-object v0

    iget v1, v0, Lorg/hj201606/lib/utils/HuafeiCell;->MCC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->MCC:I

    iget v1, v0, Lorg/hj201606/lib/utils/HuafeiCell;->MNC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->MNC:I

    iget v1, v0, Lorg/hj201606/lib/utils/HuafeiCell;->LAC:I

    sput v1, Lorg/hj201606/lib/HejuInstance;->LAC:I

    iget v0, v0, Lorg/hj201606/lib/utils/HuafeiCell;->CID:I

    sput v0, Lorg/hj201606/lib/HejuInstance;->CID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/hj201606/lib/c;->a:Lorg/hj201606/lib/HejuInstance;

    iget-object v1, p0, Lorg/hj201606/lib/c;->a:Lorg/hj201606/lib/HejuInstance;

    invoke-static {v1}, Lorg/hj201606/lib/HejuInstance;->d(Lorg/hj201606/lib/HejuInstance;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hj201606/lib/HejuInstance;->b(Lorg/hj201606/lib/HejuInstance;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lorg/hj201606/lib/c;->a:Lorg/hj201606/lib/HejuInstance;

    iget-object v1, v1, Lorg/hj201606/lib/HejuInstance;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
