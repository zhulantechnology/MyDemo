.class final La/a/af$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/af;
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

    invoke-direct {p0}, La/a/af$a;-><init>()V

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

    invoke-static {}, La/a/af;->u()V

    invoke-static {}, La/a/af;->v()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    invoke-virtual {p2}, La/a/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/af;->w()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/af;->a:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_0
    iget-object v0, p2, La/a/af;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, La/a/af;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/a/af;->x()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, La/a/af;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, La/a/af;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/af;->y()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, La/a/af;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/af;->z()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/af;->d:D

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(D)V

    :cond_3
    invoke-virtual {p2}, La/a/af;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La/a/af;->A()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/af;->e:D

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(D)V

    :cond_4
    iget-object v0, p2, La/a/af;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, La/a/af;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, La/a/af;->B()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, La/a/af;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, La/a/af;->C()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/af;->g:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_6
    iget-object v0, p2, La/a/af;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, La/a/af;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, La/a/af;->D()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p2, La/a/af;->i:La/a/m;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, La/a/af;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, La/a/af;->E()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->i:La/a/m;

    invoke-virtual {v0}, La/a/m;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_8
    iget-object v0, p2, La/a/af;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, La/a/af;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, La/a/af;->F()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/af;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_9
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

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/16 v2, 0xb

    check-cast p2, La/a/af;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_a

    iget-short v1, v0, La/a/bn;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/af;->a:I

    invoke-virtual {p2}, La/a/af;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->b:Ljava/lang/String;

    invoke-static {}, La/a/af;->d()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->c:Ljava/lang/String;

    invoke-static {}, La/a/af;->f()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, La/a/bq;->o()D

    move-result-wide v0

    iput-wide v0, p2, La/a/af;->d:D

    invoke-virtual {p2}, La/a/af;->h()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, La/a/bq;->o()D

    move-result-wide v0

    iput-wide v0, p2, La/a/af;->e:D

    invoke-virtual {p2}, La/a/af;->j()V

    goto :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->f:Ljava/lang/String;

    invoke-static {}, La/a/af;->l()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/af;->g:I

    invoke-virtual {p2}, La/a/af;->n()V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->h:Ljava/lang/String;

    invoke-static {}, La/a/af;->p()V

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    invoke-static {v0}, La/a/m;->a(I)La/a/m;

    move-result-object v0

    iput-object v0, p2, La/a/af;->i:La/a/m;

    invoke-static {}, La/a/af;->r()V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_9
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/af;->j:Ljava/lang/String;

    invoke-static {}, La/a/af;->t()V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-static {}, La/a/af;->u()V

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
    .end packed-switch
.end method
