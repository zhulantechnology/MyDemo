.class public final La/a/cl;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ct;
.implements La/a/da;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/cl$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private c:La/a/cw;

.field private d:Lcom/b/a/m;

.field private e:La/a/b;

.field private f:La/a/k;

.field private g:La/a/j;

.field private h:La/a/l;

.field private i:La/a/cl$a;

.field private j:La/a/cg$a;

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, La/a/cl;->a:J

    const/16 v0, 0x1388

    iput v0, p0, La/a/cl;->b:I

    iput-object v2, p0, La/a/cl;->c:La/a/cw;

    iput-object v2, p0, La/a/cl;->d:Lcom/b/a/m;

    iput-object v2, p0, La/a/cl;->e:La/a/b;

    iput-object v2, p0, La/a/cl;->f:La/a/k;

    iput-object v2, p0, La/a/cl;->g:La/a/j;

    iput-object v2, p0, La/a/cl;->h:La/a/l;

    iput-object v2, p0, La/a/cl;->i:La/a/cl$a;

    iput-object v2, p0, La/a/cl;->j:La/a/cg$a;

    const/16 v0, 0xa

    iput v0, p0, La/a/cl;->k:I

    iput-wide v6, p0, La/a/cl;->l:J

    iput v4, p0, La/a/cl;->m:I

    iput v4, p0, La/a/cl;->n:I

    iput-object p1, p0, La/a/cl;->o:Landroid/content/Context;

    new-instance v0, La/a/cw;

    invoke-direct {v0, p1}, La/a/cw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/cl;->c:La/a/cw;

    new-instance v0, La/a/b;

    invoke-direct {v0, p1}, La/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/cl;->e:La/a/b;

    invoke-static {p1}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    move-result-object v0

    iput-object v0, p0, La/a/cl;->d:Lcom/b/a/m;

    invoke-static {p1}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg;->b()La/a/cg$a;

    move-result-object v0

    iput-object v0, p0, La/a/cl;->j:La/a/cg$a;

    new-instance v0, La/a/cl$a;

    invoke-direct {v0, p0}, La/a/cl$a;-><init>(La/a/cl;)V

    iput-object v0, p0, La/a/cl;->i:La/a/cl$a;

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, La/a/j;->a(Landroid/content/Context;)La/a/j;

    move-result-object v0

    iput-object v0, p0, La/a/cl;->g:La/a/j;

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, La/a/k;->a(Landroid/content/Context;)La/a/k;

    move-result-object v0

    iput-object v0, p0, La/a/cl;->f:La/a/k;

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    iget-object v1, p0, La/a/cl;->e:La/a/b;

    invoke-static {v0, v1}, La/a/l;->a(Landroid/content/Context;La/a/b;)La/a/l;

    move-result-object v0

    iput-object v0, p0, La/a/cl;->h:La/a/l;

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "thtstart"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, La/a/cl;->l:J

    const-string v1, "gkvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, La/a/cl;->m:I

    const-string v1, "ekvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, La/a/cl;->n:I

    return-void
.end method

.method private static a([B)La/a/ao;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, La/a/ao;

    invoke-direct {v1}, La/a/ao;-><init>()V

    new-instance v2, La/a/az;

    invoke-direct {v2}, La/a/az;-><init>()V

    invoke-virtual {v2, v1, p0}, La/a/az;->a(La/a/ax;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs a([I)La/a/ao;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    invoke-static {}, Lcom/b/a/m;->c()[B

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v4}, La/a/cw;->a()I

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, La/a/cl;->a([B)La/a/ao;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_7

    new-instance v0, La/a/ao;

    invoke-direct {v0}, La/a/ao;-><init>()V

    move-object v4, v0

    :goto_2
    iget-object v0, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v0, v4}, La/a/cw;->a(La/a/ao;)V

    sget-boolean v0, La/a/ar;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4}, La/a/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, La/a/ao;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/am;

    invoke-virtual {v0}, La/a/am;->h()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    const-string v0, "MobclickAgent"

    const-string v1, "missing Activities or PageViews"

    invoke-static {v0, v1}, La/a/ar;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, La/a/cl;->f:La/a/k;

    iget-object v1, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, La/a/k;->a(Landroid/content/Context;La/a/ao;)La/a/ao;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, La/a/r;

    invoke-direct {v1}, La/a/r;-><init>()V

    new-instance v2, La/a/ad;

    const/4 v4, 0x0

    aget v4, p1, v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v6, v5

    invoke-direct {v2, v4, v6, v7}, La/a/ad;-><init>(IJ)V

    invoke-virtual {v1, v2}, La/a/r;->a(La/a/ad;)La/a/r;

    invoke-virtual {v0, v1}, La/a/ao;->a(La/a/r;)La/a/ao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Fail to construct message ..."

    invoke-static {v1, v2, v0}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    invoke-static {}, Lcom/b/a/m;->d()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move-object v4, v0

    goto :goto_2
.end method

.method static synthetic a(La/a/cl;)La/a/cg$a;
    .locals 1

    iget-object v0, p0, La/a/cl;->j:La/a/cg$a;

    return-object v0
.end method

.method private static a(IILjava/util/List;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez p0, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-lez p1, :cond_3

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method static synthetic a(La/a/cl;I)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, La/a/cl;->e:La/a/b;

    invoke-virtual {v4}, La/a/b;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    invoke-direct {p0, v0}, La/a/cl;->a([I)La/a/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v1}, La/a/bj;->a(Landroid/content/Context;)La/a/bj;

    move-result-object v1

    invoke-virtual {v1}, La/a/bj;->a()V

    invoke-virtual {v1}, La/a/bj;->b()La/a/z;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/ao;->a(La/a/z;)La/a/ao;

    invoke-direct {p0, v0}, La/a/cl;->b(La/a/ao;)La/a/ao;

    move-result-object v0

    invoke-static {v0}, La/a/cl;->a(La/a/ao;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/cl;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/cl;->o:Landroid/content/Context;

    iget-object v3, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, La/a/as;->b(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, La/a/as;->a()[B

    move-result-object v0

    iget-object v2, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    move-result-object v2

    invoke-static {}, Lcom/b/a/m;->d()V

    invoke-virtual {v2, v0}, Lcom/b/a/m;->b([B)V

    invoke-virtual {v1}, La/a/bj;->c()V

    :cond_0
    new-instance v0, La/a/cm;

    invoke-direct {v0, p0}, La/a/cm;-><init>(La/a/cl;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/b/a/k;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    iget-object v2, p0, La/a/cl;->o:Landroid/content/Context;

    iget-object v3, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, La/a/as;->a(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(La/a/ao;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, La/a/bc;

    invoke-direct {v1}, La/a/bc;-><init>()V

    invoke-virtual {v1, p0}, La/a/bc;->a(La/a/ax;)[B

    move-result-object v1

    const-string v2, "MobclickAgent"

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(La/a/ao;)La/a/ao;
    .locals 12

    const/4 v0, 0x0

    const/16 v3, 0x1388

    invoke-virtual {p1}, La/a/ao;->l()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    move v1, v0

    move v2, v0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->i()I

    move-result v0

    add-int/2addr v1, v0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->e()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, La/a/cl;->l:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x1b77400

    cmp-long v2, v8, v10

    if-lez v2, :cond_5

    add-int/lit16 v2, v0, -0x1388

    add-int/lit16 v4, v1, -0x1388

    if-gtz v2, :cond_1

    if-lez v4, :cond_2

    :cond_1
    invoke-static {v2, v4, v5}, La/a/cl;->a(IILjava/util/List;)V

    :cond_2
    if-lez v2, :cond_3

    move v0, v3

    :cond_3
    iput v0, p0, La/a/cl;->m:I

    if-lez v4, :cond_4

    move v1, v3

    :cond_4
    iput v1, p0, La/a/cl;->n:I

    iput-wide v6, p0, La/a/cl;->l:J

    :goto_2
    return-object p1

    :cond_5
    iget v2, p0, La/a/cl;->m:I

    if-le v2, v3, :cond_8

    move v2, v0

    :goto_3
    iget v4, p0, La/a/cl;->n:I

    if-le v4, v3, :cond_9

    move v4, v1

    :goto_4
    if-gtz v2, :cond_6

    if-lez v4, :cond_7

    :cond_6
    invoke-static {v2, v4, v5}, La/a/cl;->a(IILjava/util/List;)V

    :cond_7
    if-lez v2, :cond_a

    move v0, v3

    :goto_5
    iput v0, p0, La/a/cl;->m:I

    if-lez v4, :cond_b

    :goto_6
    iput v3, p0, La/a/cl;->n:I

    goto :goto_2

    :cond_8
    iget v2, p0, La/a/cl;->m:I

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, -0x1388

    goto :goto_3

    :cond_9
    iget v4, p0, La/a/cl;->n:I

    add-int/2addr v4, v1

    add-int/lit16 v4, v4, -0x1388

    goto :goto_4

    :cond_a
    iget v2, p0, La/a/cl;->m:I

    add-int/2addr v0, v2

    goto :goto_5

    :cond_b
    iget v0, p0, La/a/cl;->n:I

    add-int v3, v1, v0

    goto :goto_6

    :cond_c
    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(La/a/cl;)La/a/k;
    .locals 1

    iget-object v0, p0, La/a/cl;->f:La/a/k;

    return-object v0
.end method

.method static synthetic c(La/a/cl;)La/a/b;
    .locals 1

    iget-object v0, p0, La/a/cl;->e:La/a/b;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/a/cl;->d:Lcom/b/a/m;

    invoke-virtual {v1}, Lcom/b/a/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, La/a/db;

    iget-object v1, p0, La/a/cl;->o:Landroid/content/Context;

    iget-object v2, p0, La/a/cl;->e:La/a/b;

    invoke-direct {v0, v1, v2}, La/a/db;-><init>(Landroid/content/Context;La/a/b;)V

    invoke-virtual {v0, p0}, La/a/db;->a(La/a/da;)V

    iget-object v1, p0, La/a/cl;->f:La/a/k;

    invoke-virtual {v1}, La/a/k;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, La/a/db;->a()V

    :cond_0
    invoke-virtual {v0}, La/a/db;->b()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {p0, v1}, La/a/cl;->a([I)La/a/ao;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "MobclickAgent"

    const-string v3, "No data to report"

    invoke-static {v2, v3}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    const-string v0, "MobclickAgent"

    const-string v1, " not legitimate!"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, La/a/ao;->a()La/a/q;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, La/a/ao;->c()La/a/p;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, La/a/ao;->e()La/a/s;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, La/a/ao;->g()La/a/af;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, La/a/db;

    iget-object v2, p0, La/a/cl;->o:Landroid/content/Context;

    iget-object v3, p0, La/a/cl;->e:La/a/b;

    invoke-direct {v0, v2, v3}, La/a/db;-><init>(Landroid/content/Context;La/a/b;)V

    invoke-virtual {v0, p0}, La/a/db;->a(La/a/da;)V

    iget-object v2, p0, La/a/cl;->f:La/a/k;

    invoke-virtual {v2}, La/a/k;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, La/a/db;->a()V

    :cond_5
    invoke-direct {p0, v1}, La/a/cl;->b(La/a/ao;)La/a/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/db;->a(La/a/ao;)V

    invoke-direct {p0}, La/a/cl;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, La/a/db;->a(Z)V

    invoke-virtual {v0}, La/a/db;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d(La/a/cl;)La/a/l;
    .locals 1

    iget-object v0, p0, La/a/cl;->h:La/a/l;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, La/a/cl;->j:La/a/cg$a;

    invoke-virtual {v0}, La/a/cg$a;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/b/a/a;->f:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(La/a/cl;)La/a/j;
    .locals 1

    iget-object v0, p0, La/a/cl;->g:La/a/j;

    return-object v0
.end method

.method static synthetic f(La/a/cl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v0}, La/a/aq;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/cl;->c()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(La/a/cg$a;)V
    .locals 1

    iget-object v0, p0, La/a/cl;->g:La/a/j;

    invoke-virtual {v0, p1}, La/a/j;->a(La/a/cg$a;)V

    iget-object v0, p0, La/a/cl;->f:La/a/k;

    invoke-virtual {v0, p1}, La/a/k;->a(La/a/cg$a;)V

    iget-object v0, p0, La/a/cl;->h:La/a/l;

    invoke-virtual {v0, p1}, La/a/l;->a(La/a/cg$a;)V

    iget-object v0, p0, La/a/cl;->i:La/a/cl$a;

    invoke-virtual {v0, p1}, La/a/cl$a;->a(La/a/cg$a;)V

    return-void
.end method

.method public final a(La/a/cu;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v2, p1}, La/a/cw;->a(La/a/cu;)V

    :cond_0
    instance-of v2, p1, La/a/am;

    iget-object v3, p0, La/a/cl;->e:La/a/b;

    invoke-virtual {v3}, La/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, La/a/cl;->c:La/a/cw;

    new-instance v5, La/a/n;

    iget-object v6, p0, La/a/cl;->e:La/a/b;

    invoke-virtual {v6}, La/a/b;->e()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, La/a/n;-><init>(J)V

    invoke-virtual {v4, v5}, La/a/cw;->a(La/a/n;)V

    :cond_1
    iget-object v4, p0, La/a/cl;->o:Landroid/content/Context;

    invoke-static {v4}, La/a/aq;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v2, "MobclickAgent"

    const-string v4, "network is unavailable"

    invoke-static {v2, v4}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0}, La/a/cl;->c()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, La/a/cl;->e:La/a/b;

    invoke-virtual {v4}, La/a/b;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, La/a/cl;->i:La/a/cl$a;

    invoke-virtual {v4, v2}, La/a/cl$a;->a(Z)Lcom/b/a/c$h;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/b/a/c$h;->a(Z)Z

    move-result v2

    goto :goto_0

    :cond_5
    if-nez v3, :cond_7

    iget-object v2, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v2}, La/a/cw;->a()I

    move-result v2

    iget v3, p0, La/a/cl;->k:I

    if-le v2, v3, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_2

    :cond_7
    invoke-virtual {p0}, La/a/cl;->b()V

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v0}, La/a/cw;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    invoke-direct {p0, v0}, La/a/cl;->a([I)La/a/ao;

    move-result-object v0

    invoke-static {v0}, La/a/cl;->a(La/a/ao;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/cl;->d:Lcom/b/a/m;

    invoke-static {v0}, Lcom/b/a/m;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, La/a/cl;->o:Landroid/content/Context;

    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, La/a/cl;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, La/a/cl;->m:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, La/a/cl;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/cl;->d:Lcom/b/a/m;

    invoke-static {}, Lcom/b/a/m;->d()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(La/a/cu;)V
    .locals 1

    iget-object v0, p0, La/a/cl;->c:La/a/cw;

    invoke-virtual {v0, p1}, La/a/cw;->a(La/a/cu;)V

    return-void
.end method
