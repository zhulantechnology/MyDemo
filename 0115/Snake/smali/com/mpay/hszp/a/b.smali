.class public Lcom/mpay/hszp/a/b;
.super Ljava/lang/Object;


# instance fields
.field private apkmd5:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private certInitFlag:I

.field private certIssure:Ljava/lang/String;

.field private certmd5:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private dexSha1:Ljava/lang/String;

.field private initActivity:Ljava/lang/String;

.field private mfmd5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private prmsnsJson:Ljava/lang/String;

.field private programID:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private returnCode:I

.field private sdkVersion:Ljava/lang/String;

.field private sfmd5:Ljava/lang/String;

.field private stackMark:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mpay/hszp/a/b;->returnCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mpay/hszp/a/b;->certInitFlag:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->sfmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/mpay/hszp/a/b;->versionCode:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->apkmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->dexSha1:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->programID:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->stackMark:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->initActivity:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->certmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->certIssure:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->mfmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/b;->prmsnsJson:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/mpay/hszp/a/b;->certInitFlag:I

    return v0
.end method
