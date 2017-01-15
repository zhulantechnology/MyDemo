.class final La/a/p$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/p;
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

    invoke-direct {p0}, La/a/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/p;

    invoke-virtual {p2}, La/a/p;->q()V

    invoke-static {}, La/a/p;->r()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/p;->s()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, La/a/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, La/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/a/p;->t()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, La/a/p;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/p;->u()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/p;->c:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_2
    iget-object v0, p2, La/a/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, La/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/p;->v()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p2, La/a/p;->e:La/a/al;

    if-eqz v0, :cond_4

    invoke-static {}, La/a/p;->w()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->e:La/a/al;

    invoke-virtual {v0}, La/a/al;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_4
    iget-object v0, p2, La/a/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, La/a/p;->x()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p2, La/a/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {}, La/a/p;->y()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p2, La/a/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, La/a/p;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, La/a/p;->z()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p2, La/a/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, La/a/p;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, La/a/p;->A()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, La/a/p;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, La/a/p;->B()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/p;->j:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_9
    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v3, 0x8

    const/16 v2, 0xb

    check-cast p2, La/a/p;

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

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->a:Ljava/lang/String;

    invoke-static {}, La/a/p;->a()V

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

    iput-object v0, p2, La/a/p;->b:Ljava/lang/String;

    invoke-static {}, La/a/p;->c()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/p;->c:I

    invoke-virtual {p2}, La/a/p;->e()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->d:Ljava/lang/String;

    invoke-static {}, La/a/p;->g()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    invoke-static {v0}, La/a/al;->a(I)La/a/al;

    move-result-object v0

    iput-object v0, p2, La/a/p;->e:La/a/al;

    invoke-static {}, La/a/p;->h()V

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

    iput-object v0, p2, La/a/p;->f:Ljava/lang/String;

    invoke-static {}, La/a/p;->i()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->g:Ljava/lang/String;

    invoke-static {}, La/a/p;->j()V

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

    iput-object v0, p2, La/a/p;->h:Ljava/lang/String;

    invoke-static {}, La/a/p;->l()V

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/p;->i:Ljava/lang/String;

    invoke-static {}, La/a/p;->n()V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_9
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/p;->j:I

    invoke-virtual {p2}, La/a/p;->p()V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/p;->q()V

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
