.class public final La/a/j;
.super Ljava/lang/Object;

# interfaces
.implements La/a/da;


# static fields
.field private static h:La/a/j;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/j;->h:La/a/j;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/j;->a:Z

    iput v1, p0, La/a/j;->e:F

    iput v1, p0, La/a/j;->f:F

    const/4 v0, 0x0

    iput-object v0, p0, La/a/j;->g:Landroid/content/Context;

    iput-object p1, p0, La/a/j;->g:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, La/a/j;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)F
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)La/a/j;
    .locals 4

    const-class v0, La/a/j;

    monitor-enter v0

    :try_start_0
    sget-object v0, La/a/j;->h:La/a/j;

    if-nez v0, :cond_0

    invoke-static {p0}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg;->b()La/a/cg$a;

    move-result-object v0

    new-instance v1, La/a/j;

    invoke-virtual {v0}, La/a/cg$a;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, La/a/cg$a;->a(I)I

    move-result v0

    invoke-direct {v1, p0, v2, v0}, La/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, La/a/j;->h:La/a/j;

    :cond_0
    sget-object v0, La/a/j;->h:La/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, La/a/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, La/a/j;

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    iput p2, p0, La/a/j;->c:I

    iget-object v1, p0, La/a/j;->g:Landroid/content/Context;

    invoke-static {v1}, La/a/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iput-boolean v4, p0, La/a/j;->a:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v5, 0xc

    :try_start_0
    invoke-static {v1, v5}, La/a/j;->a(Ljava/lang/String;I)F

    move-result v5

    iput v5, p0, La/a/j;->e:F

    const/4 v5, 0x6

    invoke-static {v1, v5}, La/a/j;->a(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, La/a/j;->f:F

    const-string v1, "SIG7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_1

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    aget-object v1, v6, v1

    const-string v5, "SIG13"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    iget v5, p0, La/a/j;->e:F

    cmpl-float v1, v5, v1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    aget-object v1, v6, v1

    const-string v5, "SIG7"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v6, v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v1, v7

    new-array v1, v1, [F

    move v5, v4

    :goto_2
    array-length v8, v7

    if-ge v5, v8, :cond_e

    aget-object v8, v7, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v0

    check-cast v1, [F

    move-object v5, v1

    :goto_3
    const/4 v1, 0x4

    :try_start_1
    aget-object v1, v6, v1

    const-string v7, "RPT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    check-cast v0, [I

    if-eqz v1, :cond_f

    const/4 v0, 0x5

    :try_start_2
    aget-object v0, v6, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    new-array v0, v0, [I

    move v1, v4

    :goto_4
    array-length v7, v6

    if-ge v1, v7, :cond_f

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :goto_5
    array-length v6, v5

    if-ge v1, v6, :cond_c

    aget v6, v5, v1

    add-float/2addr v3, v6

    iget v6, p0, La/a/j;->f:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_4

    :goto_6
    if-eq v1, v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, La/a/j;->a:Z

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/j;->d:I

    aget v0, v0, v1

    iput v0, p0, La/a/j;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, La/a/j;->a:Z

    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, La/a/j;->a:Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "FIXED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    aget-object v1, v5, v1

    const-string v6, "SIG13"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_7
    iget v1, p0, La/a/j;->e:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/j;->a:Z

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v5, v1

    const-string v3, "FIXED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    :goto_7
    const/4 v1, 0x4

    aget-object v1, v5, v1

    const-string v6, "RPT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    check-cast v0, [I

    if-eqz v1, :cond_9

    const/4 v0, 0x5

    :try_start_4
    aget-object v0, v5, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    new-array v0, v0, [I

    move v1, v4

    :goto_8
    array-length v6, v5

    if-ge v1, v6, :cond_9

    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    if-eq v3, v2, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/j;->a:Z

    iput v3, p0, La/a/j;->d:I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    iput v0, p0, La/a/j;->b:I

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/j;->a:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto :goto_7

    :cond_c
    move v1, v2

    goto/16 :goto_6

    :cond_d
    move v1, v3

    goto/16 :goto_1

    :cond_e
    move-object v5, v1

    goto/16 :goto_3

    :cond_f
    move v1, v4

    goto/16 :goto_5
.end method


# virtual methods
.method public final a(La/a/cg$a;)V
    .locals 2

    invoke-virtual {p1}, La/a/cg$a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, La/a/cg$a;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, La/a/j;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/a/j;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, La/a/j;->b:I

    return v0
.end method

.method public final c()Ljava/util/Map;
    .locals 3

    iget-boolean v0, p0, La/a/j;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "client_test"

    iget v2, p0, La/a/j;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/j;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/j;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
