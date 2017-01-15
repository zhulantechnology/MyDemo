.class final La/a/af$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/af;
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

    invoke-direct {p0}, La/a/af$c;-><init>()V

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

    check-cast p2, La/a/af;

    check-cast p1, La/a/bw;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/af;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/af;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/af;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, La/a/af;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, La/a/af;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, La/a/af;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, La/a/af;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, La/a/af;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, La/a/af;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, La/a/af;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/af;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p2, La/a/af;->a:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_a
    invoke-virtual {p2}, La/a/af;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, La/a/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, La/a/af;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, La/a/af;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, La/a/af;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p2, La/a/af;->d:D

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(D)V

    :cond_d
    invoke-virtual {p2}, La/a/af;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p2, La/a/af;->e:D

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(D)V

    :cond_e
    invoke-virtual {p2}, La/a/af;->k()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, La/a/af;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, La/a/af;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p2, La/a/af;->g:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_10
    invoke-virtual {p2}, La/a/af;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, La/a/af;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, La/a/af;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, La/a/af;->i:La/a/m;

    invoke-virtual {v0}, La/a/m;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_12
    invoke-virtual {p2}, La/a/af;->s()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, La/a/af;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/af;

    check-cast p1, La/a/bw;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v1

    iput v1, p2, La/a/af;->a:I

    invoke-virtual {p2}, La/a/af;->b()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/af;->b:Ljava/lang/String;

    invoke-static {}, La/a/af;->d()V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/af;->c:Ljava/lang/String;

    invoke-static {}, La/a/af;->f()V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, La/a/bw;->o()D

    move-result-wide v2

    iput-wide v2, p2, La/a/af;->d:D

    invoke-virtual {p2}, La/a/af;->h()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, La/a/bw;->o()D

    move-result-wide v2

    iput-wide v2, p2, La/a/af;->e:D

    invoke-virtual {p2}, La/a/af;->j()V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/af;->f:Ljava/lang/String;

    invoke-static {}, La/a/af;->l()V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v1

    iput v1, p2, La/a/af;->g:I

    invoke-virtual {p2}, La/a/af;->n()V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/af;->h:Ljava/lang/String;

    invoke-static {}, La/a/af;->p()V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v1

    invoke-static {v1}, La/a/m;->a(I)La/a/m;

    move-result-object v1

    iput-object v1, p2, La/a/af;->i:La/a/m;

    invoke-static {}, La/a/af;->r()V

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->j:Ljava/lang/String;

    invoke-static {}, La/a/af;->t()V

    :cond_9
    return-void
.end method
