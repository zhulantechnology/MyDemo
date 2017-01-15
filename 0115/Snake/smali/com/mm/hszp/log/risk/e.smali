.class public final Lcom/mm/hszp/log/risk/e;
.super Ljava/lang/Object;


# static fields
.field private static final j:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mm/hszp/log/risk/e;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mm/hszp/log/risk/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mm/hszp/log/risk/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mm/hszp/log/risk/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mm/hszp/log/risk/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mm/hszp/log/risk/e;->e:Ljava/lang/String;

    iput p6, p0, Lcom/mm/hszp/log/risk/e;->f:I

    iput-object p7, p0, Lcom/mm/hszp/log/risk/e;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/app/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "/base.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mm/hszp/log/risk/e;->h:Ljava/lang/String;

    invoke-direct {p0, p8}, Lcom/mm/hszp/log/risk/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move v4, v3

    :goto_0
    sget-object v1, Lcom/mm/hszp/log/risk/e;->j:[Ljava/lang/String;

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v1, :cond_0

    :goto_1
    iput-object v0, p0, Lcom/mm/hszp/log/risk/e;->i:Lorg/json/JSONObject;

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v6, Lcom/mm/hszp/log/risk/e;->j:[Ljava/lang/String;

    aget-object v6, v6, v4

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/mm/hszp/log/risk/e;->f:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mm/hszp/log/risk/e;->i:Lorg/json/JSONObject;

    return-object v0
.end method
