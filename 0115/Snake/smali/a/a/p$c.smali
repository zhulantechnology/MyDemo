.class final La/a/p$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/p;
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

    invoke-direct {p0}, La/a/p$c;-><init>()V

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

    check-cast p2, La/a/p;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/p;->e:La/a/al;

    invoke-virtual {v0}, La/a/al;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/p;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    iget-object v0, p2, La/a/p;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/p;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/p;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, La/a/p;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, La/a/p;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, La/a/p;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, La/a/p;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p2, La/a/p;->c:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_7
    invoke-virtual {p2}, La/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, La/a/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, La/a/p;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, La/a/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, La/a/p;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, La/a/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, La/a/p;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p2, La/a/p;->j:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    :cond_b
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/p;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->a:Ljava/lang/String;

    invoke-static {}, La/a/p;->a()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-static {v0}, La/a/al;->a(I)La/a/al;

    move-result-object v0

    iput-object v0, p2, La/a/p;->e:La/a/al;

    invoke-static {}, La/a/p;->h()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->f:Ljava/lang/String;

    invoke-static {}, La/a/p;->i()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->g:Ljava/lang/String;

    invoke-static {}, La/a/p;->j()V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/p;->b:Ljava/lang/String;

    invoke-static {}, La/a/p;->c()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v1

    iput v1, p2, La/a/p;->c:I

    invoke-virtual {p2}, La/a/p;->e()V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/p;->d:Ljava/lang/String;

    invoke-static {}, La/a/p;->g()V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/p;->h:Ljava/lang/String;

    invoke-static {}, La/a/p;->l()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, La/a/p;->i:Ljava/lang/String;

    invoke-static {}, La/a/p;->n()V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/p;->j:I

    invoke-virtual {p2}, La/a/p;->p()V

    :cond_5
    return-void
.end method
