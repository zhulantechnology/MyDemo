.class final La/a/ao$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ao;
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

    invoke-direct {p0}, La/a/ao$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/ao;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/ao;->a:La/a/q;

    invoke-virtual {v0, p1}, La/a/q;->b(La/a/bq;)V

    iget-object v0, p2, La/a/ao;->b:La/a/p;

    invoke-virtual {v0, p1}, La/a/p;->b(La/a/bq;)V

    iget-object v0, p2, La/a/ao;->c:La/a/s;

    invoke-virtual {v0, p1}, La/a/s;->b(La/a/bq;)V

    iget-object v0, p2, La/a/ao;->d:La/a/af;

    invoke-virtual {v0, p1}, La/a/af;->b(La/a/bq;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/ao;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/ao;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/ao;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, La/a/ao;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, La/a/ao;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, La/a/ao;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, La/a/ao;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, La/a/ao;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, La/a/ao;->e:La/a/n;

    invoke-virtual {v0, p1}, La/a/n;->b(La/a/bq;)V

    :cond_8
    invoke-virtual {p2}, La/a/ao;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0, p1}, La/a/ac;->b(La/a/bq;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, La/a/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/am;

    invoke-virtual {v0, p1}, La/a/am;->b(La/a/bq;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, La/a/ao;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->b(La/a/bq;)V

    :cond_b
    invoke-virtual {p2}, La/a/ao;->u()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, La/a/ao;->i:La/a/z;

    invoke-virtual {v0, p1}, La/a/z;->b(La/a/bq;)V

    :cond_c
    invoke-virtual {p2}, La/a/ao;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, La/a/ao;->j:La/a/o;

    invoke-virtual {v0, p1}, La/a/o;->b(La/a/bq;)V

    :cond_d
    invoke-virtual {p2}, La/a/ao;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, La/a/ao;->k:La/a/r;

    invoke-virtual {v0, p1}, La/a/r;->b(La/a/bq;)V

    :cond_e
    invoke-virtual {p2}, La/a/ao;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/bw;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    goto :goto_2

    :cond_f
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v1, 0x0

    check-cast p2, La/a/ao;

    check-cast p1, La/a/bw;

    new-instance v0, La/a/q;

    invoke-direct {v0}, La/a/q;-><init>()V

    iput-object v0, p2, La/a/ao;->a:La/a/q;

    iget-object v0, p2, La/a/ao;->a:La/a/q;

    invoke-virtual {v0, p1}, La/a/q;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->b()V

    new-instance v0, La/a/p;

    invoke-direct {v0}, La/a/p;-><init>()V

    iput-object v0, p2, La/a/ao;->b:La/a/p;

    iget-object v0, p2, La/a/ao;->b:La/a/p;

    invoke-virtual {v0, p1}, La/a/p;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->d()V

    new-instance v0, La/a/s;

    invoke-direct {v0}, La/a/s;-><init>()V

    iput-object v0, p2, La/a/ao;->c:La/a/s;

    iget-object v0, p2, La/a/ao;->c:La/a/s;

    invoke-virtual {v0, p1}, La/a/s;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->f()V

    new-instance v0, La/a/af;

    invoke-direct {v0}, La/a/af;-><init>()V

    iput-object v0, p2, La/a/ao;->d:La/a/af;

    iget-object v0, p2, La/a/ao;->d:La/a/af;

    invoke-virtual {v0, p1}, La/a/af;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->h()V

    invoke-virtual {p1, v6}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, La/a/n;

    invoke-direct {v0}, La/a/n;-><init>()V

    iput-object v0, p2, La/a/ao;->e:La/a/n;

    iget-object v0, p2, La/a/ao;->e:La/a/n;

    invoke-virtual {v0, p1}, La/a/n;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->j()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, La/a/bo;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, La/a/bo;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ao;->f:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, La/a/bo;->b:I

    if-ge v0, v4, :cond_1

    new-instance v4, La/a/ac;

    invoke-direct {v4}, La/a/ac;-><init>()V

    invoke-virtual {v4, p1}, La/a/ac;->a(La/a/bq;)V

    iget-object v5, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/ao;->o()V

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, La/a/bo;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, La/a/bo;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ao;->g:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v4, v3, La/a/bo;->b:I

    if-ge v0, v4, :cond_3

    new-instance v4, La/a/am;

    invoke-direct {v4}, La/a/am;-><init>()V

    invoke-virtual {v4, p1}, La/a/am;->a(La/a/bq;)V

    iget-object v5, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, La/a/ao;->r()V

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/a/aa;

    invoke-direct {v0}, La/a/aa;-><init>()V

    iput-object v0, p2, La/a/ao;->h:La/a/aa;

    iget-object v0, p2, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->t()V

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, La/a/z;

    invoke-direct {v0}, La/a/z;-><init>()V

    iput-object v0, p2, La/a/ao;->i:La/a/z;

    iget-object v0, p2, La/a/ao;->i:La/a/z;

    invoke-virtual {v0, p1}, La/a/z;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->v()V

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, La/a/o;

    invoke-direct {v0}, La/a/o;-><init>()V

    iput-object v0, p2, La/a/ao;->j:La/a/o;

    iget-object v0, p2, La/a/ao;->j:La/a/o;

    invoke-virtual {v0, p1}, La/a/o;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->x()V

    :cond_7
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, La/a/r;

    invoke-direct {v0}, La/a/r;-><init>()V

    iput-object v0, p2, La/a/ao;->k:La/a/r;

    iget-object v0, p2, La/a/ao;->k:La/a/r;

    invoke-virtual {v0, p1}, La/a/r;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->z()V

    :cond_8
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, La/a/bp;

    const/16 v2, 0xb

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v3

    invoke-direct {v0, v2, v6, v3}, La/a/bp;-><init>(BBI)V

    new-instance v2, Ljava/util/HashMap;

    iget v3, v0, La/a/bp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, La/a/ao;->l:Ljava/util/Map;

    :goto_2
    iget v2, v0, La/a/bp;->c:I

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v3

    iget-object v4, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, La/a/ao;->B()V

    :cond_a
    return-void
.end method
