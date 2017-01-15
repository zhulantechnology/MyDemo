.class final La/a/s$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/s;
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

    invoke-direct {p0}, La/a/s$c;-><init>()V

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

    check-cast p2, La/a/s;

    check-cast p1, La/a/bw;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/s;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/s;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, La/a/s;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, La/a/s;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, La/a/s;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, La/a/s;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, La/a/s;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, La/a/s;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, La/a/s;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, La/a/s;->u()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, La/a/s;->w()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    invoke-virtual {p2}, La/a/s;->y()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_c
    invoke-virtual {p2}, La/a/s;->A()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_d
    invoke-virtual {p2}, La/a/s;->C()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_e
    invoke-virtual {p2}, La/a/s;->E()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_f
    invoke-virtual {p2}, La/a/s;->G()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, La/a/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, La/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, La/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p2}, La/a/s;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, La/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p2}, La/a/s;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p2, La/a/s;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, La/a/s;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, La/a/s;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, La/a/s;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, La/a/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p2}, La/a/s;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, La/a/s;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p2}, La/a/s;->o()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p2, La/a/s;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p2}, La/a/s;->q()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p2, La/a/s;->i:La/a/aj;

    invoke-virtual {v0, p1}, La/a/aj;->b(La/a/bq;)V

    :cond_19
    invoke-virtual {p2}, La/a/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p2, La/a/s;->j:Z

    invoke-virtual {p1, v0}, La/a/bw;->a(Z)V

    :cond_1a
    invoke-virtual {p2}, La/a/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p2, La/a/s;->k:Z

    invoke-virtual {p1, v0}, La/a/bw;->a(Z)V

    :cond_1b
    invoke-virtual {p2}, La/a/s;->w()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, La/a/s;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p2}, La/a/s;->y()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p2, La/a/s;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p2}, La/a/s;->A()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-wide v0, p2, La/a/s;->n:J

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(J)V

    :cond_1e
    invoke-virtual {p2}, La/a/s;->C()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p2, La/a/s;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p2}, La/a/s;->E()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p2, La/a/s;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p2}, La/a/s;->G()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, La/a/s;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/s;

    check-cast p1, La/a/bw;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->a:Ljava/lang/String;

    invoke-static {}, La/a/s;->b()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->b:Ljava/lang/String;

    invoke-static {}, La/a/s;->d()V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->c:Ljava/lang/String;

    invoke-static {}, La/a/s;->f()V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->d:Ljava/lang/String;

    invoke-static {}, La/a/s;->h()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->e:Ljava/lang/String;

    invoke-static {}, La/a/s;->j()V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->f:Ljava/lang/String;

    invoke-static {}, La/a/s;->l()V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->g:Ljava/lang/String;

    invoke-static {}, La/a/s;->n()V

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->h:Ljava/lang/String;

    invoke-static {}, La/a/s;->p()V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, La/a/aj;

    invoke-direct {v1}, La/a/aj;-><init>()V

    iput-object v1, p2, La/a/s;->i:La/a/aj;

    iget-object v1, p2, La/a/s;->i:La/a/aj;

    invoke-virtual {v1, p1}, La/a/aj;->a(La/a/bq;)V

    invoke-static {}, La/a/s;->r()V

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, La/a/bw;->j()Z

    move-result v1

    iput-boolean v1, p2, La/a/s;->j:Z

    invoke-virtual {p2}, La/a/s;->t()V

    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, La/a/bw;->j()Z

    move-result v1

    iput-boolean v1, p2, La/a/s;->k:Z

    invoke-virtual {p2}, La/a/s;->v()V

    :cond_a
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->l:Ljava/lang/String;

    invoke-static {}, La/a/s;->x()V

    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->m:Ljava/lang/String;

    invoke-static {}, La/a/s;->z()V

    :cond_c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, La/a/bw;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/s;->n:J

    invoke-virtual {p2}, La/a/s;->B()V

    :cond_d
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->o:Ljava/lang/String;

    invoke-static {}, La/a/s;->D()V

    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/s;->p:Ljava/lang/String;

    invoke-static {}, La/a/s;->F()V

    :cond_f
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->q:Ljava/lang/String;

    invoke-static {}, La/a/s;->H()V

    :cond_10
    return-void
.end method
