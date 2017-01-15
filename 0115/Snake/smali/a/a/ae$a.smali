.class final La/a/ae$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ae;
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

    invoke-direct {p0}, La/a/ae$a;-><init>()V

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

    check-cast p2, La/a/ae;

    invoke-static {}, La/a/ae;->g()V

    invoke-static {}, La/a/ae;->h()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    invoke-static {}, La/a/ae;->i()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/ae;->a:D

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(D)V

    invoke-static {}, La/a/ae;->j()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/ae;->b:D

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(D)V

    invoke-static {}, La/a/ae;->k()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/ae;->c:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

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

    const/4 v3, 0x4

    check-cast p2, La/a/ae;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_3

    iget-short v1, v0, La/a/bn;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, La/a/bq;->o()D

    move-result-wide v0

    iput-wide v0, p2, La/a/ae;->a:D

    invoke-virtual {p2}, La/a/ae;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, La/a/bq;->o()D

    move-result-wide v0

    iput-wide v0, p2, La/a/ae;->b:D

    invoke-virtual {p2}, La/a/ae;->d()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/ae;->c:J

    invoke-virtual {p2}, La/a/ae;->f()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/ae;->a()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lat\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, La/a/ae;->c()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lng\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, La/a/ae;->e()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, La/a/ae;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
