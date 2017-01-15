.class final La/a/z$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/z;
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

    invoke-direct {p0}, La/a/z$c;-><init>()V

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

    check-cast p2, La/a/z;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/bw;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/y;

    invoke-virtual {v0, p1}, La/a/y;->b(La/a/bq;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, La/a/z;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, La/a/z;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, La/a/bw;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, La/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, La/a/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/w;

    invoke-virtual {v0, p1}, La/a/w;->b(La/a/bq;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, La/a/z;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, La/a/z;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v1, 0x0

    check-cast p2, La/a/z;

    check-cast p1, La/a/bw;

    new-instance v2, La/a/bp;

    const/16 v0, 0xb

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, La/a/bp;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, La/a/bp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, La/a/z;->a:Ljava/util/Map;

    move v0, v1

    :goto_0
    iget v3, v2, La/a/bp;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, La/a/y;

    invoke-direct {v4}, La/a/y;-><init>()V

    invoke-virtual {v4, p1}, La/a/y;->a(La/a/bq;)V

    iget-object v5, p2, La/a/z;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/z;->b()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, La/a/bw;->b(I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, La/a/bo;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v3

    invoke-direct {v2, v7, v3}, La/a/bo;-><init>(BI)V

    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, La/a/bo;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, La/a/z;->b:Ljava/util/List;

    :goto_1
    iget v3, v2, La/a/bo;->b:I

    if-ge v1, v3, :cond_1

    new-instance v3, La/a/w;

    invoke-direct {v3}, La/a/w;-><init>()V

    invoke-virtual {v3, p1}, La/a/w;->a(La/a/bq;)V

    iget-object v4, p2, La/a/z;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, La/a/z;->a(Z)V

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/z;->c:Ljava/lang/String;

    invoke-static {}, La/a/z;->f()V

    :cond_3
    return-void
.end method
