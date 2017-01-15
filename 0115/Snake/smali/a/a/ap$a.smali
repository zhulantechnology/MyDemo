.class final La/a/ap$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ap;
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

    invoke-direct {p0}, La/a/ap$a;-><init>()V

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

    check-cast p2, La/a/ap;

    invoke-virtual {p2}, La/a/ap;->o()V

    invoke-static {}, La/a/ap;->p()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/ap;->q()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, La/a/ap;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, La/a/ap;->r()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, La/a/ap;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, La/a/ap;->s()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, La/a/ap;->t()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/ap;->d:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    invoke-static {}, La/a/ap;->u()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/ap;->e:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    invoke-static {}, La/a/ap;->v()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/ap;->f:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    iget-object v0, p2, La/a/ap;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, La/a/ap;->w()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object v0, p2, La/a/ap;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, La/a/ap;->x()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p2, La/a/ap;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, La/a/ap;->y()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ap;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, La/a/ap;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, La/a/ap;->z()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/ap;->j:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_6
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

    check-cast p2, La/a/ap;

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

    iput-object v0, p2, La/a/ap;->a:Ljava/lang/String;

    invoke-static {}, La/a/ap;->a()V

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

    iput-object v0, p2, La/a/ap;->b:Ljava/lang/String;

    invoke-static {}, La/a/ap;->b()V

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

    iput-object v0, p2, La/a/ap;->c:Ljava/lang/String;

    invoke-static {}, La/a/ap;->c()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->d:I

    invoke-virtual {p2}, La/a/ap;->e()V

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

    iput v0, p2, La/a/ap;->e:I

    invoke-virtual {p2}, La/a/ap;->g()V

    goto :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/ap;->f:I

    invoke-virtual {p2}, La/a/ap;->i()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, La/a/bq;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, La/a/ap;->g:Ljava/nio/ByteBuffer;

    invoke-static {}, La/a/ap;->j()V

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

    iput-object v0, p2, La/a/ap;->h:Ljava/lang/String;

    invoke-static {}, La/a/ap;->k()V

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

    iput-object v0, p2, La/a/ap;->i:Ljava/lang/String;

    invoke-static {}, La/a/ap;->l()V

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

    iput v0, p2, La/a/ap;->j:I

    invoke-virtual {p2}, La/a/ap;->n()V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/ap;->d()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

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
    invoke-virtual {p2}, La/a/ap;->f()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

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
    invoke-virtual {p2}, La/a/ap;->h()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, La/a/ap;->o()V

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
