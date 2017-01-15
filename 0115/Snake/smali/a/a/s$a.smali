.class final La/a/s$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/s;
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

    invoke-direct {p0}, La/a/s$a;-><init>()V

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

    invoke-virtual {p2}, La/a/s;->I()V

    invoke-static {}, La/a/s;->J()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, La/a/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/s;->K()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, La/a/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, La/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/a/s;->L()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, La/a/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, La/a/s;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/s;->M()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p2, La/a/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, La/a/s;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/s;->N()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p2, La/a/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, La/a/s;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La/a/s;->O()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p2, La/a/s;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, La/a/s;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, La/a/s;->P()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p2, La/a/s;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, La/a/s;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, La/a/s;->Q()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p2, La/a/s;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, La/a/s;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, La/a/s;->R()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p2, La/a/s;->i:La/a/aj;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, La/a/s;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, La/a/s;->S()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->i:La/a/aj;

    invoke-virtual {v0, p1}, La/a/aj;->b(La/a/bq;)V

    :cond_8
    invoke-virtual {p2}, La/a/s;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, La/a/s;->T()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-boolean v0, p2, La/a/s;->j:Z

    invoke-virtual {p1, v0}, La/a/bq;->a(Z)V

    :cond_9
    invoke-virtual {p2}, La/a/s;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, La/a/s;->U()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-boolean v0, p2, La/a/s;->k:Z

    invoke-virtual {p1, v0}, La/a/bq;->a(Z)V

    :cond_a
    iget-object v0, p2, La/a/s;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p2}, La/a/s;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, La/a/s;->V()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p2, La/a/s;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, La/a/s;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, La/a/s;->W()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, La/a/s;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, La/a/s;->X()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/s;->n:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    :cond_d
    iget-object v0, p2, La/a/s;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, La/a/s;->C()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, La/a/s;->Y()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p2, La/a/s;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, La/a/s;->E()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, La/a/s;->Z()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p2, La/a/s;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, La/a/s;->G()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, La/a/s;->aa()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/s;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/4 v4, 0x2

    const/16 v3, 0xb

    check-cast p2, La/a/s;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_11

    iget-short v1, v0, La/a/bn;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->a:Ljava/lang/String;

    invoke-static {}, La/a/s;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->b:Ljava/lang/String;

    invoke-static {}, La/a/s;->d()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->c:Ljava/lang/String;

    invoke-static {}, La/a/s;->f()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->d:Ljava/lang/String;

    invoke-static {}, La/a/s;->h()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->e:Ljava/lang/String;

    invoke-static {}, La/a/s;->j()V

    goto :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->f:Ljava/lang/String;

    invoke-static {}, La/a/s;->l()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->g:Ljava/lang/String;

    invoke-static {}, La/a/s;->n()V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->h:Ljava/lang/String;

    invoke-static {}, La/a/s;->p()V

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8

    new-instance v0, La/a/aj;

    invoke-direct {v0}, La/a/aj;-><init>()V

    iput-object v0, p2, La/a/s;->i:La/a/aj;

    iget-object v0, p2, La/a/s;->i:La/a/aj;

    invoke-virtual {v0, p1}, La/a/aj;->a(La/a/bq;)V

    invoke-static {}, La/a/s;->r()V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_9
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, La/a/bq;->j()Z

    move-result v0

    iput-boolean v0, p2, La/a/s;->j:Z

    invoke-virtual {p2}, La/a/s;->t()V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_a
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, La/a/bq;->j()Z

    move-result v0

    iput-boolean v0, p2, La/a/s;->k:Z

    invoke-virtual {p2}, La/a/s;->v()V

    goto/16 :goto_0

    :cond_a
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_b
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->l:Ljava/lang/String;

    invoke-static {}, La/a/s;->x()V

    goto/16 :goto_0

    :cond_b
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_c
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_c

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->m:Ljava/lang/String;

    invoke-static {}, La/a/s;->z()V

    goto/16 :goto_0

    :cond_c
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_d
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/s;->n:J

    invoke-virtual {p2}, La/a/s;->B()V

    goto/16 :goto_0

    :cond_d
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_e
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_e

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->o:Ljava/lang/String;

    invoke-static {}, La/a/s;->D()V

    goto/16 :goto_0

    :cond_e
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_f
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_f

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->p:Ljava/lang/String;

    invoke-static {}, La/a/s;->F()V

    goto/16 :goto_0

    :cond_f
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_10
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_10

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/s;->q:Ljava/lang/String;

    invoke-static {}, La/a/s;->H()V

    goto/16 :goto_0

    :cond_10
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/s;->I()V

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
