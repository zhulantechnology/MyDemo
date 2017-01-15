.class public final La/a/g;
.super La/a/v;

# interfaces
.implements La/a/cu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    invoke-direct {p0}, La/a/v;-><init>()V

    iput-object p1, p0, La/a/v;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/v;->e:J

    invoke-virtual {p0}, La/a/v;->h()V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, La/a/ah;

    invoke-direct {v5}, La/a/ah;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, La/a/ah;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, La/a/ah;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, La/a/ah;->a(J)V

    goto :goto_1

    :cond_3
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, La/a/ah;->a(J)V

    goto :goto_1

    :cond_4
    instance-of v6, v1, Ljava/lang/Float;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, La/a/ah;->a(J)V

    goto :goto_1

    :cond_5
    instance-of v6, v1, Ljava/lang/Double;

    if-eqz v6, :cond_1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, La/a/ah;->a(J)V

    goto :goto_1

    :cond_6
    iput-object v4, p0, La/a/v;->b:Ljava/util/Map;

    :cond_7
    iget v0, p0, La/a/g;->d:I

    if-lez v0, :cond_8

    iget v0, p0, La/a/g;->d:I

    :goto_2
    iput v0, p0, La/a/v;->d:I

    invoke-virtual {p0}, La/a/v;->f()V

    return-void

    :cond_8
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a(La/a/ao;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, La/a/ao;->k()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, La/a/ao;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ac;

    invoke-virtual {v0}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, La/a/ac;

    invoke-direct {v0}, La/a/ac;-><init>()V

    invoke-virtual {v0, p2}, La/a/ac;->a(Ljava/lang/String;)La/a/ac;

    invoke-virtual {p1, v0}, La/a/ao;->a(La/a/ac;)V

    :cond_1
    invoke-virtual {v0, p0}, La/a/ac;->a(La/a/v;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
