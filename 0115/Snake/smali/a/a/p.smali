.class public La/a/p;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/p$a;,
        La/a/p$b;,
        La/a/p$c;,
        La/a/p$d;,
        La/a/p$e;
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

.field public c:I

.field public d:Ljava/lang/String;

.field public e:La/a/al;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private x:B

.field private y:[La/a/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, La/a/bv;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/p;->l:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "key"

    invoke-direct {v0, v1, v6, v9}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->m:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "version"

    invoke-direct {v0, v1, v6, v7}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->n:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "version_index"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->o:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "package_name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->p:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "sdk_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->q:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "sdk_version"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->r:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "channel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->s:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "wrapper_type"

    invoke-direct {v0, v1, v6, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->t:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "wrapper_version"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->u:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "vertical_type"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/p;->v:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/p;->w:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/p$b;

    invoke-direct {v2, v3}, La/a/p$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/p;->w:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/p$d;

    invoke-direct {v2, v3}, La/a/p$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/p$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/p$e;->a:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "key"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->b:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "version"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->c:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "version_index"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->d:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "package_name"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->e:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "sdk_type"

    new-instance v4, La/a/be;

    const-class v5, La/a/al;

    invoke-direct {v4, v5}, La/a/be;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->f:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "sdk_version"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->g:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "channel"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->h:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "wrapper_type"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->i:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "wrapper_version"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/p$e;->j:La/a/p$e;

    new-instance v2, La/a/bf;

    const-string v3, "vertical_type"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/p;->k:Ljava/util/Map;

    const-class v0, La/a/p;

    sget-object v1, La/a/p;->k:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/p;->x:B

    const/4 v0, 0x6

    new-array v0, v0, [La/a/p$e;

    sget-object v1, La/a/p$e;->b:La/a/p$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, La/a/p$e;->c:La/a/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, La/a/p$e;->d:La/a/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, La/a/p$e;->h:La/a/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, La/a/p$e;->i:La/a/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, La/a/p$e;->j:La/a/p$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/p;->y:[La/a/p$e;

    return-void
.end method

.method static synthetic A()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->u:La/a/bn;

    return-object v0
.end method

.method static synthetic B()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->v:La/a/bn;

    return-object v0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 0

    return-void
.end method

.method public static g()V
    .locals 0

    return-void
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method public static i()V
    .locals 0

    return-void
.end method

.method public static j()V
    .locals 0

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method static synthetic r()La/a/bv;
    .locals 1

    sget-object v0, La/a/p;->l:La/a/bv;

    return-object v0
.end method

.method static synthetic s()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->m:La/a/bn;

    return-object v0
.end method

.method static synthetic t()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->n:La/a/bn;

    return-object v0
.end method

.method static synthetic u()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->o:La/a/bn;

    return-object v0
.end method

.method static synthetic v()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->p:La/a/bn;

    return-object v0
.end method

.method static synthetic w()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->q:La/a/bn;

    return-object v0
.end method

.method static synthetic x()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->r:La/a/bn;

    return-object v0
.end method

.method static synthetic y()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->s:La/a/bn;

    return-object v0
.end method

.method static synthetic z()La/a/bn;
    .locals 1

    sget-object v0, La/a/p;->t:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/p;
    .locals 0

    iput p1, p0, La/a/p;->c:I

    invoke-virtual {p0}, La/a/p;->e()V

    return-object p0
.end method

.method public final a(La/a/al;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->e:La/a/al;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/p;->w:Ljava/util/Map;

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

.method public final b(I)La/a/p;
    .locals 0

    iput p1, p0, La/a/p;->j:I

    invoke-virtual {p0}, La/a/p;->p()V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/p;->w:Ljava/util/Map;

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

.method public final b()Z
    .locals 1

    iget-object v0, p0, La/a/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Z
    .locals 2

    iget-byte v0, p0, La/a/p;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-byte v0, p0, La/a/p;->x:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/p;->x:B

    return-void
.end method

.method public final f(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, La/a/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)La/a/p;
    .locals 0

    iput-object p1, p0, La/a/p;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, La/a/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, La/a/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    iget-byte v0, p0, La/a/p;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    iget-byte v0, p0, La/a/p;->x:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/p;->x:B

    return-void
.end method

.method public final q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/p;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/p;->e:La/a/al;

    if-nez v0, :cond_1

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/p;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, La/a/p;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, La/a/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, La/a/p;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version_index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, La/a/p;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->d:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->e:La/a/al;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->f:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->g:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0}, La/a/p;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->h:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_6
    invoke-virtual {p0}, La/a/p;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_7
    invoke-virtual {p0}, La/a/p;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vertical_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/p;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, La/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, La/a/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, La/a/p;->e:La/a/al;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, La/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    iget-object v1, p0, La/a/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    iget-object v1, p0, La/a/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method
