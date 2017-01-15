.class public La/a/af;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/af$a;,
        La/a/af$b;,
        La/a/af$c;,
        La/a/af$d;,
        La/a/af$e;
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:La/a/m;

.field public j:Ljava/lang/String;

.field private x:B

.field private y:[La/a/af$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x4

    const/16 v5, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x2

    new-instance v0, La/a/bv;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/af;->l:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "time_zone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->m:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "language"

    invoke-direct {v0, v1, v7, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->n:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "country"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->o:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v8, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->p:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "longitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->q:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "carrier"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->r:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "latency"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->s:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v7, v5}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->t:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "access_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->u:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "access_subtype"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/af;->v:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/af;->w:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/af$b;

    invoke-direct {v2, v3}, La/a/af$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/af;->w:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/af$d;

    invoke-direct {v2, v3}, La/a/af$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/af$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/af$e;->a:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "time_zone"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->b:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "language"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->c:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "country"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->d:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "latitude"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->e:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "longitude"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->f:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "carrier"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->g:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "latency"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->h:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "display_name"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->i:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "access_type"

    new-instance v4, La/a/be;

    const-class v5, La/a/m;

    invoke-direct {v4, v5}, La/a/be;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/af$e;->j:La/a/af$e;

    new-instance v2, La/a/bf;

    const-string v3, "access_subtype"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/af;->k:Ljava/util/Map;

    const-class v0, La/a/af;

    sget-object v1, La/a/af;->k:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/af;->x:B

    const/16 v0, 0xa

    new-array v0, v0, [La/a/af$e;

    sget-object v1, La/a/af$e;->a:La/a/af$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, La/a/af$e;->b:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, La/a/af$e;->c:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, La/a/af$e;->d:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, La/a/af$e;->e:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, La/a/af$e;->f:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/a/af$e;->g:La/a/af$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/af$e;->h:La/a/af$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/a/af$e;->i:La/a/af$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/a/af$e;->j:La/a/af$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/af;->y:[La/a/af$e;

    return-void
.end method

.method static synthetic A()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->q:La/a/bn;

    return-object v0
.end method

.method static synthetic B()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->r:La/a/bn;

    return-object v0
.end method

.method static synthetic C()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->s:La/a/bn;

    return-object v0
.end method

.method static synthetic D()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->t:La/a/bn;

    return-object v0
.end method

.method static synthetic E()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->u:La/a/bn;

    return-object v0
.end method

.method static synthetic F()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->v:La/a/bn;

    return-object v0
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method

.method public static p()V
    .locals 0

    return-void
.end method

.method public static r()V
    .locals 0

    return-void
.end method

.method public static t()V
    .locals 0

    return-void
.end method

.method public static u()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    return-void
.end method

.method static synthetic v()La/a/bv;
    .locals 1

    sget-object v0, La/a/af;->l:La/a/bv;

    return-object v0
.end method

.method static synthetic w()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->m:La/a/bn;

    return-object v0
.end method

.method static synthetic x()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->n:La/a/bn;

    return-object v0
.end method

.method static synthetic y()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->o:La/a/bn;

    return-object v0
.end method

.method static synthetic z()La/a/bn;
    .locals 1

    sget-object v0, La/a/af;->p:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/af;
    .locals 0

    iput p1, p0, La/a/af;->a:I

    invoke-virtual {p0}, La/a/af;->b()V

    return-object p0
.end method

.method public final a(La/a/m;)La/a/af;
    .locals 0

    iput-object p1, p0, La/a/af;->i:La/a/m;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/af;
    .locals 0

    iput-object p1, p0, La/a/af;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/af;->w:Ljava/util/Map;

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

    iget-byte v0, p0, La/a/af;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)La/a/af;
    .locals 0

    iput-object p1, p0, La/a/af;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, La/a/af;->x:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/af;->x:B

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/af;->w:Ljava/util/Map;

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

.method public final c(Ljava/lang/String;)La/a/af;
    .locals 0

    iput-object p1, p0, La/a/af;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, La/a/af;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)La/a/af;
    .locals 0

    iput-object p1, p0, La/a/af;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, La/a/af;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget-byte v0, p0, La/a/af;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    iget-byte v0, p0, La/a/af;->x:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/af;->x:B

    return-void
.end method

.method public final i()Z
    .locals 2

    iget-byte v0, p0, La/a/af;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-byte v0, p0, La/a/af;->x:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/af;->x:B

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, La/a/af;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    iget-byte v0, p0, La/a/af;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 1

    iget-byte v0, p0, La/a/af;->x:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/af;->x:B

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, La/a/af;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, La/a/af;->i:La/a/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, La/a/af;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "MiscInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, La/a/af;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "time_zone:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/a/af;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_0
    invoke-virtual {p0}, La/a/af;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "language:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->b:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_2
    invoke-virtual {p0}, La/a/af;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "country:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->c:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_4
    invoke-virtual {p0}, La/a/af;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, La/a/af;->d:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_6
    invoke-virtual {p0}, La/a/af;->i()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, La/a/af;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_8
    invoke-virtual {p0}, La/a/af;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "carrier:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_a
    invoke-virtual {p0}, La/a/af;->m()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "latency:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/a/af;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_c
    invoke-virtual {p0}, La/a/af;->o()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "display_name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->h:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_e
    invoke-virtual {p0}, La/a/af;->q()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "access_type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->i:La/a/m;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p0}, La/a/af;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v1, :cond_10

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v0, "access_subtype:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/af;->j:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_5
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, La/a/af;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, La/a/af;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, La/a/af;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, La/a/af;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_16
    iget-object v0, p0, La/a/af;->i:La/a/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    iget-object v0, p0, La/a/af;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    move v1, v0

    goto :goto_4
.end method
