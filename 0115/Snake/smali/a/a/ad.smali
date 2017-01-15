.class public La/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ad$a;,
        La/a/ad$b;,
        La/a/ad$c;,
        La/a/ad$d;,
        La/a/ad$e;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;

.field private static final d:La/a/bv;

.field private static final e:La/a/bn;

.field private static final f:La/a/bn;

.field private static final g:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:J

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-instance v0, La/a/bv;

    const-string v1, "Latent"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ad;->d:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "latency"

    invoke-direct {v0, v1, v6, v5}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ad;->e:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "interval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ad;->f:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ad;->g:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/ad$b;

    invoke-direct {v2, v3}, La/a/ad$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/ad;->g:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/ad$d;

    invoke-direct {v2, v3}, La/a/ad$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ad$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ad$e;->a:La/a/ad$e;

    new-instance v2, La/a/bf;

    const-string v3, "latency"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ad$e;->b:La/a/ad$e;

    new-instance v2, La/a/bf;

    const-string v3, "interval"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ad;->c:Ljava/util/Map;

    const-class v0, La/a/ad;

    sget-object v1, La/a/ad;->c:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, La/a/ad;->h:B

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, La/a/ad;-><init>()V

    iput p1, p0, La/a/ad;->a:I

    invoke-virtual {p0}, La/a/ad;->b()V

    iput-wide p2, p0, La/a/ad;->b:J

    invoke-virtual {p0}, La/a/ad;->d()V

    return-void
.end method

.method public static e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    return-void
.end method

.method static synthetic f()La/a/bv;
    .locals 1

    sget-object v0, La/a/ad;->d:La/a/bv;

    return-object v0
.end method

.method static synthetic g()La/a/bn;
    .locals 1

    sget-object v0, La/a/ad;->e:La/a/bn;

    return-object v0
.end method

.method static synthetic h()La/a/bn;
    .locals 1

    sget-object v0, La/a/ad;->f:La/a/bn;

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

    sget-object v0, La/a/ad;->g:Ljava/util/Map;

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

    iget-byte v0, p0, La/a/ad;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, La/a/ad;->h:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ad;->h:B

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ad;->g:Ljava/util/Map;

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

    iget-byte v0, p0, La/a/ad;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-byte v0, p0, La/a/ad;->h:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ad;->h:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "latency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ad;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/a/ad;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
