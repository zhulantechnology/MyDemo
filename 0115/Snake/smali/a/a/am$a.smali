.class final La/a/am$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/am;
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

    invoke-direct {p0}, La/a/am$a;-><init>()V

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

    const/16 v2, 0xc

    check-cast p2, La/a/am;

    invoke-virtual {p2}, La/a/am;->o()V

    invoke-static {}, La/a/am;->p()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/am;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/am;->q()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/am;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, La/a/am;->r()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/am;->b:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    invoke-static {}, La/a/am;->s()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/am;->c:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    invoke-static {}, La/a/am;->t()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/am;->d:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    iget-object v0, p2, La/a/am;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, La/a/am;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/a/am;->u()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/am;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/am;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ag;

    invoke-virtual {v0, p1}, La/a/ag;->b(La/a/bq;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, La/a/am;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, La/a/am;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/am;->v()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/am;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/am;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ae;

    invoke-virtual {v0, p1}, La/a/ae;->b(La/a/bq;)V

    goto :goto_1

    :cond_2
    iget-object v0, p2, La/a/am;->g:La/a/an;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, La/a/am;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/am;->w()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/am;->g:La/a/an;

    invoke-virtual {v0, p1}, La/a/an;->b(La/a/bq;)V

    :cond_3
    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v6, 0xf

    const/4 v1, 0x0

    const/16 v5, 0xa

    check-cast p2, La/a/am;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v2, v0, La/a/bn;->b:B

    if-eqz v2, :cond_9

    iget-short v2, v0, La/a/bn;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, La/a/bn;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/am;->a:Ljava/lang/String;

    invoke-static {}, La/a/am;->a()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/am;->b:J

    invoke-virtual {p2}, La/a/am;->c()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_2

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/am;->c:J

    invoke-virtual {p2}, La/a/am;->e()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_3

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v2

    iput-wide v2, p2, La/a/am;->d:J

    invoke-virtual {p2}, La/a/am;->g()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_5

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/am;->e:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_4

    new-instance v3, La/a/ag;

    invoke-direct {v3}, La/a/ag;-><init>()V

    invoke-virtual {v3, p1}, La/a/ag;->a(La/a/bq;)V

    iget-object v4, p2, La/a/am;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, La/a/am;->j()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_5
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v6, :cond_7

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/am;->f:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_6

    new-instance v3, La/a/ae;

    invoke-direct {v3}, La/a/ae;-><init>()V

    invoke-virtual {v3, p1}, La/a/ae;->a(La/a/bq;)V

    iget-object v4, p2, La/a/am;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, La/a/am;->l()V

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v2, v0, La/a/bn;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_8

    new-instance v0, La/a/an;

    invoke-direct {v0}, La/a/an;-><init>()V

    iput-object v0, p2, La/a/am;->g:La/a/an;

    iget-object v0, p2, La/a/am;->g:La/a/an;

    invoke-virtual {v0, p1}, La/a/an;->a(La/a/bq;)V

    invoke-static {}, La/a/am;->n()V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/am;->b()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p2}, La/a/am;->d()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p2}, La/a/am;->f()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, La/a/am;->o()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
