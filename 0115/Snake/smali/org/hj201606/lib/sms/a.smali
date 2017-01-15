.class Lorg/hj201606/lib/sms/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/sms/HuafeiProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/a;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a()Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->a()Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/sms/a;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-interface {v0, v1}, Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;->onTimeOut(Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lorg/hj201606/lib/sms/a;->a:Lorg/hj201606/lib/sms/HuafeiProgressDialog;

    invoke-virtual {v0}, Lorg/hj201606/lib/sms/HuafeiProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
