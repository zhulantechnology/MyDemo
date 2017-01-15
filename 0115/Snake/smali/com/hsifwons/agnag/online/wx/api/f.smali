.class final Lcom/hsifwons/agnag/online/wx/api/f;
.super Ljava/lang/Object;
.source "WXInterfaceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/hsifwons/agnag/online/wx/api/e;

.field private final synthetic b:Ljava/io/File;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hsifwons/agnag/online/wx/api/e;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hsifwons/agnag/online/wx/api/f;->a:Lcom/hsifwons/agnag/online/wx/api/e;

    iput-object p2, p0, Lcom/hsifwons/agnag/online/wx/api/f;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/hsifwons/agnag/online/wx/api/f;->c:Landroid/content/Context;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hsifwons/agnag/online/wx/api/f;->a:Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {v2}, Lcom/hsifwons/agnag/online/wx/api/e;->a(Lcom/hsifwons/agnag/online/wx/api/e;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hsifwons/agnag/online/wx/api/f;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hsifwons/agnag/online/wx/api/f;->a:Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {v3}, Lcom/hsifwons/agnag/online/wx/api/e;->b(Lcom/hsifwons/agnag/online/wx/api/e;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hsifwons/agnag/online/wx/api/f;->a:Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {v3}, Lcom/hsifwons/agnag/online/wx/api/e;->c(Lcom/hsifwons/agnag/online/wx/api/e;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hsifwons/agnag/online/wx/api/f;->a:Lcom/hsifwons/agnag/online/wx/api/e;

    invoke-static {v3}, Lcom/hsifwons/agnag/online/wx/api/e;->d(Lcom/hsifwons/agnag/online/wx/api/e;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/hsifwons/agnag/online/wx/api/f;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method
