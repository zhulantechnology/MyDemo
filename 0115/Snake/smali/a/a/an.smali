.class public La/a/an;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/an$a;,
        La/a/an$b;,
        La/a/an$c;,
        La/a/an$d;,
        La/a/an$e;
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

.field public b:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    new-instance v0, La/a/bv;

    const-string v1, "Traffic"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/an;->d:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "upload_traffic"

    invoke-direct {v0, v1, v5, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/an;->e:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "download_traffic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/an;->f:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/an;->g:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/an$b;

    invoke-direct {v2, v3}, La/a/an$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/an;->g:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/an$d;

    invoke-direct {v2, v3}, La/a/an$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/an$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/an$e;->a:La/a/an$e;

    new-instance v2, La/a/bf;

    const-string v3, "upload_traffic"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/an$e;->b:La/a/an$e;

    new-instance v2, La/a/bf;

    const-string v3, "download_traffic"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/an;->c:Ljava/util/Map;

    const-class v0, La/a/an;

    sget-object v1, La/a/an;->c:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, La/a/an;->h:B

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

    sget-object v0, La/a/an;->d:La/a/bv;

    return-object v0
.end method

.method static synthetic g()La/a/bn;
    .locals 1

    sget-object v0, La/a/an;->e:La/a/bn;

    return-object v0
.end method

.method static synthetic h()La/a/bn;
    .locals 1

    sget-object v0, La/a/an;->f:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/an;
    .locals 0

    iput p1, p0, La/a/an;->a:I

    invoke-virtual {p0}, La/a/an;->b()V

    return-object p0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/an;->g:Ljava/util/Map;

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

    iget-byte v0, p0, La/a/an;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b(I)La/a/an;
    .locals 0

    iput p1, p0, La/a/an;->b:I

    invoke-virtual {p0}, La/a/an;->d()V

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, La/a/an;->h:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/an;->h:B

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/an;->g:Ljava/util/Map;

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

    iget-byte v0, p0, La/a/an;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-byte v0, p0, La/a/an;->h:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/an;->h:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Traffic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/an;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download_traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/an;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
