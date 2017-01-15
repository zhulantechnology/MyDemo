.class public final La/a/as;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, La/a/as;->a:[B

    const/4 v0, 0x1

    iput v0, p0, La/a/as;->b:I

    iput v2, p0, La/a/as;->c:I

    const-string v0, "1.0"

    iput-object v0, p0, La/a/as;->d:Ljava/lang/String;

    iput-object v1, p0, La/a/as;->e:Ljava/lang/String;

    iput-object v1, p0, La/a/as;->f:[B

    iput-object v1, p0, La/a/as;->g:[B

    iput-object v1, p0, La/a/as;->h:[B

    iput v2, p0, La/a/as;->i:I

    iput v2, p0, La/a/as;->j:I

    iput v2, p0, La/a/as;->k:I

    iput-object v1, p0, La/a/as;->l:[B

    iput-object v1, p0, La/a/as;->m:[B

    iput-boolean v2, p0, La/a/as;->n:Z

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "entity is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, La/a/as;->e:Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, La/a/as;->k:I

    invoke-static {p1}, La/a/at;->a([B)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->l:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, La/a/as;->j:I

    iput-object p3, p0, La/a/as;->m:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, La/a/aq;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, La/a/aq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "umeng_general_config"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, La/a/as;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, La/a/as;-><init>([BLjava/lang/String;[B)V

    invoke-direct {v0, v5}, La/a/as;->a(Ljava/lang/String;)V

    iput v6, v0, La/a/as;->i:I

    invoke-direct {v0}, La/a/as;->b()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    iget-object v4, v0, La/a/as;->f:[B

    invoke-static {v4}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {v0, p0}, La/a/as;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "signature"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->f:[B

    return-void
.end method

.method private a([BI)[B
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, La/a/as;->m:[B

    invoke-static {v1}, Lcom/b/a/e;->b([B)[B

    move-result-object v2

    iget-object v1, p0, La/a/as;->l:[B

    invoke-static {v1}, Lcom/b/a/e;->b([B)[B

    move-result-object v3

    array-length v4, v2

    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [B

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    mul-int/lit8 v6, v1, 0x2

    aget-byte v7, v3, v1

    aput-byte v7, v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v1

    aput-byte v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v8, :cond_1

    aget-byte v2, p1, v1

    aput-byte v2, v5, v1

    array-length v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v2, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    const/4 v2, 0x3

    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_2

    aget-byte v2, v5, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v5
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, La/a/aq;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, La/a/aq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "umeng_general_config"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, La/a/as;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, La/a/as;-><init>([BLjava/lang/String;[B)V

    const/4 v2, 0x1

    iput-boolean v2, v0, La/a/as;->n:Z

    invoke-direct {v0, v5}, La/a/as;->a(Ljava/lang/String;)V

    iput v6, v0, La/a/as;->i:I

    invoke-direct {v0}, La/a/as;->b()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    iget-object v4, v0, La/a/as;->f:[B

    invoke-static {v4}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {v0, p0}, La/a/as;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 7

    const/16 v6, 0x10

    iget-object v0, p0, La/a/as;->f:[B

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/as;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, La/a/as;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->f:[B

    :cond_0
    iget-boolean v0, p0, La/a/as;->n:Z

    if-eqz v0, :cond_1

    new-array v0, v6, [B

    :try_start_0
    iget-object v1, p0, La/a/as;->f:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/a/as;->l:[B

    invoke-static {v1, v0}, Lcom/b/a/e;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, La/a/as;->f:[B

    iget v1, p0, La/a/as;->j:I

    invoke-direct {p0, v0, v1}, La/a/as;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->g:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/as;->f:[B

    invoke-static {v1}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/as;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/as;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/as;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/as;->g:[B

    invoke-static {v1}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/e;->b([B)[B

    move-result-object v0

    iput-object v0, p0, La/a/as;->h:[B

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x10

    iget-object v0, p0, La/a/as;->e:Ljava/lang/String;

    invoke-static {p1}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v1

    invoke-virtual {v1}, La/a/cg;->b()La/a/cg$a;

    move-result-object v1

    invoke-virtual {v1}, La/a/cg$a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/as;->f:[B

    invoke-static {v2}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [B

    iget-object v4, p0, La/a/as;->f:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/b/a/e;->b([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appkey"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v0, "umid"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "signature"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "checksum"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".umeng"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "exchangeIdentity.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, La/a/au;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()[B
    .locals 2

    new-instance v1, La/a/ap;

    invoke-direct {v1}, La/a/ap;-><init>()V

    iget-object v0, p0, La/a/as;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, La/a/ap;->a(Ljava/lang/String;)La/a/ap;

    iget-object v0, p0, La/a/as;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, La/a/ap;->b(Ljava/lang/String;)La/a/ap;

    iget-object v0, p0, La/a/as;->f:[B

    invoke-static {v0}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/ap;->c(Ljava/lang/String;)La/a/ap;

    iget v0, p0, La/a/as;->i:I

    invoke-virtual {v1, v0}, La/a/ap;->a(I)La/a/ap;

    iget v0, p0, La/a/as;->j:I

    invoke-virtual {v1, v0}, La/a/ap;->b(I)La/a/ap;

    iget v0, p0, La/a/as;->k:I

    invoke-virtual {v1, v0}, La/a/ap;->c(I)La/a/ap;

    iget-object v0, p0, La/a/as;->l:[B

    invoke-virtual {v1, v0}, La/a/ap;->a([B)La/a/ap;

    iget-boolean v0, p0, La/a/as;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, La/a/ap;->d(I)La/a/ap;

    iget-object v0, p0, La/a/as;->g:[B

    invoke-static {v0}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/ap;->d(Ljava/lang/String;)La/a/ap;

    iget-object v0, p0, La/a/as;->h:[B

    invoke-static {v0}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/ap;->e(Ljava/lang/String;)La/a/ap;

    :try_start_0
    new-instance v0, La/a/bc;

    invoke-direct {v0}, La/a/bc;-><init>()V

    invoke-virtual {v0, v1}, La/a/bc;->a(La/a/ax;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, La/a/as;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "version : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, La/a/as;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "address : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, La/a/as;->f:[B

    invoke-static {v4}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "signature : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, La/a/as;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "serial : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, La/a/as;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "timestamp : %d\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, La/a/as;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "length : %d\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, La/a/as;->g:[B

    invoke-static {v4}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "guid : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, La/a/as;->h:[B

    invoke-static {v4}, Lcom/b/a/e;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "checksum : %s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v4, p0, La/a/as;->n:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "codex : %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
