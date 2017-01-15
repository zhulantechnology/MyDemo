.class public final La/a/az;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/bq;

.field private final b:La/a/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, La/a/bm$a;

    invoke-direct {v0}, La/a/bm$a;-><init>()V

    invoke-direct {p0, v0}, La/a/az;-><init>(La/a/bs;)V

    return-void
.end method

.method public constructor <init>(La/a/bs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/cc;

    invoke-direct {v0}, La/a/cc;-><init>()V

    iput-object v0, p0, La/a/az;->b:La/a/cc;

    iget-object v0, p0, La/a/az;->b:La/a/cc;

    invoke-interface {p1, v0}, La/a/bs;->a(La/a/cd;)La/a/bq;

    move-result-object v0

    iput-object v0, p0, La/a/az;->a:La/a/bq;

    return-void
.end method


# virtual methods
.method public final a(La/a/ax;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, La/a/az;->b:La/a/cc;

    array-length v1, p2

    invoke-virtual {v0, p2, v1}, La/a/cc;->a([BI)V

    iget-object v0, p0, La/a/az;->a:La/a/bq;

    invoke-interface {p1, v0}, La/a/ax;->a(La/a/bq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, La/a/az;->b:La/a/cc;

    invoke-virtual {v0}, La/a/cc;->a()V

    iget-object v0, p0, La/a/az;->a:La/a/bq;

    invoke-virtual {v0}, La/a/bq;->r()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/az;->b:La/a/cc;

    invoke-virtual {v1}, La/a/cc;->a()V

    iget-object v1, p0, La/a/az;->a:La/a/bq;

    invoke-virtual {v1}, La/a/bq;->r()V

    throw v0
.end method
