.class public La/a/ap;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ap$a;,
        La/a/ap$b;,
        La/a/ap$c;,
        La/a/ap$d;,
        La/a/ap$e;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;

.field private static final l:La/a/bv;

.field private static final m:La/a/bn;

.field private static final n:La/a/bn;

.field private static final o:La/a/bn;

.field private static final p:La/a/bn;

.field private static final q:La/a/bn;

.field private static final r:La/a/bn;

.field private static final s:La/a/bn;

.field private static final t:La/a/bn;

.field private static final u:La/a/bn;

.field private static final v:La/a/bn;

.field private static final w:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private x:B

.field private y:[La/a/ap$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    new-instance v0, La/a/bv;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ap;->l:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "version"

    invoke-direct {v0, v1, v5, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->m:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "address"

    invoke-direct {v0, v1, v5, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->n:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "signature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->o:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "serial_num"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->p:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "ts_secs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->q:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "length"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->r:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "entity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->s:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "guid"

    invoke-direct {v0, v1, v5, v7}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->t:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "checksum"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->u:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "codex"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ap;->v:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ap;->w:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/ap$b;

    invoke-direct {v2, v3}, La/a/ap$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/ap;->w:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/ap$d;

    invoke-direct {v2, v3}, La/a/ap$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ap$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ap$e;->a:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "version"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->b:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "address"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->c:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "signature"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->d:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "serial_num"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->e:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "ts_secs"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->f:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "length"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->g:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "entity"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5, v6}, La/a/bg;-><init>(BZ)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->h:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "guid"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->i:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "checksum"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ap$e;->j:La/a/ap$e;

    new-instance v2, La/a/bf;

    const-string v3, "codex"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ap;->k:Ljava/util/Map;

    const-class v0, La/a/ap;

    sget-object v1, La/a/ap;->k:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/ap;->x:B

    const/4 v0, 0x1

    new-array v0, v0, [La/a/ap$e;

    sget-object v1, La/a/ap$e;->j:La/a/ap$e;

    aput-object v1, v0, v2

    iput-object v0, p0, La/a/ap;->y:[La/a/ap$e;

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

.method public static c()V
    .locals 0

    return-void
.end method

.method public static j()V
    .locals 0

    return-void
.end method

.method public static k()V
    .locals 0

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method

.method static synthetic p()La/a/bv;
    .locals 1

    sget-object v0, La/a/ap;->l:La/a/bv;

    return-object v0
.end method

.method static synthetic q()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->m:La/a/bn;

    return-object v0
.end method

.method static synthetic r()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->n:La/a/bn;

    return-object v0
.end method

.method static synthetic s()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->o:La/a/bn;

    return-object v0
.end method

.method static synthetic t()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->p:La/a/bn;

    return-object v0
.end method

.method static synthetic u()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->q:La/a/bn;

    return-object v0
.end method

.method static synthetic v()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->r:La/a/bn;

    return-object v0
.end method

.method static synthetic w()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->s:La/a/bn;

    return-object v0
.end method

.method static synthetic x()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->t:La/a/bn;

    return-object v0
.end method

.method static synthetic y()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->u:La/a/bn;

    return-object v0
.end method

.method static synthetic z()La/a/bn;
    .locals 1

    sget-object v0, La/a/ap;->v:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/ap;
    .locals 0

    iput p1, p0, La/a/ap;->d:I

    invoke-virtual {p0}, La/a/ap;->e()V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/ap;
    .locals 0

    iput-object p1, p0, La/a/ap;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a([B)La/a/ap;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La/a/ap;->g:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ap;->w:Ljava/util/Map;

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

.method public final b(I)La/a/ap;
    .locals 0

    iput p1, p0, La/a/ap;->e:I

    invoke-virtual {p0}, La/a/ap;->g()V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)La/a/ap;
    .locals 0

    iput-object p1, p0, La/a/ap;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ap;->w:Ljava/util/Map;

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

.method public final c(I)La/a/ap;
    .locals 0

    iput p1, p0, La/a/ap;->f:I

    invoke-virtual {p0}, La/a/ap;->i()V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)La/a/ap;
    .locals 0

    iput-object p1, p0, La/a/ap;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d(I)La/a/ap;
    .locals 0

    iput p1, p0, La/a/ap;->j:I

    invoke-virtual {p0}, La/a/ap;->n()V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)La/a/ap;
    .locals 0

    iput-object p1, p0, La/a/ap;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Z
    .locals 2

    iget-byte v0, p0, La/a/ap;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)La/a/ap;
    .locals 0

    iput-object p1, p0, La/a/ap;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-byte v0, p0, La/a/ap;->x:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ap;->x:B

    return-void
.end method

.method public final f()Z
    .locals 2

    iget-byte v0, p0, La/a/ap;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    iget-byte v0, p0, La/a/ap;->x:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ap;->x:B

    return-void
.end method

.method public final h()Z
    .locals 2

    iget-byte v0, p0, La/a/ap;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    iget-byte v0, p0, La/a/ap;->x:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ap;->x:B

    return-void
.end method

.method public final m()Z
    .locals 2

    iget-byte v0, p0, La/a/ap;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 1

    iget-byte v0, p0, La/a/ap;->x:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/ap;->x:B

    return-void
.end method

.method public final o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/ap;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/ap;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/ap;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, La/a/ap;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, La/a/ap;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, La/a/ap;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ap;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ap;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ap;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->h:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ap;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0}, La/a/ap;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/ap;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, La/a/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, La/a/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, La/a/ap;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, La/a/ap;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, La/a/ay;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, La/a/ap;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    iget-object v1, p0, La/a/ap;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
