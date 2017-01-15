.class public final La/a/k;
.super Ljava/lang/Object;

# interfaces
.implements La/a/da;


# static fields
.field private static c:La/a/k;


# instance fields
.field private a:I

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/k;->c:La/a/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/k;->a:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, La/a/k;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;)La/a/k;
    .locals 2

    const-class v0, La/a/k;

    monitor-enter v0

    :try_start_0
    sget-object v0, La/a/k;->c:La/a/k;

    if-nez v0, :cond_0

    new-instance v0, La/a/k;

    invoke-direct {v0}, La/a/k;-><init>()V

    sput-object v0, La/a/k;->c:La/a/k;

    invoke-static {p0}, La/a/cg;->a(Landroid/content/Context;)La/a/cg;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg;->b()La/a/cg$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg$a;->a()I

    move-result v0

    sget-object v1, La/a/k;->c:La/a/k;

    invoke-direct {v1, v0}, La/a/k;->a(I)V

    :cond_0
    sget-object v0, La/a/k;->c:La/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, La/a/k;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, La/a/k;

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, La/a/k;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, La/a/k;->a:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;La/a/ao;)La/a/ao;
    .locals 8

    const-wide/32 v6, 0xea60

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget v1, p0, La/a/k;->a:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p2}, La/a/ao;->m()La/a/ao;

    goto :goto_0

    :cond_2
    iget v1, p0, La/a/k;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-array v0, v3, [La/a/am;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, La/a/am;

    invoke-direct {v1}, La/a/am;-><init>()V

    invoke-static {p1}, La/a/dd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, La/a/am;->a(Ljava/lang/String;)La/a/am;

    invoke-virtual {v1, v2, v3}, La/a/am;->a(J)La/a/am;

    add-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, La/a/am;->b(J)La/a/am;

    invoke-virtual {v1, v6, v7}, La/a/am;->c(J)La/a/am;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/ao;->a(Ljava/util/List;)La/a/ao;

    invoke-virtual {p2}, La/a/ao;->m()La/a/ao;

    goto :goto_0

    :cond_3
    iget v1, p0, La/a/k;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v0}, La/a/ao;->a(Ljava/util/List;)La/a/ao;

    invoke-virtual {p2}, La/a/ao;->m()La/a/ao;

    goto :goto_0
.end method

.method public final a(La/a/cg$a;)V
    .locals 1

    invoke-virtual {p1}, La/a/cg$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, La/a/k;->a(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, La/a/k;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
