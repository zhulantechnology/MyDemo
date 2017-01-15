.class final La/a/ac$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ac;
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

    invoke-direct {p0}, La/a/ac$a;-><init>()V

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

    check-cast p2, La/a/ac;

    invoke-virtual {p2}, La/a/ac;->m()V

    invoke-static {}, La/a/ac;->n()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, La/a/ac;->o()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/ac;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, La/a/ac;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, La/a/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/a/ac;->p()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/t;

    invoke-virtual {v0, p1}, La/a/t;->b(La/a/bq;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, La/a/ac;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, La/a/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/ac;->q()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/v;

    invoke-virtual {v0, p1}, La/a/v;->b(La/a/bq;)V

    goto :goto_1

    :cond_2
    iget-object v0, p2, La/a/ac;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, La/a/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La/a/ac;->r()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    new-instance v0, La/a/bo;

    iget-object v1, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, La/a/bo;-><init>(BI)V

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bo;)V

    iget-object v0, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/v;

    invoke-virtual {v0, p1}, La/a/v;->b(La/a/bq;)V

    goto :goto_2

    :cond_3
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

    const/16 v5, 0xf

    const/4 v1, 0x0

    check-cast p2, La/a/ac;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v2, v0, La/a/bn;->b:B

    if-eqz v2, :cond_7

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

    iput-object v0, p2, La/a/ac;->a:Ljava/lang/String;

    invoke-static {}, La/a/ac;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_2

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ac;->b:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_1

    new-instance v3, La/a/t;

    invoke-direct {v3}, La/a/t;-><init>()V

    invoke-virtual {v3, p1}, La/a/t;->a(La/a/bq;)V

    iget-object v4, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, La/a/ac;->d()V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_4

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ac;->c:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_3

    new-instance v3, La/a/v;

    invoke-direct {v3}, La/a/v;-><init>()V

    invoke-virtual {v3, p1}, La/a/v;->a(La/a/bq;)V

    iget-object v4, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, La/a/ac;->h()V

    goto/16 :goto_0

    :cond_4
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :pswitch_3
    iget-byte v2, v0, La/a/bn;->b:B

    if-ne v2, v5, :cond_6

    invoke-virtual {p1}, La/a/bq;->h()La/a/bo;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/bo;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ac;->d:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, La/a/bo;->b:I

    if-ge v0, v3, :cond_5

    new-instance v3, La/a/v;

    invoke-direct {v3}, La/a/v;-><init>()V

    invoke-virtual {v3, p1}, La/a/v;->a(La/a/bq;)V

    iget-object v4, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-static {}, La/a/ac;->l()V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/ac;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
