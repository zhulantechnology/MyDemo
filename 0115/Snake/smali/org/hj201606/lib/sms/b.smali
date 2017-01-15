.class Lorg/hj201606/lib/sms/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/b;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/hj201606/lib/sms/b;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-static {v0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/sms/b;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-static {v1}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
