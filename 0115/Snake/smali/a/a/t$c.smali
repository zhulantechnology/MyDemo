.class final La/a/t$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/t;
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

    invoke-direct {p0}, La/a/t$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/t;

    check-cast p1, La/a/bw;

    iget-wide v0, p2, La/a/t;->a:J

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(J)V

    iget-object v0, p2, La/a/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/t;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/t;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, La/a/t;->c:La/a/u;

    invoke-virtual {v0}, La/a/u;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_1
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/t;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/t;->a:J

    invoke-virtual {p2}, La/a/t;->b()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/t;->b:Ljava/lang/String;

    invoke-static {}, La/a/t;->c()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-static {v0}, La/a/u;->a(I)La/a/u;

    move-result-object v0

    iput-object v0, p2, La/a/t;->c:La/a/u;

    invoke-static {}, La/a/t;->e()V

    :cond_0
    return-void
.end method
