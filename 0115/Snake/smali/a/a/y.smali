.class public La/a/y;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/y$a;,
        La/a/y$b;,
        La/a/y$c;,
        La/a/y$d;,
        La/a/y$e;
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
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-instance v0, La/a/bv;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/y;->e:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/y;->f:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/y;->g:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/y;->h:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/y;->i:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/y$b;

    invoke-direct {v2, v3}, La/a/y$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/y;->i:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/y$d;

    invoke-direct {v2, v3}, La/a/y$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/y$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/y$e;->a:La/a/y$e;

    new-instance v2, La/a/bf;

    const-string v3, "identity"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/y$e;->b:La/a/y$e;

    new-instance v2, La/a/bf;

    const-string v3, "ts"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/y$e;->c:La/a/y$e;

    new-instance v2, La/a/bf;

    const-string v3, "version"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/y;->d:Ljava/util/Map;

    const-class v0, La/a/y;

    sget-object v1, La/a/y;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, La/a/y;->j:B

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method static synthetic j()La/a/bv;
    .locals 1

    sget-object v0, La/a/y;->e:La/a/bv;

    return-object v0
.end method

.method static synthetic k()La/a/bn;
    .locals 1

    sget-object v0, La/a/y;->f:La/a/bn;

    return-object v0
.end method

.method static synthetic l()La/a/bn;
    .locals 1

    sget-object v0, La/a/y;->g:La/a/bn;

    return-object v0
.end method

.method static synthetic m()La/a/bn;
    .locals 1

    sget-object v0, La/a/y;->h:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/y;
    .locals 0

    iput p1, p0, La/a/y;->c:I

    invoke-virtual {p0}, La/a/y;->h()V

    return-object p0
.end method

.method public final a(J)La/a/y;
    .locals 1

    iput-wide p1, p0, La/a/y;->b:J

    invoke-virtual {p0}, La/a/y;->e()V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/y;
    .locals 0

    iput-object p1, p0, La/a/y;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/y;->i:Ljava/util/Map;

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

    sget-object v0, La/a/y;->i:Ljava/util/Map;

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

.method public final c()J
    .locals 2

    iget-wide v0, p0, La/a/y;->b:J

    return-wide v0
.end method

.method public final d()Z
    .locals 2

    iget-byte v0, p0, La/a/y;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-byte v0, p0, La/a/y;->j:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/y;->j:B

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, La/a/y;->c:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-byte v0, p0, La/a/y;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    iget-byte v0, p0, La/a/y;->j:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/y;->j:B

    return-void
.end method

.method public final i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/y;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/y;->toString()Ljava/lang/String;

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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/y;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/a/y;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, La/a/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
