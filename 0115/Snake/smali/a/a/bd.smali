.class public abstract La/a/bd;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/bd$a;,
        La/a/bd$b;,
        La/a/bd$c;,
        La/a/bd$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field protected b:Ljava/lang/Object;

.field protected c:La/a/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/bd;->a:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/bd$b;

    invoke-direct {v2, v3}, La/a/bd$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/bd;->a:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/bd$d;

    invoke-direct {v2, v3}, La/a/bd$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/bd;->c:La/a/bb;

    iput-object v0, p0, La/a/bd;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a(S)La/a/bb;
.end method

.method protected abstract a(La/a/bb;)La/a/bn;
.end method

.method protected abstract a()La/a/bv;
.end method

.method protected abstract a(La/a/bq;La/a/bn;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation
.end method

.method protected abstract a(La/a/bq;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/bd;->a:Ljava/util/Map;

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

.method public final b()La/a/bb;
    .locals 1

    iget-object v0, p0, La/a/bd;->c:La/a/bb;

    return-object v0
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/bd;->a:Ljava/util/Map;

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

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/bd;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c(La/a/bq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation
.end method

.method protected abstract d(La/a/bq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, La/a/bd;->c:La/a/bb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/bd;->c:La/a/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/bd;->b:Ljava/lang/Object;

    iget-object v2, p0, La/a/bd;->c:La/a/bb;

    invoke-virtual {p0, v2}, La/a/bd;->a(La/a/bb;)La/a/bn;

    move-result-object v2

    iget-object v2, v2, La/a/bn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, La/a/ay;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
