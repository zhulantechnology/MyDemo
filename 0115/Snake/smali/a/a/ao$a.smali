.class final La/a/ao$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/ao$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v2, 0xc

    check-cast p2, La/a/ao;

    invoke-virtual {p2}, La/a/ao;->C()V

    invoke-static {}, La/a/ao;->D()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/ao;->a:La/a/q;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/ao;->E()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->a:La/a/q;

    invoke-virtual {v0, p1}, La/a/q;->b(La/a/bq;)V

    :cond_0
    iget-object v0, p2, La/a/ao;->b:La/a/p;

    if-eqz v0, :cond_1

    invoke-static {}, La/a/ao;->F()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->b:La/a/p;

    invoke-virtual {v0, p1}, La/a/p;->b(La/a/bq;)V

    :cond_1
    iget-object v0, p2, La/a/ao;->c:La/a/s;

    if-eqz v0, :cond_2

    invoke-static {}, La/a/ao;->G()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->c:La/a/s;

    invoke-virtual {v0, p1}, La/a/s;->b(La/a/bq;)V

    :cond_2
    iget-object v0, p2, La/a/ao;->d:La/a/af;

    if-eqz v0, :cond_3

    invoke-static {}, La/a/ao;->H()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->d:La/a/af;

    invoke-virtual {v0, p1}, La/a/af;->b(La/a/bq;)V

    :cond_3
    iget-object v0, p2, La/a/ao;->e:La/a/n;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, La/a/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La/a/ao;->I()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->e:La/a/n;

    invoke-virtual {v0, p1}, La/a/n;->b(La/a/bq;)V

    :cond_4
    iget-object v0, p2, La/a/ao;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, La/a/ao;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, La/a/ao;->J()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0, p1}, La/a/ac;->b(La/a/bq;)V

    goto :goto_0

    :cond_5
    iget-object v0, p2, La/a/ao;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, La/a/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, La/a/ao;->K()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/am;

    invoke-virtual {v0, p1}, La/a/am;->b(La/a/bq;)V

    goto :goto_1

    :cond_6
    iget-object v0, p2, La/a/ao;->h:La/a/aa;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, La/a/ao;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, La/a/ao;->L()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->b(La/a/bq;)V

    :cond_7
    iget-object v0, p2, La/a/ao;->i:La/a/z;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, La/a/ao;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, La/a/ao;->M()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->i:La/a/z;

    invoke-virtual {v0, p1}, La/a/z;->b(La/a/bq;)V

    :cond_8
    iget-object v0, p2, La/a/ao;->j:La/a/o;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, La/a/ao;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, La/a/ao;->N()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->j:La/a/o;

    invoke-virtual {v0, p1}, La/a/o;->b(La/a/bq;)V

    :cond_9
    iget-object v0, p2, La/a/ao;->k:La/a/r;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, La/a/ao;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, La/a/ao;->O()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ao;->k:La/a/r;

    invoke-virtual {v0, p1}, La/a/r;->b(La/a/bq;)V

    :cond_a
    iget-object v0, p2, La/a/ao;->l:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-virtual {p2}, La/a/ao;->A()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, La/a/ao;->P()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bp;

    const/16 v1, 0xb

    const/16 v2, 0x8

    iget-object v3, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, La/a/bp;-><init>(BBI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bp;)V

    iget-object v0, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/bq;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xc

    check-cast p2, La/a/ao;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v2, v0, La/a/bn;->b:B

    if-eqz v2, :cond_f

    iget-short v2, v0, La/a/bn;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_0

    new-instance v0, La/a/q;

    invoke-direct {v0}, La/a/q;-><init>()V

    iput-object v0, p2, La/a/ao;->a:La/a/q;

    iget-object v0, p2, La/a/ao;->a:La/a/q;

    invoke-virtual {v0, p1}, La/a/q;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_1

    new-instance v0, La/a/p;

    invoke-direct {v0}, La/a/p;-><init>()V

    iput-object v0, p2, La/a/ao;->b:La/a/p;

    iget-object v0, p2, La/a/ao;->b:La/a/p;

    invoke-virtual {v0, p1}, La/a/p;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->d()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_2

    new-instance v0, La/a/s;

    invoke-direct {v0}, La/a/s;-><init>()V

    iput-object v0, p2, La/a/ao;->c:La/a/s;

    iget-object v0, p2, La/a/ao;->c:La/a/s;

    invoke-virtual {v0, p1}, La/a/s;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->f()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_3

    new-instance v0, La/a/af;

    invoke-direct {v0}, La/a/af;-><init>()V

    iput-object v0, p2, La/a/ao;->d:La/a/af;

    iget-object v0, p2, La/a/ao;->d:La/a/af;

    invoke-virtual {v0, p1}, La/a/af;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->h()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_4

    new-instance v0, La/a/n;

    invoke-direct {v0}, La/a/n;-><init>()V

    iput-object v0, p2, La/a/ao;->e:La/a/n;

    iget-object v0, p2, La/a/ao;->e:La/a/n;

    invoke-virtual {v0, p1}, La/a/n;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->j()V

    goto/16 :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_5
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v7, :cond_6

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ao;->f:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_5

    new-instance v3, La/a/ac;

    invoke-direct {v3}, La/a/ac;-><init>()V

    invoke-virtual {v3, p1}, La/a/ac;->a(La/a/bq;)V

    iget-object v4, p2, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, La/a/ao;->o()V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v7, :cond_8

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ao;->g:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_7

    new-instance v3, La/a/am;

    invoke-direct {v3}, La/a/am;-><init>()V

    invoke-virtual {v3, p1}, La/a/am;->a(La/a/bq;)V

    iget-object v4, p2, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {}, La/a/ao;->r()V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_9

    new-instance v0, La/a/aa;

    invoke-direct {v0}, La/a/aa;-><init>()V

    iput-object v0, p2, La/a/ao;->h:La/a/aa;

    iget-object v0, p2, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0, p1}, La/a/aa;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->t()V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_a

    new-instance v0, La/a/z;

    invoke-direct {v0}, La/a/z;-><init>()V

    iput-object v0, p2, La/a/ao;->i:La/a/z;

    iget-object v0, p2, La/a/ao;->i:La/a/z;

    invoke-virtual {v0, p1}, La/a/z;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->v()V

    goto/16 :goto_0

    :cond_a
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_9
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_b

    new-instance v0, La/a/o;

    invoke-direct {v0}, La/a/o;-><init>()V

    iput-object v0, p2, La/a/ao;->j:La/a/o;

    iget-object v0, p2, La/a/ao;->j:La/a/o;

    invoke-virtual {v0, p1}, La/a/o;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->x()V

    goto/16 :goto_0

    :cond_b
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_a
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_c

    new-instance v0, La/a/r;

    invoke-direct {v0}, La/a/r;-><init>()V

    iput-object v0, p2, La/a/ao;->k:La/a/r;

    iget-object v0, p2, La/a/ao;->k:La/a/r;

    invoke-virtual {v0, p1}, La/a/r;->a(La/a/bq;)V

    invoke-static {}, La/a/ao;->z()V

    goto/16 :goto_0

    :cond_c
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_b
    iget-byte v2, v0, La/a/bn;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    invoke-virtual {p1}, La/a/bq;->g()La/a/bp;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, La/a/bp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, La/a/ao;->l:Ljava/util/Map;

    move v0, v1

    :goto_3
    iget v3, v2, La/a/bp;->c:I

    if-ge v0, v3, :cond_d

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v4

    iget-object v5, p2, La/a/ao;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    invoke-static {}, La/a/ao;->B()V

    goto/16 :goto_0

    :cond_e
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/ao;->C()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
