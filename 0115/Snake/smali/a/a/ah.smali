.class public La/a/ah;
.super La/a/bd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ah$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;

.field private static final d:La/a/bv;

.field private static final e:La/a/bn;

.field private static final f:La/a/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    new-instance v0, La/a/bv;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ah;->d:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ah;->e:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ah;->f:La/a/bn;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ah$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ah$a;->a:La/a/ah$a;

    new-instance v2, La/a/bf;

    const-string v3, "string_value"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v7}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ah$a;->b:La/a/ah$a;

    new-instance v2, La/a/bf;

    const-string v3, "long_value"

    new-instance v4, La/a/bg;

    invoke-direct {v4, v6}, La/a/bg;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ah;->a:Ljava/util/Map;

    const-class v0, La/a/ah;

    sget-object v1, La/a/ah;->a:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/bd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(S)La/a/bb;
    .locals 1

    invoke-static {p1}, La/a/ah$a;->b(I)La/a/ah$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(La/a/bb;)La/a/bn;
    .locals 3

    check-cast p1, La/a/ah$a;

    sget-object v0, La/a/ai;->a:[I

    invoke-virtual {p1}, La/a/ah$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown field id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, La/a/ah;->e:La/a/bn;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, La/a/ah;->f:La/a/bn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a()La/a/bv;
    .locals 1

    sget-object v0, La/a/ah;->d:La/a/bv;

    return-object v0
.end method

.method protected final a(La/a/bq;La/a/bn;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/4 v0, 0x0

    iget-short v1, p2, La/a/bn;->c:S

    invoke-static {v1}, La/a/ah$a;->a(I)La/a/ah$a;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, La/a/ai;->a:[I

    invoke-virtual {v1}, La/a/ah$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte v1, p2, La/a/bn;->b:B

    sget-object v2, La/a/ah;->e:La/a/bn;

    iget-byte v2, v2, La/a/bn;->b:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-byte v1, p2, La/a/bn;->b:B

    invoke-static {p1, v1}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, p2, La/a/bn;->b:B

    sget-object v2, La/a/ah;->f:La/a/bn;

    iget-byte v2, v2, La/a/bn;->b:B

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-byte v1, p2, La/a/bn;->b:B

    invoke-static {p1, v1}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(La/a/bq;S)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    invoke-static {p2}, La/a/ah$a;->a(I)La/a/ah$a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, La/a/ai;->a:[I

    invoke-virtual {v0}, La/a/ah$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, La/a/bq;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, La/a/bq;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find a field with field id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(J)V
    .locals 1

    sget-object v0, La/a/ah$a;->b:La/a/ah$a;

    iput-object v0, p0, La/a/ah;->c:La/a/bb;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, La/a/ah;->b:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, La/a/ah$a;->a:La/a/ah$a;

    iput-object v0, p0, La/a/ah;->c:La/a/bb;

    iput-object p1, p0, La/a/ah;->b:Ljava/lang/Object;

    return-void
.end method

.method protected final c(La/a/bq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v1, La/a/ai;->a:[I

    iget-object v0, p0, La/a/ah;->c:La/a/bb;

    check-cast v0, La/a/ah$a;

    invoke-virtual {v0}, La/a/ah$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write union with unknown field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/ah;->c:La/a/bb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, La/a/ah;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, La/a/ah;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d(La/a/bq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v1, La/a/ai;->a:[I

    iget-object v0, p0, La/a/ah;->c:La/a/bb;

    check-cast v0, La/a/ah$a;

    invoke-virtual {v0}, La/a/ah$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write union with unknown field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/ah;->c:La/a/bb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, La/a/ah;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/bq;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, La/a/ah;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, La/a/bq;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, La/a/ah;

    if-eqz v1, :cond_0

    check-cast p1, La/a/ah;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La/a/ah;->b()La/a/bb;

    move-result-object v1

    invoke-virtual {p1}, La/a/ah;->b()La/a/bb;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, La/a/ah;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, La/a/ah;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
