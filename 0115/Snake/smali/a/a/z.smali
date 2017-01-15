.class public La/a/z;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/z$a;,
        La/a/z$b;,
        La/a/z$c;,
        La/a/z$d;,
        La/a/z$e;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:La/a/bv;

.field private static final f:La/a/bn;

.field private static final g:La/a/bn;

.field private static final h:La/a/bn;

.field private static final i:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field private j:[La/a/z$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, La/a/bv;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/z;->e:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "snapshots"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v10}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/z;->f:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/z;->g:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/z;->h:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/z;->i:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/z$b;

    invoke-direct {v2, v3}, La/a/z$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/z;->i:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/z$d;

    invoke-direct {v2, v3}, La/a/z$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/z$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/z$e;->a:La/a/z$e;

    new-instance v2, La/a/bf;

    const-string v3, "snapshots"

    new-instance v4, La/a/bi;

    new-instance v5, La/a/bg;

    invoke-direct {v5, v9}, La/a/bg;-><init>(B)V

    new-instance v6, La/a/bk;

    const-class v7, La/a/y;

    invoke-direct {v6, v7}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, La/a/bi;-><init>(La/a/bg;La/a/bg;)V

    invoke-direct {v2, v3, v10, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/z$e;->b:La/a/z$e;

    new-instance v2, La/a/bf;

    const-string v3, "journals"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/w;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/z$e;->c:La/a/z$e;

    new-instance v2, La/a/bf;

    const-string v3, "checksum"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v9}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/z;->d:Ljava/util/Map;

    const-class v0, La/a/z;

    sget-object v1, La/a/z;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [La/a/z$e;

    const/4 v1, 0x0

    sget-object v2, La/a/z$e;->b:La/a/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, La/a/z$e;->c:La/a/z$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/z;->j:[La/a/z$e;

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method static synthetic h()La/a/bv;
    .locals 1

    sget-object v0, La/a/z;->e:La/a/bv;

    return-object v0
.end method

.method static synthetic i()La/a/bn;
    .locals 1

    sget-object v0, La/a/z;->f:La/a/bn;

    return-object v0
.end method

.method static synthetic j()La/a/bn;
    .locals 1

    sget-object v0, La/a/z;->g:La/a/bn;

    return-object v0
.end method

.method static synthetic k()La/a/bn;
    .locals 1

    sget-object v0, La/a/z;->h:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)La/a/z;
    .locals 0

    iput-object p1, p0, La/a/z;->b:Ljava/util/List;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)La/a/z;
    .locals 0

    iput-object p1, p0, La/a/z;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, La/a/z;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/z;->i:Ljava/util/Map;

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

.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/z;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/z;->i:Ljava/util/Map;

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

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/z;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, La/a/z;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, La/a/z;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/z;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/z;->toString()Ljava/lang/String;

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

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/z;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, La/a/z;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/z;->b:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, La/a/z;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/z;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, La/a/z;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/z;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, La/a/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
