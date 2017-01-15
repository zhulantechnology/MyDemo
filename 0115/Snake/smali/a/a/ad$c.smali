.class final La/a/ad$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/ad$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/ad;

    check-cast p1, La/a/bw;

    iget v0, p2, La/a/ad;->a:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-wide v0, p2, La/a/ad;->b:J

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(J)V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/ad;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ad;->a:I

    invoke-virtual {p2}, La/a/ad;->b()V

    invoke-virtual {p1}, La/a/bw;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/ad;->b:J

    invoke-virtual {p2}, La/a/ad;->d()V

    return-void
.end method
