.class public final La/a/bc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:La/a/cb;

.field private c:La/a/bq;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, La/a/bm$a;

    invoke-direct {v0}, La/a/bm$a;-><init>()V

    invoke-direct {p0, v0}, La/a/bc;-><init>(La/a/bs;)V

    return-void
.end method

.method private constructor <init>(La/a/bs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, La/a/bc;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, La/a/cb;

    iget-object v1, p0, La/a/bc;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, La/a/cb;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/bc;->b:La/a/cb;

    iget-object v0, p0, La/a/bc;->b:La/a/cb;

    invoke-interface {p1, v0}, La/a/bs;->a(La/a/cd;)La/a/bq;

    move-result-object v0

    iput-object v0, p0, La/a/bc;->c:La/a/bq;

    return-void
.end method


# virtual methods
.method public final a(La/a/ax;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/bc;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, La/a/bc;->c:La/a/bq;

    invoke-interface {p1, v0}, La/a/ax;->b(La/a/bq;)V

    iget-object v0, p0, La/a/bc;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
