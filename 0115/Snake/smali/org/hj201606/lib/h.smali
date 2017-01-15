.class Lorg/hj201606/lib/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/h;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onComplete_______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onFail()V
    .locals 2

    iget-object v0, p0, Lorg/hj201606/lib/h;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onFail_______________________________"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
