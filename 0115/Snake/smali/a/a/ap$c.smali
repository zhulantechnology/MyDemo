.class final La/a/ap$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ap;
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

    invoke-direct {p0}, La/a/ap$c;-><init>()V

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

    check-cast p2, La/a/ap;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/ap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/ap;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/ap;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget v0, p2, La/a/ap;->d:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget v0, p2, La/a/ap;->e:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget v0, p2, La/a/ap;->f:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p2, La/a/ap;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/ap;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/ap;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/ap;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, La/a/ap;->j:I

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

    check-cast p2, La/a/ap;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->a:Ljava/lang/String;

    invoke-static {}, La/a/ap;->a()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->b:Ljava/lang/String;

    invoke-static {}, La/a/ap;->b()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->c:Ljava/lang/String;

    invoke-static {}, La/a/ap;->c()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->d:I

    invoke-virtual {p2}, La/a/ap;->e()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->e:I

    invoke-virtual {p2}, La/a/ap;->g()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->f:I

    invoke-virtual {p2}, La/a/ap;->i()V

    invoke-virtual {p1}, La/a/bw;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->g:Ljava/nio/ByteBuffer;

    invoke-static {}, La/a/ap;->j()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->h:Ljava/lang/String;

    invoke-static {}, La/a/ap;->k()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->i:Ljava/lang/String;

    invoke-static {}, La/a/ap;->l()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->j:I

    invoke-virtual {p2}, La/a/ap;->n()V

    :cond_0
    return-void
.end method
