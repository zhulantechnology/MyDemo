.class public La/a/w;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/w$a;,
        La/a/w$b;,
        La/a/w$c;,
        La/a/w$d;,
        La/a/w$e;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;

.field private static final f:La/a/bv;

.field private static final g:La/a/bn;

.field private static final h:La/a/bn;

.field private static final i:La/a/bn;

.field private static final j:La/a/bn;

.field private static final k:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private l:B

.field private m:[La/a/w$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    new-instance v0, La/a/bv;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/w;->f:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "domain"

    invoke-direct {v0, v1, v5, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/w;->g:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/w;->h:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/w;->i:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/w;->j:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/w;->k:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/w$b;

    invoke-direct {v2, v3}, La/a/w$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/w;->k:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/w$d;

    invoke-direct {v2, v3}, La/a/w$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/w$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/w$e;->a:La/a/w$e;

    new-instance v2, La/a/bf;

    const-string v3, "domain"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/w$e;->b:La/a/w$e;

    new-instance v2, La/a/bf;

    const-string v3, "old_id"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/w$e;->c:La/a/w$e;

    new-instance v2, La/a/bf;

    const-string v3, "new_id"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v5}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/w$e;->d:La/a/w$e;

    new-instance v2, La/a/bf;

    const-string v3, "ts"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/w;->e:Ljava/util/Map;

    const-class v0, La/a/w;

    sget-object v1, La/a/w;->e:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, La/a/w;->l:B

    const/4 v0, 0x1

    new-array v0, v0, [La/a/w$e;

    sget-object v1, La/a/w$e;->b:La/a/w$e;

    aput-object v1, v0, v2

    iput-object v0, p0, La/a/w;->m:[La/a/w$e;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method static synthetic h()La/a/bv;
    .locals 1

    sget-object v0, La/a/w;->f:La/a/bv;

    return-object v0
.end method

.method static synthetic i()La/a/bn;
    .locals 1

    sget-object v0, La/a/w;->g:La/a/bn;

    return-object v0
.end method

.method static synthetic j()La/a/bn;
    .locals 1

    sget-object v0, La/a/w;->h:La/a/bn;

    return-object v0
.end method

.method static synthetic k()La/a/bn;
    .locals 1

    sget-object v0, La/a/w;->i:La/a/bn;

    return-object v0
.end method

.method static synthetic l()La/a/bn;
    .locals 1

    sget-object v0, La/a/w;->j:La/a/bn;

    return-object v0
.end method


# virtual methods
.method public final a(J)La/a/w;
    .locals 1

    iput-wide p1, p0, La/a/w;->d:J

    invoke-virtual {p0}, La/a/w;->f()V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/w;
    .locals 0

    iput-object p1, p0, La/a/w;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/w;->k:Ljava/util/Map;

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

.method public final b(Ljava/lang/String;)La/a/w;
    .locals 0

    iput-object p1, p0, La/a/w;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/w;->k:Ljava/util/Map;

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

    iget-object v0, p0, La/a/w;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)La/a/w;
    .locals 0

    iput-object p1, p0, La/a/w;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Z
    .locals 2

    iget-byte v0, p0, La/a/w;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/av;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-byte v0, p0, La/a/w;->l:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/w;->l:B

    return-void
.end method

.method public final g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/w;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/w;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/w;->toString()Ljava/lang/String;

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

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/w;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, La/a/w;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/w;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/w;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La/a/w;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, La/a/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, La/a/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
