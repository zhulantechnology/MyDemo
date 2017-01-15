.class public La/a/r;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/r$a;,
        La/a/r$b;,
        La/a/r$c;,
        La/a/r$d;,
        La/a/r$e;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;

.field private static final c:La/a/bv;

.field private static final d:La/a/bn;

.field private static final e:Ljava/util/Map;


# instance fields
.field public a:La/a/ad;

.field private f:[La/a/r$e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, La/a/bv;

    const-string v1, "ControlPolicy"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/r;->c:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "latent"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/r;->d:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/r;->e:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/r$b;

    invoke-direct {v2, v4}, La/a/r$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/r;->e:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/r$d;

    invoke-direct {v2, v4}, La/a/r$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/r$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/r$e;->a:La/a/r$e;

    new-instance v2, La/a/bf;

    const-string v3, "latent"

    const/4 v4, 0x2

    new-instance v5, La/a/bk;

    const-class v6, La/a/ad;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/r;->b:Ljava/util/Map;

    const-class v0, La/a/r;

    sget-object v1, La/a/r;->b:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [La/a/r$e;

    const/4 v1, 0x0

    sget-object v2, La/a/r$e;->a:La/a/r$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/r;->f:[La/a/r$e;

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method static synthetic d()La/a/bv;
    .locals 1

    sget-object v0, La/a/r;->c:La/a/bv;

    return-object v0
.end method

.method static synthetic e()La/a/bn;
    .locals 1

    sget-object v0, La/a/r;->d:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(La/a/ad;)La/a/r;
    .locals 0

    iput-object p1, p0, La/a/r;->a:La/a/ad;

    return-object p0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/r;->e:Ljava/util/Map;

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
    .locals 1

    iget-object v0, p0, La/a/r;->a:La/a/ad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/r;->e:Ljava/util/Map;

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

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/r;->a:La/a/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/r;->a:La/a/ad;

    invoke-static {}, La/a/ad;->e()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "latent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/r;->a:La/a/ad;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, La/a/r;->a:La/a/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
