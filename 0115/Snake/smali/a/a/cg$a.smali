.class public final La/a/cg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/a/cg$a;->a:I

    iput v0, p0, La/a/cg$a;->b:I

    iput v0, p0, La/a/cg$a;->c:I

    iput v0, p0, La/a/cg$a;->d:I

    iput v0, p0, La/a/cg$a;->e:I

    iput-object v1, p0, La/a/cg$a;->f:Ljava/lang/String;

    iput v0, p0, La/a/cg$a;->g:I

    iput-object v1, p0, La/a/cg$a;->h:Ljava/lang/String;

    iput v0, p0, La/a/cg$a;->i:I

    iput v0, p0, La/a/cg$a;->j:I

    return-void
.end method

.method private static a(La/a/aa;Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/a/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ab;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static b(La/a/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/a/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, La/a/aa;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ab;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, La/a/ab;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, La/a/cg$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, La/a/cg$a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, La/a/cg$a;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, La/a/cg$a;->a:I

    goto :goto_0
.end method

.method public final a(I)I
    .locals 2

    iget v0, p0, La/a/cg$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, La/a/cg$a;->g:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    iget v0, p0, La/a/cg$a;->g:I

    const v1, 0x15180

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, La/a/cg$a;->g:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public final a(La/a/aa;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "defcon"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->a:I

    const-string v0, "latent"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->b:I

    const-string v0, "codex"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->c:I

    const-string v0, "report_policy"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->d:I

    const-string v0, "report_interval"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->e:I

    const-string v0, "client_test"

    invoke-static {p1, v0}, La/a/cg$a;->b(La/a/aa;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/cg$a;->f:Ljava/lang/String;

    const-string v0, "test_report_interval"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->g:I

    const-string v0, "umid"

    invoke-static {p1, v0}, La/a/cg$a;->b(La/a/aa;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/cg$a;->h:Ljava/lang/String;

    const-string v0, "integrated_test"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->i:I

    const-string v0, "latent_hours"

    invoke-static {p1, v0}, La/a/cg$a;->a(La/a/aa;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/a/cg$a;->j:I

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, La/a/cg$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, La/a/cg$a;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, La/a/cg$a;->b:I

    const/16 v1, 0x708

    if-gt v0, v1, :cond_0

    iget v0, p0, La/a/cg$a;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, La/a/cg$a;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, La/a/cg$a;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, La/a/cg$a;->c:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget v0, p0, La/a/cg$a;->c:I

    :cond_1
    return v0
.end method

.method public final d()[I
    .locals 6

    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v0, p0, La/a/cg$a;->d:I

    if-eq v0, v3, :cond_0

    iget v0, p0, La/a/cg$a;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    :goto_1
    return-object v0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, La/a/cg$a;->e:I

    if-eq v0, v3, :cond_2

    iget v0, p0, La/a/cg$a;->e:I

    if-lt v0, v5, :cond_2

    iget v0, p0, La/a/cg$a;->e:I

    const v3, 0x15180

    if-le v0, v3, :cond_3

    :cond_2
    iput v5, p0, La/a/cg$a;->e:I

    :cond_3
    new-array v0, v4, [I

    iget v3, p0, La/a/cg$a;->d:I

    aput v3, v0, v1

    iget v1, p0, La/a/cg$a;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/cg$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/cg$a;->f:Ljava/lang/String;

    invoke-static {v0}, La/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/cg$a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, La/a/cg$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/cg$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, La/a/cg$a;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()J
    .locals 4

    iget v0, p0, La/a/cg$a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-wide/32 v0, 0x4d3f6400

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, La/a/cg$a;->j:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const-wide/32 v0, 0x36ee80

    iget v2, p0, La/a/cg$a;->j:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_0
.end method
