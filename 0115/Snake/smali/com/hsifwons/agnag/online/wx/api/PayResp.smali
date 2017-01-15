.class public Lcom/hsifwons/agnag/online/wx/api/PayResp;
.super Lcom/hsifwons/agnag/online/wx/api/BaseResp;
.source "PayResp.java"


# instance fields
.field public prepayId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/hsifwons/agnag/online/wx/api/PayResp;->fromBundle(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->d:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hsifwons/agnag/online/wx/api/PayResp;->prepayId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->d:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/hsifwons/agnag/online/wx/api/PayResp;->prepayId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
