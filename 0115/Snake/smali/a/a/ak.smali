.class public La/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ak$a;,
        La/a/ak$b;,
        La/a/ak$c;,
        La/a/ak$d;,
        La/a/ak$e;
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:La/a/aa;

.field private j:B

.field private k:[La/a/ak$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    new-instance v0, La/a/bv;

    const-string v1, "Response"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ak;->e:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ak;->f:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ak;->g:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "imprint"

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ak;->h:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ak;->i:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/ak$b;

    invoke-direct {v2, v4}, La/a/ak$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/ak;->i:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/ak$d;

    invoke-direct {v2, v4}, La/a/ak$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ak$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ak$e;->a:La/a/ak$e;

    new-instance v2, La/a/bf;

    const-string v3, "resp_code"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ak$e;->b:La/a/ak$e;

    new-instance v2, La/a/bf;

    const-string v3, "msg"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ak$e;->c:La/a/ak$e;

    new-instance v2, La/a/bf;

    const-string v3, "imprint"

    new-instance v4, La/a/bk;

    const-class v5, La/a/aa;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ak;->d:Ljava/util/Map;

    const-class v0, La/a/ak;

    sget-object v1, La/a/ak;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/ak;->j:B

    const/4 v0, 0x2

    new-array v0, v0, [La/a/ak$e;

    sget-object v1, La/a/ak$e;->b:La/a/ak$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, La/a/ak$e;->c:La/a/ak$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/ak;->k:[La/a/ak$e;

    return-void
.end method

.method public static e()V
    .locals 0

    return-void
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method static synthetic j()La/a/bv;
    .locals 1

    sget-object v0, La/a/ak;->e:La/a/bv;

    return-object v0
.end method

.method static synthetic k()La/a/bn;
    .locals 1

    sget-object v0, La/a/ak;->f:La/a/bn;

    return-object v0
.end method

.method static synthetic l()La/a/bn;
    .locals 1

    sget-object v0, La/a/ak;->g:La/a/bn;

    return-object v0
.end method

.method static synthetic m()La/a/bn;
    .locals 1

    sget-object v0, La/a/ak;->h:La/a/bn;

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

    sget-object v0, La/a/ak;->i:Ljava/util/Map;

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

.method public final a()Z
    .locals 2

    iget-byte v0, p0, La/a/ak;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, La/a/ak;->j:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ak;->j:B

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ak;->i:Ljava/util/Map;

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

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/ak;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, La/a/ak;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()La/a/aa;
    .locals 1

    iget-object v0, p0, La/a/ak;->c:La/a/aa;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, La/a/ak;->c:La/a/aa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/ak;->c:La/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/ak;->c:La/a/aa;

    invoke-virtual {v0}, La/a/aa;->i()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ak;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ak;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {p0}, La/a/ak;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ak;->c:La/a/aa;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, La/a/ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/ak;->c:La/a/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
