.class public abstract Lcom/hsifwons/agnag/online/wx/api/BaseResp;
.super Ljava/lang/Object;
.source "BaseResp.java"


# instance fields
.field public errCode:I

.field public errStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errCode:I

    .line 24
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errStr:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget v1, p0, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hsifwons/agnag/online/wx/api/b;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/hsifwons/agnag/online/wx/api/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
