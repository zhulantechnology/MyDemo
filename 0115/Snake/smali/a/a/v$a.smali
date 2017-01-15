.class final La/a/v$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/v;
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

    invoke-direct {p0}, La/a/v$a;-><init>()V

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

    check-cast p2, La/a/v;

    invoke-virtual {p2}, La/a/v;->i()V

    invoke-static {}, La/a/v;->j()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/v;->k()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, La/a/v;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, La/a/v;->l()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bp;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, La/a/bp;-><init>(BBI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bp;)V

    iget-object v0, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/bq;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ah;

    invoke-virtual {v0, p1}, La/a/ah;->b(La/a/bq;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, La/a/v;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/v;->m()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/v;->c:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    :cond_2
    invoke-virtual {p2}, La/a/v;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/v;->n()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget v0, p2, La/a/v;->d:I

    invoke-virtual {p1, v0}, La/a/bq;->a(I)V

    :cond_3
    invoke-static {}, La/a/v;->o()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-wide v0, p2, La/a/v;->e:J

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v5, 0xa

    check-cast p2, La/a/v;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_6

    iget-short v1, v0, La/a/bn;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/v;->a:Ljava/lang/String;

    invoke-static {}, La/a/v;->a()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, La/a/bq;->g()La/a/bp;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, La/a/bp;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, La/a/v;->b:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_1
    iget v2, v1, La/a/bp;->c:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, La/a/ah;

    invoke-direct {v3}, La/a/ah;-><init>()V

    invoke-virtual {v3, p1}, La/a/ah;->a(La/a/bq;)V

    iget-object v4, p2, La/a/v;->b:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, La/a/v;->b()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/v;->c:J

    invoke-virtual {p2}, La/a/v;->d()V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, La/a/bq;->m()I

    move-result v0

    iput v0, p2, La/a/v;->d:I

    invoke-virtual {p2}, La/a/v;->f()V

    goto/16 :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_4
    iget-byte v1, v0, La/a/bn;->b:B

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    iput-wide v0, p2, La/a/v;->e:J

    invoke-virtual {p2}, La/a/v;->h()V

    goto/16 :goto_0

    :cond_5
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/v;->g()Z

    move-result v0

    if-nez v0, :cond_7

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

    :cond_7
    invoke-virtual {p2}, La/a/v;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
