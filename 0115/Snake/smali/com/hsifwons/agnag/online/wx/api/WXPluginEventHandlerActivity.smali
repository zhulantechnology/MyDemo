.class public Lcom/hsifwons/agnag/online/wx/api/WXPluginEventHandlerActivity;
.super Landroid/app/Activity;
.source "WXPluginEventHandlerActivity.java"

# interfaces
.implements Lcom/hsifwons/agnag/online/wx/api/d;


# static fields
.field private static final MSG_WX_PAY_CALLBACK:I = 0xf

.field private static final TAG:Ljava/lang/String; = "GA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "GA"

    const-string v1, "PA OC "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/hsifwons/agnag/online/wx/api/WXPluginEventHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hsifwons/agnag/online/wx/api/WXPluginHelper;->onNewIntent(Lcom/hsifwons/agnag/online/wx/api/d;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    const-string v0, "GA"

    const-string v1, "PA ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, p1}, Lcom/hsifwons/agnag/online/wx/api/WXPluginEventHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/hsifwons/agnag/online/wx/api/WXPluginEventHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hsifwons/agnag/online/wx/api/WXPluginHelper;->onNewIntent(Lcom/hsifwons/agnag/online/wx/api/d;Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public onResp(Lcom/hsifwons/agnag/online/wx/api/BaseResp;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 38
    iget v1, p1, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errCode:I

    if-nez v1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :cond_0
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/WXPluginHelper;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    .line 42
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 43
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-virtual {p1, v3}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 45
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    const-string v1, "GA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PA OR"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/hsifwons/agnag/online/wx/api/WXPluginEventHandlerActivity;->finish()V

    .line 50
    return-void
.end method
