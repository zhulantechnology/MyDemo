.class public final La/a/db;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/bj;

.field private b:La/a/cg;

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:La/a/b;

.field private f:La/a/cx;

.field private g:La/a/ao;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, La/a/db;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/db;->h:Z

    invoke-static {p1}, La/a/bj;->a(Landroid/content/Context;)La/a/bj;

    move-result-object v0

    iput-object v0, p0, La/a/db;->a:La/a/bj;

    invoke-static {p1}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v0

    iput-object v0, p0, La/a/db;->b:La/a/cg;

    iput-object p1, p0, La/a/db;->d:Landroid/content/Context;

    iput-object p2, p0, La/a/db;->e:La/a/b;

    new-instance v0, La/a/cx;

    invoke-direct {v0, p1}, La/a/cx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/db;->f:La/a/cx;

    iget-object v0, p0, La/a/db;->f:La/a/cx;

    iget-object v1, p0, La/a/db;->e:La/a/b;

    invoke-virtual {v0, v1}, La/a/cx;->a(La/a/cv;)V

    return-void
.end method

.method static synthetic a(La/a/db;[B)I
    .locals 1

    invoke-direct {p0, p1}, La/a/db;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, La/a/ak;

    invoke-direct {v1}, La/a/ak;-><init>()V

    new-instance v0, La/a/az;

    new-instance v2, La/a/bl$a;

    invoke-direct {v2}, La/a/bl$a;-><init>()V

    invoke-direct {v0, v2}, La/a/az;-><init>(La/a/bs;)V

    :try_start_0
    invoke-virtual {v0, v1, p1}, La/a/az;->a(La/a/ax;[B)V

    iget v0, v1, La/a/ak;->a:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, La/a/db;->b:La/a/cg;

    invoke-virtual {v1}, La/a/ak;->f()La/a/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/cg;->a(La/a/aa;)V

    iget-object v0, p0, La/a/db;->b:La/a/cg;

    invoke-virtual {v0}, La/a/cg;->c()V

    :cond_0
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send log:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, La/a/ak;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/a/ar;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, v1, La/a/ak;->a:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(La/a/db;)La/a/cx;
    .locals 1

    iget-object v0, p0, La/a/db;->f:La/a/cx;

    return-object v0
.end method

.method static synthetic b(La/a/db;)La/a/b;
    .locals 1

    iget-object v0, p0, La/a/db;->e:La/a/b;

    return-object v0
.end method

.method private static b(La/a/ao;)[B
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

    sget-boolean v2, La/a/ar;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "MobclickAgent"

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(La/a/db;)Z
    .locals 1

    iget-boolean v0, p0, La/a/db;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/db;->i:Z

    return-void
.end method

.method public final a(La/a/ao;)V
    .locals 0

    iput-object p1, p0, La/a/db;->g:La/a/ao;

    return-void
.end method

.method public final a(La/a/da;)V
    .locals 1

    iget-object v0, p0, La/a/db;->b:La/a/cg;

    invoke-virtual {v0, p1}, La/a/cg;->a(La/a/da;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/db;->h:Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, La/a/db;->g:La/a/ao;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/db;->a:La/a/bj;

    invoke-virtual {v0}, La/a/bj;->a()V

    iget-object v0, p0, La/a/db;->g:La/a/ao;

    iget-object v1, p0, La/a/db;->a:La/a/bj;

    invoke-virtual {v1}, La/a/bj;->b()La/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/ao;->a(La/a/z;)La/a/ao;

    invoke-static {v0}, La/a/db;->b(La/a/ao;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, La/a/ar;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, La/a/db;->h:Z

    if-nez v1, :cond_2

    iget-object v1, p0, La/a/db;->d:Landroid/content/Context;

    iget-object v2, p0, La/a/db;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, La/a/as;->a(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, La/a/as;->a()[B

    move-result-object v1

    iget-object v0, p0, La/a/db;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    invoke-static {}, Lcom/b/a/m;->d()V

    iget-object v0, p0, La/a/db;->f:La/a/cx;

    invoke-virtual {v0, v1}, La/a/cx;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, La/a/db;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/db;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->b([B)V

    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/db;->d:Landroid/content/Context;

    iget-object v2, p0, La/a/db;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, La/a/as;->b(Landroid/content/Context;Ljava/lang/String;[B)La/a/as;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, La/a/db;->a([B)I

    move-result v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, La/a/db;->e:La/a/b;

    invoke-virtual {v0}, La/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/db;->e:La/a/b;

    invoke-virtual {v0}, La/a/b;->c()V

    :cond_4
    iget-object v0, p0, La/a/db;->a:La/a/bj;

    invoke-virtual {v0}, La/a/bj;->c()V

    iget-object v0, p0, La/a/db;->e:La/a/b;

    invoke-virtual {v0}, La/a/b;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, La/a/db;->e:La/a/b;

    invoke-virtual {v0}, La/a/b;->b()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/a/db;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/m;->f()Lcom/b/a/m$a;

    move-result-object v0

    new-instance v1, La/a/dc;

    invoke-direct {v1, p0}, La/a/dc;-><init>(La/a/db;)V

    invoke-virtual {v0, v1}, Lcom/b/a/m$a;->a(Lcom/b/a/m$b;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
