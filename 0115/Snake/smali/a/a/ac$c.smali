.class final La/a/ac$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ac;
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

    invoke-direct {p0}, La/a/ac$c;-><init>()V

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

    check-cast p2, La/a/ac;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/ac;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/ac;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, La/a/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/ac;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/t;

    invoke-virtual {v0, p1}, La/a/t;->b(La/a/bq;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, La/a/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/v;

    invoke-virtual {v0, p1}, La/a/v;->b(La/a/bq;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, La/a/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/v;

    invoke-virtual {v0, p1}, La/a/v;->b(La/a/bq;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v6, 0xc

    const/4 v1, 0x0

    check-cast p2, La/a/ac;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/ac;->a:Ljava/lang/String;

    invoke-static {}, La/a/ac;->b()V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-direct {v3, v6, v0}, La/a/bo;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, La/a/bo;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ac;->b:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, La/a/bo;->b:I

    if-ge v0, v4, :cond_0

    new-instance v4, La/a/t;

    invoke-direct {v4}, La/a/t;-><init>()V

    invoke-virtual {v4, p1}, La/a/t;->a(La/a/bq;)V

    iget-object v5, p2, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/ac;->d()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    invoke-direct {v3, v6, v0}, La/a/bo;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, La/a/bo;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, La/a/ac;->c:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v4, v3, La/a/bo;->b:I

    if-ge v0, v4, :cond_2

    new-instance v4, La/a/v;

    invoke-direct {v4}, La/a/v;-><init>()V

    invoke-virtual {v4, p1}, La/a/v;->a(La/a/bq;)V

    iget-object v5, p2, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/ac;->h()V

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v2

    invoke-direct {v0, v6, v2}, La/a/bo;-><init>(BI)V

    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, La/a/bo;->b:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, La/a/ac;->d:Ljava/util/List;

    :goto_2
    iget v2, v0, La/a/bo;->b:I

    if-ge v1, v2, :cond_4

    new-instance v2, La/a/v;

    invoke-direct {v2}, La/a/v;-><init>()V

    invoke-virtual {v2, p1}, La/a/v;->a(La/a/bq;)V

    iget-object v3, p2, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, La/a/ac;->l()V

    :cond_5
    return-void
.end method
