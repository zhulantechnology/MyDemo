.class public final La/a/l;
.super Ljava/lang/Object;

# interfaces
.implements La/a/da;


# static fields
.field private static l:La/a/l;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/b/a/m;

.field private f:La/a/b;

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/l;->l:La/a/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;La/a/b;)V
    .locals 8

    const-wide/32 v6, 0x4d3f6400

    const-wide/16 v4, 0x0

    const/16 v2, 0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v6, p0, La/a/l;->a:J

    const-wide/32 v0, 0x7b98a00

    iput-wide v0, p0, La/a/l;->b:J

    const v0, 0x1b7740

    iput v0, p0, La/a/l;->c:I

    iput v2, p0, La/a/l;->d:I

    iput-wide v6, p0, La/a/l;->g:J

    iput v2, p0, La/a/l;->h:I

    iput-wide v4, p0, La/a/l;->i:J

    iput-wide v4, p0, La/a/l;->j:J

    iput-object p1, p0, La/a/l;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/b/a/m;->a(Landroid/content/Context;)Lcom/b/a/m;

    move-result-object v0

    iput-object v0, p0, La/a/l;->e:Lcom/b/a/m;

    iput-object p2, p0, La/a/l;->f:La/a/b;

    return-void
.end method

.method public static a(Landroid/content/Context;La/a/b;)La/a/l;
    .locals 2

    const-class v0, La/a/l;

    monitor-enter v0

    :try_start_0
    sget-object v0, La/a/l;->l:La/a/l;

    if-nez v0, :cond_0

    new-instance v0, La/a/l;

    invoke-direct {v0, p0, p1}, La/a/l;-><init>(Landroid/content/Context;La/a/b;)V

    sput-object v0, La/a/l;->l:La/a/l;

    invoke-static {p0}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v1

    invoke-virtual {v1}, La/a/cg;->b()La/a/cg$a;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/l;->a(La/a/cg$a;)V

    :cond_0
    sget-object v0, La/a/l;->l:La/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, La/a/l;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, La/a/l;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(La/a/cg$a;)V
    .locals 2

    invoke-virtual {p1}, La/a/cg$a;->i()J

    move-result-wide v0

    iput-wide v0, p0, La/a/l;->g:J

    invoke-virtual {p1}, La/a/cg$a;->b()I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/b/a/a;->g:I

    if-lez v0, :cond_0

    sget v0, Lcom/b/a/a;->g:I

    const v1, 0x1b7740

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x2710

    iput v0, p0, La/a/l;->h:I

    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/b/a/a;->g:I

    iput v0, p0, La/a/l;->h:I

    goto :goto_0

    :cond_2
    iput v0, p0, La/a/l;->h:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, La/a/l;->e:Lcom/b/a/m;

    invoke-virtual {v1}, Lcom/b/a/m;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, La/a/l;->f:La/a/b;

    invoke-virtual {v1}, La/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, La/a/l;->f:La/a/b;

    invoke-virtual {v1}, La/a/b;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, La/a/l;->g:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, La/a/l;->k:Landroid/content/Context;

    invoke-static {v1}, La/a/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, La/a/l;->h:I

    invoke-static {v4, v1}, Lcom/b/a/e;->a(ILjava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, La/a/l;->i:J

    iput-wide v2, p0, La/a/l;->j:J

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x7b98a00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, La/a/l;->i:J

    iput-wide v2, p0, La/a/l;->j:J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, La/a/l;->i:J

    return-wide v0
.end method
