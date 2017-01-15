.class final La/a/aa$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/aa;
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

    invoke-direct {p0}, La/a/aa$c;-><init>()V

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

    check-cast p2, La/a/aa;

    check-cast p1, La/a/bw;

    iget-object v0, p2, La/a/aa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/aa;->a:Ljava/util/Map;

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

    check-cast v0, La/a/ab;

    invoke-virtual {v0, p1}, La/a/ab;->b(La/a/bq;)V

    goto :goto_0

    :cond_0
    iget v0, p2, La/a/aa;->b:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget-object v0, p2, La/a/aa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/aa;

    check-cast p1, La/a/bw;

    new-instance v1, La/a/bp;

    const/16 v0, 0xb

    const/16 v2, 0xc

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, La/a/bp;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, La/a/bp;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, La/a/aa;->a:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget v2, v1, La/a/bp;->c:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, La/a/ab;

    invoke-direct {v3}, La/a/ab;-><init>()V

    invoke-virtual {v3, p1}, La/a/ab;->a(La/a/bq;)V

    iget-object v4, p2, La/a/aa;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/aa;->c()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/aa;->b:I

    invoke-virtual {p2}, La/a/aa;->f()V

    invoke-virtual {p1}, La/a/bw;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/a/aa;->c:Ljava/lang/String;

    invoke-static {}, La/a/aa;->h()V

    return-void
.end method
