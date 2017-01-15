.class Lorg/hj201606/lib/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/hj201606/lib/sms/HuafeiCallbackListener$smsCallback;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/f;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lorg/hj201606/lib/f;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Success:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    return-void
.end method

.method public onFail()V
    .locals 4

    invoke-static {}, Lorg/hj201606/lib/PayActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "srsn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lorg/hj201606/lib/PayActivity;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "srsn"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v1, Lorg/hj201606/lib/HejuInstance;->srsn:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/f;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v0}, Lorg/hj201606/lib/PayActivity;->b(Lorg/hj201606/lib/PayActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/hj201606/lib/f;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Pay_Fail:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    goto :goto_0
.end method
