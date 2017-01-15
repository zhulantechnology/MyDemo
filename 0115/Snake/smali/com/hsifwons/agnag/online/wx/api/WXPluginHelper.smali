.class public Lcom/hsifwons/agnag/online/wx/api/WXPluginHelper;
.super Ljava/lang/Object;
.source "WXPluginHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hsifwons/agnag/online/wx/api/e;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {p0}, Lcom/hsifwons/agnag/online/wx/api/e;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static installPlugin(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hsifwons/agnag/online/wx/api/e;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onNewIntent(Lcom/hsifwons/agnag/online/wx/api/d;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {p1, p0}, Lcom/hsifwons/agnag/online/wx/api/e;->a(Landroid/content/Intent;Lcom/hsifwons/agnag/online/wx/api/d;)Z

    .line 24
    return-void
.end method

.method public static pay(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 7

    .prologue
    .line 11
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hsifwons/agnag/online/wx/api/e;->a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public static pay(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 7

    .prologue
    .line 17
    invoke-static {}, Lcom/hsifwons/agnag/online/wx/api/e;->a()Lcom/hsifwons/agnag/online/wx/api/e;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hsifwons/agnag/online/wx/api/e;->a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method
