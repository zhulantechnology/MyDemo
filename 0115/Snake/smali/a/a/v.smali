.class public La/a/v;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/v$a;,
        La/a/v$b;,
        La/a/v$c;,
        La/a/v$d;,
        La/a/v$e;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;

.field private static final g:La/a/bv;

.field private static final h:La/a/bn;

.field private static final i:La/a/bn;

.field private static final j:La/a/bn;

.field private static final k:La/a/bn;

.field private static final l:La/a/bn;

.field private static final m:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:J

.field public d:I

.field public e:J

.field private n:B

.field private o:[La/a/v$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v4, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x2

    const/16 v9, 0xa

    const/4 v8, 0x1

    new-instance v0, La/a/bv;

    const-string v1, "Event"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/v;->g:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "name"

    invoke-direct {v0, v1, v6, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/v;->h:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v10}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/v;->i:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/v;->j:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "acc"

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/v;->k:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/v;->l:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/v;->m:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/v$b;

    invoke-direct {v2, v4}, La/a/v$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/v;->m:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/v$d;

    invoke-direct {v2, v4}, La/a/v$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/v$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/v$e;->a:La/a/v$e;

    new-instance v2, La/a/bf;

    const-string v3, "name"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/v$e;->b:La/a/v$e;

    new-instance v2, La/a/bf;

    const-string v3, "properties"

    new-instance v4, La/a/bi;

    new-instance v5, La/a/bg;

    invoke-direct {v5, v6}, La/a/bg;-><init>(B)V

    new-instance v6, La/a/bk;

    const-class v7, La/a/ah;

    invoke-direct {v6, v7}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, La/a/bi;-><init>(La/a/bg;La/a/bg;)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/v$e;->c:La/a/v$e;

    new-instance v2, La/a/bf;

    const-string v3, "duration"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v9}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/v$e;->d:La/a/v$e;

    new-instance v2, La/a/bf;

    const-string v3, "acc"

    new-instance v4, La/a/bg;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/v$e;->e:La/a/v$e;

    new-instance v2, La/a/bf;

    const-string v3, "ts"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v9}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/v;->f:Ljava/util/Map;

    const-class v0, La/a/v;

    sget-object v1, La/a/v;->f:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/v;->n:B

    const/4 v0, 0x2

    new-array v0, v0, [La/a/v$e;

    sget-object v1, La/a/v$e;->c:La/a/v$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, La/a/v$e;->d:La/a/v$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/v;->o:[La/a/v$e;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method static synthetic j()La/a/bv;
    .locals 1

    sget-object v0, La/a/v;->g:La/a/bv;

    return-object v0
.end method

.method static synthetic k()La/a/bn;
    .locals 1

    sget-object v0, La/a/v;->h:La/a/bn;

    return-object v0
.end method

.method static synthetic l()La/a/bn;
    .locals 1

    sget-object v0, La/a/v;->i:La/a/bn;

    return-object v0
.end method

.method static synthetic m()La/a/bn;
    .locals 1

    sget-object v0, La/a/v;->j:La/a/bn;

    return-object v0
.end method

.method static synthetic n()La/a/bn;
    .locals 1

    sget-object v0, La/a/v;->k:La/a/bn;

    return-object v0
.end method

.method static synthetic o()La/a/bn;
    .locals 1

    sget-object v0, La/a/v;->l:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/v;->m:Ljava/util/Map;

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

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/v;->m:Ljava/util/Map;

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
    .locals 2

    iget-byte v0, p0, La/a/v;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-byte v0, p0, La/a/v;->n:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/v;->n:B

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-byte v0, p0, La/a/v;->n:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-byte v0, p0, La/a/v;->n:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/v;->n:B

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-byte v0, p0, La/a/v;->n:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    iget-byte v0, p0, La/a/v;->n:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/v;->n:B

    return-void
.end method

.method public final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/v;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/v;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/v;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/v;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/v;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/v;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, La/a/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/a/v;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, La/a/v;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/v;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/a/v;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, La/a/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/v;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
