.class Lorg/hj201606/lib/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/hj201606/lib/sms/HuafeiProgressDialog$TimeOutListener;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/e;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Landroid/app/ProgressDialog;)V
    .locals 2

    sget-boolean v0, Lorg/hj201606/lib/sms/HuafeiConfigs;->SMS_STATUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/e;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/hj201606/lib/e;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    goto :goto_0
.end method
