.class public La/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ac$a;,
        La/a/ac$b;,
        La/a/ac$c;,
        La/a/ac$d;,
        La/a/ac$e;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;

.field private static final f:La/a/bv;

.field private static final g:La/a/bn;

.field private static final h:La/a/bn;

.field private static final i:La/a/bn;

.field private static final j:La/a/bn;

.field private static final k:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field private l:[La/a/ac$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    const/4 v7, 0x2

    new-instance v0, La/a/bv;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ac;->f:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "id"

    invoke-direct {v0, v1, v6, v5}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ac;->g:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "errors"

    invoke-direct {v0, v1, v3, v7}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ac;->h:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ac;->i:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "game_events"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ac;->j:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ac;->k:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/ac$b;

    invoke-direct {v2, v4}, La/a/ac$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/ac;->k:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/ac$d;

    invoke-direct {v2, v4}, La/a/ac$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ac$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ac$e;->a:La/a/ac$e;

    new-instance v2, La/a/bf;

    const-string v3, "id"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ac$e;->b:La/a/ac$e;

    new-instance v2, La/a/bf;

    const-string v3, "errors"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/t;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ac$e;->c:La/a/ac$e;

    new-instance v2, La/a/bf;

    const-string v3, "events"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/v;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ac$e;->d:La/a/ac$e;

    new-instance v2, La/a/bf;

    const-string v3, "game_events"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/v;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ac;->e:Ljava/util/Map;

    const-class v0, La/a/ac;

    sget-object v1, La/a/ac;->e:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [La/a/ac$e;

    const/4 v1, 0x0

    sget-object v2, La/a/ac$e;->b:La/a/ac$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, La/a/ac$e;->c:La/a/ac$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, La/a/ac$e;->d:La/a/ac$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/ac;->l:[La/a/ac$e;

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method

.method static synthetic n()La/a/bv;
    .locals 1

    sget-object v0, La/a/ac;->f:La/a/bv;

    return-object v0
.end method

.method static synthetic o()La/a/bn;
    .locals 1

    sget-object v0, La/a/ac;->g:La/a/bn;

    return-object v0
.end method

.method static synthetic p()La/a/bn;
    .locals 1

    sget-object v0, La/a/ac;->h:La/a/bn;

    return-object v0
.end method

.method static synthetic q()La/a/bn;
    .locals 1

    sget-object v0, La/a/ac;->i:La/a/bn;

    return-object v0
.end method

.method static synthetic r()La/a/bn;
    .locals 1

    sget-object v0, La/a/ac;->j:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/ac;
    .locals 0

    iput-object p1, p0, La/a/ac;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ac;->k:Ljava/util/Map;

    invoke-virtual {p1}, La/a/bq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/by;

    invoke-interface {v0}, La/a/by;->a()La/a/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/bx;->b(La/a/bq;La/a/ax;)V

    return-void
.end method

.method public final a(La/a/t;)V
    .locals 1

    iget-object v0, p0, La/a/ac;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/ac;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, La/a/ac;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(La/a/v;)V
    .locals 1

    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/ac;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ac;->k:Ljava/util/Map;

    invoke-virtual {p1}, La/a/bq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/by;

    invoke-interface {v0}, La/a/by;->a()La/a/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/bx;->a(La/a/bq;La/a/ax;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, La/a/ac;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, La/a/ac;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/ac;->c:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, La/a/ac;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, La/a/ac;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/ac;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ac;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ac;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, La/a/ac;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ac;->b:Ljava/util/List;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, La/a/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ac;->c:Ljava/util/List;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, La/a/ac;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "game_events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ac;->d:Ljava/util/List;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, La/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, La/a/ac;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, La/a/ac;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, La/a/ac;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
